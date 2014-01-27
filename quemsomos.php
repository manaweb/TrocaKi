    <?php include('topo.php'); ?>
    <div class="container">
       <h2>QUEM SOMOS</h2>
       <p>
       	<?php
       		$sql = "SELECT * FROM historico limit 1";
       		$result = mysql_query($sql);
       		$dados = mysql_fetch_assoc($result);
       		echo $dados['texto'];
       	?>
       </p>
    </div>
    <?php include('rodape.php'); ?>
    </body>
</html>
