<#import "template.ftl" as layout />

<@layout.noauthentication>
    <section>
        <div class="container">
            <p>
                An example application using Kotlin and Ktor.
            </p>
            <#if message??>
                <p style="color: #ED804A">${message}</p>
            </#if>
        </div>
    </section>

</@layout.noauthentication>