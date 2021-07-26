<div class="col-md-12">
<div class="">
    <form action="<?=base_url();?>">
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <select name="t" id="jenis" class="input-group-text" style="border-radius:0;">
                <option value="merk">Merek</option>
                <option value="patent">Paten</option>
                <option value="desain">Desain Industri</option>
                <option value="hakcipta">Hak Cipta</option>
            </select>
        </div>
        <input type="text" name="q" class="form-control" aria-label="Text input with dropdown button" placeholder="&#xed1b; Search" style="font-family:Arial, icofont">
        <div class="input-group-append">
            <button class="btn px-4" type="submit" style="border-radius:0;background:#428bca; color:#fff"><i class="icofont-search"></i>Cari</button>
        </div>
    </div>
    </form>
</div>
    <div class="row">
    <div class="pl-3">
    Urutkan berdasarkan
    </div>
        <div class="col-sm-3">
            <select name="short" id="short" class="form-control">
                <option value="no_pendaftaran">No Pendaftaran</option>
                <option value="tgl_pendaftaran">Tgl Pendaftaran</option>
            </select>
        </div>
        <div class="col-sm-2">
        <select name="short2" id="short2" class="form-control">
            <option value="">A to Z</option>
            <option value="">Z to A</option>
        </select>
        </div>
    </div>
</div>
<div class="col-md-12"><hr></div>
<div class="col-md-12">
    <div class="row">
        <div class="col-md-8 list-item">
            <?php
            foreach($data->result() as $d){
                if($d->abstrak !== '' && $d->abstrak !== null){
                $abstrak = explode(" ",$d->abstrak);
                $abs = '';
                for($i = 0; $i<=30;$i++){
                    $abs.=$abstrak[$i].' ';
                }
                if(count($abstrak) > 30){
                    $abs.="...";
                }
            }else{
                $abs = '';
            }
            ?>
            <div class="item">
                <div class=""><?=$d->no_pendaftaran;?></div>
                <div class="title"><a href="https://pdki-indonesia.dgip.go.id/detail/<?=$d->no_pendaftaran;?>?type=<?=$d->hki;?>&keyword=<?=$d->no_pendaftaran;?>" target="_blank"><?=$d->judul;?></a></div>
                <div class="abstrack"><?=$abs;?></div>
                
            </div>
            <?php
            }
            echo $pagination;
            ?>
        </div>
        <div class="col-md-4">
        <div class="card mb-3">
            <div class="card-header">Permohoan per Fakultas</div>
            <div class="card-body">
                <ul>
                <?php
                foreach($fakultas->result() as $f){
                ?>
                    <li><?=$f->fakultas;?></li>
                    <?php
                }
                    ?>
                </ul>
            </div>
        </div>
        <div class="card mb-3">
            <div class="card-header">Total permohonan</div>
            <div class="card-body">
            </div>
        </div>
        <div class="fix-img">
        </div>
        </div>
    </div>
</div>
