<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="form-container">
 	
 	<h1>Edit Bank Details</h1>
 	
	<form:form method="POST" modelAttribute="bank"  class="form-horizontal" action="/bank/updatebankdetails">

<div class="row">
			<div class="form-group col-md-12">
				<div class="col-md-7">
					<form:hidden path="id"  class="form-control input-sm"/>
				
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="bankName">Bank Name</label>
				<div class="col-md-7">
					<form:input type="text" path="bank_name" id="bankName" class="form-control input-sm" readonly="true"/>
				
				</div>
			</div>
		</div>
<br>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="lastName">Branch Name</label>
				<div class="col-md-7">
					<form:input type="text" path="branch_name" id="branchName" class="form-control input-sm"/>
				
				</div>
			</div>
		</div>
	<br>	
			<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="ifscCode">IFSC Code</label>
				<div class="col-md-7">
					<form:input type="text" path="ifsc_code" id="ifscCode" class="form-control input-sm"/>
				
				</div>
			</div>
		</div>
<br>
		<div class="row">
			<div class="form-actions floatRight">
				<input type="submit" value="Update" class="btn btn-primary btn-sm">
			</div>
		</div>
	</form:form>
	</div>






</body>
</html>