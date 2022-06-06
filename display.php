<?php include 'server.php';
  error_reporting(0);
  session_start();

  if(!isset($_SESSION['username'])) {
    header ("location: login.php");
}
?>

<!DOCTYPE html>
<html>
<head>
<title>Admin-Participants Page</title>

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

th {
    text-align: center;
    vertical-align: middle;
    font-size: 13px;
    font-family: Verdana;
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
        <li class="active"><a href="account.php">Back to main</a></li>
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
  <!--<br/><a href="account.php" class="btn btn-danger">Back</a>-->
    <h3><center>Participants' Information</center></h3>
    <hr>
    <br/>
    <table class="table table-bordered" style="overflow-x: auto; display: flex; display: inherit;">
      <thead class="thead-dark" >
        <tr>
          <th scope="col" style="text-align:center;">#</th>
          <th scope="col" colspan="2" style="text-align:center;">Full Name</th>
          <th scope="col" style="text-align:center;">Date of Birth</th>
          <th scope="col" style="text-align:center;">Age Range</th>
          <th scope="col" style="text-align:center;">Gender</th>
          <th scope="col" style="text-align:center;">Ethnicity</th>
          <th scope="col" style="text-align:center;">City/ Municipality</th>
          <th scope="col" style="text-align:center;">Province</th>
          <th scope="col" style="text-align:center;">Mobile Number</th>
          <th scope="col" style="text-align:center;">Email Address</th>
          <th scope="col" colspan="2" style="text-align:center;">Education</th>
          <th scope="col" style="text-align:center;">Organization/ Office</th>
          <th scope="col" style="text-align:center;">Position</th>
          <th scope="col" style="text-align:center;">Organization/ Office No.</th>
          <th scope="col" style="text-align:center;">Organization's Email</th>
        </tr>
      </thead>
      <tbody>
      <?php
          $no = 1;
          $programadmin = $_SESSION['username'];
          $actvtyID = $_GET['id'];
          $qryforthreetables = "SELECT * FROM projectcode projcode, activities acty, participants p WHERE p.act_id='$actvtyID' AND projcode.projects_id=acty.projects_id AND projcode.project_code='$programadmin' GROUP BY p.id ";
          $qrytoshowparticipants = mysqli_query($connect, $qryforthreetables);
          while ($participants = mysqli_fetch_array($qrytoshowparticipants)) {
            
        ?>
          <tr>
            <td scope="row"><?php echo $no;?></td>
            <td><?php echo ucfirst($participants['firstname']);?></td>
            <td><?php echo ucfirst($participants['lastname']);?></td>
            <td><?php echo $participants['birthdate'];?></td>
            <td><?php echo $participants['agerange'];?></td>
            <td><?php echo $participants['gender'];?></td>
            <td><?php echo ucfirst($participants['ethnicity']);?></td>
            <td><?php echo ucfirst($participants['city_municipality']);?></td>
            <td><?php echo ucfirst($participants['province']);?></td>
            <td><?php echo $participants['mobileno'];?></td>
            <td><?php echo $participants['email'];?></td>
            <td><?php echo ucfirst($participants['education']);?></td>
            <td><?php echo ucfirst($participants['othereduc']);?></td>
            <td><?php echo ucfirst($participants['org_office']);?></td>
            <td><?php echo ucfirst($participants['position']);?></td>
            <td><?php echo $participants['org_no'];?></td>
            <td><?php echo $participants['org_email'];?></td>
          </tr>
        <?php
            $no++;
          }
        ?>
      </tbody>
    </table>
  
</div>
  
</body>
</html>