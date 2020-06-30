<#import "parts/common.ftlh" as c>
<#import "parts/panel.ftlh" as l>
<@c.page>
    <@l.panel/>
    <div class="row justify-content-around" xmlns:th="http://www.w3.org/1999/xhtml">
    <div  class="col-lg-2 col-md-3 col-sm-3 col-xs-6">
        <label> Class members</label><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <div class="bs-example">
            <div class="list-group">
                <a href="#" class="list-group-item">
                    User1 <i class="fa fa-hand-paper-o pull-right"></i>
                </a>
                <a href="#" class="list-group-item">
                    User2
                </a>
            </div>
        </div>
    </div>
    </div>
</@c.page>