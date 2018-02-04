<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="user" value="${pageContext.request.userPrincipal.name}" />
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="../../../resources/images/favicon.ico" rel="icon"
	type="image/x-icon" th:href="@{/resources/images/favicon.ico}">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.debug.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
<style>
#wrapper {
	margin-right: 200px;
}

#content {
	float: left;
	width: 100%;
	background-color: #fff;
}

#sidebar {
	float: right;
	width: 200px;
	margin-right: -200px;
	background-color: #fff;
}

#cleared {
	clear: both;
}

* {
	box-sizing: border-box;
}

textarea {
	/* margin:0px 0px; this is redundant anyways since its specified below*/
	padding-top: 10px;
	padding-bottom: 25px; /* increased! */
	/* height:16px; */
	/* line-height:16px; */
	width: 100%; /* changed from 96 to 100% */
	display: block;
	/* margin:0px auto; not needed since i have width 100% now */
}

.sign {
	font-weight: bold;
}

.sign span {
	width: 6cm;
	border-bottom: 0.1em solid #000;
	display: inline-block;
}

body {
	background-color: #ffffff;
}

#regForm {
	background-color: #f1f1f1;
	margin: 10px auto;
	font-family: Raleway;
	padding: 20px;
	width: 70%;
	min-width: 300px;
}

h1 {
	text-align: center;
}

input {
	padding: 10px;
	width: 100%;
	font-size: 17px;
	font-family: Raleway;
	border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
	background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
	display: none;
}

button {
	background-color: #4CAF50;
	color: #ffffff;
	border: none;
	padding: 10px 20px;
	font-size: 17px;
	font-family: Raleway;
	cursor: pointer;
}

button:hover {
	opacity: 0.8;
}

/* Make circles that indicate the steps of the form: */
.step {
	height: 25px;
	width: 25px;
	margin: 0 2px;
	background-color: #8c8a8a;
	border: none;
	border-radius: 50%;
	display: inline-block;
	opacity: .5;
	color: #ffffff;
	font-family: Raleway;
}

.step.active {
	opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
	background-color: #048e32;
}
</style>
<body>
	<div class="container">
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<form id="logoutForm" method="POST" action="${contextPath}/logout">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
			<input type="hidden" id="userId" value="${user}" />
			<h3>
				Welcome ${userId} | <a
					onclick="document.forms['logoutForm'].submit()">Logout</a>
			</h3>
		</c:if>
		<img src="/resources/images/money.jpg" />
	</div>
	<form id="regForm" action="http://localhost:8080/end" method="get">
		<div style="text-align: center; margin-top: 10px;">
			<h1>Letter of Last Instruction</h1>
		</div>
		<% String hidden = request.getParameter("clientname"); %>
         <h3>Client Name: <%=hidden.replace("_"," ") %></h3>
		<input type="hidden" name="clientname" id="clientname" value=<%=hidden %>></input>
		<!-- Circles which indicates the steps of the form: -->
		<div style="text-align: center; margin-top: 10px;">
			<span class="step">1</span> <span class="step">2</span> <span
				class="step">3</span> <span class="step">4</span> <span class="step">5</span>
			<span class="step">6</span> <span class="step">7</span> <span
				class="step">8</span> <span class="step">9</span>
		</div>
		<div style="overflow: auto;">
			<div style="float: right;">
				<button type="button" id="prevBtn" class="btn btn-success"
					onclick="nextPrev(-1)">Previous</button>
				<button type="button" id="nextBtn" class="btn btn-success"
					onclick="nextPrev(1)">Next</button>
			</div>
			<br></br>
		</div>
		<div id="tab1" class="tab">
			<jsp:include page="checklist.jsp" />
		</div>
		<div id="tab2" class="tab">
			<jsp:include page="page2.jsp" />
		</div>
		<div id="tab3" class="tab">
			<jsp:include page="page3.jsp" />
		</div>
		<div id="tab4" class="tab">
			<jsp:include page="page4.jsp" />
		</div>
		<div id="tab5" class="tab">
			<jsp:include page="page5.jsp" />
		</div>
		<div id="tab6" class="tab">
			<jsp:include page="page6.jsp" />
		</div>
		<div id="tab7" class="tab">
			<jsp:include page="page7.jsp" />
		</div>
		<div id="tab8" class="tab">
			<jsp:include page="page8.jsp" />
		</div>
		<div id="tab9" class="tab">
			<jsp:include page="page9.jsp" />
		</div>
	</form>

	<script>
		var currentTab = 0; // Current tab is set to be the first tab (0)
		showTab(currentTab); // Display the crurrent tab

		function showTab(n) {
			// This function will display the specified tab of the form...
			var x = document.getElementsByClassName("tab");
			x[n].style.display = "block";
			//... and fix the Previous/Next buttons:
			if (n == 0) {
				document.getElementById("prevBtn").style.display = "none";
			} else {
				document.getElementById("prevBtn").style.display = "inline";
			}
			if (n == (x.length - 1)) {
				document.getElementById("nextBtn").style.display = "none";
			} else {
				document.getElementById("nextBtn").innerHTML = "Next";
			}
			//... and run a function that will display the correct step indicator:
			fixStepIndicator(n)
		}

		function nextPrev(n) {
			// This function will figure out which tab to display
			var x = document.getElementsByClassName("tab");
			// Exit the function if any field in the current tab is invalid:
			if (n == 1 && !validateForm())
				//if (n == 1)
				return false;
			// Hide the current tab:
			x[currentTab].style.display = "none";
			// Increase or decrease the current tab by 1:
			currentTab = currentTab + n;
			// if you have reached the end of the form...
			if (currentTab >= x.length) {
				// ... the form gets submitted:
				document.forms['logoutForm'].submit();
				return false;
			}
			// Otherwise, display the correct tab:
			showTab(currentTab);
		}

		function validateForm() {
			// This function deals with validation of the form fields
			var x, y, i, valid = true;
			x = document.getElementsByClassName("tab");
			y = x[currentTab].getElementsByTagName("input");
			// A loop that checks every input field in the current tab:
			for (i = 0; i < y.length; i++) {
				// If a field is empty...
				if (y[i].value == "") {
					// add an "invalid" class to the field:
					y[i].className += " invalid";
					// and set the current valid status to false
					valid = true;
				}
			}
			// If the valid status is true, mark the step as finished and valid:
			if (valid) {
				document.getElementsByClassName("step")[currentTab].className += " finish";
			}
			return valid; // return the valid status
		}

		function fixStepIndicator(n) {
			// This function removes the "active" class of all steps...
			var i, x = document.getElementsByClassName("step");
			for (i = 0; i < x.length; i++) {
				x[i].className = x[i].className.replace(" active", "");
			}
			//... and adds the "active" class on the current step:
			x[n].className += " active";
		}
	</script>
</body>
</html>