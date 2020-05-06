<%@page import="model.Medicine"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PharmacyItem Service</title>

<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Component/jquery-3.2.1.min.js"></script>
<script src="Component/pharmacyServices.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-8">
				<h1>Pharmacy Item Service</h1>

				<form id="formItem" name="formItem" method="post"
					action="medicines.jsp">

					Item code: <input id="itemCode" name="itemCode" type="text"
						class="form-control form-control-sm"> <br>
					PharmacyItem name: <input id="itemName" name="itemName" type="text"
						class="form-control form-control-sm"> <br>
					PharmacyItem price: <input id="itemPrice" name="itemPrice"
						type="text" class="form-control form-control-sm"> <br>
					PharmacyItem description: <input id="itemDesc" name="itemDesc"
						type="text" class="form-control form-control-sm"> <br>

					<input id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidItemIDSave" name="hidItemIDSave" value="">

				</form>
				<div id="alertSuccess" class="alert alert-success">
				</div>
				<div id="alertError" class="alert alert-danger"></div>
			</div>

			<br>
			<div id="divItemsGrid">
				<%
					Medicine itemObj = new Medicine();
					out.print(itemObj.readMedicine());
				%>
			</div>

		</div>
	</div>
</body>
</html>
