<%@include file="header.jsp" %>

<div class="container">
	<div class="row">

		<form class="form-inline">
			<div class="form-group">
				<label class="sr-only" for="storename">storename</label> <input
					type="text" class="form-control" id="storename"
					placeholder="Store Name" required>
			</div>
			<div class="form-group">
				<label class="sr-only" for="category">category</label> <input
					type="text" class="form-control" id="category"
					placeholder="Category" required>
			</div>
			<div class="form-group">
				<label class="sr-only" for="longitude">longitude</label> <input
					type="text" class="form-control" id="longitude"
					placeholder="Longitude" required>
			</div>
			<div class="form-group">
				<label class="sr-only" for="latitude">latitude</label> <input
					type="text" class="form-control" id="latitude"
					placeholder="Latitude" required>
			</div>
			<div class="form-group">
				<label class="sr-only" for="rating">rating</label> <input
					type="text" class="form-control" id="rating" placeholder="Rating" required>
			</div>
			<button type="submit" class="btn btn-primary" onclick="register()">Register</button>
		</form>
	</div>

	<div class="row search_map">
		<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
			<input type="text" class="form-control" id="searchfield"
				placeholder="Search. Eg: Udupi...." onkeyup="searchfor()">
			<div class="searchresult">
				
			</div>
		</div>
		<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
			<div id="map-canvassmall" style="width: 500px; height: 380px;"></div>

		</div>
	</div>
	

	<hr>
	<footer>
		<p>&copy; GourabPaul.info</p>
	</footer>
</div>
<%@include file="footer.jsp" %>
