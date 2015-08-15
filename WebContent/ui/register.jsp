<%@include file="header.jsp"%>
<div class="page-header">
	<h1>Register</h1>
</div>
<form class="form row">
	<div class="col-sm-6">
		<div class="form-group">
			<label for="email" class="control-label">Email</label> <input
				type="email" class="form-control" id="input-email" name="email">
		</div>
		<div class="form-group">
			<label for="password" class="control-label">Password</label> <input
				type="password" class="form-control" id="input-password"
				name="password">
		</div>
		<div class="form-group">
			<label for="name" class="control-label">Name</label> <input
				type="text" class="form-control" id="input-name" name="name">
		</div>
		<div class="form-group">
			<button type="submit" class="btn btn-primary">Register</button>
		</div>
	</div>
	<div class="col-sm-6">
		<div class="form-group">
			<label for="dateofbirth" class="control-label">Date of Birth</label>
			<input type="date" class="form-control" id="input-dateofbirth"
				name="dateOfBirth">
		</div>
		<div class="form-group">
			<label for="biography" class="control-label">Biography</label>
			<textarea class="form-control" id="input-biography" name="biography"
				rows="4"></textarea>
		</div>
	</div>
</form>
</div>
<%@include file="footer.jsp"%>