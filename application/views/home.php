

  
        <!-- End of Sidebar -->


                <div class="container-fluid main">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <center><h1 class="h3 mb-0 text-gray-800">Selamat Belanja</h1></center>
                    </div>


                    <?php 
                        foreach($datamenu as $data => $menu){ 
                    ?>

                    <!-- Content Row -->
                    <div class="container">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="card" width="10">
                        <img src="<?= base_url('uploads/'.$menu['image']);?>" alt="Card image cap" style="width: 70%;margin:0px auto;">
                        <div class="card-body">
                            <h5 class="card-title"><b><?= $menu['nama'];?></b></h5>
                            <p class="card-text"><?= $menu['kategori'];?></p>
                            <p class="card-text" style="color:green">Rp. <?= $menu['harga'];?></p>
                            <a style="width: 100%;" href="<?= base_url('android/create_cart/'.$menu['id'])?>" class="btn btn-primary "><i class="fas fa-shopping-cart"></i> Tambah ke Keranjang</a>
                        </div>
                        </div>
                    </div> 
                    <br>
                <?php 
                }   
                ?>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

       