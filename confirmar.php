<?php 
	include "php/config.inc";
	include "php/cabecera.inc" ?>
	&iquest;Ya eres usuario?<br>
	<form action="php/logcliente.php" method="POST">
		<input type="text" name="usuario" placeholder="Introduce tu nombre de usuario">
		<input type="password" name="contrasena" placeholder="Introduce tu contrase&ntilde;a">
		<input type="submit">
	</form>
	&iquest;Eres nuevo usuario?<br>
<?php include "php/piedepagina.inc" ?>