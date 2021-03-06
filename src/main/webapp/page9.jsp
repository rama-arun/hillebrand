<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="page9">
	<!-- Modal -->
	<div class="modal fade" id="modal_page9">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<!-- Modal body -->
				<div class="modal-body">Section has been Saved!</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="modal_page9_delete">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<!-- Modal body -->
				<div class="modal-body">Row has been Deleted!</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn-sm btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
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
						style="background: #000000; color: #ffffff; font-size: 20px">Additional
						Notes</div>
					<div id="sidebar" class="panel-body">
						<img src="/resources/images/money.jpg" />
						<div class="col-sm-16">
							<input class="form-control" id="forClient9" disabled style="background: #ADD8E6"></input>
						</div>
					</div>
				</div>
				<div style="border: none; box-shadow: none;">
					<div style="font-size: 20px; border: none; box-shadow: none;">Any
						other Instructions</div>
				</div>
				<div class="row">
					<div class="form-group">
						<textarea id="additionalInstructions" spellcheck="false"
							placeholder="Start typing additional notes..."></textarea>
					</div>
				</div>
				<br></br> <br></br>
				<div class="sign">
					Signature:<span></span> Date:<span></span><a id="save_section21"
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
		<p align=center>Page 9</p>
	</div>
</div>
<script>
document.getElementById('forClient9').value = document
.getElementById("clientname").value;
	function saveSection21Data(user, additionalInstructions, client) {
		var section21 = {
			"user" : user,
			"additionalInstructions" : additionalInstructions,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save21",
			data : JSON.stringify(section21),
			success : function(result) {
				$("#modal_page9").modal('show');
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
	$("#save_section21")
			.click(
					function() {
						saveSection21Data(
								document.getElementById("userId").value,
								document
										.getElementById("additionalInstructions").value,
										document.getElementById("clientname").value);
						setTimeout("$('#modal_page9').modal('hide');",1500);
					});
	expandTextarea('additionalInstructions');
	$.ajax({
		type : 'GET',
		dataType : 'json',
		url : '${pageContext.request.contextPath}/page9/section21/'+document.getElementById("clientname").value,
		async : false,
		success : function(response) {
			var addlText;
			$.each(response, function(i, item) {
				addlText = item.additionalInstructions;
			});
			$("#additionalInstructions").val(addlText);
		},
		error : function() {
			alert("asda");
		}
	});
</script>
