<%@ page contentType="text/html" language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui"%>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<portlet:defineObjects />
<portlet:renderURL var="serviceListUrl">
</portlet:renderURL>

<c:set var="ns">
	<portlet:namespace />
</c:set>

<a href="${serviceListUrl}">Вернуться к списку услуг</a>
<div class="paging"></div>
<table id="vtt-table" class="table table-bordered table-striped table-hover">
<thead>
	<tr>
		<th>Описание</th>
		<th>Область применения</th>
		<th>УНП</th>
		<th>Наименование</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var="vtt" items="${vttList}">
		<tr>
			<td class="col-md-4 span4"><div style="font-size:small">${vtt.desc}</div></td>
			<td class="col-md-4 span4"><div style="font-size:small">${vtt.oblPrim}</div></td>
			<td class="col-md-2 span2">${vtt.unp}</td>
			<td class="col-md-2 span2">${vtt.name}</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<div class="paging"></div>

<aui:script>
$('#vtt-table').datatable({
    pageSize: 6,
    sort: [true, true, true, true],
    filters: [true, true, true, true],
    filterText: 'Поиск...'
}) ;
</aui:script>


