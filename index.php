<!DOCTYPE html>
<html>
<head>
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script
		  src="https://code.jquery.com/jquery-3.3.1.js"
		  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
		  crossorigin="anonymous"></script>
</head>
<body>

	<?php
		session_start();
		$_SESSION['username'] = "Pankaj Kumar Singh";

	?>
	
	<div id="wrapper">
		<h1>Welcome <?php echo $_SESSION['username'];?>  </h1>

		<div class="chat_wrapper">
			<div id="chat"></div>
			<form method="POST" id="messageFrm">
				<textarea class="textarea" name="message" cols="30" rows="7"></textarea>
			</form>
		</div>
	</div>

	<script>

		LoadChat();

		setInterval(function(){
			LoadChat();
		},1000);


		function LoadChat(){
			$.post('handlers/messages.php?action=getMessages', function(response){
				
				var scrollpos = $('#chat').scrollTop();
				var scrollpos = parseInt(scrollpos) +520;
				var scrollHeight = $('#chat').prop('scrollHeight');


				$('#chat').html(response);

				if (scrollpos < scrollHeight){

				}else{
					$('#chat').scrollTop($('#chat').prop('scrollHeight'));
				}

			});
		}



		$('.textarea').keyup(function(e){

			if(e.which == 13){
				$('form').submit();
			}
		});

		$('form').submit(function(){

			var message = $('.textarea').val();

			$.post('handlers/messages.php?action=sendMessage&message='+message, function(response){
			
				if ( response == 1 ){
					LoadChat();
					document.getElementById('messageFrm').reset();
				}
		});
		return false;
	});
	</script>
</body>
</html>