<?php 
	$con=new mysqli("localhost","root","","project");
	session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Cart</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
					<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
					<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
				<link href="https://fonts.googleapis.com/css?family=Titillium+Web&display=swap" rel="stylesheet">
				<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body >
  
<div class="container">
  <div class="row">
			<h1>Cart Items</h1><hr>
			<a href='product1.php'>Product Page</a>
			<table class='table'>	
				<tr>
					<th>Item Name</th>
					<th>Qty</th>
					<th>Price</th>
					<th>Total</th>
					<th>Remove</th>
				</tr>
					<?php 
					if(isset($_GET["del"]))
					{
						foreach($_SESSION["cart"] as $keys=>$values)
						{
								if($values["pid"]==$_GET["del"])
								{
									unset($_SESSION["cart"][$keys]);
								}
						}
					}
					
					
						if(!empty($_SESSION["cart"]))
						{
								$total=0;
								foreach($_SESSION["cart"] as $keys=>$values)
								{
									$amt=$values["qty"]*$values["price"];
										$total+=$amt;
										echo "
												<tr>
													<td>{$values["pname"]}</td>
													<td>{$values["qty"]}</td>
													<td> {$values["price"]} </td>
													<td>{$amt}</td>
													<td><a href='viewCart.php?del={$values["pid"]}'>Remove</a></td>
												</tr>
										";
										
								}	
									echo "
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td>Total</td>
													<td>{$total}</td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												<td><a class='buy_now' data-amount='{$total}'> Order Now </a></td>
												</tr>
												";			
																
								
						}
					?>
			</table>
			
  </div>
</div>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script>

$('body').on('click', '.buy_now', function(e){
    var totalAmount = $(this).attr("data-amount");
    var options = {
    "key": "rzp_test_dKVBOJb8Xlzp5Z",
    "amount": (totalAmount*100), // 2000 paise = INR 20
    "name": "Selvi Hardware and Electricals",
    "description": "Payment",
    "image": "RES/Icons/icons8-warehouse-100.png",
    "handler": function (response){
          $.ajax({
            url: 'payment-proccess.php',
            type: 'post',
            dataType: 'json',
            data: {
                razorpay_payment_id: response.razorpay_payment_id , totalAmount : totalAmount ,
            }, 
            success: function (msg) {

               window.location.href = 'success.php';
            }
        });
     
    },

    "theme": {
        "color": "#528FF0"
    }
  };
  var rzp1 = new Razorpay(options);
  rzp1.open();
  e.preventDefault();
  });

</script>
</body>
</html>
