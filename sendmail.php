<?php
session_start();
header('Content-type: text/html; charset=utf-8');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'phpmailer-master/src/Exception.php';
require 'phpmailer-master/src/PHPMailer.php';
require 'phpmailer-master/src/SMTP.php';

$imie ='imie';
$email ='projektpitcernia@gmail.com';
$kod = $_SESSION['verificode'];
$link = "<a href='http://localhost/projekt%20programowanie%20i%20administracja%20pitcernia/projekt2/weryfikacja.php?vkey=$kod'>link do weryfikacji</a>";
$tresc = $link;
$temat = 'rejestracja na stronie   nalepszej pizzeri w mieście';

date_default_timezone_set('Europe/Warsaw');

$mail = new PHPMailer(true);
try {
 $mail->isSMTP();
 $mail->Host = 'smtp.gmail.com';
 $mail->SMTPAuth = true; 
 $mail->Username = "projektpitcernia@gmail.com"; 
 $mail->Password = "ZAQ!2wsx"; 
 $mail->SMTPSecure = 'tls'; 
 $mail->Port = 587; 

 $mail->CharSet = "UTF-8";
 $mail->setLanguage('pl', '/phpmailer/language');

 $mail->setFrom('projektpitcernia@gmail.com', 'pitceria');
 $mail->addAddress($_SESSION['email'], 'przyszły zjadacz pizzy');
 $mail->addReplyTo($email, $imie);

 $mail->isHTML(true); 
 $mail->Subject = $temat;
 $mail->Body = $tresc;
 $mail->AltBody = 'By wyświetlić wiadomość należy skorzystać z czytnika obsługującego wiadomości w formie HTML';

 $mail->send();

header('location:index.php');

} catch (Exception $e) {

echo 'źle';
}

?>



