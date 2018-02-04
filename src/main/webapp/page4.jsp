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
<!-- Modal -->
<div class="modal fade" id="modal_page4">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<!-- Modal body -->
			<div class="modal-body">Section has been Saved!</div>
		</div>
	</div>
</div>
<!-- Modal -->
<div class="modal fade" id="modal_page4_delete">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<!-- Modal body -->
			<div class="modal-body">Row has been Deleted!</div>
		</div>
	</div>
</div>
<div id="page4">

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
						style="background: #000000; color: #ffffff; font-size: 20px">Where
						to Get Cash Now</div>
					<div id="sidebar" class="panel-body">
						<img src="/resources/images/money.jpg" />
						<div class="col-sm-16">
							<input class="form-control" id="forClient4" disabled style="background: #ADD8E6"></input>
						</div>
					</div>
				</div>
				<div style="border: none; box-shadow: none;">
					<div style="font-size: 20px; border: none; box-shadow: none;">Our
						Family Budget</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic6">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Which Account</th>
							<th class="text-left">Type of Expense</th>
							<th class="text-left">Amount</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr20'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='account0'
								placeholder='Which Account' class="form-control" /></td>
							<td><input type="text" id='expense0'
								placeholder='Type of Expense' class="form-control" /></td>
							<td><input type="text" id='amount0' placeholder='Amount'
								class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr21'></tr>
					</tbody>
				</table>
				<a id="add_row6" class="btn btn-primary pull-left">Add another
					Budget Item</a><a id="save_section7" class="btn btn-warning pull-right">Save
					this Section!</a> <br></br> <br></br>
				<div class="panel panel-default"
					style="border: none; box-shadow: none;">
					<div class="panel"
						style="font-size: 20px; border: none; box-shadow: none; padding-bottom: 0px">1
						Bank Accounts</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic7">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Bank</th>
							<th class="text-left">Account Number</th>
							<th class="text-left">Balance</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr220'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='bank0' placeholder='Bank Name'
								class="form-control" /></td>
							<td><input type="text" id='accountnum0'
								placeholder='Account Number' class="form-control" /></td>
							<td><input type="text" id='balance0' placeholder='Balance'
								class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr221'></tr>
					</tbody>
				</table>
				<a id="add_row7" class="btn btn-primary pull-left">Add another
					Bank Account</a><a id="save_section8"
					class="btn btn-warning pull-right">Save this Section!</a> <br></br>
				<br></br>
				<div class="panel panel-default"
					style="border: none; box-shadow: none;">
					<div class="panel"
						style="font-size: 20px; border: none; box-shadow: none; padding-bottom: 0px">2
						Life Insurance</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic8">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Policies</th>
							<th class="text-left">Base Plan Name</th>
							<th class="text-left">Type of Coverage</th>
							<th class="text-left">Death Benefit</th>
							<th class="text-left">Issue Date</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr230'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='pname0' placeholder='Policy Name'
								class="form-control" /></td>
							<td><input type="text" id='bpname0'
								placeholder='Base Plan Name' class="form-control" /></td>
							<td><input type="text" id='coverage0'
								placeholder='Type of Coverage' class="form-control" /></td>
							<td><input type="text" id='death0'
								placeholder='Death Benefit' class="form-control" /></td>
							<td><input type="text" id='issuedate0'
								placeholder='Issue Date' class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr231'></tr>
					</tbody>
				</table>
				<a id="add_row8" class="btn btn-primary pull-left">Add another
					Life Insurance Item</a><a id="save_section9"
					class="btn btn-warning pull-right">Save this Section!</a> <br></br>
				<br></br>
				<div class="panel panel-default"
					style="border: none; box-shadow: none;">
					<div class="panel"
						style="font-size: 20px; border: none; box-shadow: none; padding-bottom: 0px">3
						Critical Care Insurance</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic9">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Policies</th>
							<th class="text-left">Base Plan Name</th>
							<th class="text-left">Type of Coverage</th>
							<th class="text-left">Death Benefit</th>
							<th class="text-left">Issue Date</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr240'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='pname10'
								placeholder='Policy Name' class="form-control" /></td>
							<td><input type="text" id='bpname10'
								placeholder='Base Plan Name' class="form-control" /></td>
							<td><input type="text" id='coverage10'
								placeholder='Type of Coverage' class="form-control" /></td>
							<td><input type="text" id='death10'
								placeholder='Death Benefit' class="form-control" /></td>
							<td><input type="text" id='issuedate10'
								placeholder='Issue Date' class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr241'></tr>
					</tbody>
				</table>
				<a id="add_row9" class="btn btn-primary pull-left">Add another
					Critical Care Item</a><a id="save_section10"
					class="btn btn-warning pull-right">Save this Section!</a> <br></br>
				<br></br>
				<div class="panel panel-default"
					style="border: none; box-shadow: none;">
					<div class="panel"
						style="font-size: 20px; border: none; box-shadow: none; padding-bottom: 0px">4
						Pensions Death Benefits</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic10">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Pension</th>
							<th class="text-left">Terms of Pension</th>
							<th class="text-left">Death Benefit</th>
							<th class="text-left">Term/Period</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr250'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='pensionSource0'
								placeholder='Pension' class="form-control" /></td>
							<td><input type="text" id='pensionTerms0'
								placeholder='Terms' class="form-control" /></td>
							<td><input type="text" id='deathTerms0'
								placeholder='Death Benefit' class="form-control" /></td>
							<td><input type="text" id='termsOfPeriod0'
								placeholder='Terms of Period' class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr251'></tr>
					</tbody>
				</table>
				<a id="add_row10" class="btn btn-primary pull-left">Add another
					Death Benefit</a><a id="save_section11"
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
		<p align=center>Page 4</p>
	</div>
</div>
<script>
document.getElementById('forClient4').value = document
.getElementById("clientname").value;
	function saveSection7Data(user, account, expense, amount, client) {
		var section7 = {
			"user" : user,
			"account" : account,
			"expense" : expense,
			"amount" : amount,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save7",
			data : JSON.stringify(section7),
			success : function(result) {
				$("#modal_page4").modal('show');
			}
		})
	}
	function deleteSection7Row(account, expense, amount, client) {
		var section7del = {
			"account" : account,
			"expense" : expense,
			"amount" : amount,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete7",
			data : JSON.stringify(section7del),
			success : function(result) {
				$("#modal_page4_delete").modal('show');
			}
		})
	}
	function saveSection8Data(user, bank, accountnum, balance, client) {
		var section8 = {
			"user" : user,
			"bank" : bank,
			"accountnum" : accountnum,
			"balance" : balance,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save8",
			data : JSON.stringify(section8),
			success : function(result) {
				$("#modal_page4").modal('show');
			}
		})
	}
	function deleteSection8Row(bank, accountnum, balance, client) {
		var section8del = {
			"bank" : bank,
			"accountnum" : accountnum,
			"balance" : balance,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete8",
			data : JSON.stringify(section8del),
			success : function(result) {
				$("#modal_page4_delete").modal('show');
			}
		})
	}
	function saveSection9Data(user, pname, bpname, coverage, death, issuedate,
			client) {
		var section9 = {
			"user" : user,
			"pname" : pname,
			"bpname" : bpname,
			"coverage" : coverage,
			"death" : death,
			"issuedate" : issuedate,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save9",
			data : JSON.stringify(section9),
			success : function(result) {
				$("#modal_page4").modal('show');
			}
		})
	}
	function deleteSection9Row(pname, bpname, coverage, death, issuedate,
			client) {
		var section9del = {
			"pname" : pname,
			"bpname" : bpname,
			"coverage" : coverage,
			"death" : death,
			"issuedate" : issuedate,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete9",
			data : JSON.stringify(section9del),
			success : function(result) {
				$("#modal_page4_delete").modal('show');
			}
		})
	}
	function saveSection10Data(user, pname, bpname, coverage, death, issuedate,
			client) {
		var section10 = {
			"user" : user,
			"pname" : pname,
			"bpname" : bpname,
			"coverage" : coverage,
			"death" : death,
			"issuedate" : issuedate,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save10",
			data : JSON.stringify(section10),
			success : function(result) {
				$("#modal_page4").modal('show');
			}
		})
	}
	function deleteSection10Row(pname, bpname, coverage, death, issuedate,
			client) {
		var section10del = {
			"pname" : pname,
			"bpname" : bpname,
			"coverage" : coverage,
			"death" : death,
			"issuedate" : issuedate,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete10",
			data : JSON.stringify(section10del),
			success : function(result) {
				$("#modal_page4_delete").modal('show');
			}
		})
	}
	function saveSection11Data(user, pensionSource, pensionTerms, deathTerms,
			termsOfPeriod, client) {
		var section11 = {
			"user" : user,
			"pensionSource" : pensionSource,
			"pensionTerms" : pensionTerms,
			"deathTerms" : deathTerms,
			"termsOfPeriod" : termsOfPeriod,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save11",
			data : JSON.stringify(section11),
			success : function(result) {
				$("#modal_page4").modal('show');
			}
		})
	}
	function deleteSection11Row(pensionSource, pensionTerms, deathTerms,
			termsOfPeriod, client) {
		var section11del = {
			"pensionSource" : pensionSource,
			"pensionTerms" : pensionTerms,
			"deathTerms" : deathTerms,
			"termsOfPeriod" : termsOfPeriod,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete11",
			data : JSON.stringify(section11del),
			success : function(result) {
				$("#modal_page4_delete").modal('show');
			}
		})
	}
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section7")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection7Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("account"
																		+ y).value,
														document
																.getElementById("expense"
																		+ y).value,
														document
																.getElementById("amount"
																		+ y).value,
														document
																.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page4').modal('hide');",1500);
										});
						$("#add_row6")
								.click(
										function() {
											n = (n + 1);
											$('#addr2' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='account"+i+"' type='text' placeholder='Which Account'  class='form-control input-md'></td> "
																	+ "<td><input  id='expense"+i+"' type='text' placeholder='Type of Expense'  class='form-control input-md'></td> "
																	+ "<td><input  id='amount"+i+"' type='text' placeholder='Amount'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic6').append(
													'<tr id="addr2' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section8")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection8Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("bank"
																		+ y).value,
														document
																.getElementById("accountnum"
																		+ y).value,
														document
																.getElementById("balance"
																		+ y).value,
														document
																.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page4').modal('hide');",1500);
										});
						$("#add_row7")
								.click(
										function() {
											n = (n + 1);
											$('#addr22' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='bank"+i+"' type='text' placeholder='Bank Name'  class='form-control input-md'></td> "
																	+ "<td><input  id='accountnum"+i+"' type='text' placeholder='Account Number'  class='form-control input-md'></td> "
																	+ "<td><input  id='balance"+i+"' type='text' placeholder='Balance'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic7').append(
													'<tr id="addr22' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section9")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection9Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("pname"
																		+ y).value,
														document
																.getElementById("bpname"
																		+ y).value,
														document
																.getElementById("coverage"
																		+ y).value,
														document
																.getElementById("death"
																		+ y).value,
														document
																.getElementById("issuedate"
																		+ y).value,
														document
																.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page4').modal('hide');",1500);
										});
						$("#add_row8")
								.click(
										function() {
											n = (n + 1);
											$('#addr23' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='pname"+i+"' type='text' placeholder='Policy Name'  class='form-control input-md'></td> "
																	+ "<td><input  id='bpname"+i+"' type='text' placeholder='Base Plan Name'  class='form-control input-md'></td> "
																	+ "<td><input  id='coverage"+i+"' type='text' placeholder='Type of Coverage'  class='form-control input-md'></td> "
																	+ "<td><input  id='death"+i+"' type='text' placeholder='Death Benefits'  class='form-control input-md'></td> "
																	+ "<td><input  id='issuedate"+i+"' type='text' placeholder='Issue Date'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic8').append(
													'<tr id="addr23' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section10")
								.click(
										function() {
											for (y = 0; y < n; y++) {

												saveSection10Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("pname1"
																		+ y).value,
														document
																.getElementById("bpname1"
																		+ y).value,
														document
																.getElementById("coverage1"
																		+ y).value,
														document
																.getElementById("death1"
																		+ y).value,
														document
																.getElementById("issuedate1"
																		+ y).value,
														document
																.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page4').modal('hide');",1500);
										});
						$("#add_row9")
								.click(
										function() {
											n = (n + 1);
											$('#addr24' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='pname1"+i+"' type='text' placeholder='Policy Name'  class='form-control input-md'></td> "
																	+ "<td><input  id='bpname1"+i+"' type='text' placeholder='Base Plan Name'  class='form-control input-md'></td> "
																	+ "<td><input  id='coverage1"+i+"' type='text' placeholder='Type of Coverage'  class='form-control input-md'></td> "
																	+ "<td><input  id='death1"+i+"' type='text' placeholder='Death Benefits'  class='form-control input-md'></td> "
																	+ "<td><input  id='issuedate1"+i+"' type='text' placeholder='Issue Date'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic9').append(
													'<tr id="addr24' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section11")
								.click(
										function() {
											for (y = 0; y < n; y++) {

												saveSection11Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("pensionSource"
																		+ y).value,
														document
																.getElementById("pensionTerms"
																		+ y).value,
														document
																.getElementById("deathTerms"
																		+ y).value,
														document
																.getElementById("termsOfPeriod"
																		+ y).value,
														document
																.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page4').modal('hide');",1500);
										});
						$("#add_row10")
								.click(
										function() {
											n = (n + 1);
											$('#addr25' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='pensionSource"+i+"' type='text' placeholder='My Pension'  class='form-control input-md'></td> "
																	+ "<td><input  id='pensionTerms"+i+"' type='text' placeholder='Terms of Pension'  class='form-control input-md'></td> "
																	+ "<td><input  id='deathTerms"+i+"' type='text' placeholder='Death Benefits'  class='form-control input-md'></td> "
																	+ "<td><input  id='termsOfPeriod"+i+"' type='text' placeholder='Period'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic10').append(
													'<tr id="addr25' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page4/section7/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.account
												+ '</td><td>'
												+ item.expense
												+ '</td><td>'
												+ item.amount
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic6').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});

	$('#tab_logic6').on('click', '.delete', function() {
		var account = $(this).parents('tr').find('td').eq(1).text();
		var expense = $(this).parents('tr').find('td').eq(2).text();
		var amount = $(this).parents('tr').find('td').eq(3).text();
		var client = document.getElementById("clientname").value;
		deleteSection7Row(account, expense, amount, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page4_delete').modal('hide');",1500);
	});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page4/section8/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.bank
												+ '</td><td>'
												+ item.accountnum
												+ '</td><td>'
												+ item.balance
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic7').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});

	$('#tab_logic7').on('click', '.delete', function() {
		var bank = $(this).parents('tr').find('td').eq(1).text();
		var accountnum = $(this).parents('tr').find('td').eq(2).text();
		var balance = $(this).parents('tr').find('td').eq(3).text();
		var client = document.getElementById("clientname").value;
		deleteSection8Row(bank, accountnum, balance, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page4_delete').modal('hide');",1500);
	});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page4/section9/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.pname
												+ '</td><td>'
												+ item.bpname
												+ '</td><td>'
												+ item.coverage
												+ '</td><td>'
												+ item.death
												+ '</td><td>'
												+ item.issuedate
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic8').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});

	$('#tab_logic8').on('click', '.delete', function() {
		var pname = $(this).parents('tr').find('td').eq(1).text();
		var bpname = $(this).parents('tr').find('td').eq(2).text();
		var coverage = $(this).parents('tr').find('td').eq(3).text();
		var death = $(this).parents('tr').find('td').eq(4).text();
		var issuedate = $(this).parents('tr').find('td').eq(5).text();
		var client = document.getElementById("clientname").value;
		deleteSection9Row(pname, bpname, coverage, death, issuedate, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page4_delete').modal('hide');",1500);
	});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page4/section10/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.pname
												+ '</td><td>'
												+ item.bpname
												+ '</td><td>'
												+ item.coverage
												+ '</td><td>'
												+ item.death
												+ '</td><td>'
												+ item.issuedate
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic9').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});

	$('#tab_logic9').on('click', '.delete', function() {
		var pname = $(this).parents('tr').find('td').eq(1).text();
		var bpname = $(this).parents('tr').find('td').eq(2).text();
		var coverage = $(this).parents('tr').find('td').eq(3).text();
		var death = $(this).parents('tr').find('td').eq(4).text();
		var issuedate = $(this).parents('tr').find('td').eq(5).text();
		var client = document.getElementById("clientname").value;
		deleteSection10Row(pname, bpname, coverage, death, issuedate, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page4_delete').modal('hide');",1500);
	});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page4/section11/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.pensionSource
												+ '</td><td>'
												+ item.pensionTerms
												+ '</td><td>'
												+ item.deathTerms
												+ '</td><td>'
												+ item.termsOfPeriod
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic10').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});

	$('#tab_logic10').on(
			'click',
			'.delete',
			function() {
				var pensionSource = $(this).parents('tr').find('td').eq(1)
						.text();
				var pensionTerms = $(this).parents('tr').find('td').eq(2)
						.text();
				var deathTerms = $(this).parents('tr').find('td').eq(3).text();
				var termsOfPeriod = $(this).parents('tr').find('td').eq(4)
						.text();
				var client = document.getElementById("clientname").value;
				deleteSection11Row(pensionSource, pensionTerms, deathTerms,
						termsOfPeriod, client);
				$(this).parents('tr').remove();
				setTimeout("$('#modal_page4_delete').modal('hide');",1500);
			});
</script>