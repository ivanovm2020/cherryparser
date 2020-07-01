<#import "parts/common.ftl" as c>

<@c.page>

       <div class="form-group">
              <form action="/main" method="post">
                     <select class="custom-select col-md-6" id="typeSelect" name="productTypeId">
                            <#list productTypes! as productType>
                                   <option value="${productType.id}">${productType.name}</option>
                            </#list>
                     </select>
                     <input type="hidden" name="_csrf" value="${_csrf.token}" />
                     <button type="submit"  class="btn btn-primary ml-2">Start parsing</button>
              </form>
       </div>

       <div class="form-row">
              <div class="form-group col-md-6">
                     <form method="get" action="/main" class="form-inline">
                            <input type="text" name="filter" class="form-control" value="${filter?ifExists}" placeholder="Search by description">
                            <button type="submit" class="btn btn-primary ml-2">Search</button>
                     </form>
              </div>
       </div>

       <div class="card-columns">
              <#list products as product>
                     <div class="card my-3">
                            <div class="card-header text-muted">
                                   <span>Product ${product.code}<br /></span>
                                   <span>Price: ${product.price} RUB</span>
                            </div>

                            <#if product.filename??>
                                   <img src="/img/${product.filename}" class="card-img-top">
                            </#if>

                            <div class="card-body">
                                   <#if product.description??>
                                          <span>${product.description?jString}</span>
                                   </#if>
                            </div>

                            <div class="card-footer text-muted">
                                   <span>Added by: ${product.authorName}</span>
                            </div>
                     </div>
              <#else>
                     No product
              </#list>
       </div>

</@c.page>