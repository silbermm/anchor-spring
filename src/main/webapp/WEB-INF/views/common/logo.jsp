<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
	<div class="row-fluid" id="logo-row">
		<div class="span4 info-columns text-right" id="left-text">
			<ul class="inline">
				<li>1401 Race Street,</li>
				<li>Cincinnati, OH 45202</li>
			</ul>
		</div>

		<div class="span4 text-center" id="center-logo">
			<a href="<c:url value='/' />"> <img
				src="<c:url value='/resources/img/AnchorLarge.png' />" />
			</a>
		</div>

		<div class="span4 info-columns" id="right-text">
			<ul class="inline">
				<li>(513) 421-8111</li>
				<li>
					<ul class="hours">
						<li>Tue-Thur: 11:30-2:30, 5-10</li>
						<li>Fri-Sat: 11:30-2:30, 5-11</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>