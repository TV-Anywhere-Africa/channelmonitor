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
			background-color: transparent;
			min-width: 100px;
			min-height: 100px;
			display: inline-block;
			margin:  5px;
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

		.add-channel input[type = 'submit']{
			width:  100px;
		}
	</style>

	<link href="https://vjs.zencdn.net/7.11.4/video-js.css" rel="stylesheet" />
	 
	<script>

	  var username;
	  var accessToken = "Bearer ";
	  var refreshToken;
	  var operatorUID;
	  var userID;

	  //log user in
	  function login(){

	  	var userUID = document.getElementById('name').value;
	  	var password = document.getElementById('password').value;
	  	document.getElementById('postchannels').innerHTML = "";

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

			console.log(result)

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
		  	console.log(result)

		  	var theData = result['data'].length;

		  	let counter = 0;
		  	for (i = 0; i < theData; i++){

		  		if (result['data'][i]['url_cm'] != null){
		  			counter++;
		  			var uid = result['data'][i]['channel_uid'];
		  			var url = result['data'][i]['url_cm']['url'];

		  		

				document.getElementById('postchannels').innerHTML +="<input type='text' name = 'uid" + i + "' value = '" + uid + "' readonly><input type='hidden' name = 'url" + i + "' value = '" + url + "' readonly>"; 
		  		}
		  		

				

		  	}	  	
		  	
		  	document.getElementById('postchannels').innerHTML += "<p><center><input type=hidden name=limit id=limit value='" + counter + "' readonly><input type=hidden name=user id=user value='" + username + "' readonly><input type='submit' name='load' value = 'Monitor'></center></p>";
		  	

		  })
		  .catch(error => console.log('error', error));
	  }

	</script>


<script src="https://vjs.zencdn.net/7.11.4/video.min.js"></script>
</head>

<body>

	<?php

		if (isset($_POST['load'])){

			$cdate = date('Y-m-d H:i:s');
			$limit = mysqli_real_escape_string($db, $_POST['limit']);
			$user = mysqli_real_escape_string($db, $_POST['user']);
			$limit = intval($limit);

			mysqli_query($db, "truncate table channels") or die (mysqli_error($db));

			for ($i = 0; $i < $limit; $i++){

				if (isset($_POST['uid'.$i]) && isset($_POST['url'.$i])){

					$uid = mysqli_real_escape_string($db, $_POST['uid'.$i]);
					$url = mysqli_real_escape_string($db, $_POST['url'.$i]);

					mysqli_query($db, "insert into channels (UID, Name, Link, Status, Position, Date) values ('$uid', '$uid', '$url', '$user', '$i', '$cdate')");

				}

			}

			echo "<script>window.location.replace('monitor.php')</script>";			
		}

	?>

	<div class ="add-channel">
		<div name = "addchannel">
			<input type="text" id="name" name = "name" placeholder="Enter Username" required/>
			<input type="password" id="password" name = "password" placeholder="Password" required/>
			<button onClick = "login()" id = "add" class = "add">Load</button>
		</div>
	</div>



	<div id = "allchannels">


		<form name = "postchannels" id = "postchannels" action = "index.php" method = "post">
			
		</form>
	</div>
	
</body>
</html>