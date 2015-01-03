<?php
include "config.inc";
	include "cabecera.inc";
	$contador=0;
	$conexion = mysqli_connect($servidor,$usuario,$contrasena,$basededatos);
	mysqli_set_charset($conexion, "utf8");
	$peticion = "SELECT * FROM clientes WHERE usuario = '".$_POST['usuario']."' AND contrasena = '".$_POST['contrasena']."'";
	$resultado = mysqli_query($conexion, $peticion);
	while ($fila = mysqli_fetch_array($resultado)){
		$contador++;
		$_SESSION['usuario'] = $fila['id'];
	}
	if($contador > 0){
		$peticion = "INSERT INTO pedidos VALUES (NULL, ".$_SESSION['usuario'].", '".date('U')."','0')";
		$resultado = mysqli_query($conexion, $peticion);
		$peticion = "SELECT * FROM pedidos WHERE idCliente='".$_SESSION['usuario']."' ORDER BY fecha DESC LIMIT 1";
		$resultado = mysqli_query($conexion, $peticion);
		while ($fila = mysqli_fetch_array($resultado)){
			$_SESSION['idpedido'] = $fila['id'];
		}
		for($i=0;$i<$_SESSION['contador'];$i++){
			//echo "Producto: ".$_SESSION['producto'][$i]."<br>";
			$peticion = "INSERT INTO lineaspedidos VALUES (NULL, '".$_SESSION['idpedido']."', '".$_SESSION['producto'][$i]."', '1')";
			$resultado = mysqli_query($conexion, $peticion);
			$peticion = "SELECT * FROM productos WHERE id='".$_SESSION['producto'][$i]."'";
			$resultado = mysqli_query($conexion, $peticion);
			while ($fila = mysqli_fetch_array($resultado)){
				$existencia = $fila['existencia'];
				$peticiondos = "UPDATE productos SET existencia = '".($existencia-1)."' WHERE id='".$_SESSION['producto'][$i]."'";
				$resultadodos = mysqli_query($conexion, $peticiondos);
			}
		}
			echo 'Tu pedido a sido realizado satisfactoriamente. Redireccionando a la pagina principal.';
			session_destroy();
			echo '<meta http-equiv="refresh" content="5; url=../index.php">';
		
	} 
	else{
		echo 'El usuario no existe. Volviendo a la tienda.';
		echo '<meta http-equiv="refresh" content="5; url=../confirmar.php">';
	}
	mysqli_close($conexion);
	include "piedepagina.inc";
?>