<script>
var user = document.getElementById("userId").value;
var client = document.getElementById("clientname").value;
var pdf = 'http://18.217.195.1:8081/download.pdf?user='+user+'&client='+client;
var xls = 'http://18.217.195.1:8081/download.xls?user='+user+'&client='+client;
</script>

<a href="" id="print" class="btn btn-sm btn-primary">Download PDF</a>
<a href="" id="xls" class="btn btn-sm btn-primary">Download EXCEL</a>

<script>
document.getElementById("print").href = pdf;
document.getElementById("xls").href = xls;
</script>
<div id="page5">
	<!-- Modal -->
	<div class="modal fade" id="modal_page5">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<!-- Modal body -->
				<div class="modal-body">Section has been Saved!</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="modal_page5_delete">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<!-- Modal body -->
				<div class="modal-body">Row has been Deleted!</div>
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
						style="background: #000000; color: #ffffff; font-size: 20px">Location
						of Important Items</div>
					<div id="sidebar" class="panel-body">
						<img src="/resources/images/money.jpg" />
						<div class="col-sm-16">
							<input class="form-control" id="forClient5" disabled style="background: #ADD8E6"></input>
						</div>
					</div>
				</div>
				<div style="border: none; box-shadow: none;">
					<div style="font-size: 20px; border: none; box-shadow: none;">Items</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic11">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Description</th>
							<th class="text-left">Notes</th>
							<th class="text-left">Location</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr330'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='desc0' placeholder='Description'
								class="form-control" /></td>
							<td><input type="text" id='notes0'
								placeholder='Comments about Asset' class="form-control" /></td>
							<td><input type="text" id='location0'
								placeholder='Location of Asset' class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr331'></tr>
					</tbody>
				</table>
				<a id="add_row11" class="btn btn-primary pull-left">Add another
					Important Item</a><a id="save_section12"
					class="btn btn-warning pull-right">Save this Section!</a> <br></br>
				<div class="panel panel-default">
					<div class="panel-body"
						style="background: #000000; color: #ffffff; font-size: 20px">Our
						Insurance</div>
				</div>
				<div class="panel panel-default"
					style="border: none; box-shadow: none;">
					<div class="panel"
						style="font-size: 20px; border: none; box-shadow: none; padding-bottom: 0px">Insurance
						Contacts</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic12">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Policies</th>
							<th class="text-left">Company Name</th>
							<th class="text-left">Type of Coverage</th>
							<th class="text-left">Contact Phone Number</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr340'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='policy0' placeholder='Our Policy'
								class="form-control" /></td>
							<td><input type="text" id='cname0'
								placeholder='Company Name' class="form-control" /></td>
							<td><input type="text" id='tcoverage0'
								placeholder='Type of Coverage' class="form-control" /></td>
							<td><input type="text" id='contactp0'
								placeholder='Contact Phone Number' class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr341'></tr>
					</tbody>
				</table>
				<a id="add_row12" class="btn btn-primary pull-left">Add another
					Insurance Contact</a><a id="save_section13"
					class="btn btn-warning pull-right">Save this Section!</a>
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
<p align=center>Page 5</p>
</div>
	</div>
<script>
document.getElementById('forClient5').value = document
.getElementById("clientname").value;
	function saveSection12Data(user, desc, notes, location, client) {
		var section12 = {
			"user" : user,
			"desc" : desc,
			"notes" : notes,
			"location" : location,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save12",
			data : JSON.stringify(section12),
			success : function(result) {
				$("#modal_page5").modal('show');
			}
		})
	}
	function deleteSection12Row(desc, notes, location, client) {
		var section12del = {
			"desc" : desc,
			"notes" : notes,
			"location" : location,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete12",
			data : JSON.stringify(section12del),
			success : function(result) {
				$("#modal_page5_delete").modal('show');
			}
		})
	}
	function saveSection13Data(user, policy, cname, tcoverage, contactp, client) {
		var section13 = {
			"user" : user,
			"policy" : policy,
			"cname" : cname,
			"tcoverage" : tcoverage,
			"contactp" : contactp,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save13",
			data : JSON.stringify(section13),
			success : function(result) {
				$("#modal_page5").modal('show');
			}
		})
	}
	function deleteSection13Row(policy, cname, tcoverage, contactp, client) {
		var section13del = {
			"policy" : policy,
			"cname" : cname,
			"tcoverage" : tcoverage,
			"contactp" : contactp,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete13",
			data : JSON.stringify(section13del),
			success : function(result) {
				$("#modal_page5_delete").modal('show');
			}
		})
	}
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section12")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection12Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("desc"
																		+ y).value,
														document
																.getElementById("notes"
																		+ y).value,
														document
																.getElementById("location"
																		+ y).value,
																		document.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page5').modal('hide');",1500);
										});
						$("#add_row11")
								.click(
										function() {
											n = (n + 1);
											$('#addr33' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='desc"+i+"' type='text' placeholder='Description'  class='form-control input-md'></td> "
																	+ "<td><input  id='notes"+i+"' type='text' placeholder='Comments about Asset'  class='form-control input-md'></td> "
																	+ "<td><input  id='location"+i+"' type='text' placeholder='Location of Asset'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic11').append(
													'<tr id="addr33' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section13")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection13Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("policy"
																		+ y).value,
														document
																.getElementById("cname"
																		+ y).value,
														document
																.getElementById("tcoverage"
																		+ y).value,
														document
																.getElementById("contactp"
																		+ y).value,
																		document.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page5').modal('hide');",1500);
										});
						$("#add_row12")
								.click(
										function() {
											n = (n + 1);
											$('#addr34' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='policy"+i+"' type='text' placeholder='Our Policy'  class='form-control input-md'></td> "
																	+ "<td><input  id='cname"+i+"' type='text' placeholder='Company Name'  class='form-control input-md'></td> "
																	+ "<td><input  id='tcoverage"+i+"' type='text' placeholder='Type of Coverage'  class='form-control input-md'></td> "
																	+ "<td><input  id='contactp"+i+"' type='text' placeholder='Contact Phone Number'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic12').append(
													'<tr id="addr34' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page5/section12/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.desc
												+ '</td><td>'
												+ item.notes
												+ '</td><td>'
												+ item.location
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic11').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});

	$('#tab_logic11').on('click', '.delete', function() {
		var desc = $(this).parents('tr').find('td').eq(1).text();
		var notes = $(this).parents('tr').find('td').eq(2).text();
		var location = $(this).parents('tr').find('td').eq(3).text();
		var client = document.getElementById("clientname").value;
		deleteSection12Row(desc, notes, location, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page5_delete').modal('hide');",1500);
	});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page5/section13/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.policy
												+ '</td><td>'
												+ item.cname
												+ '</td><td>'
												+ item.tcoverage
												+ '</td><td>'
												+ item.contactp
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic12').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});

	$('#tab_logic12').on('click', '.delete', function() {
		var policy = $(this).parents('tr').find('td').eq(1).text();
		var cname = $(this).parents('tr').find('td').eq(2).text();
		var tcoverage = $(this).parents('tr').find('td').eq(3).text();
		var contactp = $(this).parents('tr').find('td').eq(4).text();
		var client = document.getElementById("clientname").value;
		deleteSection13Row(policy, cname, tcoverage, contactp, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page5_delete').modal('hide');",1500);
	});
</script>