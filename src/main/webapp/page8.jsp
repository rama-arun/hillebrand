<script>
var user = document.getElementById("userId").value;
var client = document.getElementById("clientname").value;
var pdf = 'http://localhost:8081/download.pdf?user='+user+'&client='+client;
var xls = 'http://localhost:8081/download.xls?user='+user+'&client='+client;
</script>

<a href="" id="print" class="btn btn-sm btn-primary">Download PDF</a>
<a href="" id="xls" class="btn btn-sm btn-primary">Download EXCEL</a>

<script>
document.getElementById("print").href = pdf;
document.getElementById("xls").href = xls;
</script>
<div id="page8">
	<!-- Modal -->
	<div class="modal fade" id="modal_page8">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<!-- Modal body -->
				<div class="modal-body">Section has been Saved!</div>
			</div>
		</div>
	</div>
	<div id="page-wrap" class="WordSection1"
		style="background-color: #ffffff; width: 100%;">
		<div class="col-md-12 column">
			<div class="col-md-12">
				<p class=MsoNormal>
					<o:p>&nbsp;</o:p>
				</p>
				<div id="wrapper" class="panel panel-default"
					style="padding-bottom: 10px; border: none;">
					<div id="content" class="panel-body"
						style="background: #000000; color: #ffffff; font-size: 20px">Your
						Written Last Wishes</div>
					<div id="sidebar" class="panel-body">
						<img src="/resources/images/money.jpg" />
						<div class="col-sm-16">
							<input class="form-control" id="forClient8" disabled style="background: #ADD8E6"></input>
						</div>
					</div>
				</div>
				<div style="border: none; box-shadow: none;">
					<div style="font-size: 20px; border: none; box-shadow: none;">My
						Last Wishes</div>
				</div>
				<div class="row">
					<div class="form-group">
						<textarea id="will" spellcheck="false"
							placeholder="Start writting your will..."></textarea>
					</div>
				</div>
				<br></br> <br></br>
				<div class="sign">
					Signature:<span></span> Date:<span></span><a id="save_section20"
						class="btn btn-warning pull-right">Save this Page!</a>
				</div>
			</div>
		</div>
	<footer>
	<p class=MsoNoSpacing align=justified
		style='text-align: center; border: none; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; padding: 0in; mso-padding-alt: 1.0pt 0in 1.0pt 0in'>
		<b style='mso-bidi-font-weight: normal'><span
			style='font-size: 8.0pt; mso-bidi-font-size: 12.0pt; font-family: "Garamond"'>�
				John Vyge, 2017. This document is not a legal document nor is it
				designed to give any specific legal advice pertaining to any
				specific circumstances. It is important that professional legal and
				financial advice be obtained before acting upon any of the
				information contained in this document. Unauthorized use and/or
				duplication of this material without express and written permission
				from the author and/or owner is strictly prohibited. You are
				authorized to print out this document for your own personal use
				only. Excerpts and links may be used, provided that full and clear
				credit is given to John Vyge and with appropriate and specific
				direction to the original content.<o:p></o:p>
		</span></b>
	</p>
</footer>
<p></p>
<p align=center>Page 8</p>
</div>
	</div>
<script>
document.getElementById('forClient8').value = document
.getElementById("clientname").value;
function saveSection20Data(user, will, client) {
	var section20 = {
		"user" : user,
		"will" : will,
		"client" : client
	}
	$.ajax({
		type : "POST",
		contentType : 'application/json; charset=utf-8',
		dataType : 'json',
		url : "/save20",
		data : JSON.stringify(section20),
		success : function(result) {
			$("#modal_page8").modal('show');
		}
	})
}
	function expandTextarea(id) {
		document.getElementById(id).addEventListener('keyup', function() {
			this.style.overflow = 'hidden';
			this.style.height = 0;
			this.style.height = this.scrollHeight + 'px';
		}, false);
	}
	$("#save_section20")
	.click(
			function() {
					saveSection20Data(
							document
									.getElementById("userId").value,
							document
									.getElementById("will").value,
									document.getElementById("clientname").value);
					setTimeout("$('#modal_page8').modal('hide');",1500);
			});

	expandTextarea('will');
	$.ajax({
		type : 'GET',
		dataType : 'json',
		url : '${pageContext.request.contextPath}/page8/section20/'+document.getElementById("clientname").value,
		async : false,
		success : function(response) {
			var addlText;
			$.each(response, function(i, item) {
				addlText = item.will;
			});
			$("#will").val(addlText); 
		},
		error : function() {
			alert("asda");
		}
	});
</script>
