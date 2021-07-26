<div class="section-title">
    <h2 style="margin-top:0px">Pendaftaran Paten</h2>
</div>
<div id="Paten">
    <div class="stepwizard">
        <div class="stepwizard-row setup-panel">
            <div class="stepwizard-step">
                <a href="#step-1" type="button" class="btn btn-warning btn-circle">1</a>
                <p>Permohonan</p>
            </div>
            <div class="stepwizard-step">
                <a href="#step-2" type="button" class="btn btn-info btn-circle " disabled="disabled">2</a>
                <p>Inventor</p>
            </div>
            <div class="stepwizard-step">
                <a href="#step-3" type="button" class="btn btn-info btn-circle " disabled="disabled">3</a>
                <p>Isi Dokumen</p>
            </div>
            <div class="stepwizard-step">
                <a href="#step-4" type="button" class="btn btn-info btn-circle " disabled="disabled">4</a>
                <p>Lampiran</p>
            </div>
        </div>
    </div>

    <form method="post" enctype="multipart/form-data" id="formPaten">
        <div class="row setup-content" id="step-1">
            <div class="form-group col-md-12">
                <div class="row justify-content-between">
                    <div class="col-md-4 offset-md-8 text-right">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-success nextBtn btn1" id="btn1">Berikutnya</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="">Jenis <span class="text-danger">*</span></label>
                    <div class="col-md-4 col-sm-4">
                        <select name="id_jenispaten" class="form-control required" id="id_jenispaten" required>
                            <option value=""></option>
                            <option value="Biasa">PATEN</option>
                            <option value="Sederhana">PATEN SEDERHANA</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Nama <span class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8">
                        <select name="id" class="select2 form-control required" id="id" required>
                        <option value=""></option>
                        <?php
                        $url = 'https://simpeg.uns.ac.id/api/v2/keu-pegawai?id_jenis_staf=1&token='.md5(date('Y-m-d') . 'simpeg').'&per-page=0';
                        $json = file_get_contents($url);
                        $json = json_decode($json,true);
                        function Json_Super_Unique($array,$key){
                            $temp_array = array();
                            foreach ($array as &$v) {
                                if (!isset($temp_array[$v[$key]]))
                                $temp_array[$v[$key]] =& $v;
                            }
                            $array = array_values($temp_array);
                            return $array;
                        }
            
                        $depositeArrayNew = Json_Super_Unique($json['data'],'ID');
                        function querySort ($x, $y) {
                            return strcasecmp($x['NAMA_TANPA_GELAR'], $y['NAMA_TANPA_GELAR']);
                        }
                        
                        usort($depositeArrayNew, 'querySort');
                        foreach($depositeArrayNew as $d){
                            echo "<option value='".$d['ID']."' data-nip='".$d['NIP']."' data-id-unit='".$d['ID_UNIT']."' data-unit='".$d['UNIT']."' data-nm='".$d['NAMA_TANPA_GELAR']."' data-nm2='".$d['NAMA']."'>".$d['NAMA_TANPA_GELAR']."|".$d['NIP']."</option>";
                        }
                        ?>
                        </select>
                        <input type="hidden" class="form-control required" required="required" name="nama" id="nama" placeholder="" value=""/>
                        <input type="hidden" class="form-control" name="nama_tanpa_gelar" id="nama_tanpa_gelar" placeholder="" value=""/>
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">NIP <span class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8">
                        <input type="text" class="form-control required" required="required" name="nip" id="nip"
                            placeholder="" value="" readonly />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Fakultas <span class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8">
                        <input type="hidden" class="form-control required" required="required" name="id_fakultas" id="id_fakultas" placeholder="" value="" />
                        <input type="text" class="form-control required" required="required" name="fakultas" id="fakultas" placeholder="" value="" />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Pekerjaan <span class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8">
                        <input type="text" class="form-control required" required="required" name="pekerjaan"
                            id="pekerjaan" placeholder="" value="<?php echo $pekerjaan; ?>" />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Email <span class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8">
                        <input type="email" class="form-control required" required="required" name="email" id="email"
                            placeholder="" value="<?php echo $email; ?>" />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Telp/Handphone <span
                            class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8">
                        <input type="number" class="form-control required" required="required" name="hp" id="hp"
                            placeholder="" value="<?php echo $hp; ?>" />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Whatsapp (WA) <span class="text-danger">*</span>
                        <br><small><a href="javascript:;" id="asHP">[Sama dengan HP]</a></small></label>
                    <div class="col-md-8 col-sm-8">
                        <input type="number" class="form-control required" required="required" name="wa" id="wa"
                            placeholder="" value="<?php echo $wa; ?>" />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="alamat_ktp">Alamat sesuai KTP <span
                            class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8">
                        <textarea class="form-control required" rows="3" name="alamat_ktp" id="alamat_ktp"
                            placeholder="" required></textarea>
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="alamat_tinggal">Alamat tempat tinggal <span
                            class="text-danger">*</span>
                        <br>
                        <small><a href="javascript:;" id="asKTP">[Sama dengan KTP]</a></small></label>
                    <div class="col-md-8 col-sm-8">
                        <textarea class="form-control required" rows="3" name="alamat" id="alamat"
                            placeholder="" required></textarea>
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row justify-content-between">
                    <div class="col-md-4 offset-md-8 text-right">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <!-- <button type="button" class="btn btn-success prevBtn">Sebelumnya</button> -->
                            <button type="button" class="btn btn-success nextBtn btn1" id="btn1">Berikutnya</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row setup-content" id="step-2" style="display: none;">
            <div class="form-group col-md-12">
                <div class="row justify-content-between">
                    <div class="col-md-4 offset-md-8 text-right">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-success prevBtn">Sebelumnya</button>
                            <button type="button" class="btn btn-success" id="nextBtn2">Berikutnya</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Inventor <span class="text-danger">*</span></label>
                    <div class="col-md-9 col-sm-8">
                        <select name="idInventor" class="select2 form-control " id="idInventor" required style="width: 100% !important;">
                        <option value=""></option>
                        <?php
                        $json = file_get_contents($url);
                        $json = json_decode($json,true);            
                        $depositeArrayNew = Json_Super_Unique($json['data'],'ID');                        
                        usort($depositeArrayNew, 'querySort');
                        foreach($depositeArrayNew as $d){
                            echo "<option value='".$d['ID']."' data-nip='".$d['NIP']."' data-id-unit='".$d['ID_UNIT']."' data-unit='".$d['UNIT']."' data-nm='".$d['NAMA_TANPA_GELAR']."' data-nm2='".$d['NAMA']."'>".$d['NAMA_TANPA_GELAR']."|".$d['NIP']."</option>";
                        }
                        ?>
                        </select>
                        <input type="hidden" class="form-control required" required="required" name="namaInventor" id="namaInventor" placeholder="" value=""/>
                        <input type="hidden" class="form-control" name="namaInventor2" id="namaInventor2" placeholder="" value=""/>
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">NIP <span class="text-danger">*</span></label>
                    <div class="col-md-9 col-sm-8">
                        <input type="text" class="form-control required2" name="nipInventor" id="nipInventor"
                            placeholder="" value="" required />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Fakultas <span class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8">
                        <input type="hidden" class="form-control required" required="required" name="id_fakultasInventor" id="id_fakultasInventor" placeholder="" value="" />
                        <input type="text" class="form-control required" required="required" name="fakultasInventor" id="fakultasInventor" placeholder="" value="" />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Alamat <span class="text-danger">*</span></label>
                    <div class="col-md-9 col-sm-8">
                        <textarea class="form-control required2" name="alamatInventor" id="alamatInventor"
                            required></textarea>
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Email <span class="text-danger">*</span></label>
                    <div class="col-md-9 col-sm-8">
                        <input type="email" class="form-control required2" name="emailInventor" id="emailInventor"
                            placeholder="" value="" required />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Telepon <span class="text-danger">*</span></label>
                    <div class="col-md-9 col-sm-8">
                        <input type="number" class="form-control required2" name="teleponInventor" id="teleponInventor"
                            placeholder="" value="" required />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar"></label>
                    <div class="col-md-9 col-sm-8">
                        <button type="button" id="addInventor" class="btn btn-primary">Tambah Inventor</button>
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <table class="table table-bordered" id="dataInventor">
                        <thead class="bg-secondary text-white">
                            <tr>
                                <td width="17%">Nama Inventor</td>
                                <td width="17%">NIP</td>
                                <td width="17%">Alamat</td>
                                <td width="17%">Email</td>
                                <td width="17%">Telepon</td>
                                <td width="15%">#</td>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row justify-content-between">
                    <div class="col-md-4 offset-md-8 text-right">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-success prevBtn">Sebelumnya</button>
                            <button type="button" class="btn btn-success" id="nextBtn2">Berikutnya</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row setup-content" id="step-3" style="display: none;">
            <div class="form-group col-md-12">
                <div class="row justify-content-between">
                    <div class="col-md-4 offset-md-8 text-right">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-success prevBtn">Sebelumnya</button>
                            <button type="button" class="btn btn-success nextBtn">Berikutnya</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Judul Invensi (Indonesia) <span
                            class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8">
                        <input type="text" class="form-control" name="judul_id" id="judul_id" required />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Judul Invensi (Inggris)</label>
                    <div class="col-md-8 col-sm-8">
                        <input type="text" class="form-control" name="judul_en" id="judul_en" />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Klaim <span class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8">
                        <textarea name="klaim" id="klaim" class="form-control editor" required></textarea>
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Abstrak (Indonesia) <span
                            class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8" id="#abs_1">
                        <textarea name="abstrak_id" id="abstrak_id" class="form-control editor" required></textarea>
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Abstrak (Inggris)</label>
                    <div class="col-md-8 col-sm-8">
                        <textarea name="abstrak_en" id="abstrak_en" class="form-control editor"></textarea>
                    </div>
                </div>
            </div>
        </div>
        <div class="row setup-content" id="step-4" style="display: none;">
            <div class="form-group col-md-12">
                <div class="row justify-content-between">
                    <div class="col-md-4 offset-md-8 text-right">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-success prevBtn">Sebelumnya</button>
                            <button type="button" id="save" class="btn btn-primary">Simpan</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                        <div class="col-md-12">
                            <h3>Isi/Konten invensi <span class="text-danger">*</span></h3>
                        </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <div class="col-md-12 col-sm-12" id="#abs_1">
                        <textarea name="konten" id="konten" class="form-control" required></textarea>
                    </div>
                </div>
            </div>
            <!-- <div class="form-group">
                <div class="col-md-12">
                    <h3>Upload file - file berikut</h3>
                </div>
            </div>
            
            <div class="form-group col-md-12">
                <div class="">
                    <div id="alert"></div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Scan KTP <span
                            class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8">
                        <input type="file" class="form-control" name="file_ktp" id="file_ktp"
                            placeholder="File Scan KTP" value="" />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Dokumen Deskripsi <span
                            class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8">
                        <input type="file" class="form-control" name="file_deskripsi" id="file_deskripsi"
                            placeholder="File Deskripsi" value="" />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">File Klaim <span class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8">
                        <input type="file" class="form-control" name="file_klaim" id="file_klaim"
                            placeholder="File Klaim" value="" />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">File Abstrak <span
                            class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8">
                        <input type="file" class="form-control" name="file_abstrak" id="file_abstrak"
                            placeholder="File Abstrak" value="" />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">File Gambar</label>
                    <div class="col-md-8 col-sm-8">
                        <input type="file" class="form-control" name="file_gambar" id="file_gambar"
                            placeholder="File Gambar" value="" />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Surat Pengalihan Hak atas Invensi <span
                            class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8">
                        <input type="file" class="form-control" name="file_pengalihan" id="file_pengalihan"
                            placeholder="File Pengalihan" value="" />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="row">
                    <label class="col-md-3 col-sm-4" for="varchar">Surat Pernyataan Kepemilikan Invensi oleh Inventor
                        <span class="text-danger">*</span></label>
                    <div class="col-md-8 col-sm-8">
                        <input type="file" class="form-control" name="file_kepemilikan" id="file_kepemilikan"
                            placeholder="File Kepemilikan" value="" />
                    </div>
                </div>
            </div>
            <div class="form-group col-md-12">
                <div class="col-lg-12 p-3 border border-info"><span class="text-info"><i class="icofont-info-circle"></i></span>
                    File dalam bentuk PDF (.pdf) atau MS Word (.docx)</span></div>
            </div> -->
            <!-- <input type="hidden" name="id" value="<?php echo $id; ?>" />
            <button type="button" id="save" class="btn btn-primary"><?php echo $button ?></button>
            <button type="reset" class="btn btn-secondary">Reset</button> -->
        </div>
    </form>
</div>
