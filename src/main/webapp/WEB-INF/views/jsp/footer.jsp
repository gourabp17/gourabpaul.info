
<spring:url value="/resources/core/js/getdirection.js"
	var="getDirectionJs" />

<spring:url value="/resources/core/js/base.js" var="coreJs" />
<spring:url value="/resources/core/js/bootstrap.min.js"
	var="bootstrapJs" />


<script
	src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&libraries=places"></script>
<script src="${coreJs}"></script>
<script src="${getDirectionJs}"></script>
<script src="${bootstrapJs}"></script>

</body>
</html>