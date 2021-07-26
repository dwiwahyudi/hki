<div class="section-title">
    <h2 style="margin-top:0px">Daftar Unduhan</h2>
</div>
<div id="unduh">
    <div class="form-group col-md-12 col-lg-12">
        <ul>
        <?php
        if($files->num_rows() > 0){
        foreach($files->result() as $file){
        ?>
            <li><a href="<?=base_url();?>unduh/<?=$file->judul;?>/<?=$file;?>">[Download]</a></li>
        <?php
        }}
        ?>
        </ul>
    </div>
</div>
