<?php
require_once (WEBAPPROOT.'models/Mail.php');
$mail="contact@rp2m.com";	



$name=filter_input(INPUT_POST, 'name', FILTER_SANITIZE_SPECIAL_CHARS);
$email=filter_input(INPUT_POST, 'email', FILTER_SANITIZE_SPECIAL_CHARS);
$number=filter_input(INPUT_POST, 'number', FILTER_SANITIZE_SPECIAL_CHARS);
$query=filter_input(INPUT_POST, 'query', FILTER_SANITIZE_SPECIAL_CHARS);
$msg="Nouveau contact

Nom : {$name}
Email : {$email}
Telephone : {$number}
Question : {$query}

S il vous plait repondez aussitot possible.

";
$send_mail = new Mail();
$send_mail->sendMailContact($email, $mail, $name, $number, $query);
?>
<script>
alert("Envoyer avec success.");
window.location="../";
</script>
