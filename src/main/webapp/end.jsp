<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
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
	background-color: #f1f1f1;
}

#regForm {
	background-color: #ffffff;
	margin: 100px auto;
	font-family: Raleway;
	padding: 40px;
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

#prevBtn {
	background-color: #bbbbbb;
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

	<form id="regForm" action="http://localhost:8080/end" method="get">
		<h1>Letter of Last Instruction</h1>
		<!-- Circles which indicates the steps of the form: -->
		<div class="row clearfix">You are done...</div>
			<input type="button" value="Home"
				onclick="window.location.href='http://localhost:8080'" />
		<br></br>
		<footer
			style='mso-element: para-border-div; border-top: solid windowtext 1.0pt; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: none; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; padding: 1.0pt 0in 1.0pt 0in; margin-left: -4.5pt; margin-right: -4.5pt'>

			<p class=MsoNoSpacing align=justified
				style='text-align: center; border: none; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; padding: 0in; mso-padding-alt: 1.0pt 0in 1.0pt 0in'>
				<b style='mso-bidi-font-weight: normal'><span
					style='font-size: 8.0pt; mso-bidi-font-size: 12.0pt; font-family: "Garamond"'>©
						John Vyge, 2017. This document is not a legal document nor is it
						designed to give any specific legal advice pertaining to any
						specific circumstances. It is important that professional legal
						and financial advice be obtained before acting upon any of the
						information contained in this document. Unauthorized use and/or
						duplication of this material without express and written
						permission from the author and/or owner is strictly prohibited.
						You are authorized to print out this document for your own
						personal use only. Excerpts and links may be used, provided that
						full and clear credit is given to John Vyge and with appropriate
						and specific direction to the original content.<o:p></o:p>
				</span></b>
			</p>
		</footer>
		<p></p>
		<p align=center>Page 10</p>
		</div>
		</div>
	</form>
</body>
</html>