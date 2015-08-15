<%@include file="header_loggedin.jsp"%>
<div class="page-header">
	<h1>Post Article</h1>
</div>
<form class="form row">
	<div class="col-sm-8">
		<div class="form-group">
			<label for="title" class="control-label">Title</label> <input
				type="text" class="form-control" id="input-title" name="title">
		</div>
	</div>
	<div class="col-sm-4">
		<div class="form-group">
			<label for="category" class="control-label">Category</label> <input
				type="text" class="form-control" id="input-category" name="category">
		</div>
	</div>
	<div class="col-sm-12">
		<div class="form-group">
			<label for="text" class="control-label">Text</label>
			<div class="checkbox">
				<label> <input type="checkbox"> Fill with dummy text
				</label>
			</div>
			<textarea class="form-control" id="input-text" name="text" rows="10"></textarea>
		</div>
		<div class="form-group">
			<button type="submit" class="btn btn-primary">Post</button>
		</div>
	</div>
</form>
<%@include file="footer.jsp"%>