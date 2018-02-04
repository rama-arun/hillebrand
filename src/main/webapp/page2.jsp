<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<div id="page2">
	<!-- Modal -->
	<div class="modal fade" id="modal_page2">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<!-- Modal body -->
				<div class="modal-body">Section has been Saved!</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="modal_page2_delete">
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
						style="background: #000000; color: #ffffff; font-size: 20px">What
						to do Now</div>
					<div id="sidebar" class="panel-body">
						<img src="/resources/images/money.jpg" />
						<div class="col-sm-16">
							<input class="form-control" id="forClient2" disabled style="background: #ADD8E6"></input>
						</div>
					</div>
				</div>
				<div style="border: none; box-shadow: none;">
					<div style="font-size: 20px; border: none; box-shadow: none;">To
						Do List</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">When to do</th>
							<th class="text-left">What to do</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr0'>
							<td style="width: 50px">1</td>
							<td><select
								class="btn btn-default dropdown-toggle form-control col-2-md"
								id="sel0" style="width: 150px">
									<option>--- Select When ---</option>
									<option>ASAP</option>
									<option>This Week</option>
									<option>This Month</option>
									<option>Next 30 days</option>
									<option>Next 60 days</option>
									<option>Next 90 days</option>
							</select></td>
							<td><input type="text" name='todo0' placeholder='What to do'
								class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr1'></tr>
					</tbody>
				</table>
				<a id="add_row" class="btn btn-primary pull-left">Add another To
					Do Item</a> <a id="save_section1" class="btn btn-warning pull-right">Save
					this Section!</a> <br></br>
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
		<p align=center>Page 2</p>
	</div>
</div>
<script>
	document.getElementById('forClient2').value = document
			.getElementById("clientname").value;
	function saveSection1Data(user, client, key, value) {
		var section1 = {
			"user" : user,
			"client" : client,
			"key" : key,
			"value" : value
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save",
			data : JSON.stringify(section1),
			success : function(result) {
				$("#modal_page2").modal('show');
			}
		})
	}
	function deleteSection1Row(key, value, client) {
		var section1del = {
			"key" : key,
			"value" : value,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete",
			data : JSON.stringify(section1del),
			success : function(result) {
				$("#modal_page2_delete").modal('show');
			}
		})
	}
	$(document)
			.ready(

					function() {
						var i = 1;
						var n = 1;
						$("#save_section1")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												var x = document
														.getElementById("sel"
																+ y);
												//alert(document.getElementById("userId").value+ "--------" + x.value + ", " + JSON.stringify($('#addr'+ y).find("input[type='text']").serializeArray()[0].value));
												saveSection1Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("clientname").value,
														x.value,
														JSON
																.stringify($(
																		'#addr'
																				+ y)
																		.find(
																				"input[type='text']")
																		.serializeArray()[0].value));
											}
											setTimeout("$('#modal_page2').modal('hide');",1500);
										});
						$("#add_row")
								.click(
										function() {
											n = (n + 1);
											$('#addr' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td><td><select "
																	+ "class='btn btn-default dropdown-toggle form-control col-2-md' id='sel"
																	+ i
																	+ "' style='width: 150px'"
																	+ (i + 1)
																	+ "> "
																	+ "<option>--- Select When ---</option> "
																	+ "<option>ASAP</option> "
																	+ "<option>This Week</option> "
																	+ "<option>This Month</option> "
																	+ "<option>Next 30 days</option> "
																	+ "<option>Next 60 days</option> "
																	+ "<option>Next 90 days</option> "
																	+ "</select></td>"
																	+ "<td><input  name='todo"+i+"' type='text' placeholder='What to do'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic').append(
													'<tr id="addr' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$('table').on('click', '.delete', function() {
		var key = $(this).parents('tr').find('td').eq(1).text();
		var value = $(this).parents('tr').find('td').eq(2).text();
		var client = document.getElementById("clientname").value;
		deleteSection1Row(key, value, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page2_delete').modal('hide');",1500);
	});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page2/section1/'
						+ document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.key
												+ '</td><td>'
												+ item.value
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});
</script>