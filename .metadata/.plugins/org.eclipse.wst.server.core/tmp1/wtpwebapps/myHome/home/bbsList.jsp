<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<c:if test="${empty BBSS }">
	<h3>등록된 게시물이 존재하지 않습니다.</h3>
</c:if>
<c:if test="${ ! empty BBSS }">
	<h2>게시글 목록</h2>
	<table width="100%">
		<tr><td align="right">${STARTROW } ~ ${ENDROW } / ${COUNT }</td></tr>
	</table>
	<table width="100%">
		<tr><th>번 호</th><th>제 목</th><th>작성자</th><th>작성일</th></tr>
		<c:forEach items="${BBSS }" var="bbs">
		<tr><td>${bbs.seqno }</td>
			<td><a href="../read/readDetail.html?SEQNO=${bbs.seqno }">${bbs.title }</a></td>
			<td>${bbs.id }</td><td>${bbs.register_date }</td></tr>
		</c:forEach>
	</table>
	<c:forEach begin="1" end="${PAGES }" var="page">
		<a href="../write/read.html?pageNo=${page }">${page }</a>
	</c:forEach>
</c:if>
</div>
</body>
</html>












