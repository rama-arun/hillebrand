<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
var user = document.getElementById("userId").value;
var client = document.getElementById("clientname").value;
var pdf = 'http://18.217.195.1:8081/download.pdf?user='+user+'&client='+client;
var xls = 'http://18.217.195.1:8081/download.xls?user='+user+'&client='+client;
</script>

<a href="" id="print" class="btn btn-sm btn-primary">Download PDF</a>
<a href="" id="xls" class="btn btn-sm btn-primary">Download EXCEL</a>

<script>
document.getElementById("print").setAttribute("href", pdf);
document.getElementById("xls").setAttribute("href", xls);
</script>
<div id="page6">
	<!-- Modal -->
	<div class="modal fade" id="modal_page6">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<!-- Modal body -->
				<div class="modal-body">Section has been Saved!</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="modal_page6_delete">
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
						style="background: #000000; color: #ffffff; font-size: 20px">Your
						Estimated Monthly Survival Income</div>
					<div id="sidebar" class="panel-body">
						<img src="/resources/images/money.jpg" />
						<div class="col-sm-16">
							<input class="form-control" id="forClient6" disabled style="background: #ADD8E6"></input>
						</div>
					</div>
				</div>
				<div style="border: none; box-shadow: none;">
					<div style="font-size: 20px; border: none; box-shadow: none;">1
						Social Security Income</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic13">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Survivor</th>
							<th class="text-left">My Family's total benefits cannot
								exceed...</th>
							<th class="text-left">Total</th>
							<th class="text-left">Maximum per Month</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr40'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='survivor0'
								placeholder='Survivor' class="form-control" /></td>
							<td><input type="text" id='benefits0'
								placeholder='Total benefits cannot exceed...'
								class="form-control" /></td>
							<td><input type="text" id='total0' placeholder='Total'
								class="form-control" /></td>
							<td><input type="text" id='max0'
								placeholder='Maximum per Month' class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr41'></tr>
					</tbody>
				</table>
				<a id="add_row13" class="btn btn-primary pull-left">Add another
					Social Security Income</a><a id="save_section14"
					class="btn btn-warning pull-right">Save this Section!</a> <br></br>
				<br></br>
				<div class="panel panel-default"
					style="border: none; box-shadow: none;">
					<div class="panel"
						style="font-size: 20px; border: none; box-shadow: none; padding-bottom: 0px">2
						Pension Income</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic14">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Survivor</th>
							<th class="text-left">My Family's total benefits cannot
								exceed...</th>
							<th class="text-left">Total</th>
							<th class="text-left">Maximum per Month</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr4100'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='survivor10'
								placeholder='Survivor' class="form-control" /></td>
							<td><input type="text" id='benefits10'
								placeholder='Total benefits cannot exceed...'
								class="form-control" /></td>
							<td><input type="text" id='total10' placeholder='Total'
								class="form-control" /></td>
							<td><input type="text" id='max10'
								placeholder='Maximum per Month' class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr4101'></tr>
					</tbody>
				</table>
				<a id="add_row14" class="btn btn-primary pull-left">Add another
					Pension Income</a><a id="save_section15"
					class="btn btn-warning pull-right">Save this Section!</a> <br></br>
				<br></br>
				<div class="panel panel-default"
					style="border: none; box-shadow: none;">
					<div class="panel"
						style="font-size: 20px; border: none; box-shadow: none; padding-bottom: 0px">3
						Investments</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic15">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Account Type</th>
							<th class="text-left">Account With</th>
							<th class="text-left">Total</th>
							<th class="text-left">Income per Year @ 4% of Total</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr420'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='accttype0'
								placeholder='Account Type' class="form-control" /></td>
							<td><input type="text" id='acctname0'
								placeholder='Account with' class="form-control" /></td>
							<td><input type="text" id='total20' placeholder='Total'
								class="form-control" /></td>
							<td><input type="text" id='ipy0'
								placeholder='Income per Year' class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr421'></tr>
					</tbody>
				</table>
				<a id="add_row15" class="btn btn-primary pull-left">Add another
					Investment</a><a id="save_section16" class="btn btn-warning pull-right">Save
					this Section!</a> <br></br> <br></br>
				<div class="panel panel-default"
					style="border: none; box-shadow: none;">
					<div class="panel"
						style="font-size: 20px; border: none; box-shadow: none; padding-bottom: 0px">4
						Passive Income Sources</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic16">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Account Type</th>
							<th class="text-left">Source</th>
							<th class="text-left">Value</th>
							<th class="text-left">Net Monthly Cashflow</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr430'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='accttype10'
								placeholder='Account Type' class="form-control" /></td>
							<td><input type="text" id='acctname10'
								placeholder='Business Source' class="form-control" /></td>
							<td><input type="text" id='value10'
								placeholder='Business Value' class="form-control" /></td>
							<td><input type="text" id='cashflow10'
								placeholder='Net Monthly Cashflow' class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr431'></tr>
					</tbody>
				</table>
				<a id="add_row16" class="btn btn-primary pull-left">Add another
					Income Source</a><a id="save_section17"
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
<p align=center>Page 6</p>
</div>
	</div>
<script>
document.getElementById('forClient6').value = document
.getElementById("clientname").value;
	function saveSection14Data(user, survivor, benefits, total, max, client) {
		var section14 = {
			"user" : user,
			"survivor" : survivor,
			"benefits" : benefits,
			"total" : total,
			"max" : max,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save14",
			data : JSON.stringify(section14),
			success : function(result) {
				$("#modal_page6").modal('show');
			}
		})
	}
	function deleteSection14Row(survivor, benefits, total, max, client) {
		var section14del = {
			"survivor" : survivor,
			"benefits" : benefits,
			"total" : total,
			"max" : max,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete14",
			data : JSON.stringify(section14del),
			success : function(result) {
				$("#modal_page6_delete").modal('show');
			}
		})
	}
	function saveSection15Data(user, survivor, benefits, total, max, client) {
		var section15 = {
			"user" : user,
			"survivor" : survivor,
			"benefits" : benefits,
			"total" : total,
			"max" : max,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save15",
			data : JSON.stringify(section15),
			success : function(result) {
				$("#modal_page6").modal('show');
			}
		})
	}
	function deleteSection15Row(survivor, benefits, total, max, client) {
		var section15del = {
			"survivor" : survivor,
			"benefits" : benefits,
			"total" : total,
			"max" : max,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete15",
			data : JSON.stringify(section15del),
			success : function(result) {
				$("#modal_page6_delete").modal('show');
			}
		})
	}
	function saveSection16Data(user, accttype, acctname, total, ipy, client) {
		var section16 = {
			"user" : user,
			"accttype" : accttype,
			"acctname" : acctname,
			"total" : total,
			"ipy" : ipy,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save16",
			data : JSON.stringify(section16),
			success : function(result) {
				$("#modal_page6").modal('show');
			}
		})
	}
	function deleteSection16Row(accttype, acctname, total, ipy, client) {
		var section16del = {
			"accttype" : accttype,
			"acctname" : acctname,
			"total" : total,
			"ipy" : ipy,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete16",
			data : JSON.stringify(section16del),
			success : function(result) {
				$("#modal_page6_delete").modal('show');
			}
		})
	}
	function saveSection17Data(user, accttype, acctname, value, cashflow, client) {
		var section17 = {
			"user" : user,
			"accttype" : accttype,
			"acctname" : acctname,
			"value" : value,
			"cashflow" : cashflow,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save17",
			data : JSON.stringify(section17),
			success : function(result) {
				$("#modal_page6").modal('show');
			}
		})
	}
	function deleteSection17Row(accttype, acctname, value, cashflow, client) {
		var section17del = {
			"accttype" : accttype,
			"acctname" : acctname,
			"value" : value,
			"cashflow" : cashflow,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete17",
			data : JSON.stringify(section17del),
			success : function(result) {
				$("#modal_page6_delete").modal('show');
			}
		})
	}
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section14")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection14Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("survivor"
																		+ y).value,
														document
																.getElementById("benefits"
																		+ y).value,
														document
																.getElementById("total"
																		+ y).value,
														document
																.getElementById("max"
																		+ y).value,
																		document.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page6').modal('hide');",1500);
										});
						$("#add_row13")
								.click(
										function() {
											n = (n + 1);
											$('#addr4' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='survivor"+i+"' type='text' placeholder='Survivor'  class='form-control input-md'></td> "
																	+ "<td><input  id='benefits"+i+"' type='text' placeholder='Total benefits cannot exceed...'  class='form-control input-md'></td> "
																	+ "<td><input  id='total"+i+"' type='text' placeholder='Total'  class='form-control input-md'></td> "
																	+ "<td><input  id='max"+i+"' type='text' placeholder='Maximum per Month'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic13').append(
													'<tr id="addr4' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section15")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection15Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("survivor1"
																		+ y).value,
														document
																.getElementById("benefits1"
																		+ y).value,
														document
																.getElementById("total1"
																		+ y).value,
														document
																.getElementById("max1"
																		+ y).value,
																		document.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page6').modal('hide');",1500);
										});
						$("#add_row14")
								.click(
										function() {
											n = (n + 1);
											$('#addr410' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='survivor1"+i+"' type='text' placeholder='Survivor'  class='form-control input-md'></td> "
																	+ "<td><input  id='benefits1"+i+"' type='text' placeholder='Total benefits cannot exceed...'  class='form-control input-md'></td> "
																	+ "<td><input  id='total1"+i+"' type='text' placeholder='Total'  class='form-control input-md'></td> "
																	+ "<td><input  id='max1"+i+"' type='text' placeholder='Maximum per Month'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic14').append(
													'<tr id="addr410' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section16")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection16Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("accttype"
																		+ y).value,
														document
																.getElementById("acctname"
																		+ y).value,
														document
																.getElementById("total2"
																		+ y).value,
														document
																.getElementById("ipy"
																		+ y).value,
																		document.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page6').modal('hide');",1500);
										});
						$("#add_row15")
								.click(
										function() {
											n = (n + 1);
											$('#addr42' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='accttype"+i+"' type='text' placeholder='Account Type'  class='form-control input-md'></td> "
																	+ "<td><input  id='acctname"+i+"' type='text' placeholder='Account Name'  class='form-control input-md'></td> "
																	+ "<td><input  id='total2"+i+"' type='text' placeholder='Total'  class='form-control input-md'></td> "
																	+ "<td><input  id='ipy"+i+"' type='text' placeholder='Income per Year'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic15').append(
													'<tr id="addr42' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section17")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection17Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("accttype1"
																		+ y).value,
														document
																.getElementById("acctname1"
																		+ y).value,
														document
																.getElementById("value1"
																		+ y).value,
														document
																.getElementById("cashflow1"
																		+ y).value,
																		document.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page6').modal('hide');",1500);
										});
						$("#add_row16")
								.click(
										function() {
											n = (n + 1);
											$('#addr43' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='accttype1"+i+"' type='text' placeholder='Account Type'  class='form-control input-md'></td> "
																	+ "<td><input  id='acctname1"+i+"' type='text' placeholder='Business Source'  class='form-control input-md'></td> "
																	+ "<td><input  id='value1"+i+"' type='text' placeholder='Business Value'  class='form-control input-md'></td> "
																	+ "<td><input  id='cashflow1"+i+"' type='text' placeholder='Net Monthly Cashflow'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic16').append(
													'<tr id="addr43' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page6/section14/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.survivor
												+ '</td><td>'
												+ item.benefits
												+ '</td><td>'
												+ item.total
												+ '</td><td>'
												+ item.max
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic13').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});

	$('#tab_logic13').on('click', '.delete', function() {
		var survivor = $(this).parents('tr').find('td').eq(1).text();
		var benefits = $(this).parents('tr').find('td').eq(2).text();
		var total = $(this).parents('tr').find('td').eq(3).text();
		var max = $(this).parents('tr').find('td').eq(4).text();
		var client = document.getElementById("clientname").value;
		deleteSection14Row(survivor, benefits, total, max, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page6_delete').modal('hide');",1500);
	});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page6/section15/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.survivor
												+ '</td><td>'
												+ item.benefits
												+ '</td><td>'
												+ item.total
												+ '</td><td>'
												+ item.max
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic14').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});

	$('#tab_logic14').on('click', '.delete', function() {
		var survivor = $(this).parents('tr').find('td').eq(1).text();
		var benefits = $(this).parents('tr').find('td').eq(2).text();
		var total = $(this).parents('tr').find('td').eq(3).text();
		var max = $(this).parents('tr').find('td').eq(4).text();
		var client = document.getElementById("clientname").value;
		deleteSection15Row(survivor, benefits, total, max, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page6_delete').modal('hide');",1500);
	});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page6/section16/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.accttype
												+ '</td><td>'
												+ item.acctname
												+ '</td><td>'
												+ item.total
												+ '</td><td>'
												+ item.ipy
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic15').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});

	$('#tab_logic15').on('click', '.delete', function() {
		var accttype = $(this).parents('tr').find('td').eq(1).text();
		var acctname = $(this).parents('tr').find('td').eq(2).text();
		var total = $(this).parents('tr').find('td').eq(3).text();
		var ipy = $(this).parents('tr').find('td').eq(4).text();
		var client = document.getElementById("clientname").value;
		deleteSection16Row(accttype, acctname, total, ipy, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page6_delete').modal('hide');",1500);
	});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page6/section17/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.accttype
												+ '</td><td>'
												+ item.acctname
												+ '</td><td>'
												+ item.value
												+ '</td><td>'
												+ item.cashflow
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic16').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});

	$('#tab_logic16').on('click', '.delete', function() {
		var accttype = $(this).parents('tr').find('td').eq(1).text();
		var acctname = $(this).parents('tr').find('td').eq(2).text();
		var value = $(this).parents('tr').find('td').eq(3).text();
		var cashflow = $(this).parents('tr').find('td').eq(4).text();
		var client = document.getElementById("clientname").value;
		deleteSection17Row(accttype, acctname, value, cashflow, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page6_delete').modal('hide');",1500);
	});
</script>