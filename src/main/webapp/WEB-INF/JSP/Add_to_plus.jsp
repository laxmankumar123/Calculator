<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<script src=
"https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js">
	</script>
	<link rel="stylesheet" href=
"https://use.fontawesome.com/releases/v5.7.2/css/all.css"
		integrity=
"sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
		crossorigin="anonymous" />

	<style>
		body {
			text-align: center;
			color: green;
		}
		
		.wrapper {
			width: 90%;
			margin: 5px auto;
		}
		
		.common {
			width: 100%;
			border: none;
		}
		
		.common thead th {
			background-color: #791515;
		}
		
		.trow:first-child {
			display: none;
			margin: 0 auto;
		}
		
		.trow input {
			border-radius: 5px;
		}
		
		.controls a {
			text-decoration: none;
			color: #791515;
		}
		
		.list_add {
			text-decoration: none;
			color: #791515;
		}
		
		.list_add:before {
			content: "\002b";
			color: white;
			border: 1px solid #791515;
			padding: 0 5px;
			border-radius: 5px;
			background-color: #791515;
			margin-right: 20px;
		}
		
		.action_btn {
			text-align: center;
		}
		
		.action_btn input {
			width: 120px;
			padding: 5px;
			border-radius: 10px;
			margin: 10px;
		}
		
		.action_btn input:first-child {
			background-color: #791515;
			color: white;
		}
		
		@keyframes fadeout {
			from {
				bottom: 30px;
				opacity: 1;
			}
			to {
				bottom: 0;
				opacity: 0;
			}
		}
		
		@keyframes fadein {
			from {
				bottom: 0;
				opacity: 0;
			}
			to {
				bottom: 30px;
				opacity: 1;
			}
		}
		
		.fa-times {
			font-size: 1rem;
		}
	</style>
</head>

<body>
	<h2>
		How to add,edit and delete row
		in Student Registration Table
	</h2>

	<div class="wrapper">
		<table class="common">
			<thead>
				<tr>
					<th><i class="fas fa-times"></i></th>
					<th>Student Rollno</th>
					<th>Name</th>
					<th>Class</th>
					<th>Fathers Name</th>
					<th>Section</th>
					<th>Marks</th>
				</tr>
			</thead>
			<tbody>
				<tr class="trow">
					<td class="controls">
						<a href="#" class="list_cancel"
							title="Delete Row">
							<i class="fas fa-times"></i>
						</a>
					</td>
					<td>
						<input type="text" id="rollno"
							name="" value="" />
					</td>
					<td>
						<input type="text" class="long"
							id="name" name="" value="" />
					</td>
					<td>
						<input type="text" id="class"
							name="" value="" />
					</td>
					<td>
						<input type="text" id="father's name"
							name="" value="" />
					</td>
					<td>
						<select name="" id="" class="label">
							<option value="a">A</option>
							<option value="b">B</option>
							<option value="c">C</option>
						</select>
					</td>
					<td>
						<input type="text" class=""
							id="marks" name="" value="" />
					</td>
				</tr>

				<tr class="no_entries_row">
					<td colspan="7">No Student Record</td>
				</tr>
			</tbody>
		</table>

		<a href="#" class="list_add">Add one row</a>
		<br class="clear" />

		<div class="action_btn">
			<input name="submit" class="action_btn submit"
				type="submit" value="Edit" />
		</div>
	</div>

	<script>
		function addNewRow() {
			var template = $("tr.trow:first");
			$(".no_entries_row").css("display", "none");
			var newRow = template.clone();
			var lastRow = $("tr.trow:last").after(newRow);

			$(".list_cancel").on("click", function(event) {
				event.stopPropagation();
				event.stopImmediatePropagation();
				$(this).closest("tr").remove();
				if ($(".list_cancel").length === 1) {
					$(".no_entries_row")
						.css("display", "inline-block");
				}
				console.log($(".list_cancel").length);
			});
			console.log($(".list_cancel").length);
			$("select.label").on("change", function(event) {
				event.stopPropagation();
				event.stopImmediatePropagation();
				$(this).css("background-color", $(this).val());
			});
		}

		$("a.list_add").on("click", addNewRow);
	</script>
</body>

</html>
