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
<div id="page7">
	<!-- Modal -->
	<div class="modal fade" id="modal_page7">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<!-- Modal body -->
				<div class="modal-body">Section has been Saved!</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="modal_page7_delete">
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
						style="background: #000000; color: #ffffff; font-size: 20px">My
						Financial Obligations</div>
					<div id="sidebar" class="panel-body">
						<img src="/resources/images/money.jpg" />
						<div class="col-sm-16">
							<input class="form-control" id="forClient7" disabled style="background: #ADD8E6"></input>
						</div>
					</div>
				</div>
				<div style="border: none; box-shadow: none;">
					<div style="font-size: 20px; border: none; box-shadow: none;">1
						Money Owed</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic17">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Type</th>
							<th class="text-left">Creditor</th>
							<th class="text-left">Total</th>
							<th class="text-left">Payment</th>
							<th class="text-left">Frequency</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr50'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='type0' placeholder='Account Type'
								class="form-control" /></td>
							<td><input type="text" id='creditor0' placeholder='Creditor'
								class="form-control" /></td>
							<td><input type="text" id='total110'
								placeholder='Total Money Owed' class="form-control" /></td>
							<td><input type="text" id='payment0'
								placeholder='Payment Amount' class="form-control" /></td>
							<td><input type="text" id='frequency0'
								placeholder='Frequency of Payment' class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr51'></tr>
					</tbody>
				</table>
				<a id="add_row17" class="btn btn-primary pull-left">Add another
					Owed Item</a><a id="save_section18" class="btn btn-warning pull-right">Save
					this Section!</a> <br></br> <br></br>
				<div class="panel panel-default"
					style="border: none; box-shadow: none;">
					<div class="panel"
						style="font-size: 20px; border: none; box-shadow: none; padding-bottom: 0px">2
						Money Owed to Me</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic18">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Type</th>
							<th class="text-left">Debitor</th>
							<th class="text-left">Total</th>
							<th class="text-left">Payment</th>
							<th class="text-left">Frequency</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr60'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='type10'
								placeholder='Account Type' class="form-control" /></td>
							<td><input type="text" id='debitor10' placeholder='Debitor'
								class="form-control" /></td>
							<td><input type="text" id='total220'
								placeholder='Total Money Received' class="form-control" /></td>
							<td><input type="text" id='payment10'
								placeholder='Payment Amount' class="form-control" /></td>
							<td><input type="text" id='frequency10'
								placeholder='Frequency of Payment' class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr61'></tr>
					</tbody>
				</table>

				<a id="add_row18" class="btn btn-primary pull-left">Add another
					Source of Money</a><a id="save_section19"
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
<p align=center>Page 7</p>
</div>
	</div>
<script>
document.getElementById('forClient7').value = document
.getElementById("clientname").value;
	function saveSection18Data(user, type, creditor, total, payment, frequency, client) {
		var section18 = {
			"user" : user,
			"type" : type,
			"creditor" : creditor,
			"total" : total,
			"payment" : payment,
			"frequency" : frequency,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save18",
			data : JSON.stringify(section18),
			success : function(result) {
				$("#modal_page7").modal('show');
			}
		})
	}
	function deleteSection18Row(type, creditor, total, payment, frequency, client) {
		var section18del = {
			"type" : type,
			"creditor" : creditor,
			"total" : total,
			"payment" : payment,
			"frequency" : frequency,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete18",
			data : JSON.stringify(section18del),
			success : function(result) {
				$("#modal_page7_delete").modal('show');
			}
		})
	}
	function saveSection19Data(user, type, debitor, total, payment, frequency, client) {
		var section19 = {
			"user" : user,
			"type" : type,
			"debitor" : debitor,
			"total" : total,
			"payment" : payment,
			"frequency" : frequency,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save19",
			data : JSON.stringify(section19),
			success : function(result) {
				$("#modal_page7").modal('show');
			}
		})
	}
	function deleteSection19Row(type, debitor, total, payment, frequency, client) {
		var section19del = {
			"type" : type,
			"debitor" : debitor,
			"total" : total,
			"payment" : payment,
			"frequency" : frequency,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete19",
			data : JSON.stringify(section19del),
			success : function(result) {
				$("#modal_page7_delete").modal('show');
			}
		})
	}
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section18")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection18Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("type"
																		+ y).value,
														document
																.getElementById("creditor"
																		+ y).value,
														document
																.getElementById("total11"
																		+ y).value,
														document
																.getElementById("payment"
																		+ y).value,
														document
																.getElementById("frequency"
																		+ y).value,
																		document.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page7').modal('hide');",1500);
										});
						$("#add_row17")
								.click(
										function() {
											n = (n + 1);
											$('#addr5' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='type"+i+"' type='text' placeholder='Account Type'  class='form-control input-md'></td> "
																	+ "<td><input  id='creditor"+i+"' type='text' placeholder='Creditor'  class='form-control input-md'></td> "
																	+ "<td><input  id='total11"+i+"' type='text' placeholder='Total Money Owed'  class='form-control input-md'></td> "
																	+ "<td><input  id='payment"+i+"' type='text' placeholder='Payment Amount'  class='form-control input-md'></td> "
																	+ "<td><input  id='frequency"+i+"' type='text' placeholder='Frequency of Payment'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic17').append(
													'<tr id="addr5' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$('table').on('click', '.delete', function() {
		$(this).parents('tr').remove();
	});

	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section19")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection19Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("type1"
																		+ y).value,
														document
																.getElementById("debitor1"
																		+ y).value,
														document
																.getElementById("total22"
																		+ y).value,
														document
																.getElementById("payment1"
																		+ y).value,
														document
																.getElementById("frequency1"
																		+ y).value,
																		document.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page7').modal('hide');",1500);
										});
						$("#add_row18")
								.click(
										function() {
											n = (n + 1);
											$('#addr6' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='type1"+i+"' type='text' placeholder='Account Type'  class='form-control input-md'></td> "
																	+ "<td><input  id='debitor1"+i+"' type='text' placeholder='Debitor'  class='form-control input-md'></td> "
																	+ "<td><input  id='total22"+i+"' type='text' placeholder='Total Money Received'  class='form-control input-md'></td> "
																	+ "<td><input  id='payment1"+i+"' type='text' placeholder='Payment Amount'  class='form-control input-md'></td> "
																	+ "<td><input  id='frequency1"+i+"' type='text' placeholder='Frequency of Payment'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic18').append(
													'<tr id="addr6' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page7/section18/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.type
												+ '</td><td>'
												+ item.creditor
												+ '</td><td>'
												+ item.total
												+ '</td><td>'
												+ item.payment
												+ '</td><td>'
												+ item.frequency
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic17').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});

	$('#tab_logic17').on('click', '.delete', function() {
		var type = $(this).parents('tr').find('td').eq(1).text();
		var creditor = $(this).parents('tr').find('td').eq(2).text();
		var total = $(this).parents('tr').find('td').eq(3).text();
		var payment = $(this).parents('tr').find('td').eq(4).text();
		var frequency = $(this).parents('tr').find('td').eq(5).text();
		var client = document.getElementById("clientname").value;
		deleteSection18Row(type, creditor, total, payment, frequency, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page7_delete').modal('hide');",1500);
	});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page7/section19/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.type
												+ '</td><td>'
												+ item.debitor
												+ '</td><td>'
												+ item.total
												+ '</td><td>'
												+ item.payment
												+ '</td><td>'
												+ item.frequency
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic18').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});

	$('#tab_logic18').on('click', '.delete', function() {
		var type = $(this).parents('tr').find('td').eq(1).text();
		var debitor = $(this).parents('tr').find('td').eq(2).text();
		var total = $(this).parents('tr').find('td').eq(3).text();
		var payment = $(this).parents('tr').find('td').eq(4).text();
		var frequency = $(this).parents('tr').find('td').eq(5).text();
		var client = document.getElementById("clientname").value;
		deleteSection19Row(type, debitor, total, payment, frequency, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page7_delete').modal('hide');",1500);
	});
</script>