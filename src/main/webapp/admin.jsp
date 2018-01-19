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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.debug.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-formhelpers/2.3.0/js/bootstrap-formhelpers.min.js"></script>
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
	<div class="container">
		<div class="col-md-12">
			<p class=MsoNormal></p>
		</div>
		<div id="admin">
			<!-- Modal -->
			<div class="modal fade" id="modal_page0">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<!-- Modal body -->
						<div class="modal-body">User has been Created!</div>
					</div>
				</div>
			</div>
			<!-- Modal -->
			<div class="modal fade" id="modal_page0_delete">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<!-- Modal body -->
						<div class="modal-body">User is Deleted!</div>
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
								style="background: #000000; color: #ffffff; font-size: 20px">Select
								a Client</div>
						</div>
						<form name="clientlist" action="welcome.jsp">
							<table class="table table-bordered table-hover" id="tab_logic100">
								<thead>
									<tr>
										<th class="text-left" style="width: 150px">Clients</th>
									</tr>
								</thead>
								<tbody>
									<tr id='addr100'>

										<td><select
											class="btn btn-default dropdown-toggle form-control col-2-md"
											id="sel100" style="width: 150px" name="clientname">
												<option>--- Select a Client ---</option>
										</select></td>
									</tr>
								</tbody>
							</table>
							<button class="btn btn-lg btn-primary" type="submit"
								onclick="goToOther()">Work on Client</button>
						</form>
					</div>
				</div>
				<div class="col-md-12 column">
					<div class="col-md-12">
						<p class=MsoNormal>
							<o:p>&nbsp;</o:p>
						</p>
						<div id="wrapper" class="panel panel-default"
							style="padding-bottom: 10px; border: none;">
							<div id="content" class="panel-body"
								style="background: #000000; color: #ffffff; font-size: 20px">Manage
								Clients</div>
						</div>
						<div style="border: none; box-shadow: none;">
							<div style="font-size: 20px; border: none; box-shadow: none;">Client
								List</div>
						</div>
						<table class="table table-bordered table-hover" id="tab_logic0">
							<thead>
								<tr>
									<th class="text-left" style="width: 50px">#</th>
									<th class="text-left" style="width: 150px">First Name</th>
									<th class="text-left">Middle Name</th>
									<th class="text-left">Last Name</th>
									<th class="text-left">Email</th>
									<th class="text-left">Phone</th>
									<th class="text-left" style="width: 50px">delete?</th>
								</tr>
							</thead>
							<tbody>
								<tr id='addr90'>
									<td style="width: 50px">1</td>
									<td><input type="text" id='firstname90'
										placeholder='First Name' class="form-control" /></td>
									<td><input type="text" id='middlename90'
										placeholder='Middle Name' class="form-control" /></td>
									<td><input type="text" id='lastname90'
										placeholder='Last Name' class="form-control" /></td>
									<td><input type='email' id='email90' placeholder='Email'
										class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"/></td>
									<td><input class="form-control" type='text' id='phone90' placeholder='Phone'/></td>
									<td><button
											style="width: 50px; border: none; box-shadow: none;"
											type="submit" class="btn btn-default btn-sm delete">
											<span class="glyphicon glyphicon-trash"></span>
										</button></td>
								</tr>
								<tr id='addr91'></tr>
							</tbody>
						</table>
						<a id="add_row91" class="btn btn-primary pull-left">Add
							another Client</a><a id="save_section0"
							class="btn btn-warning pull-right">Update Clients!</a> <br></br>
						<br></br>
					</div>
				</div>
				<footer>
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
				<p align=center>Admin Page</p>
			</div>
		</div>
	</div>
</body>
<script>
	function goToOther() {
		window.location = '/welcome.jsp?clientname='
				+ document.getElementById("sel100").value;
	}
	function saveSection0Data(user, fname, mname, lname, email, phone) {
		var section0 = {
			"user" : user,
			"fname" : fname,
			"mname" : mname,
			"lname" : lname,
			"email" : email,
			"phone" : phone
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save0",
			data : JSON.stringify(section0),
			success : function(result) {
				$("#modal_page0").modal('show');
			}
		})
	}
	function deleteSection0Row(fname, mname, lname, email, phone) {
		var section0del = {
			"fname" : fname,
			"mname" : mname,
			"lname" : lname,
			"email" : email,
			"phone" : phone
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete0",
			data : JSON.stringify(section0del),
			success : function(result) {
				$("#modal_page0_delete").modal('show');
			}
		})
	}
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section0")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection0Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("firstname9"
																		+ y).value,
														document
																.getElementById("middlename9"
																		+ y).value,
														document
																.getElementById("lastname9"
																		+ y).value,
														document
																.getElementById("email9"
																		+ y).value,
														document
																.getElementById("phone9"
																		+ y).value);
											}
											setTimeout("$('#modal_page0').modal('hide');",1500);
										});
						$("#add_row91")
								.click(
										function() {
											n = (n + 1);
											$('#addr9' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='firstname9"+i+"' type='text' placeholder='First Name'  class='form-control input-md'></td> "
																	+ "<td><input  id='middlename9"+i+"' type='text' placeholder='Middle Name'  class='form-control input-md'></td> "
																	+ "<td><input  id='lastname9"+i+"' type='text' placeholder='Last Name'  class='form-control input-md'></td> "
																	+ "<td><input  id='email9"+i+"' type='email' placeholder='Email'  class='form-control input-md'></td> "
																	+ "<td><input  id='phone9"+i+"' type='text' placeholder='Phone'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic0').append(
													'<tr id="addr9' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$('#tab_logic0').on('click', '.delete', function() {
		var fname = $(this).parents('tr').find('td').eq(1).text();
		var mname = $(this).parents('tr').find('td').eq(2).text();
		var lname = $(this).parents('tr').find('td').eq(3).text();
		var email = $(this).parents('tr').find('td').eq(4).text();
		var phone = $(this).parents('tr').find('td').eq(5).text();
		deleteSection0Row(fname, mname, lname, email, phone);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page0_delete').modal('hide');",1500);
	});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/admin/section0',
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.fname
												+ '</td><td>'
												+ item.mname
												+ '</td><td>'
												+ item.lname
												+ '</td><td>'
												+ item.email
												+ '</td><td>'
												+ item.phone
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic0').append(trHTML);
					$.each(response, function(i, item) {
						$('#sel100').append(
								$('<option>', {
									value : item.fname + '_' + item.mname + '_'
											+ item.lname,
									text : item.fname + '_' + item.mname + '_'
											+ item.lname
								}));
					});
				},
				error : function() {
					alert("asda");
				}
			});
	$("#adminpdf").click(function() {
		var doc = new jsPDF("p", "mm", "letter");

		var width = 200;
		html2canvas(document.getElementById("admin"), {
			onrendered : function(canvas) {

				var imgData = canvas.toDataURL("image/png");
				var doc = new jsPDF();
				doc.addImage(imgData, 'JPEG', 10, 10, width, 0);
				doc.save('admin.pdf');
			}

		});
	});
</script>
</html>