<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<%@ include file="all_js_css_file.jsp"%>

<title>Add Notes</title>

</head>
<body>

	<%@ include file="navbar.jsp"%>

	<div class="container-fluid">
		<img
			src="https://images.unsplash.com/photo-1616593772450-6220bc809944?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fG5vdGVib29rfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"
			class="img-fluid w-100" alt="notebook" style="height: 60vh">
	</div>

	<div class="container p-0 mt-3 mb-2 rounded">
		<form action="SaveNote" method="post" class="bg-secondary text-white text-center p-2 fs-3">
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label> <input
					type="text" class="form-control" id="title" name="title"
					placeholder="Enter your title " required>
			</div>

			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea required id="content" name="content"
					placeholder="Enter your content" class="form-control"
					style="height: 300px"></textarea>
			</div>

			<div class="container text-center col-6 mx-auto d-grid gap-2">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</form>
	</div>

</body>
</html>