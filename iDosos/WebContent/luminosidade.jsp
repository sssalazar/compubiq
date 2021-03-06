<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" href="style.css" />
<title>Luminosidade</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js"
	type="text/javascript"></script>

</head>
<body class="text-center">
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		<header class="masthead mb-auto">
			<div class="inner">
				<h3 class="masthead-brand">UFF</h3>
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link" href="temperatura.jsp">Temperatura</a> <a
						class="nav-link active" href="luminosidade.jsp">Luminosidade</a> <a
						class="nav-link" href="setup.jsp">Configurações</a>
				</nav>
			</div>
		</header>

		<main role="main" class="inner cover">
		<div class="form-body mx-auto">
			<h1>Luminosidade</h1>

			<canvas id="chart-canvas"></canvas>
		</div>
		</main>

		<footer class="mastfoot mt-auto">
			<p>Desenvolvido para a aula de Computação Ubíqua no IC da UFF no
				semestre 2018-2.</p>
		</footer>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous" type="text/javascript"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous" type="text/javascript"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous" type="text/javascript"></script>
	<script type="text/javascript">
		var ctx = document.getElementById("chart-canvas").getContext('2d');
		var myChart = new Chart(ctx, {
			type : 'line',
			data : {
				backgroundColor : 'rgb(239, 239, 57)',
				borderColor : 'rgb(239, 239, 57)',
				labels : [ "13:00", "13:05", "13:10", "13:15", "13:20",
						"13:25", "13:30", "13:35", "13:40", "13:45", "13:50",
						"13:55" ],
				datasets : [ {
					label : 'Luminosidade (cad)',
					data : [ 40, 52, 65, 55, 88, 49, 72, 79, 63, 40,
							37, 41 ],
							backgroundColor : 'rgb(239, 239, 57)',
							borderColor : 'rgb(239, 239, 57)',
					borderWidth : 1,
					fill : false
				} ]
			},    options: {
		        scales: {
		             yAxes: [{
		                 ticks: {
		                     beginAtZero:true,
		                     max:100
		                 }
		             }]
		     		
		         }
		     }
		});
	</script>
</body>
</html>
