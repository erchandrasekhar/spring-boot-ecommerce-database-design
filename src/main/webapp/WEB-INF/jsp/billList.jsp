
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
 
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">

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
<style type="text/css">
.modal-backdrop {
	/* bug fix - no overlay */
	display: none;
}
</style>
<style>

.dtr-title {
	font-size: 12px;
}

.dtr-data {
	font-size: 12px;
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
   /*  padding: 10px 20px;
    background-color: #333;
    color: #f1f1f1;
    border-radius: 0;
    transition: .2s; */
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
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50" style="color: #000;">

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
<br>

<div class="container-fluid">
	<!-- View Bill Details form start -->
	<c:if test="${billView == true && billUpdate == null}">
 <h5><strong>Devganga Logestic Genrated Bill Number&nbsp;(${dlBill.dlBillId}) and Generation Date &nbsp;${dlBill.billDate}</strong> </h5>
  <div class="panel-group">
    
      <form action="generateBill" method="post">
      <div class="panel panel-info">
      <div class="panel-heading">Bill Details</div>
      <div class="panel-body">
      
           <div class="row">
   

    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="loriNumber"> Lori Number &nbsp;<font size="3" color="red">*</font></label>
       <input type="text" name="loriNumber" id="loriNumber" value="${dlBill.loriNumber }"  class="form-control" placeholder="Enter Lori Number" readonly>     
       
       
  </div>
  </div>
  
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="generatedBy">Bill Generated By&nbsp;<font size="3" color="red">*</font></label>
      <input type="text" name="generatedBy" id="generatedBy" value="${dlBill.billGenratedBy}" class="form-control" placeholder="" readonly>          
      
  </div>
  </div>
   
   
    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="logesticName"> Logestic Name &nbsp;<font size="3" color="red">*</font></label>
       <input type="text" name="logesticName" id="logesticName" value="${dlBill.logesticName }" class="form-control" placeholder="Enter Logestic Name" readonly>     
  </div>
  </div>
     
     
  </div>
  
  
  <div class="row">
    
    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="fromDate">FromDate&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="fromDate" id="fromDate" value="${dlBill.fromDate }" class="form-control "  placeholder="DD-MM-YYYY" readonly>
        
          
  </div>
  </div>
    
    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="toDate">ToDate&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="toDate" id="toDate" value="${dlBill.toDate}" class="form-control "   placeholder="DD-MM-YYYY" readonly>
  </div>
  </div>
  
  
  
   <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="driverName"> Driver Name &nbsp;<font size="3" color="red">*</font></label>
       <input type="text" name="driverName" id="driverName" value="${dlBill. driver}"  class="form-control" placeholder="Driver Name" readonly >     
  </div>
  </div>
  
  </div>
  
  <div class="row">
   

    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="loadingLocation"> Loading Location &nbsp;<font size="3" color="red">*</font></label>
       <input type="text" name="loadingLocation" id="loadingLocation" value="${dlBill.loadingLocation }"  class="form-control" placeholder="Enter Loading Location" readonly>     
       
       
  </div>
  </div>
  
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="unLoadingLocation">UnLoading Location&nbsp;<font size="3" color="red">*</font></label>
      <input type="text" name="unLoadingLocation" id="unLoadingLocation" value="${dlBill.unLoadingLocation }"  class="form-control" placeholder="Enter UnLoading Location" readonly>          
      
  </div>
  </div>
   
   
   <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="materialCategory">Material Category &nbsp;<font size="3" color="red">*</font></label>
         
        <input type="text" name="materialCategory" id="materialCategory" value="${dlBill.materialCategory }"  class="form-control" placeholder="Enter UnLoading Location" readonly>          
       
  </div>
  </div>
     
  </div>
  
  
  <div class="row">
   
 <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="meterialPrice">Meterial Price&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="meterialPrice" id="meterialPrice" value="${dlBill.materialPrice }"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" readonly>
         
          
  </div>
  </div>
 
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="dieselPrice">Diesel Price&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="dieselPrice" id="dieselPrice"  value="${dlBill.dieselPrice }" maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price"readonly>
         
          
  </div>
  </div>
   
   
   
  
   <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="passingprice">Passing Price &nbsp;<font size="3" color="red">*</font></label>
     <input type="text" name="passingprice" id="passingprice"  value="${dlBill.passingPrice }" maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" readonly>    
     
       
  </div>
  </div>
   
     
     
  </div>
  
  
  <div class="row">
   

  
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="grisingPrice">Grising Price&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="grisingPrice" id="grisingPrice" value="${dlBill.grisingPrice }"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price"readonly>
         
          
  </div>
  </div>
   
   
    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="commissionPrice">Commission Price&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="commissionPrice" id="commissionPrice" value="${dlBill.commissionPrice }"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" readonly>
         
          
  </div>
  </div>
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="labourPrice">Labour Price&nbsp;<font size="3" color="red">*</font></label>
     <input type="text" name="labourPrice" id="labourPrice"  maxlength="8" value="${dlBill.labourPrice}"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price"readonly>    
     
       
  </div>
  </div>
   
     
     
  </div>
  
  
  <div class="row">
   

   <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="owner">Police Price&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="policePrice" id="policePrice" value="${dlBill.policePrice }"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" readonly>
         
          
  </div>
  </div>
  
  
  
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="dalaliPrice">Dalali Price &nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="dalaliPrice" id="dalaliPrice" value="${dlBill.dalaliPrice }"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" readonly>
         
          
  </div>
  </div>
   
   
    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="foodprice">Food Price &nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="foodprice" id="foodprice" value="${dlBill.foodPrice }"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" readonly>
         
          
  </div>
  </div>
  
  
   
     
  </div>
  
 <div class="row">
 
 
 <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="totalPrice">Toll  Price&nbsp;<font size="3" color="red">*</font></label>
     <input type="text" name="tollPrice" id="tollPrice" value="${dlBill.tollPrice }"   maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter totalPrice" readonly>    
     
       
  </div>
  </div>
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="totalPrice">Total Price&nbsp;<font size="3" color="red">*</font></label>
     <input type="text" name="totalPrice" id="totalPrice" value="${dlBill.grandTotal}"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter totalPrice" readonly >    
     
       
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
                  
        	    <a href ="viewAllBills" type="submit" class="btn btn-success" id="btnSave" style="border-radius:0px;">Back To All Bills 
        		<span class="fa fa-check-circle"></span>
        		</a>
        		 <a href ="prinrPdf" type="submit" class="btn btn-info" id="btnSave" style="border-radius:0px;">Print pdf 
        		<span class="fa fa-check-circle"></span>
        		</a>
        
        
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
  
  <!-- end view details form -->
  
  
  <!-- ############################## bill update start from here  #########################################-->
  <c:if test="${billView == null && billUpdate == true}">
 <h5><strong>Devganga Logestic Genrated Bill Number&nbsp;(${dlBill.dlBillId}) and Generation Date &nbsp;${dlBill.billDate}</strong> </h5>
  <div class="panel-group">
    
      <form action="updateBill" method="post">
      <div class="panel panel-info">
      <div class="panel-heading">Update Bill Details</div>
      <div class="panel-body">
      
           <div class="row">
   

    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="loriNumber"> Lori Number &nbsp;<font size="3" color="red">*</font></label>
       <input type="text" name="loriNumber" id="loriNumber" value="${dlBill.loriNumber }"  class="form-control" placeholder="Enter Lori Number" required="">     
        <input type="hidden" name="id" id="id" value="${dlBill.dlBillId }"  class="form-control" placeholder="Enter Lori Number" required="">     
       
       
  </div>
  </div>
  
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="generatedBy">Bill Generated By&nbsp;<font size="3" color="red">*</font></label>
      <input type="text" name="generatedBy" id="generatedBy" value="${dlBill.billGenratedBy}" class="form-control" placeholder="" required="">          
      
  </div>
  </div>
   
   
    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="logesticName"> Logestic Name &nbsp;<font size="3" color="red">*</font></label>
       <input type="text" name="logesticName" id="logesticName" value="${dlBill.logesticName }" class="form-control" placeholder="Enter Logestic Name" required="">     
  </div>
  </div>
     
     
  </div>
  
  
  <div class="row">
    
    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="fromDate">FromDate&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="fromDate" id="fromDate" value="${dlBill.fromDate }" class="form-control "  placeholder="DD-MM-YYYY" required="" >
        
          
  </div>
  </div>
    
    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="toDate">ToDate&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="toDate" id="toDate" value="${dlBill.toDate}" class="form-control "   placeholder="DD-MM-YYYY" required="">
  </div>
  </div>
  
  
  
   <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="driverName"> Driver Name &nbsp;<font size="3" color="red">*</font></label>
       <input type="text" name="driverName" id="driverName" value="${dlBill. driver}"  class="form-control" placeholder="Driver Name"  required="">     
  </div>
  </div>
  
  </div>
  
  <div class="row">
   

    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="loadingLocation"> Loading Location &nbsp;<font size="3" color="red">*</font></label>
       <input type="text" name="loadingLocation" id="loadingLocation" value="${dlBill.loadingLocation }"  class="form-control" placeholder="Enter Loading Location" required="">     
       
       
  </div>
  </div>
  
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="unLoadingLocation">UnLoading Location&nbsp;<font size="3" color="red">*</font></label>
      <input type="text" name="unLoadingLocation" id="unLoadingLocation" value="${dlBill.unLoadingLocation }"  class="form-control" placeholder="Enter UnLoading Location" required="">          
      
  </div>
  </div>
   
   
   <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="materialCategory">Material Category &nbsp;<font size="3" color="red">*</font></label>
         
        <input type="text" name="materialCategory" id="materialCategory" value="${dlBill.materialCategory }"  class="form-control" placeholder="Enter UnLoading Location" required="">          
       
  </div>
  </div>
     
  </div>
  
  
  <div class="row">
   
 <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="meterialPrice">Meterial Price&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="meterialPrice" id="meterialPrice" value="${dlBill.materialPrice }"  maxlength="8" required="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" >
         
          
  </div>
  </div>
 
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="dieselPrice">Diesel Price&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="dieselPrice" id="dieselPrice"  value="${dlBill.dieselPrice }" maxlength="8" required=""oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price">
         
          
  </div>
  </div>
   
   
   
  
   <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="passingprice">Passing Price &nbsp;<font size="3" color="red">*</font></label>
     <input type="text" name="passingprice" id="passingprice"  value="${dlBill.passingPrice }" maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" required="">    
     
       
  </div>
  </div>
   
     
     
  </div>
  
  
  <div class="row">
   

  
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="grisingPrice">Grising Price&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="grisingPrice" id="grisingPrice" value="${dlBill.grisingPrice }"  maxlength="8" required="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price">
         
          
  </div>
  </div>
   
   
    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="commissionPrice">Commission Price&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="commissionPrice" id="commissionPrice" value="${dlBill.commissionPrice }"  maxlength="8" required="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" >
         
          
  </div>
  </div>
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="labourPrice">Labour Price&nbsp;<font size="3" color="red">*</font></label>
     <input type="text" name="labourPrice" id="labourPrice"  maxlength="8" value="${dlBill.labourPrice}"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" required="">    
     
       
  </div>
  </div>
   
     
     
  </div>
  
  
  <div class="row">
   

   <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="owner">Police Price&nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="policePrice" id="policePrice" value="${dlBill.policePrice }" required=""  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" >
         
          
  </div>
  </div>
  
  
  
  
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="dalaliPrice">Dalali Price &nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="dalaliPrice" id="dalaliPrice" value="${dlBill.dalaliPrice }"  required="" maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" >
         
          
  </div>
  </div>
   
   
    <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="foodprice">Food Price &nbsp;<font size="3" color="red">*</font></label>
          <input type="text" name="foodprice" id="foodprice" value="${dlBill.foodPrice }" required=""  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter Diesel Price" >
         
          
  </div>
  </div>
  
  
   
     
  </div>
  
 <div class="row">
 
 
 <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="totalPrice">Toll  Price&nbsp;<font size="3" color="red">*</font></label>
     <input type="text" name="tollPrice" id="tollPrice" value="${dlBill.tollPrice }" required=""   maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter toll price" >    
     
       
  </div>
  </div>
  <div class="col-md-4">
    <div class="form-group">
    <label class="control-label" for="totalPrice">Total Price&nbsp;<font size="3" color="red">*</font></label>
     <input type="text" name="totalPrice" id="totalPrice" required="" value="${dlBill.grandTotal}"  maxlength="8" value="" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" placeholder="Enter totalPrice"  >    
     
       
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
                  
        	    <button type="submit" class="btn btn-success" id="btnSave" style="border-radius:0px;">Update Bill 
        		<span class="fa fa-check-circle"></span>
        		</button>
        		
        		 <button type="reset" class="btn btn-danger" id="btnSave" style="border-radius:0px;">Reset
        		<span class="fa fa-check-circle"></span>
        		</button>
                
                 <a href="viewAllBills" class="btn btn-info" id="btnSave" style="border-radius:0px;">Back To All Bills
        		<span class="fa fa-check-circle"></span>
        		</a>
        
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
	
  
	
	<c:if test="${billList.size()!=0}">
		<div class="panel panel-info">
			<div class="panel-heading">
				<h1 class="panel-title">All Bills List</h1>
			</div>
			<div class="panel-body">
				<div class="table">
					<table class="table table-striped table-bordered dt-responsive"
						style="width: 100%" id="ticketList">
						<thead style="font-size: 12px;">
							<tr bgcolor="#337ab7" style="color: white;">
								<th>Bill Id:</th>
								<th>Lori Number</th>
								<th>Bill Date</th>
								<th>Loading Location</th>
								<th>Unloading Location</th>
								<th>Total Ammount</th>
								<th>View Bill</th>
								<th>Update</th>
							</tr>
						</thead>

						<tbody>
						  
							<c:forEach items="${billList}" var="ul">
							
								<tr style="font-size: 12px; font-weight: bolder;">
									<td>${ul.dlBillId }</td>
									<td>${ul.loriNumber}</td>
									<td>${ul.billDate}</td>
									<td>${ul.loadingLocation}</td>
								    <td>${ul.unLoadingLocation}</td>
								    <td>${ul.grandTotal}</td>
								    
								     <td>    
						        	    <a  href="viewBill?&id=${ul.dlBillId}" class="btn btn-success btn-xs" id="btnSave" style="border-radius:0px;">View Bill
						        		<span class="fa fa-check-circle"></span>
						        		</a>
						        		</td>
						        		<td>
						        		<a href="updateBill?&id=${ul.dlBillId}" class="btn btn-info btn-xs" style="border-radius:0px;" onclick="return confirm('Are you sure you want to Update this Bill?');">Update
						        		<span class="fa fa-refresh"></span>
						        		</a>
        	                          	</td>
								</tr>
								
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
		</c:if>
		
	</div>

  
<br>
<br>
<br>

<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>Design & Developed By <a href="https://www.facebook.com/chandrasekhar.yadav.904" data-toggle="tooltip" title="Visit my facebook">Chandrasekhar</a></p> 
</footer>

<script
		src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
	<script
		src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
	<script
		src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
	
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
		
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
		
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
		
	<script
		src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
		
	<script
		src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>

	<script type="text/javascript">


	
<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>

<script type="text/javascript">
$('#ticketList').DataTable( {
    dom: 'Bfrtip',
    aaSorting:[[0,'desc']],
    buttons: [
        { extend:'copy', attr: { id: 'allan' } }, 'csv', 'excel', 'pdf', 'print'
    ]
} );


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
