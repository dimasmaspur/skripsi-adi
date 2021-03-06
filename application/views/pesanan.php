<div class="container-fluid main">

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Pesanan Saya</h1>
<!-- DataTales Example -->
<div class="card shadow mb-4 mt-2">
    <div class="card-header py-3">
    </div>
    <div class="card-body">

        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>No Pesanan</th>
                        <th>Tanggal</th>
                        <th>Nama Menu</th>
                        <th>Qty</th>
                        <th>Subtotal</th>
                        <th>Ongkir</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>

                <?php 
                    $no = 1;
                    $ongkir = 0;
                    foreach($datamenu as $data => $menu){
                ?>
                    <tr>
                        <td><?= $menu['id'];?></td>
                        <td><?= $menu['tanggal'];?></td>
                        <td><?= $menu['nama'];?></td>
                        <td><?= $menu['qty'];?></td>
                        <td>Rp. <?= $menu['subtotal'];?></td>
                        <td>Rp. <?= $menu['ongkir'];?></td>
                        <td>
                            
                        <?php
                            if($menu['sent'] == 1){
                             ?>
                             <p class="badge badge-sm bg-info text-white">Sedang Dikirim</p>
                             <?php
                            }else{
                            ?>
                                                        <p class="badge badge-sm bg-secondary text-white">Sedang Disiapkan</p>

                            <?php 
                            }
                            ?>    
                        </td>
                    </tr>
                <?php
                    $ongkir =  $menu['ongkir'];
                $no++;
                }
                ?>

                
                </tbody>
            </table>
        </div>
    </div>
    
</div>
<div class="row">
<div class="col-xl-10 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Terima Kasih Telah Memesan di Raja Susu</div>
                                                <div class="h6 mb-0 mt-4 font-weight-bold text-gray-800">Ongkir : Rp. <?= $ongkir ?></div>
                                            <div class="h5 mb-0 mt-4 font-weight-bold text-gray-800">Total : Rp. <?=$datatotal + $ongkir;?></div>
                                            <br>
                                        </div>
                                        <div class="col-auto">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

</div>
</div>

