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
 $mail->isSMTP(); // Używamy SMTP
 $mail->Host = 'smtp.gmail.com'; // Adres serwera SMTP
 $mail->SMTPAuth = true; // Autoryzacja (do) SMTP
 $mail->Username = "projektpitcernia@gmail.com"; // Nazwa użytkownika
 $mail->Password = "ZAQ!2wsx"; // Hasło
 $mail->SMTPSecure = 'tls'; // Typ szyfrowania (TLS/SSL)
 $mail->Port = 587; // Port

 $mail->CharSet = "UTF-8";
 $mail->setLanguage('pl', '/phpmailer/language');

 $mail->setFrom('projektpitcernia@gmail.com', 'pitceria');
 $mail->addAddress($_SESSION['email'], 'przyszły zjadacz pizzy');
 $mail->addReplyTo($email, $imie);

 $mail->isHTML(true); // Format: HTML
 $mail->Subject = $temat;
 $mail->Body = $tresc;
 $mail->AltBody = 'By wyświetlić wiadomość należy skorzystać z czytnika obsługującego wiadomości w formie HTML';

 $mail->send();
 // Gdy OK:
//  header("Location: https://webinsider.pl/?email=1");
header('location:index.php');

} catch (Exception $e) {
 // Gdy błąd:
//  header("Location: https://webinsider.pl/?email=0");
echo 'źle';
}

?>



