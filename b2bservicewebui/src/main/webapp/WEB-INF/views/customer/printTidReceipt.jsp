<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="grid_10">
	<div class="box round first">
		<h2>Generate Transaction Receipt</h2>
		<div class="block ">
			<c:if test="${not empty message}">
				<div class="message info">
					<h4>Information</h4>
					<h5>${message}.</h5>
				</div>
			</c:if>
			<form:form method="get" action="transacionReceipt">
				<table class="form">
					<tbody>

						<tr>
							<td class="col1"><label>Transaction ID</label></td>
							<td class="col2"><input class="inputfield" required="required"
								name="clientTransId" type="text"></input></td>
						</tr>


					</tbody>
				</table>
				<input type="submit" class="button" value="Submit" />
			</form:form>
		</div>
	</div>
</div>


