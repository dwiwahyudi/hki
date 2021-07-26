</div>
</section>
</main>
<footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6 footer-info">
            <p>Divisi Inovasi dan HKI</p>
            <h3>Direktorat Inovasi dan Hilirisasi</h3>
            <p>Universitas Sebelas Maret<br>
            Gedung LPPM Universitas Sebelas Maret<br>
            Jl. Ir. Sutami No. 36A, Jebres Surakarta<br>
              <strong>Email:</strong> inovasi@unit.uns.ac.id<br>
            </p>
            <!-- <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div> -->
          </div>

          <div class="col-lg-4 col-md-6 footer-links">
          <h4>Useful Links</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i> <a href="https://uns.ac.id">Universitas Sebelas Maret</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="https://lppm.uns.ac.id/id/">LPPM UNS</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="https://fintechcenter.uns.ac.id">UNS Fintech Center</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="https://javanologi.uns.ac.id/">Javanologi UNS</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="https://puibaterai.uns.ac.id/">PUI Baterai UNS</a></li>
                        </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Pendaftaran Merek</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="<?=base_url();?>pendaftaran/paten/">Pendaftaran Paten</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Pendaftaran Hak Cipta</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Pendaftaran Desain Industri</a></li>
            </ul>
          </div>

          <!-- <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>

          </div> -->

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright 2021.<strong><span>Direktorat Inovasi dan Hilirisasi</span></strong>
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/mamba-one-page-bootstrap-template-free/ -->
        <!-- Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> -->
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="<?php echo base_url();?>assets/vendor/jquery/jquery.min.js"></script>
  <script src="<?php echo base_url();?>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<?php echo base_url();?>assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="<?php echo base_url();?>assets/vendor/php-email-form/validate.js"></script>
  <script src="<?php echo base_url();?>assets/vendor/jquery-sticky/jquery.sticky.js"></script>
  <script src="<?php echo base_url();?>assets/vendor/venobox/venobox.min.js"></script>
  <script src="<?php echo base_url();?>assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <!-- <script src="<?php echo base_url();?>assets/vendor/counterup/counterup.min.js"></script> -->
  <!-- <script src="<?php echo base_url();?>assets/vendor/owl.carousel/owl.carousel.min.js"></script> -->
  <script src="<?php echo base_url();?>assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <!-- <script src="<?php echo base_url();?>assets/vendor/aos/aos.js"></script> -->
  <script src="<?php echo base_url();?>assets/vendor/sweetalert2/sweetalert2.all.min.js"></script>

  <!-- Template Main JS File -->
  <script src="<?php echo base_url();?>assets/js/main.js"></script>
  <?php
  if(isset($js) && $js !== null){
    if(is_array($js)){
    foreach($js as $JS){
  ?>
  <script src="<?php echo base_url();?>assets/<?=$JS;?>"></script>
  <?php
    }
  }else{
  ?>
  <script src="<?php echo base_url();?>assets/<?=$js;?>"></script>
  <?php
  }
  }
  ?>
</body>

</html>
