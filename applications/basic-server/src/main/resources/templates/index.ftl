<#import "template.ftl" as layout />

<@layout.noauthentication>
    <section>
        <div class="container">
            <p>
                An example application using Kotlin and Ktor.
            </p>
            <p>
                <a href="/">home</a>
                <a href="/authenticated">authenticated</a>
                <a href="/authenticated?gcp-iap-mode=SECURE_TOKEN_TEST&iap-secure-token-test-type=PAST_EXPIRATION">expired token</a>
                <a href="/authorized">authorized</a>
            </p>
            <#if message??>
                <p style="color: #ED804A">${message}</p>
            </#if>
        </div>
    </section>

</@layout.noauthentication>