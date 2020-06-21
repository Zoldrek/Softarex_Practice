<#macro login path>
    <form action="${path}" method="post">
        <label> Your Name :</label><br>
        <input class="btn-block" type="text" name="username"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <input type="hidden" name="password" value="password" /></br>
        <input class="btn btn-primary btn-block" type="submit" value="Login"/>
    </form>
</#macro>