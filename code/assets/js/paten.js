$(document).ready(function(){
    var BASE_URL = $("url").attr('href');    
    if($(".select2").length){
        $(".select2").select2();
    }
    if($("#Paten").length){
        $(".editor").each(function () {
            let id = $(this).attr('id');
            CKEDITOR.replace(id, {
                resize_enabled: false,
                height: 300,
                entities: true,
                toolbarGroups: [{
                    "name": "basicstyles",
                    "groups": ["basicstyles"]
                },
                {
                    "name": "links",
                    "groups": ["links"]
                },
                {
                    "name": "paragraph",
                    "groups": ['list', 'indent', 'blocks', 'align', 'bidi', 'paragraph']
                },	
                {
                    "name": "styles",
                    "groups": ["styles"]
                },
                {
                    "name": "about",
                    "groups": ["about"]
                }
                ],
                
                removeButtons : 'Source,Save,Templates,PasteText,PasteFromWord,Find,Replace,SelectAll,Scayt,Form,Checkbox,Radio,TextField,Textarea,Select,Button,ImageButton,HiddenField,NewPage,ExportPdf,Preview,Print,RemoveFormat,CopyFormatting,CreateDiv,BidiLtr,BidiRtl,Language,Image,Flash,Table,HorizontalRule,Smiley,PageBreak,Iframe,About,Maximize,ShowBlocks,Strike,Anchor,Unlink,Link,TextColor,BGColor,Indent,Outdent,Styles,Format',
                removePlugins : 'language,templates,uploadimage,link,colorbutton,about,colordialog,filebrowser,elementspath,editorplaceholder,print,preview,smiley,sourcearea,dialogadvtab,table,tableselection,tabletools,templates,forms,newpage,flash,div,indentblock'
            });
        });
        $("#konten").each(function () {
            let id = $(this).attr('id');
            CKEDITOR.replace(id, {
                resize_enabled: false,
                height: 500,
                entities: true,
                removeButtons : 'Source,Save,Templates,PasteText,PasteFromWord,Form,Button,ImageButton'
                // removeButtons : 'Source,Save,Templates,PasteText,PasteFromWord,Find,Replace,SelectAll,Scayt,Form,Checkbox,Radio,TextField,Textarea,Select,Button,ImageButton,HiddenField,NewPage,ExportPdf,Preview,Print,RemoveFormat,CopyFormatting,CreateDiv,BidiLtr,BidiRtl,Language,Image,Flash,Table,HorizontalRule,Smiley,PageBreak,Iframe,About,Maximize,ShowBlocks,Strike,Anchor,Unlink,Link,TextColor,BGColor,Indent,Outdent,Styles,Format',
                // removePlugins : 'language,templates,uploadimage,link,colorbutton,about,colordialog,filebrowser,elementspath,editorplaceholder,print,preview,smiley,sourcearea,dialogadvtab,table,tableselection,tabletools,templates,forms,newpage,flash,div,indentblock'
            });
        });
        var navListItems = $('div.setup-panel div a'),
        allWells = $('.setup-content'),
        allNextBtn = $('.nextBtn');
        allPrevBtn = $('.prevBtn');

        // allWells.hide();

        navListItems.click(function (e) {
            e.preventDefault();
            var $target = $($(this).attr('href')),
                    $item = $(this);

            if (!$item.hasClass('disabled')) {
                navListItems.removeClass('btn-warning').addClass('btn-info');
                $item.removeClass('btn-info').addClass('btn-warning');
                allWells.hide();
                $target.show();
            }
        });

        allNextBtn.click(function(){
            var curStep = $(this).closest(".setup-content"),
                curStepBtn = curStep.attr("id"),
                nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
                curInputs = curStep.find(".required"),
                isValid = true;

            for(var i=0; i<curInputs.length; i++){
                if (!curInputs[i].validity.valid){
                    isValid = false;
                    $(curInputs[i]).addClass("is-invalid");
                }else{
                    $(curInputs[i]).removeClass("is-invalid");
                }
            }

            if (isValid){nextStepWizard.removeClass('disabled').trigger('click');}
            else{
                Swal.fire({
                    text : 'Ada informasi yang belum lengkap',
                    icon : 'error'
                });
            }
        });

        allPrevBtn.click(function(){
            var curStep = $(this).closest(".setup-content"),
                curStepBtn = curStep.attr("id"),
                prevStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().prev().children("a"),
                curInputs = curStep.find("input[type='text'],input[type='url']"),
                isValid = true;
                prevStepWizard.removeClass('disabled').trigger('click');
        });
        $('div.setup-panel div a.btn-primary').trigger('click');

        $("#id").on('change',function(){
            var id = $(this).val();  
            $("#id_pegawai").val($(this).val());        
            $("#nip").val($(this).find(':selected').attr('data-nip'));        
            $("#nama").val($(this).find(':selected').attr('data-nm'));        
            $("#nama_tanpa_gelar").val($(this).find(':selected').attr('data-nm2'));        
            $("#id_fakultas").val($(this).find(':selected').attr('data-id-unit'));        
            $("#fakultas").val($(this).find(':selected').attr('data-unit'));        
        });
        $("#idInventor").on('change',function(){
            var id = $(this).val();  
            // $("#id_pegawai").val($(this).val());        
            $("#nipInventor").val($(this).find(':selected').attr('data-nip'));        
            $("#namaInventor").val($(this).find(':selected').attr('data-nm'));        
            $("#namaInventor2").val($(this).find(':selected').attr('data-nm2'));        
            $("#id_fakultasInventor").val($(this).find(':selected').attr('data-id-unit'));        
            $("#fakultasInventor").val($(this).find(':selected').attr('data-unit'));        
        });
        var convertTableToJson = function()
        {
            var rows = [];
            $('#dataInventor tbody tr').each(function(i, n){
                var $row = $(n);
                var rr = $row.find('td:eq(5)').find('input').val();
                var dd = rr.split(";");
                rows.push({
                    id_pegawai : dd[0],
                    nama    : dd[2],
                    nama_tanpa_gelar :  $row.find('td:eq(0)').text(),
                    nip     : $row.find('td:eq(1)').text(),
                    id_fakultas  : dd[3],
                    fakultas  : dd[4],
                    alamat  : dd[7],
                    email   : $row.find('td:eq(3)').text(),
                    telepon : $row.find('td:eq(4)').text()
                    // nama    : $row.find('td:eq(0)').text(),
                    // nip     : $row.find('td:eq(1)').text(),
                    // alamat  : $row.find('td:eq(2)').text(),
                    // email   : $row.find('td:eq(3)').text(),
                    // telepon : $row.find('td:eq(4)').text()
                });
            });
            return JSON.stringify(rows);
        };

        $("#formPaten").on('click','#btn1',function(){
            var dt = $("#id").val()+';'+$("#id").find(':selected').attr('data-nm')+';'+$("#id").find(':selected').attr('data-nm2')+';'+$("#id").find(':selected').attr('data-nip')+';'+$("#id").find(':selected').attr('data-id-unit')+';'+$("#id").find(':selected').attr('data-unit')+';'+$("#email").val()+';'+$("#hp").val()+';'+$('#alamat_ktp').val();
            var row = "<tr id='utama'>";
            row+="<td>"+$("#id").find(':selected').attr('data-nm')+"</td>";
            row+="<td>"+$("#id").find(':selected').attr('data-nip')+"</td>";
            row+="<td>"+$("#id").find(':selected').attr('data-unit')+"</td>";
            row+="<td>"+$("#email").val()+"</td>";
            row+="<td>"+$("#hp").val()+"</td>";
            row+="<td>Inventor Utama";
            row+="<input type='hidden' name='dataItem' value='"+dt+"'>"
            row+="</td>";
            row+="</tr>";
            $("#dataInventor").find('tr#utama').remove();
            $("#dataInventor").append(row);
        }).on('click','#nextBtn2',function(){
            var d = $("#dataInventor tbody tr").length;
            if(d <= 0){
                Swal.fire({
                    text : 'Data inventor tidak boleh kosong',
                    icon : 'error'
                })
            }else{
                var inventor = convertTableToJson();
                $('div.setup-panel div a[href="#step-3"]').removeAttr('disabled').trigger("click");
            }
        });

        $("#addInventor").click(function(){
            var dt = $("#idInventor").val()+';'+$("#namaInventor").val()+';'+$("#namaInventor2").val()+';'+$("#nipInventor").val()+';'+$("#id_fakultasInventor").val()+';'+$("#fakultasInventor").val()+';'+$("#emailInventor").val()+';'+$("#teleponInventor").val()+';'+$("#alamatInventor").val();
            var row ="<tr>";
            row+="<td>"+$("#namaInventor").val()+"</td>";
            row+="<td>"+$("#nipInventor").val()+"</td>";
            row+="<td>"+$("#fakultasInventor").val()+"</td>";
            row+="<td>"+$("#emailInventor").val()+"</td>";
            row+="<td>"+$("#teleponInventor").val()+"</td>";
            row+="<td><button type='button' class='btn btn-danger' id='delInventor'><i class='icofont-trash'></i></button>";
            row+="<input type='hidden' name='dataItem' value='"+dt+"'>"
            row+="</td>";
            row+="</tr>";
            var curStep = $(this).closest(".setup-content"),
                curInputs = curStep.find(".required2"),
                isValid = true;

            for(var i=0; i<curInputs.length; i++){
                if (!curInputs[i].validity.valid){
                    isValid = false;
                    $(curInputs[i]).addClass("is-invalid");
                }else{
                    $(curInputs[i]).removeClass("is-invalid");
                }
            }
            if(isValid){
                $("#dataInventor").append(row);
                $("#idInventor").val('').trigger('change');
                $("#idInventor, #namaInventor, #namaInventor2, #nipInventor, #id_fakultasInventor, #fakultasInventor, #alamatInventor,#emailInventor,#teleponInventor").val('');
            }
        });

        $("#dataInventor").on('click','#delInventor',function(){
            var tr = $(this).closest('tr');
            tr.remove();
        })

        $("#formPaten").on('click','#asKTP',function(){
            $("#alamat_tinggal").val($("#alamat_ktp").val());
        }).on('click','#asHP',function(){
            var hp = $("#hp").val();
            $("#wa").val(hp);
        }).on('click','#save',function(){
            $("#alert").html('<div class="spinner-border text-warning" role="status"><span class="sr-only">Loading...</span></div> Loading...').removeClass('alert alert-danger alert-success');
            var formData = new FormData($("form#formPaten")[0]);
            // $("#id_pegawai").val($("#id").val());        
            // $("#nip").val($(this).find(':selected').attr('data-nip'));        
            // $("#nama").val($(this).find(':selected').attr('data-nm'));        
            // $("#nama_tanpa_gelar").val($(this).find(':selected').attr('data-nm2'));        
            // $("#id_fakultas").val($(this).find(':selected').attr('data-id-unit'));        
            // $("#fakultas").val($(this).find(':selected').attr('data-unit')); 
            // formData.append('id_fakultas', $("#id").val());
            formData.append('id_pegawai', $("#id").val());
            formData.append('nama', $("#id").find(':selected').attr('data-nm'));
            formData.append('nama_tanpa_gelar', $("#id").find(':selected').attr('data-nm2'));
            formData.append('id_fakultas', $("#id").find(':selected').attr('data-id-unit'));
            var inventor = convertTableToJson();
            formData.append('inventor', convertTableToJson());
            var klaim = CKEDITOR.instances.klaim.getData();
            var abstrak_id = CKEDITOR.instances.abstrak_id.getData();
            var abstrak_en = CKEDITOR.instances.abstrak_en.getData();

            formData.append('klaim', klaim);
            formData.append('abstrak_id', abstrak_id);
            formData.append('abstrak_en', abstrak_en);
            $.ajax({
                type: "POST",
                url: BASE_URL + 'paten/save/',
                data: formData,
                contentType: false,
                processData: false,
                success: function(res) {
                    if(res.trim() == 'done'){
                        Swal.fire({
                            text : 'Data berhasil disimpan',
                            icon : 'success'
                            // timer : 1500
                        }).then(function(){ 
                            location.reload();
                        });
                    }else{
                        $("#alert").html(res).addClass('alert alert-danger');
                    }
                }
            });
        // }
        });
    }


})