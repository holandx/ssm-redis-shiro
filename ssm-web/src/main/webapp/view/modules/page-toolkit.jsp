<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<ul class="pagination">
    <!-- 判断 <<、< 符号是否启用 -->
    <c:choose>
        <c:when test="${model.pageNum != 1}">
            <li><a href="?p=1">&laquo;</a></li>
            <li><a href="?p=${model.pageNum - 1}">&lsaquo;</a></li>
        </c:when>
        <c:otherwise>
            <li class="disabled"><a href="javascript:void(0)">&laquo;</a></li>
            <li class="disabled"><a href="javascript:void(0)">&lsaquo;</a></li>
        </c:otherwise>
    </c:choose>

    <!-- 页码 start -->
    <c:forEach var="p"
               begin="${(model.pageNum - Math.ceil(model.indexCount/2)) > 0 ? model.pageNum - Math.ceil(model.indexCount/2) : 1}"
               end="${(model.pageNum + Math.ceil(model.indexCount/2)) > model.pageCount ? model.pageCount : model.pageNum + Math.ceil(model.indexCount/2)}">
        <!-- 选中的是当前页就高亮，否则什么样式都没有 -->
        <c:choose>
            <c:when test="${model.pageNum == p}">
                <li class="active"><a href="javascript:void(0)">${p}</a></li>
            </c:when>
            <c:otherwise>
                <li><a href="?p=${p}">${p}</a></li>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <!-- 页码 end -->

    <!-- 判断 >、>> 符号是否启用 -->
    <c:choose>
        <c:when test="${model.pageNum != model.pageCount}">
            <li><a href="?p=${model.pageNum + 1}">&rsaquo;</a></li>
            <li><a href="?p=${model.pageCount}">&raquo;</a></li>
        </c:when>
        <c:otherwise>
            <li class="disabled"><a href="javascript:void(0)">&rsaquo;</a></li>
            <li class="disabled"><a href="javascript:void(0)">&raquo;</a></li>
        </c:otherwise>
    </c:choose>
</ul>