<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script type="text/javascript">
	function confirmation() {
		var con = confirm("Are you sure want to transfer the amount to retailer");
		if (con == true) {
			return true;
		} else {
			document.getElementById("submit").focus();
			return false;
		}
	}
	function transferAmountValidation() {
		var amount = document.getElementById("transferamount").value;
		if (isNaN(amount)) {
			alert("Pls enter the number in amount");
			document.getElementById("transferamount").focus();
			return false;
		}
		return true;
	}
	function fundTransferFormValidation() {
		return (transferAmountValidation() && confirmation());

	}
</script>
<div class="grid_10">
	<div class="box round first">
		<h2>Fund Transfer To Retailer</h2>
		<div class="block ">
			<c:if test="${not empty error}">
				<div class="message info">
					<h5>Information</h5>
					<p>${error}.</p>
				</div>
			</c:if>
			<form method="post" action="admintofranchiseecashtransfer"
				onsubmit="return fundTransferFormValidation();">
				<table class="form">
					<tbody>
						<tr>
							<td class="col1"><label>Retailer ID:</label></td>
							<td class="col2"><input type="text" name="franchId"
								id="franchiseeId" readonly="readonly" value="${franchiseeId}" /></td>
						</tr>
						<tr>
							<td><label>Mobile NO.:</label></td>
							<td><input type="text" name="mobileNo" id="mobileno"
								readonly="readonly" value="${mobileNumber}" /></td>
						</tr>

						<tr>
							<td><label>Transfer Amount(Rs.):</label></td>
							<td><input type="text" name="amount" placeholder="amount"
								id="transferamount" required="required" value="${amount}" /></td>
						</tr>

					</tbody>
				</table>
				<input class="btn btn-large" type="submit" value="submit" id="submit" />
			</form>
		</div>
	</div>
</div>


