		<?php
		error_reporting(E_ERROR | E_PARSE);
		include "./ringkas.php";
		
		// scan nama file korpus
		$dir_corpus = "./corpus";
		$files 		= scandir($dir_corpus);
		$files		= array_slice($files, 2);
		//print_rfiles);
		
		// hasil
		if(isset($_GET["id"]) && isset($_GET["compression"])) {
			$id	 = $_GET["id"];
			$compression = $_GET["compression"];
			$output 	 = ringkas($id, $compression);
			$title 		 = substr($id, 0, -4);
		}

		?>

<div class="row">
    <div class="col-md-8">
        <?php
            $berita = mysqli_query($koneksi, "SELECT * FROM berita WHERE id = '$id' ");
            $hasil = mysqli_fetch_object($berita);
        ?>
        <br>
        <h2><?= $hasil->judul; ?></h2>
      </br>
        <img src="admin/img/<?= $hasil->gambar; ?>" height="100" with="110" align="justify" class="img-thumbnail" />

        <p align="justify"><?php echo !empty($output['sumarry'])? nl2br($output['sumarry']) : "";?></p>
        
        <!--
        <button class="ringkas btn btn-primary"><span class="glyphicon glyphicon-flash" aria-hidden="true"></span> Ringkas</button><br/><br/>
        <div class="panel panel-info" id="panelringkas">
          <div class="panel-heading">
            <h3 class="panel-title">Hasil Ringkasan</h3>
          </div>
          <div class="panel-body">
              <p align="justify"><?php // echo !empty($output['summary'])? $output['summary'] : "";?></p>
          </div>
        </div>
        -->
        
       <!--  <a href="index.php?page=manual&id=<?=$id?>" class="btn btn-primary">Lakukan Peringkasan</a> -->
       
          <div >
           <!--  <h4>About</h4> -->
            <?= $hasil->isi; ?>
             </div>
          <br/>
          <div class="sidebar-module">
            <h4>Elsewhere</h4>
            <ol class="list-unstyled">
              <li><a href="#" class="btn btn-primary" role="button">GitHub</a></li><br/>
              <li><a href="#" class="btn btn-primary" role="button">Twitter</a></li><br/>
              <li><a href="#" class="btn btn-primary" role="button">Facebook</a></li><br/>
            </ol>
          </div>
    </div>
</div>
	    
