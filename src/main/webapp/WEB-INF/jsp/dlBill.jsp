
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Devganga Logestic</title>
 
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <style type="text/css"> 
  
  #loriNumber,#generatedBy,#logesticName,#fromDate,#toDate,#driverName,#loadingLocation,#unLoadingLocation,#materialCategory,#dieselPrice,
  #policePrice,#passingprice,#grisingPrice,#commissionPrice,#labourPrice,#dalaliPrice,#foodprice,#totalPrice{
  
  font-size: 12px;
  height: 25px;
  padding: 5px;
  }
  
  
 
  .panel-info>.panel-heading {
    color: #dedada;
    background-color: #586eff;
    border-color: #bce8f1;
}
  
  </style>
  <style>
  body {
    font: 400 15px/1.8 Lato, sans-serif;
    color: #777;
  }
  h3, h4 {
    margin: 10px 0 30px 0;
    letter-spacing: 10px;      
    font-size: 20px;
    color: #111;
  }
  .container {
    padding: 80px 120px;
  }
  .person {
    border: 10px solid transparent;
    margin-bottom: 25px;
    width: 80%;
    height: 80%;
    opacity: 0.7;
  }
  .person:hover {
    border-color: #f1f1f1;
  }
  .carousel-inner img {
    -webkit-filter: grayscale(90%);
    filter: grayscale(90%); /* make all photos black and white */ 
    width: 100%; /* Set width to 100% */
    margin: auto;
  }
  .carousel-caption h3 {
    color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
    background: #2d2d30;
    color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
    border-top-right-radius: 0;
    border-top-left-radius: 0;
  }
  .list-group-item:last-child {
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail p {
    margin-top: 15px;
    color: #555;
  }
  .btn {
    padding: 10px 20px;
   /*  background-color: #333; */
    /* color: #f1f1f1; */
    border-radius: 0;
    transition: .2s;
  }
  .btn:hover, .btn:focus {
    border: 1px solid #333;
    background-color: #fff;
    color: #000;
  }
  .modal-header, h4, .close {
    background-color: #333;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-header, .modal-body {
    padding: 40px 50px;
  }
  .nav-tabs li a {
    color: #777;
  }
  #googleMap {
    width: 100%;
    height: 400px;
    -webkit-filter: grayscale(100%);
    filter: grayscale(100%);
  }  
  .navbar {
    font-family: Montserrat, sans-serif;
    margin-bottom: 0;
    background-color: #2d2d30;
    border: 0;
    font-size: 11px !important;
    letter-spacing: 4px;
    opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
    color: #fff !important;
  }
  .navbar-nav li.active a {
    color: #fff !important;
    background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
  }
  .open .dropdown-toggle {
    color: #fff;
    background-color: #555 !important;
  }
  .dropdown-menu li a {
    color: #000 !important;
  }
  .dropdown-menu li a:hover {
    background-color: red !important;
  }
  footer {
    background-color: #2d2d30;
    color: #f5f5f5;
    padding: 32px;
  }
  footer a {
    color: #f5f5f5;
  }
  footer a:hover {
    color: #777;
    text-decoration: none;
  }  
  .form-control {
    border-radius: 0;
  }
  textarea {
    resize: none;
  }
  </style>
  
</head>
<body style="color: black;">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="home">Devganga Logestic</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="home">Home</a></li>
        <li><a href="loadDlBill">Generate Bill</a></li>
        <li><a href="viewAllBills">View All Bills</a></li>
        <li><a href="contact">Contact</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">More
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="profile">Profile</a></li>
            <li><a href="changePassword">Change Password</a></li>
            <li><a href="logOut">Log Out</a></li> 
          </ul>
        </li>
        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<br>
<br>
<div class="container-fluid">


<c:if test="${saveSuccess == true }">
 
   <div class="alert alert-success alert-dismissible col-sm-12 " style="background-color: green;color: white;">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success!</strong>Your Bill has been  Generated Successful and your bill number is :${bill.dlBillId}
  </div>
   
   <br>
  
                       <div class="row">
						<div class="col-sm-4">
							<a href="myTravelRequest" class= "btn btn-primary" style="border-radius:0px;"><i class="fa fa-undo" style="color:white"></i>Bill List</a>
						 </div>	
						
						 
			       		<div class="col-sm-4">
			       			<a href="TRHOME" class= "btn btn-primary" style="border-radius:0px;"><i class="fa fa-home" style="color:white"></i> Go to Home</a>
						</div>
			       		<div class="col-sm-4">
			       		
			       		<!-- <button  type="submit" class= "btn btn-info" style="border-radius:0px;">
			       		  <span class="glyphicon glyphicon-print"></span>
			       		Print Details</button> -->
						</div>
                      </div>     		
  
</c:if>

<c:if test="${saveSuccess == null}">
 <h5><strong>Devganga Logestic Bill Genration Form</strong> </h5>
  <div class="panel-group">
    
      <form action="generateBill" method="post">
      <div class="panel panel-info">
      <div class="panel-heading">Bill Details</div>
      <div class="panel-body">
      
           <div class="row">
   

    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="loriNumber"> Lori Number &nbsp;<font size="3" color="red">*</font></label>
       <input type="text" name="loriNumber" id="loriNumber"  class="form-control" placeholder="Enter Lori Number" required="">     
       
       
  </div>
  </div>
  
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="generatedBy">Bill Generated By&nbsp;<font size="3" color="red">*</font></label>
      <input type="text" name="generatedBy" id="generatedBy"  class="form-control" placeholder="Name of bill Genrated Persion" required="">          
      
  </div>
  </div>
   
   
    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="logesticName"> Logestic Name &nbsp;<font size="3" color="red">*</font></label>
       <input type="text" name="logesticName" id="logesticName"  class="form-control" placeholder="Enter Logestic Name" required="" >     
  </div>
  </div>
     
     
  </div>
  
  
  <div class="row">
    
    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="fromDate">FromDate&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="fromDate" id="fromDate" class="form-control "  placeholder="DD-MM-YYYY" required="">
        
          
  </div>
  </div>
    
    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="toDate">ToDate&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="toDate" id="toDate" class="form-control "   placeholder="DD-MM-YYYY" required="">
  </div>
  </div>
  
  
  
   <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="driverName"> Driver Name &nbsp;<font size="3" color="red">*</font></label>
       <input type="text" name="driverName" id="driverName"  class="form-control" placeholder="Driver Name" required="" >     
  </div>
  </div>
  
  </div>
  
  <div class="row">
   

    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="loadingLocation"> Loading Location &nbsp;<font size="3" color="red">*</font></label>
       <input type="text" name="loadingLocation" id="loadingLocation"  class="form-control" placeholder="Enter Loading Location" required="">     
       
       
  </div>
  </div>
  
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="unLoadingLocation">UnLoading Location&nbsp;<font size="3" color="red">*</font></label>
      <input type="text" name="unLoadingLocation" id="unLoadingLocation"  class="form-control" placeholder="Enter UnLoading Location" required="">          
      
  </div>
  </div>
   
   
   <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="materialCategory">Material Category &nbsp;<font size="3" color="red">*</font></label>
         
        <select class="form-control" id="materialCategory" name="materialCategory" required>
        
        <option value="" > Select Material Category </option>
        
            <option value="gitti">Gitti</option>
            <option value="balu">Balu</option>
            
        </select>
       
  </div>
  </div>
     
  </div>
  
  
  <div class="row">
   
 <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="meterialPrice">Meterial Price&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="meterialPrice" id="meterialPrice"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" required="">
         
          
  </div>
  </div>
 
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="dieselPrice">Diesel Price&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="dieselPrice" id="dieselPrice"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" required="">
         
          
  </div>
  </div>
   
   
   
  
   <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="passingprice">Passing Price &nbsp;<font size="3" color="red">*</font></label>
     <input type="text" name="passingprice" id="passingprice"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" required="">    
     
       
  </div>
  </div>
   
     
     
  </div>
  
  
  <div class="row">
   

  
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="grisingPrice">Grising Price&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="grisingPrice" id="grisingPrice"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" required="">
         
          
  </div>
  </div>
   
   
    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="commissionPrice">Commission Price&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="commissionPrice" id="commissionPrice"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" required="">
         
          
  </div>
  </div>
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="labourPrice">Labour Price&nbsp;<font size="3" color="red">*</font></label>
     <input type="text" name="labourPrice" id="labourPrice"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" required="">    
     
       
  </div>
  </div>
   
     
     
  </div>
  
  
  <div class="row">
   

   <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="owner">Police Price&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="policePrice" id="policePrice"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" required="">
         
          
  </div>
  </div>
  
  
  
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="dalaliPrice">Dalali Price &nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="dalaliPrice" id="dalaliPrice"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" required="">
         
          
  </div>
  </div>
   
   
    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="foodprice">Food Price &nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="foodprice" id="foodprice"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" required="">
         
          
  </div>
  </div>
  
  
   
     
  </div>
  
 <div class="row">
 
 
 <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="totalPrice">Toll  Price&nbsp;<font size="3" color="red">*</font></label>
     <input type="text" name="tollPrice" id="tollPrice"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter totalPrice" >    
     
       
  </div>
  </div>
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="totalPrice">Total Price&nbsp;<font size="3" color="red">*</font></label>
     <input type="text" name="totalPrice" id="totalPrice"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter totalPrice" >    
     
       
  </div>
  </div>
  <div class="col-sm-4">
     
 </div>
 
 </div>
  
  
  <div class="row">
    
    <div class="col-md-4">
    
  </div>
    
    <div class="col-md-4">
         <div class="row" style="text-align: center;">
                  
        	    <button type="submit" class="btn btn-success" id="btnSave" style="border-radius:0px;">Generate Bill
        		<span class="fa fa-check-circle"></span>
        		</button>
        		<button type="reset" class="btn btn-danger" style="border-radius:0px;">Reset
        		<span class="fa fa-refresh"></span>
        		</button>
        
        
              </div>
  </div>

  <div class="col-md-4">
   
  </div>
 
  </div>
  
  
   
  </div>
    </div>
  

      </form>
    
  </div>
  
  </c:if>
</div>
<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>Design & Developed By <a href="https://www.facebook.com/chandrasekhar.yadav.904" data-toggle="tooltip" title="Visit my facebook">Chandrasekhar</a></p> 
</footer>

<script type="text/javascript">

$( "#fromDate" ).datepicker({
    changeMonth: true,
    changeYear: true,
    dateFormat: 'dd-mm-yy'
  });
  
  $( "#toDate" ).datepicker({
      changeMonth: true,
      changeYear: true,
      dateFormat: 'dd-mm-yy'
      
    });
  
  
 
  
</script>

</body>
</html>
