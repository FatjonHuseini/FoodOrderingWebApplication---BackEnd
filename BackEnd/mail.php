<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

require("PHPMailer-6.1.6/src/PHPMailer.php");
require("PHPMailer-6.1.6/src/Exception.php");
require("PHPMailer-6.1.6/src/SMTP.php");

$mail = new PHPMailer(true);
$mail->IsSMTP();

// Instantiation and passing `true` enables exceptions

$fullName = $_POST['fullName'];
$address = $_POST['address'];
$order = $_POST['order'];

echo $fullName;
echo $address;
echo $order;


// Settings
$mail->IsSMTP();
$mail->CharSet = 'UTF-8';

$mail->Host       = "smtp-mail.outlook.com"; // SMTP server example
$mail->SMTPDebug  = 1;                     // enables SMTP debug information (for testing)
$mail->SMTPAuth   = true;                  // enable SMTP authentication
$mail->Port       = 587;                    // set the SMTP port for the GMAIL server
$mail->Username   = "fatijon.huseini@outlook.com"; // SMTP account username example
$mail->Password   = "Smartsound98";        // SMTP account password example

$mail->setFrom("fatijon.huseini@outlook.com", "EX ROCCO SYSTEM");
// Content
$mail->isHTML(true);                                  // Set email format to HTML
$mail->Subject = 'New Order';
$mail->Body    = 'Full name :' . $fullName . '<br>' . 'Address: ' . $address . '<br>' . 'Order: ' . $order;
$mail->AddAddress('fh27153@seeu.edu.mk');
if (!$mail->send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
} else {
    echo "Message has been sent successfully";
}
