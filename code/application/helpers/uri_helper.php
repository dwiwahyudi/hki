<?php
defined('BASEPATH') or exit('No direct script access allowed');

function encrypt( $s ) {
	$cryptKey  = 'A47013AA04ED420386C4BDA2DD50E8B6';
	$qEncoded      = base64_encode( mcrypt_encrypt( MCRYPT_RIJNDAEL_256, md5( $cryptKey ), $s, MCRYPT_MODE_CBC, md5( md5( $cryptKey ) ) ) );
	return( $qEncoded );
}

function decrypt($s) {
	$cryptKey  = 'A47013AA04ED420386C4BDA2DD50E8B6';
	$qDecoded  = rtrim( mcrypt_decrypt( MCRYPT_RIJNDAEL_256, md5( $cryptKey ), base64_decode( $s ), MCRYPT_MODE_CBC, md5( md5( $cryptKey ) ) ), "\0");
	return( $qDecoded );
}
