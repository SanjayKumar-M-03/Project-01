<?php 
	$con=new mysqli("localhost","root","","project");
?>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
  </head>
  <body>
    <table>
    <?php
                      if (isset($_POST['search'])) {
                        $search=$_POST['search'];

                        $sql="select*from 'sec1' where pid='$search'";
                        $result=mysqli_query($con,$sql);
                        if (mysqli_num_rows($result)>0){
                          echo '<thead>
                          <tr>
                          <th>id</th>
                          <th>pname</th>
                          </tr>
                          </head>';
                          $row=mysqli_fetch_assoc($result);
                          echo '<tbody>
                          <tr>
                          <td>'. $row['PID'] .'</td>
                          <td>'. $row['PNAME'] .'</td>';
                        }
                        else{
                          echo '<p>nothing</p>'; 
                        }
                        
                        
                      }
                      ?>
    </table>
  </body>
  </html>

