<?php require_once 'actions/db_connect.php';

?>


<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script
  src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
  integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g="
  crossorigin="anonymous"></script>   
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Event management Company</title>

    <style type="text/css">
    #logos{
        width: 50px;

    }
        .manageUser {
            width: 50%;
            margin: auto;
        }
        .jumbotron1{
            background: url("img/bild1.png") no-repeat center center;
            background-size: cover;
            height: 500px;
            margin-bottom: 50px;
        }

    </style>

</head>
<body>

     <style type="text/css">
        .manageUser {

            width: 100%;
            margin: auto;
    }

    h1 {
            text-align: center;
            color:#337AB7;
            font-size: 50px;
            margin-bottom: 30px;
            margin-top:30px;
        }
        img {
            width: 100%;
        }

    </style>

 

</head>

<body>

 
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" >
      <ul class="nav navbar-nav navbar-right">
        
        <li><a href="login.php" class="btn btn-lg btn-default" style="color:rgb(144,0,0)" >Sign in</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->


<h1 class="text-danger text-center">VIENNA EVENTS</h1>
<div class="jumbotron1"></div>
<div class="container">
        
        <?php
        
            $sql = "SELECT image,description,dateandtime,id FROM events";

            $result = $connect -> query($sql);

            echo "<div class='row'>";    
            if($result->num_rows > 0) {

                while($row = $result->fetch_assoc()) {

                    echo "
                        <div class='col-md-4'>
                          <div class='thumbnail'>
                            <a href='view.php?id=".$row['id']."'>
                              <img src='".$row['image']."' style='width:100%;height:250px;'>
                              <div class='caption'>
                                <p>".$row['description']."</p>
                                <p>".$row['dateandtime']."</p>
                              </div>
                            </a>
                          </div>
                        </div>
";

                }

            }
            echo "</div>";

            ?>
</div>
        


        <footer class="blog-footer text-center jumbotron">
        
        <br>
        <h4> &copy; Mahtab Nahayati - CodeFactory 2018</h4>
        
   </footer>

</body>
</html>
