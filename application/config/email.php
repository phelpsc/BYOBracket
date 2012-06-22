<?php

$config['useragent'] =    'CodeIgniter';
$config['protocol'] =    'smtp';
$config['mailpath'] =    '/usr/sbin/sendmail';
$config['smtp_host']    = 'ssl://smtp.gmail.com';


//TODO: Enter Valid Email Address And Password
$config['smtp_user'] =    '';
$config['smtp_pass'] =    '';


$config['smtp_port'] =    465;
$config['smtp_timeout'] = '5';
$config['wordwrap'] = TRUE;
$config['wrapchars'] =    '76';
$config['mailtype'] =    'html';
$config['validate'] =    FALSE;
$config['priority'] =    3;
$config['crlf'] =    "\n";
$config['newline'] =    "\r\n";
$config['bcc_batch_mode'] = FALSE;
$config['bcc_batch_size'] = '200';

?>