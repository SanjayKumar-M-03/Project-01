<?php

		// servername => localhost
		// username => root
		// password => empty
		// database name => staff
		$conn = mysqli_connect("localhost", "root", "", "project");
		
		// Check connection
		if($conn === false){
			die("ERROR: Could not connect. "
				. mysqli_connect_error());
		}
		
		// Taking all 5 values from the form data(input)
		$data = [ 
            'user_id' => '1',
            'payment_id' => $_POST['razorpay_payment_id'],
            'amount' => $_POST['totalAmount'],
            'product_id' => $_POST['product_id'],
           ];
		
		// Performing insert query execution
		// here our table name is college
		$sql = "INSERT INTO payment VALUES ('$data')";
		
		if(mysqli_query($conn, $sql)){
			echo "<h3>data stored in a database successfully."
				. " Please browse your localhost php my admin"
				. " to view the updated data</h3>"; 

			echo nl2br("\n$data");
		} else{
			echo "ERROR: Hush! Sorry $sql. "
            . mysqli_error($conn);
		}
		
		// Close connection
		mysqli_close($conn);
		?>
