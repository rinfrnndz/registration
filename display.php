<?php include 'server.php';
  error_reporting(0);
  session_start();

  if(!isset($_SESSION['username'])) {
    header ("location: login.php");
  } 
  //SQL for displaying the participants of specific activity
    $programadmin = $_SESSION['username'];
    $actvtyID = $_GET['id'];
    $qryforthreetables = "SELECT * FROM projectcode projcode, activities acty, participants p WHERE p.act_id='$actvtyID' AND projcode.projects_id=acty.projects_id AND projcode.project_code='$programadmin' GROUP BY p.id ";
    $qrytoshowparticipants = mysqli_query($connect, $qryforthreetables);

?>

<!DOCTYPE html>
<html>
<head>
<title>Admin-Participants Page</title>

<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  /*background-color: white;*/
  background-image: url("iag.jpg");
  height: 1000px; /* You must set a specified height */
  min-height: 100vh;
  background-position: center; /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover; /* Resize the background image to cover the entire container */
  display: flex;
  flex-direction: column;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  background-color: white;
  padding-left: 60px;
  padding-right: 60px;
  padding: 50px;
  width: 90%;
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
    font-size: 12px;
    font-family: Verdana;
}

.footer {
  position: relative;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: #fff;
  color: #2f2f2f;
  opacity: 0.9;
  text-align: left;
  height: 9%;
  padding: 25px;
  margin-top: auto;
  font-size: 13px;
}
</style>
<script type="text/javasript" src="jquery-3.6.0.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default" style="font-family: calibri; letter-spacing: 1.1px; font-weight: bold;">
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
  <hr><br/>
  <button onclick="window.print()" class="btn btn-default">Print this page</button><br>
  
  <div class="table-responsive" style="font-family:calibri; min-width:280px; padding:20px; background-color:white;">
    <table class="table table-condensed table-fixed" >
      <thead>
        <tr>
          <th scope="row" style="text-align:center;">#</th>
          <th scope="row" colspan="2" style="text-align:center;">Full Name</th>
          <th scope="row" style="text-align:center;">Date of Birth</th>
          <th scope="row" style="text-align:center;">Age Range</th>
          <th scope="row" style="text-align:center;">Gender</th>
          <th scope="row" style="text-align:center;">Ethnicity</th>
          <th scope="row" style="text-align:center;">City/ Municipality</th>
          <th scope="row" style="text-align:center;">Province</th>
          <th scope="row" style="text-align:center;">Mobile Number</th>
          <th scope="row" style="text-align:center;">Email Address</th>
          <th scope="row" colspan="2" style="text-align:center;">Education</th>
          <th scope="row" style="text-align:center;">Organization/ Office</th>
          <th scope="row" style="text-align:center;">Position</th>
          <th scope="row" style="text-align:center;">Organization/ Office No.</th>
          <th scope="row" style="text-align:center;">Organization's Email</th>
        </tr>
      </thead>
      <tbody>
      <?php
          $no = 1;
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
  </div> <br><!-- 1st div> -->
    
  <div style="padding:10px;">
    <div class="col-md-4" style="background-color:white; width:100%; margin-left:auto;margin-right:auto;border: 1px gray; border-width: thin; padding:10px 10px; box-shadow: 5px 10px 20px grey; opacity:0.8; border-radius:15px;">
      <table class="table table-bordered" style="width:90%;margin-left:auto;margin-right:auto; margin-top:25px;">
        <!-- PARTICIPANTS COUNT -->
        <?php //For total number of Participants for selected Activity
          $participants_count = "SELECT COUNT(*) AS Total FROM projectcode projcode, activities acty, participants p WHERE p.act_id='$actvtyID' AND projcode.projects_id=acty.projects_id AND projcode.project_code='$programadmin' GROUP BY acty.id ";
          $sqlforcategory = mysqli_query($connect, $participants_count);
          $row_count = mysqli_fetch_array($sqlforcategory);
        ?>
        <tr><td><label for="">Total Number of Participants:</label>&nbsp;&nbsp;<label for=""><?php echo $row_count['Total'];?></label></td></tr>
      </table>
      
      <table class="table table-bordered" style="width:90%;margin-left:auto;margin-right:auto;">
        <!-- GENDER COUNT -->
        <?php //For total number of Male and Female for selected Activity
          $gender_count = "SELECT COUNT(CASE WHEN gender='Male' THEN 1 END) AS 'MALE', COUNT(CASE WHEN gender='Female' THEN 1 END) AS 'FEMALE' FROM projectcode projcode, activities acty, participants p WHERE p.act_id='$actvtyID' AND projcode.projects_id=acty.projects_id AND projcode.project_code='$programadmin' GROUP BY acty.id ";
          $sqlforgender = mysqli_query($connect, $gender_count);
          $gender_count = mysqli_fetch_array($sqlforgender);
        ?>
        <tr>
          <td><label for="">Total Number of Male:</label></td>
          <td><label for=""><?php echo $gender_count['MALE'];?></label></td>
          <td><label for="">Total Number of Female:</label></td>
          <td><label for=""><?php echo $gender_count['FEMALE'];?></label></td>
        </tr>
      </table>
      
      <table class="table table-bordered" style="width:90%;margin-left:auto;margin-right:auto;">
        <?php //For Age Range COUNT
            $agecount = "SELECT 
                            SUM(IF(agerange BETWEEN 15 and 25,1,0)) as '15-25',
                            SUM(IF(agerange BETWEEN 26 and 35,1,0)) as '26-35',
                            SUM(IF(agerange BETWEEN 36 and 45,1,0)) as '36-45',
                            SUM(IF(agerange BETWEEN 46 and 55,1,0)) as '46-55',
                            SUM(IF(agerange BETWEEN 56 and 65,1,0)) as '56-65',
                            SUM(IF(agerange >=65, 1, 0)) as 'Over65'
                          FROM projectcode projcode, activities acty, participants p 
                          WHERE p.act_id='$actvtyID' AND projcode.projects_id=acty.projects_id AND projcode.project_code='$programadmin' GROUP BY acty.id ";
            $sqlforagerange = mysqli_query($connect, $agecount);
            $age_count = mysqli_fetch_array($sqlforagerange);
          ?>
          <tr><td colspan="6"><label>Age Range</label></td></tr>
          <tr>
            <td><label>(15-25):</label>&nbsp;<label><?php echo $age_count['15-25'];?></label></td>
            <td><label>(26-35):</label>&nbsp;<label><?php echo $age_count['26-35'];?></label></td>
            <td><label>(36-45):</label>&nbsp;<label><?php echo $age_count['36-45'];?></label></td>
            <td><label>(46-55):</label>&nbsp;<label><?php echo $age_count['46-55'];?></label></td>
            <td><label>(56-65):</label>&nbsp;<label><?php echo $age_count['56-65'];?></label></td>
            <td><label>(Over 65):</label>&nbsp;<label><?php echo $age_count['Over65'];?></label></td>
            
          </tr>
      </table>
      <!-- //For Ethnicity COUNT -->
      <table class="table table-bordered" style="width:90%;margin-left:auto;margin-right:auto;">
        <tr><td colspan="2"><label for="">Ethnicity:</label></td></tr>
        <?php
          foreach($connect->query("SELECT ethnicity,COUNT(ethnicity) FROM projectcode projcode, activities acty, participants p WHERE p.act_id='$actvtyID' AND projcode.projects_id=acty.projects_id AND projcode.project_code='$programadmin' GROUP BY ethnicity ORDER BY p.id ") as $ethnicity_row) {
        ?>
        <tr>
          <td><label for=""><?php echo $ethnicity_row['ethnicity'];?></label></td>
          <td><label for=""><?php echo $ethnicity_row['COUNT(ethnicity)'];?></label></td>
        <?php }?>
          </tr>
      </table>
      <!-- //For City/Municipality COUNT -->
      <table class="table table-bordered" style="width:90%;margin-left:auto;margin-right:auto;">
        <tr><td colspan="2"><label for="">City/Municipality:</label></td></tr>
        <?php 
          foreach($connect->query("SELECT city_municipality,COUNT(*) FROM projectcode projcode, activities acty, participants p WHERE p.act_id='$actvtyID' AND projcode.projects_id=acty.projects_id AND projcode.project_code='$programadmin' GROUP BY city_municipality ORDER BY p.id ") as $ctm_row) {
        ?>
        <tr>
          <td><label for=""><?php echo $ctm_row['city_municipality'];?></label></td>
          <td><label for=""><?php echo $ctm_row['COUNT(*)'];?></label></td>
        <?php }?>
        </tr>
      </table>
      <!-- //For Province COUNT -->
      <table class="table table-bordered" style="width:90%;margin-left:auto;margin-right:auto;">
        <tr><td colspan="2"><label for="">Province:</label></td></tr>
        <?php 
          $province_sql = "SELECT province,COUNT(*) PCOUNT 
                            FROM projectcode projcode, activities acty, participants p 
                            WHERE p.act_id='$actvtyID' AND projcode.projects_id=acty.projects_id AND projcode.project_code='$programadmin' 
                            GROUP BY acty.id,p.province 
                            ORDER BY p.id";
          $province_result = $connect->query($province_sql);
          
            while ($province_rows = mysqli_fetch_array($province_result)) {
              
        ?>
        <tr>
          <td><label for=""><?php echo ucfirst($province_rows['province']);?></label></td>
          <td><label for=""><?php echo $province_rows['PCOUNT'];?></label></td>
        <?php }
          
        ?>
        </tr>
      </table>
    </div>
  </div><!-- div for counts -->
</div>

<!-- Footer -->
<div class="footer">
  <label style="position: left; font-weight: normal; font-family: calibri; ">
    <b>&copy; 2022 <a href="https://iag.org.ph/">Institute for Autonomy and Governance</a></b><br/>
    Notre Dame University, Notre Dame Avenue, Cotabato City<br/>
    </label>
</div><!-- Footer -->
</body>
</html>