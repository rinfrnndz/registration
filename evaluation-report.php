<?php include 'server.php';
  error_reporting (0);
  session_start ();

  if(!isset($_SESSION['username'])) {
      header ("location: login.php");
  }
  $progamadmin = $_SESSION['username'];
?>

<!DOCTYPE html>
<html>
<head>
<title>Admin-Evaluation Report</title>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-image: url("iag.jpg");
  height: 1000px; /* You must set a specified height */
  background-position: center; /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover; /* Resize the background image to cover the entire container */
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 50px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=email] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=email]:focus {
  background-color: #ddd;
  outline: none;
}

input[type=text], input[type=date] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=date]:focus {
  background-color: #ddd;
  outline: none;
}
/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}

</style>
<script type="text/javasript" src="jquery-3.6.0.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-default" >
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar" >
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar" >
    <ul class="nav navbar-nav" >
      <li class="active"><a href="account.php">IAG</a></li>
      <li><a href="activity.php">Add Activity</a></li>
      <li><a href="evaluation-report.php">Evaluation Report</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="logout.php"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
    </div>
  </div>
</nav>

<div class="container">
<?php echo "<h1><center>" .$_SESSION['username']. " Evaluation Report</center></h1>"; ?>
<hr><br/>
<script>
  function showUser(str) {
    if (str=="") {
      document.getElementById("evaluation_data").innerHTML="";
    return;
    }
    var xmlhttp=new XMLHttpRequest();
    xmlhttp.onreadystatechange=function() {
    if (this.readyState==4 && this.status==200) {
      document.getElementById("evaluation_data").innerHTML=this.responseText;
      }
    }
    xmlhttp.open("GET","evaluation-action.php?q="+str,true);
    xmlhttp.send();
  }
</script>
<form action="" method="POST">
  <select class="" name="evaluation_list" id="evaluation_list" onchange="showUser(this.value)" style="margin-left:75%;padding:10px; max-width:auto; width:25%; margin-bottom:1%;">
    <option disabled='disabled' selected='selected'>--Select--</option>
  <?php
   $select = mysqli_query($connect, "SELECT * FROM projectcode projects, activities activity, evaluation eval WHERE activity.id=eval.acty_id AND projects.projects_id=activity.projects_id AND projects.project_code = '$progamadmin' GROUP BY eval.acty_id ORDER BY `timestamp` DESC "); 
    while ($evaluation_row=mysqli_fetch_array($select)) {
  ?>
    <option value="<?php echo $evaluation_row['acty_id'];?>"><?php echo $evaluation_row['activity_title'];?></option>
  <?php } ?>
  </select>
</form>
<div id="evaluation_data"><b>Participant's Feedback will be displayed here....</b></div>
  
</body>
</html>