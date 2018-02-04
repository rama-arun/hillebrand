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
<div id="page3">
	<!-- Modal -->
	<div class="modal fade" id="modal_page3">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<!-- Modal body -->
				<div class="modal-body">Section has been Saved!</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="modal_page3_delete">
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
						style="background: #000000; color: #ffffff; font-size: 20px">Who
						to Notify</div>
					<div id="sidebar" class="panel-body">
						<img src="/resources/images/money.jpg" />
						<div class="col-sm-16">
							<input class="form-control" id="forClient3" disabled style="background: #ADD8E6"></input>
						</div>
					</div>
				</div>
				<div style="border: none; box-shadow: none;">
					<div style="font-size: 20px; border: none; box-shadow: none;">IMMEDIATE
						FAMILY & FRIENDS</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic1">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Name</th>
							<th class="text-left">Relationship</th>
							<th class="text-left">City</th>
							<th class="text-left">Email</th>
							<th class="text-left">Phone</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr10'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='name0' placeholder='Name'
								class="form-control" /></td>
							<td><input type="text" id='relationship0'
								placeholder='Relationship' class="form-control" /></td>
							<td><input type="text" id='city0' placeholder='City'
								class="form-control" /></td>
							<td><input type="text" id='email0' placeholder='Email'
								class="form-control" /></td>
							<td><input type="text" id='phone0' placeholder='Phone'
								class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr11'></tr>
					</tbody>
				</table>
				<a id="add_row1" class="btn btn-primary pull-left">Add another
					Family or Friend</a><a id="save_section2"
					class="btn btn-warning pull-right">Save this Section!</a> <br></br>
				<br></br>
				<div class="panel panel-default"
					style="border: none; box-shadow: none;">
					<div class="panel"
						style="font-size: 20px; border: none; box-shadow: none; padding-bottom: 0px">FUNERAL
						HOME</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic2">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Name</th>
							<th class="text-left">Relationship</th>
							<th class="text-left">City</th>
							<th class="text-left">Email</th>
							<th class="text-left">Phone</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr110'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='name10' placeholder='Name'
								class="form-control" /></td>
							<td><input type="text" id='relationship10'
								placeholder='Relationship' class="form-control" /></td>
							<td><input type="text" id='city10' placeholder='City'
								class="form-control" /></td>
							<td><input type="text" id='email10' placeholder='Email'
								class="form-control" /></td>
							<td><input type="text" id='phone10' placeholder='Phone'
								class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr111'></tr>
					</tbody>
				</table>
				<a id="add_row2" class="btn btn-primary pull-left">Add Funeral
					Home Contact</a><a id="save_section3"
					class="btn btn-warning pull-right">Save this Section!</a> <br></br>
				<br></br>
				<div class="panel panel-default"
					style="border: none; box-shadow: none;">
					<div class="panel"
						style="font-size: 20px; border: none; box-shadow: none; padding-bottom: 0px">PROFESSIONAL
						ADVISORS</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic3">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Name</th>
							<th class="text-left">Relationship</th>
							<th class="text-left">City</th>
							<th class="text-left">Email</th>
							<th class="text-left">Phone</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr210'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='name20' placeholder='Name'
								class="form-control" /></td>
							<td><input type="text" id='relationship20'
								placeholder='Relationship' class="form-control" /></td>
							<td><input type="text" id='city20' placeholder='City'
								class="form-control" /></td>
							<td><input type="text" id='email20' placeholder='Email'
								class="form-control" /></td>
							<td><input type="text" id='phone20' placeholder='Phone'
								class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr211'></tr>
					</tbody>
				</table>
				<a id="add_row3" class="btn btn-primary pull-left">Add another
					Advisor</a><a id="save_section4" class="btn btn-warning pull-right">Save
					this Section!</a> <br></br> <br></br>
				<div class="panel panel-default"
					style="border: none; box-shadow: none;">
					<div class="panel"
						style="font-size: 20px; border: none; box-shadow: none; padding-bottom: 0px">INSURANCE
						CONTACTS</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic4">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Name</th>
							<th class="text-left">Relationship</th>
							<th class="text-left">City</th>
							<th class="text-left">Email</th>
							<th class="text-left">Phone</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr310'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='name30' placeholder='Name'
								class="form-control" /></td>
							<td><input type="text" id='relationship30'
								placeholder='Relationship' class="form-control" /></td>
							<td><input type="text" id='city30' placeholder='City'
								class="form-control" /></td>
							<td><input type="text" id='email30' placeholder='Email'
								class="form-control" /></td>
							<td><input type="text" id='phone30' placeholder='Phone'
								class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr311'></tr>
					</tbody>
				</table>
				<a id="add_row4" class="btn btn-primary pull-left">Add another
					Insurance Contact</a><a id="save_section5"
					class="btn btn-warning pull-right">Save this Section!</a> <br></br>
				<br></br>
				<div class="panel panel-default"
					style="border: none; box-shadow: none;">
					<div class="panel"
						style="font-size: 20px; border: none; box-shadow: none; padding-bottom: 0px">MEDICAL
						CONTACTS</div>
				</div>
				<table class="table table-bordered table-hover" id="tab_logic5">
					<thead>
						<tr>
							<th class="text-left" style="width: 50px">#</th>
							<th class="text-left" style="width: 150px">Name</th>
							<th class="text-left">Relationship</th>
							<th class="text-left">City</th>
							<th class="text-left">Email</th>
							<th class="text-left">Phone</th>
							<th class="text-left" style="width: 50px">delete?</th>
						</tr>
					</thead>
					<tbody>
						<tr id='addr410'>
							<td style="width: 50px">1</td>
							<td><input type="text" id='name40' placeholder='Name'
								class="form-control" /></td>
							<td><input type="text" id='relationship40'
								placeholder='Relationship' class="form-control" /></td>
							<td><input type="text" id='city40' placeholder='City'
								class="form-control" /></td>
							<td><input type="email" id='email40' placeholder='Email'
								class="form-control" /></td>
							<td><input type="tel" id='phone40' placeholder='Phone'
								class="form-control" /></td>
							<td><button
									style="width: 50px; border: none; box-shadow: none;"
									type="submit" class="btn btn-default btn-sm delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button></td>
						</tr>
						<tr id='addr411'></tr>
					</tbody>
				</table>
				<a id="add_row5" class="btn btn-primary pull-left">Add another
					Medical Contact</a><a id="save_section6"
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
		<p align=center>Page 3</p>
	</div>
</div>
<script>
document.getElementById('forClient3').value = document
.getElementById("clientname").value;
	function saveSection2Data(user, name, relationship, city, email, phone,
			client) {
		var section2 = {
			"user" : user,
			"name" : name,
			"relationship" : relationship,
			"city" : city,
			"email" : email,
			"phone" : phone,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save2",
			data : JSON.stringify(section2),
			success : function(result) {
				$("#modal_page3").modal('show');
			}
		})
	}
	function deleteSection2Row(name, relationship, city, email, phone, client) {
		var section2del = {
			"name" : name,
			"relationship" : relationship,
			"city" : city,
			"email" : email,
			"phone" : phone,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete2",
			data : JSON.stringify(section2del),
			success : function(result) {
				$("#modal_page3_delete").modal('show');
			}
		})
	}
	function saveSection3Data(user, name, relationship, city, email, phone,
			client) {
		var section3 = {
			"user" : user,
			"name" : name,
			"relationship" : relationship,
			"city" : city,
			"email" : email,
			"phone" : phone,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save3",
			data : JSON.stringify(section3),
			success : function(result) {
				$("#modal_page3").modal('show');
			}
		})
	}
	function deleteSection3Row(name, relationship, city, email, phone, client) {
		var section3del = {
			"name" : name,
			"relationship" : relationship,
			"city" : city,
			"email" : email,
			"phone" : phone,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete3",
			data : JSON.stringify(section3del),
			success : function(result) {
				$("#modal_page3_delete").modal('show');
			}
		})
	}
	function saveSection4Data(user, name, relationship, city, email, phone,
			client) {
		var section4 = {
			"user" : user,
			"name" : name,
			"relationship" : relationship,
			"city" : city,
			"email" : email,
			"phone" : phone,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save4",
			data : JSON.stringify(section4),
			success : function(result) {
				$("#modal_page3").modal('show');
			}
		})
	}
	function deleteSection4Row(name, relationship, city, email, phone, client) {
		var section4del = {
			"name" : name,
			"relationship" : relationship,
			"city" : city,
			"email" : email,
			"phone" : phone,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete4",
			data : JSON.stringify(section4del),
			success : function(result) {
				$("#modal_page3_delete").modal('show');
			}
		})
	}
	function saveSection5Data(user, name, relationship, city, email, phone,
			client) {
		var section5 = {
			"user" : user,
			"name" : name,
			"relationship" : relationship,
			"city" : city,
			"email" : email,
			"phone" : phone,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save5",
			data : JSON.stringify(section5),
			success : function(result) {
				$("#modal_page3").modal('show');
			}
		})
	}
	function deleteSection5Row(name, relationship, city, email, phone, client) {
		var section5del = {
			"name" : name,
			"relationship" : relationship,
			"city" : city,
			"email" : email,
			"phone" : phone,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete5",
			data : JSON.stringify(section5del),
			success : function(result) {
				$("#modal_page3_delete").modal('show');
			}
		})
	}
	function saveSection6Data(user, name, relationship, city, email, phone,
			client) {
		var section6 = {
			"user" : user,
			"name" : name,
			"relationship" : relationship,
			"city" : city,
			"email" : email,
			"phone" : phone,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/save6",
			data : JSON.stringify(section6),
			success : function(result) {
				$("#modal_page3").modal('show');
			}
		})
	}
	function deleteSection6Row(name, relationship, city, email, phone, client) {
		var section6del = {
			"name" : name,
			"relationship" : relationship,
			"city" : city,
			"email" : email,
			"phone" : phone,
			"client" : client
		}
		$.ajax({
			type : "POST",
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			url : "/delete6",
			data : JSON.stringify(section6del),
			success : function(result) {
				$("#modal_page3_delete").modal('show');
			}
		})
	}
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section2")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection2Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("name"
																		+ y).value,
														document
																.getElementById("relationship"
																		+ y).value,
														document
																.getElementById("city"
																		+ y).value,
														document
																.getElementById("email"
																		+ y).value,
														document
																.getElementById("phone"
																		+ y).value,
														document
																.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page3').modal('hide');",1500);
										});
						$("#add_row1")
								.click(
										function() {
											n = (n + 1);
											$('#addr1' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='name"+i+"' type='text' placeholder='Name'  class='form-control input-md'></td> "
																	+ "<td><input  id='relationship"+i+"' type='text' placeholder='Relationship'  class='form-control input-md'></td> "
																	+ "<td><input  id='city"+i+"' type='text' placeholder='City'  class='form-control input-md'></td> "
																	+ "<td><input  id='email"+i+"' type='email' placeholder='Email'  class='form-control input-md'></td> "
																	+ "<td><input  id='phone"+i+"' type='tel' placeholder='Phone'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic1').append(
													'<tr id="addr1' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section3")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection3Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("name1"
																		+ y).value,
														document
																.getElementById("relationship1"
																		+ y).value,
														document
																.getElementById("city1"
																		+ y).value,
														document
																.getElementById("email1"
																		+ y).value,
														document
																.getElementById("phone1"
																		+ y).value,
														document
																.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page3').modal('hide');",1500);
										});
						$("#add_row2")
								.click(
										function() {
											n = (n + 1);
											$('#addr11' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='name1"+i+"' type='text' placeholder='Name'  class='form-control input-md'></td> "
																	+ "<td><input  id='relationship1"+i+"' type='text' placeholder='Relationship'  class='form-control input-md'></td> "
																	+ "<td><input  id='city1"+i+"' type='text' placeholder='City'  class='form-control input-md'></td> "
																	+ "<td><input  id='email1"+i+"' type='text' placeholder='Email'  class='form-control input-md'></td> "
																	+ "<td><input  id='phone1"+i+"' type='text' placeholder='Phone'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic2').append(
													'<tr id="addr11' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section4")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection4Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("name2"
																		+ y).value,
														document
																.getElementById("relationship2"
																		+ y).value,
														document
																.getElementById("city2"
																		+ y).value,
														document
																.getElementById("email2"
																		+ y).value,
														document
																.getElementById("phone2"
																		+ y).value,
														document
																.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page3').modal('hide');",1500);
										});
						$("#add_row3")
								.click(
										function() {
											n = (n + 1);
											$('#addr21' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='name2"+i+"' type='text' placeholder='Name'  class='form-control input-md'></td> "
																	+ "<td><input  id='relationship2"+i+"' type='text' placeholder='Relationship'  class='form-control input-md'></td> "
																	+ "<td><input  id='city2"+i+"' type='text' placeholder='City'  class='form-control input-md'></td> "
																	+ "<td><input  id='email2"+i+"' type='text' placeholder='Email'  class='form-control input-md'></td> "
																	+ "<td><input  id='phone2"+i+"' type='text' placeholder='Phone'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic3').append(
													'<tr id="addr21' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section5")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection5Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("name3"
																		+ y).value,
														document
																.getElementById("relationship3"
																		+ y).value,
														document
																.getElementById("city3"
																		+ y).value,
														document
																.getElementById("email3"
																		+ y).value,
														document
																.getElementById("phone3"
																		+ y).value,
														document
																.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page3').modal('hide');",1500);
										});
						$("#add_row4")
								.click(
										function() {
											n = (n + 1);
											$('#addr31' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='name3"+i+"' type='text' placeholder='Name'  class='form-control input-md'></td> "
																	+ "<td><input  id='relationship3"+i+"' type='text' placeholder='Relationship'  class='form-control input-md'></td> "
																	+ "<td><input  id='city3"+i+"' type='text' placeholder='City'  class='form-control input-md'></td> "
																	+ "<td><input  id='email3"+i+"' type='text' placeholder='Email'  class='form-control input-md'></td> "
																	+ "<td><input  id='phone3"+i+"' type='text' placeholder='Phone'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic4').append(
													'<tr id="addr31' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$(document)
			.ready(
					function() {
						var i = 1;
						var n = 1;
						$("#save_section6")
								.click(
										function() {
											for (y = 0; y < n; y++) {
												saveSection6Data(
														document
																.getElementById("userId").value,
														document
																.getElementById("name4"
																		+ y).value,
														document
																.getElementById("relationship4"
																		+ y).value,
														document
																.getElementById("city4"
																		+ y).value,
														document
																.getElementById("email4"
																		+ y).value,
														document
																.getElementById("phone4"
																		+ y).value,
														document
																.getElementById("clientname").value);
											}
											setTimeout("$('#modal_page3').modal('hide');",1500);
										});
						$("#add_row5")
								.click(
										function() {
											n = (n + 1);
											$('#addr41' + i)
													.html(
															"<td style='width: 50px'>"
																	+ (i + 1)
																	+ "</td>"
																	+ "<td><input  id='name4"+i+"' type='text' placeholder='Name'  class='form-control input-md'></td> "
																	+ "<td><input  id='relationship4"+i+"' type='text' placeholder='Relationship'  class='form-control input-md'></td> "
																	+ "<td><input  id='city4"+i+"' type='text' placeholder='City'  class='form-control input-md'></td> "
																	+ "<td><input  id='email4"+i+"' type='text' placeholder='Email'  class='form-control input-md'></td> "
																	+ "<td><input  id='phone4"+i+"' type='text' placeholder='Phone'  class='form-control input-md'></td> "
																	+ "<td><button style='width: 50px; border: none; box-shadow: none;' type='submit' class='btn btn-default btn-sm delete'><span class='glyphicon glyphicon-trash'></span></button></td>");

											$('#tab_logic5').append(
													'<tr id="addr41' + (i + 1)
															+ '"></tr>');
											i++;
										});
					});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page3/section2/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.name
												+ '</td><td>'
												+ item.relationship
												+ '</td><td>'
												+ item.city
												+ '</td><td>'
												+ item.email
												+ '</td><td>'
												+ item.phone
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic1').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});
	$('#tab_logic2').on('click', '.delete', function() {
		var name = $(this).parents('tr').find('td').eq(1).text();
		var relationship = $(this).parents('tr').find('td').eq(2).text();
		var city = $(this).parents('tr').find('td').eq(3).text();
		var email = $(this).parents('tr').find('td').eq(4).text();
		var phone = $(this).parents('tr').find('td').eq(5).text();
		var client = document.getElementById("clientname").value;
		deleteSection3Row(name, relationship, city, email, phone, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page3_delete').modal('hide');",1500);
	});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page3/section3/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.name
												+ '</td><td>'
												+ item.relationship
												+ '</td><td>'
												+ item.city
												+ '</td><td>'
												+ item.email
												+ '</td><td>'
												+ item.phone
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic2').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});
	$('#tab_logic3').on('click', '.delete', function() {
		var name = $(this).parents('tr').find('td').eq(1).text();
		var relationship = $(this).parents('tr').find('td').eq(2).text();
		var city = $(this).parents('tr').find('td').eq(3).text();
		var email = $(this).parents('tr').find('td').eq(4).text();
		var phone = $(this).parents('tr').find('td').eq(5).text();
		var client = document.getElementById("clientname").value;
		deleteSection4Row(name, relationship, city, email, phone, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page3_delete').modal('hide');",1500);
	});
	$('#tab_logic1').on('click', '.delete', function() {
		var name = $(this).parents('tr').find('td').eq(1).text();
		var relationship = $(this).parents('tr').find('td').eq(2).text();
		var city = $(this).parents('tr').find('td').eq(3).text();
		var email = $(this).parents('tr').find('td').eq(4).text();
		var phone = $(this).parents('tr').find('td').eq(5).text();
		var client = document.getElementById("clientname").value;
		deleteSection2Row(name, relationship, city, email, phone, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page3_delete').modal('hide');",1500);
	});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page3/section4/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.name
												+ '</td><td>'
												+ item.relationship
												+ '</td><td>'
												+ item.city
												+ '</td><td>'
												+ item.email
												+ '</td><td>'
												+ item.phone
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic3').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});
	$('#tab_logic4').on('click', '.delete', function() {
		var name = $(this).parents('tr').find('td').eq(1).text();
		var relationship = $(this).parents('tr').find('td').eq(2).text();
		var city = $(this).parents('tr').find('td').eq(3).text();
		var email = $(this).parents('tr').find('td').eq(4).text();
		var phone = $(this).parents('tr').find('td').eq(5).text();
		var client = document.getElementById("clientname").value;
		deleteSection5Row(name, relationship, city, email, phone, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page3_delete').modal('hide');",1500);
	});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page3/section5/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.name
												+ '</td><td>'
												+ item.relationship
												+ '</td><td>'
												+ item.city
												+ '</td><td>'
												+ item.email
												+ '</td><td>'
												+ item.phone
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic4').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});
	$('#tab_logic5').on('click', '.delete', function() {
		var name = $(this).parents('tr').find('td').eq(1).text();
		var relationship = $(this).parents('tr').find('td').eq(2).text();
		var city = $(this).parents('tr').find('td').eq(3).text();
		var email = $(this).parents('tr').find('td').eq(4).text();
		var phone = $(this).parents('tr').find('td').eq(5).text();
		var client = document.getElementById("clientname").value;
		deleteSection6Row(name, relationship, city, email, phone, client);
		$(this).parents('tr').remove();
		setTimeout("$('#modal_page3_delete').modal('hide');",1500);
	});
	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : '${pageContext.request.contextPath}/page3/section6/'+document.getElementById("clientname").value,
				async : false,
				success : function(response) {
					var trHTML = '';
					$
							.each(
									response,
									function(i, item) {
										trHTML += '<tr><td><span class="glyphicon glyphicon-ok"></span></td><td>'
												+ item.name
												+ '</td><td>'
												+ item.relationship
												+ '</td><td>'
												+ item.city
												+ '</td><td>'
												+ item.email
												+ '</td><td>'
												+ item.phone
												+ '</td><td><button style="width: 50px; border: none; box-shadow: none;" type="submit" class="btn btn-default btn-sm delete"><span class="glyphicon glyphicon-trash"></span></button></td></tr>';
									});
					$('#tab_logic5').append(trHTML);
				},
				error : function() {
					alert("asda");
				}
			});
</script>