<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type='text/css'>
.links {<!--from   w w w  .  j  a v  a2 s . c  o  m-->
  width: 100%;
}

.links>a {
  float: left;
  display: inline-block;
  width: 20%;
  padding: 0;
  margin-left: 7%;

}
</style>

</head>
<script type="text/javascript">

$(document).ready(function(){
	
	 $(document).on('click','.deleteCls',function(){
		 var bank_id = $(this).attr('id');
		 alert(bank_id);
		 $("#new_bank_id").val(bank_id);
	 });
	 
	 
	 
/* 	 function forceStop()
     {
         var toBeDeleted = new Array();
         $("input:checked").each(function() {
         data['toBeDeleted[]'].push($(this).val());
         });

         $.ajax({
          url:"PlayerController",
          type:"POST",
          dataType:'json',
          data: {toBeDeleted:toBeDeleted},
          success:function(data){
         },
         }); */
	 
	 
	 
	 
});
</script>
<body>
<h1 style ="margin-left:27%;">Bank Details</h1>
<form:form  class="form-horizontal" >
<table id="t01" border="2" width="70%" cellpadding="2">
<tr>
<th style ="display:none">Id</th>
<th>Select</th>
<th>Bank Name</th>
<th>Branch Name</th>
<th>IFSC Code</th>
</tr>  

   <c:forEach var="bank" items="${list}"> 
   <tr>  
   
   <td style ="display:none">${bank.id}</td>  
   <td align="center"><input type="checkbox" id ="${bank.id}" class="deleteCls"></td> 
   <td>${bank.bank_name}</td> 
   <td>${bank.branch_name}</td>  
   <td>${bank.ifsc_code}</td>  
   </tr>  
   </c:forEach> 
   
   
   </table>  
   <br/>
   
  
   </form:form>


<%-- <input type="hidden" id="new_bank_id" value="${bank.id}"> --%>

<%-- <input type="checkbox" name="toBeDeleted[]" value="${list.playerId}">
<div align="center"><button onclick="forceStop()">Delete</button></div> --%>

<div class="links">
<a  href="/bank/addbank"><h4>ADD</h4></a> <a href="/bank/deletebank/${bank.id}"><h4>DELETE</h4></a> <a href="/bank/editbank/${bank.id}"><h4>EDIT</h4></a>
</div>
</body>
</html>