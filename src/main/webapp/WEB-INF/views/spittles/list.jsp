<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div>
  <h2>Spittle for ${spitter.username}</h2>

  <table cellspacing="15" >
    <c:forEach items="${spittleList}" var="spittle">
    <tr>
      <td>
          <img src="http://s3.amazonaws.com/spitterImages/${spittle.spitter.id}.jpg"
               width="48"
               border="0" 
               align="middle" 
               onError="this.src='<s:url value="/resources/images"/>/spitter_avatar.png';"/></td>
      <td><a href="${spitter_url}">${spittle.spitter.username}</a>
          <small><c:out value="${spittle.text}" /><br/><small>
          <fmt:formatDate value="${spittle.when}" pattern="hh:mma MMM d, yyyy" />
          </small></small>
      </td>
    </tr>
    </c:forEach>
  </table>
</div>
