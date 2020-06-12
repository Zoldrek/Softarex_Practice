<#import "parts/common.ftlh" as c>
<@c.page>
    <form action="/check" method="post" class="form-inline">
        <div  class="form-group mx-sm-3 mb-2 ml-2">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
        </div>
    </form>
</@c.page>