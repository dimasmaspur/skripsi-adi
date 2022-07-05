<style>
        
        
        .bottom {
  overflow: hidden;
  background-color: #fff;
  position: fixed;
  bottom: 0;
  width: 100%;
  z-index: 100;
}

.bottom a {
  float: left;
  display: block;
  color: #000;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  /* margin: 0px auto; */
  width: 33.333%;
}

.bottom a:hover {
  background: #f1f1f1;
  color: black;
}

.bottom a.active {
  background-color: #04AA6D;
  color: white;
}

.main {
  padding: 16px;
  margin-bottom: 100px;
}
   </style>

                <!-- Begin Page Content -->
<div class="bottom ">
  <a href="<?= base_url('android')?>"><i class="fas fa-list"></i> <br> Menu</a>
  <a href="<?= base_url('android/cart')?>"><i class="fas fa-shopping-cart"></i><br> Keranjang</a>
  <a href="<?= base_url('android/pesanan')?>"><i class="fas fa-shopping-bag"></i><br> Pesanan</a>
</div>
