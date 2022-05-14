<#import "template.ftl" as layout />

<@layout.noauthentication>
    <section>
        <div class="container">
            <p>
                Authenticated users with special access.
            </p>
            <#if message??>
                <p style="color: #ED804A">${message}</p>
            </#if>
        </div>
    </section>

</@layout.noauthentication>