<?php

	session_start();

	include ('config.php');

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Channels Monitor</title>
	<script type="text/javascript" src="jquery.js"></script>
	<style type="text/css">

		body{
			margin:  0px;
			font-family: Tahoma, Verdana;
			padding-left: 10;
			padding-right: 10;
			background-color: black;
			color:  white;
		}
		
		.card{
			
			background-color: #383535;
			min-width: 20px;
			min-height: 20px;
			display: inline-block;
			margin: 2px;
			border-radius: 10px;
		}

		.add-channel{
			text-align: center;
			margin-bottom: 10px;
			padding-bottom: 20px;
			border-bottom: 1px solid #ccc;
		}

		.add-channel input{
			width:  15%;
			height: 30px;
			border-radius: 3px;
			border:  1px solid #ddd;
			padding: 0px 5px;
		}

		.add-channel input[type = 'button']{
			width:  100px;
		}		

		video {
	    min-width: 100%; 
	    min-height: 100%;
	    max-width: 100%; 
	    max-height: 100%;
	    width: auto; 
	    height: auto; 
	    background-size: cover;
	    overflow: hidden;
	}

	#monitor-header{
		background-color: #2c2f34;
		padding: 20px;
	}

	#monitor-header div{
		/*border:  1px solid red;*/
		display: inline-block;
		width:  45%;
	}

	#monitor-header div input[type='number']{
		width: 25%;
	}

	</style>
	<link href="https://vjs.zencdn.net/7.11.4/video-js.css" rel="stylesheet" />

	

	<script>

		$(document).ready(function(){

		});

	  var username;
	  var accessToken = "Bearer ";
	  var refreshToken;
	  var operatorUID;
	  var userID;


	  function login(){

	  	var userUID = document.getElementById('name').value;
	  	var password = document.getElementById('password').value;


	  	var myHeaders = new Headers();
		myHeaders.append("Content-Type", "application/x-www-form-urlencoded");

		var urlencoded = new URLSearchParams();
		urlencoded.append("username", userUID);
		urlencoded.append("password", password);
		urlencoded.append("device", navigator.userAgent);

		var requestOptions = {
		  method: 'POST',
		  headers: myHeaders,
		  body: urlencoded,
		  redirect: 'follow'
		};

		fetch("https://ott.tvanywhereafrica.com:28182/api/client/v1/global/login", requestOptions).then(
		response => {
			if (response.ok){
				return response.json()
			}else{

				console.log('Not Successful');
			}
		}).then(result => {

			username = userUID;
		   	accessToken = "Bearer " + result['data']['access_token'];
		  	refreshToken = result['data']['refresh_token'];
		  	operatorUID = result['data']['operator_uid'];
		  	userID = result['data']['user_id'];

		  	fetchLinks(operatorUID, userID, accessToken);

		}).catch(error => console.log('error', error));

	  }

	  function fetchLinks(operator, userid, theToken){

	  	var myHeaders = new Headers();
		myHeaders.append("Authorization", theToken);

		var requestOptions = {
		  method: 'GET',
		  headers: myHeaders,
		  redirect: 'follow'
		};

		var uRl = "https://ott.tvanywhereafrica.com:28182/api/client/v1/" + operator + "/users/" + userid + "/live/channels/";

		fetch(uRl, requestOptions)
		  .then(response => {
		  	if (response.ok){
				return response.json()
			}else{

				console.log('Not Channels found');
			}

		  	})
		  .then(result => {
		  	console.log(result['data'])

		  	for (i = 0; i < result['data'].length; i++){

		  		var url = result['data'][i]['url_cm']['url'];  		

				$("#div" + i).show();

				$("#div" + i + " video source").attr('src', url);
				$("#div" + i + " video")[0].load();
				 			

		  	}

		  })
		  .catch(error => console.log('error', error));
	  }

	  function goTo(a){
	  	window.location.replace(a);
	  }

</script>


<script src="https://vjs.zencdn.net/7.11.4/video.min.js"></script>
</head>
<body>
	<div id = "allchannels">
		<div id = "monitor-header">
			<div style = "float: left;">
				<center>
					<form method="post" action = "monitor.php">

						<span style = "">
							<label for ="end">Show</label>
							<input type="number" id ="end" name="end" value = "10" min = "0"> Records
						</span>

						<span style = "float: right;">
							<label for ="start">Starting From</label>
							<input type="number" id ="start" name="start" value = "0" min = "0">
							<input type="submit" name="show" value = "GO">
						</span>				
						
					</form>
				</center>
			</div>

		<div style = "margin: 0; padding:  5px;color: text-align: right;">
			<button onClick="goTo('index.php')" style ="position: fixed; right: 0; top:0; margin-top: 5px;">Exit</button>			
		</div>
	</div>


	<?php

		//echo "<center><h2>$channelStatus</h2></center>";

		if (isset($_POST['show'])){

			$start = mysqli_real_escape_string($db, $_POST['start']);
			$end = mysqli_real_escape_string($db, $_POST['end']);

			$query = mysqli_query($db, "select * from channels limit $start, $end");

		}else{

			$query = mysqli_query($db, "select * from channels limit 10");

		}


		while ($key = mysqli_fetch_array($query)){

			$channelName = $key["UID"];
			$channelLink = $key["Link"];
			$channelStatus = $key["Status"];
			$channelPosition = $key["Position"];
			$channelDate = $key["Date"];

			?>
								
				<div class = 'card' style="overflow:auto; resize:both;">
					<div align="center" style = "background-color: black; color: white"><?php echo $channelName; ?></div>
						<video data-setup='{"controls": true, "autoplay": true, "preload": "auto"}' class="video-js" width="160" height="120" preload = "auto" autoplay="true" muted controls>
					   <source src= "<?php echo $channelLink; ?>" type="application/x-mpegURL">
					  <!-- <source src="movie.ogg" type="video/ogg">
					  Your browser does not support the video tag. -->
					</video> 
				</div>				

			<?php
		}
	?>
	</div>
	
</body>
</html>