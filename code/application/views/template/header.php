<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Divisi Inovasi dan HKI | Dit Inovasi dan Hilirisai UNS</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <url href="<?=base_url();?>"></url>
  <!-- Favicons -->
  <link href="<?php echo base_url();?>assets/img/favicon.ico" rel="icon">
  <link href="<?php echo base_url();?>assets/img/logo-uns-biru.webp" rel="logo-uns-biru">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i,900" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<?php echo base_url();?>assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?php echo base_url();?>assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="<?php echo base_url();?>assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<?php echo base_url();?>assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="<?php echo base_url();?>assets/vendor/venobox/venobox.css" rel="stylesheet">
  <!-- <link href="<?php echo base_url();?>assets/vendor/owl.carousel.min.css" rel="stylesheet"> -->
  <!-- <link href="<?php echo base_url();?>assets/vendor/aos/aos.css" rel="stylesheet"> -->
  <link href="<?php echo base_url();?>assets/vendor/sweetalert2/sweetalert2.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<?php echo base_url();?>assets/css/style.css" rel="stylesheet">
  <?php
  if(isset($css) && $css !== null){
    if(is_array($css)){
      foreach($css as $c){       
    ?>
    <link href="<?php echo base_url();?>assets/<?=$c;?>" rel="stylesheet">
    <?php
      }
    }else{
    ?>
    <link href="<?php echo base_url();?>assets/<?=$css;?>" rel="stylesheet">
    <?php
    }
  }
  ?>
  <!-- =======================================================
  * Template Name: Mamba - v2.5.0
  * Template URL: https://bootstrapmade.com/mamba-one-page-bootstrap-template-free/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-none d-lg-block">
    <div class="container clearfix">
      <div class="contact-info float-left">
        <i class="icofont-envelope"></i><a href="mailto:contact@example.com">hki@unit.uns.ac.id</a>
        <!-- <i class="icofont-phone"></i> +1 5589 55488 55 -->
      </div>
      <div class="social-links float-right">
        <a href="?a=logout"><i class="icofont-logout"></i> Logout</a>
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header">
    <div class="container">

      <div class="logo float-left">
        <!-- <a href="index.html"><i class="icofont-microscope"></i></a> -->
        <p class="text-light">Dit. Inovasi dan Hilirisasi<br>
          <a href="index.html"><span>Divisi Inovasi dan HKI</span></a>
        </p>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="<?php echo base_url();?>assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav class="nav-menu float-right d-none d-lg-block">
        <ul>
          <li class="active"><a href="<?=base_url();?>index.php">Beranda</a></li>
          <li class="drop-down"><a href="#about">Pendaftaran</a>
            <ul>
              <li><a href="<?=base_url();?>pendaftaran/merek/">Merek</a></li>
              <li><a href="<?=base_url();?>pendaftaran/paten/">Paten</a></li>
              <li><a href="<?=base_url();?>pendaftaran/hakcipta/">Hak Cipta</a></li>
              <li><a href="<?=base_url();?>pendaftaran/desain/">Desain Industri</a></li>
            </ul>
          </li>
          <li><a href="#services">Layanan</a></li>
          <li class="drop-down"><a href="">Unduhan</a>
            <ul>
              <li><a href="#">Formulir Merek</a></li>
              <li><a href="<?=base_url();?>unduh/paten/">Formulir Paten</a></li>
              <li><a href="#">Formulir Hak Cipta</a></li>
              <li><a href="#">Formulir Desain Industri</a></li>
            </ul>
          </li>
          <li><a href="<?=base_url();?>user/registrasi">Registrasi</a></li>
          <!-- <li><a href="#contact">Contact Us</a></li> -->
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->
  <main id="main">
    <section>
      <div class="container">