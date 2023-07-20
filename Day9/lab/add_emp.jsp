<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Emp Form</title>
</head>
<body>
	<form action="process_form.jsp" method="post">
		<table style="background-color: lightgrey; margin: auto">
			<tr>
				<td>Select Department</td>
				<td><select name="myDept">
						<option value=""></option>
				</select></td>
			</tr>
			<tr>
				<td>Enter First Name</td>
				<td><input type="text" name="firstName" /></td>
			</tr>
			<tr>
				<td>Enter Last Name</td>
				<td><input type="text" name="lastName" /></td>
			</tr>
			<tr>
				<td>Enter Email</td>
				<td><input type="email" name="email" /></td>
			</tr>
			<tr>
				<td>Enter Password</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td><input type="radio" name="empType" value="FULL_TIME" /></td>
				<td>Full Time Employment</td>
				<td><input type="radio" name="empType" value="PART_TIME" /></td>
				<td>Part Time Employment</td>
				<td><input type="radio" name="empType" value="INTERNSHIP" /></td>
				<td>Internship</td>
			</tr>
			<tr>
				<td>Select Join Date</td>
				<td><input type="date" name="joinDate" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Add Employee" /></td>
			</tr>
		</table>
	</form>

</body>


</html>