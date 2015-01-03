<?php
	session_start();
	if(!isset($_SESSION['contador'])){
		$_SESSION['contador']=0;
	}
?>
<!doctype html>
<html lang="es">
	<head>
		<title>Tienda On-Line</title>
		<link rel=Stylesheet href="<?php echo base_url('css/movil.css');?>" media="screen and (min-width: 1px) and (max-width: 800px">
		<link rel=Stylesheet href="<?php echo base_url('css/pcmac.css');?>" media="screen and (min-width: 801px) and (max-width: 4000px">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script type="text/javascript" src="<?php echo base_url('js/jquery.js');?>"></script>
		<script type="text/javascript" src="<?php echo base_url('js/codigo.js');?>"></script>
	</head>
	<body>
		<div id="contenedor">
			<header>
				<a href="<?php echo base_url('index.php');?>"><h1>Tienda</h1></a>
				<h2>HTML, MySql, Ajax, JavaScript, PHP</h2>
			</header>
			<section>
			<div id="contienecarrito">
			<div id="carrito" style="background:rgb(200,200,200);color:black;">
				Carrito
			</div>
			<a href="<?php echo base_url('php/destruir.php');?>"><button>Vaciar carrito</button></a>
			<a href="<?php echo base_url('confirmar.php');?>"><button>Confirmar compra</button></a>
			</div>