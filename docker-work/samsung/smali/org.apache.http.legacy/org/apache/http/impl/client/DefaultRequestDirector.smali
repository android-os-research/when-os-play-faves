.class public Lorg/apache/http/impl/client/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "DefaultRequestDirector.java"

# interfaces
.implements Lorg/apache/http/client/RequestDirector;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static cleartextTrafficPermittedMethod:Ljava/lang/reflect/Method;

.field private static networkSecurityPolicy:Ljava/lang/Object;


# instance fields
.field protected final connManager:Lorg/apache/http/conn/ClientConnectionManager;

.field protected final httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field protected final keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final log:Lorg/apache/commons/logging/Log;

.field protected managedConn:Lorg/apache/http/conn/ManagedClientConnection;

.field private maxRedirects:I

.field protected final params:Lorg/apache/http/params/HttpParams;

.field private final proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

.field private final proxyAuthState:Lorg/apache/http/auth/AuthState;

.field private redirectCount:I

.field protected final redirectHandler:Lorg/apache/http/client/RedirectHandler;

.field protected final requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

.field protected final retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

.field protected final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field protected final routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

.field private final targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

.field private final targetAuthState:Lorg/apache/http/auth/AuthState;

.field private final userTokenHandler:Lorg/apache/http/client/UserTokenHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V
    .registers 15
    .param p1, "requestExec"    # Lorg/apache/http/protocol/HttpRequestExecutor;
    .param p2, "conman"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p3, "reustrat"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p4, "kastrat"    # Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .param p5, "rouplan"    # Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .param p6, "httpProcessor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p7, "retryHandler"    # Lorg/apache/http/client/HttpRequestRetryHandler;
    .param p8, "redirectHandler"    # Lorg/apache/http/client/RedirectHandler;
    .param p9, "targetAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p10, "proxyAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p11, "userTokenHandler"    # Lorg/apache/http/client/UserTokenHandler;
    .param p12, "params"    # Lorg/apache/http/params/HttpParams;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    .line 181
    if-eqz p1, :cond_b4

    .line 185
    if-eqz p2, :cond_ac

    .line 189
    if-eqz p3, :cond_a4

    .line 193
    if-eqz p4, :cond_9c

    .line 197
    if-eqz p5, :cond_94

    .line 201
    if-eqz p6, :cond_8c

    .line 205
    if-eqz p7, :cond_84

    .line 209
    if-eqz p8, :cond_7c

    .line 213
    if-eqz p9, :cond_74

    .line 217
    if-eqz p10, :cond_6c

    .line 221
    if-eqz p11, :cond_64

    .line 225
    if-eqz p12, :cond_5c

    .line 229
    iput-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 230
    iput-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 231
    iput-object p3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 232
    iput-object p4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 233
    iput-object p5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    .line 234
    iput-object p6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 235
    iput-object p7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 236
    iput-object p8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    .line 237
    iput-object p9, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 238
    iput-object p10, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 239
    iput-object p11, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    .line 240
    iput-object p12, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 245
    const/16 v0, 0x64

    const-string v1, "http.protocol.max-redirects"

    invoke-interface {p12, v1, v0}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    .line 246
    new-instance v0, Lorg/apache/http/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/http/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    .line 247
    new-instance v0, Lorg/apache/http/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/http/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    .line 248
    return-void

    .line 226
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User token handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy authentication handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target authentication handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Redirect handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request retry handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_8c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP protocol processor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Route planner may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_9c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection keep alive strategy may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_a4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection reuse strategy may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_ac
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client connection manager may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_b4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request executor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private abortConnection()V
    .registers 5

    .line 1039
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 1040
    .local v0, "mcc":Lorg/apache/http/conn/ManagedClientConnection;
    if-eqz v0, :cond_29

    .line 1043
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 1045
    :try_start_7
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->abortConnection()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1050
    goto :goto_1d

    .line 1046
    :catch_b
    move-exception v1

    .line 1047
    .local v1, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1048
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1053
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    .line 1056
    goto :goto_29

    .line 1054
    :catch_21
    move-exception v1

    .line 1055
    .local v1, "ignored":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Error releasing connection"

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1058
    .end local v1    # "ignored":Ljava/io/IOException;
    :cond_29
    :goto_29
    return-void
.end method

.method private static isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .registers 9
    .param p0, "hostname"    # Ljava/lang/String;

    .line 1149
    const/4 v0, 0x1

    :try_start_1
    const-class v1, Lorg/apache/http/impl/client/DefaultRequestDirector;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_4} :catch_45

    .line 1150
    :try_start_4
    sget-object v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->cleartextTrafficPermittedMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-nez v2, :cond_2e

    .line 1151
    const-string v2, "android.security.NetworkSecurityPolicy"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1152
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1153
    .local v4, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sput-object v5, Lorg/apache/http/impl/client/DefaultRequestDirector;->networkSecurityPolicy:Ljava/lang/Object;

    .line 1154
    const-string v5, "isCleartextTrafficPermitted"

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    .line 1155
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lorg/apache/http/impl/client/DefaultRequestDirector;->cleartextTrafficPermittedMethod:Ljava/lang/reflect/Method;

    .line 1157
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getInstanceMethod":Ljava/lang/reflect/Method;
    :cond_2e
    sget-object v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->networkSecurityPolicy:Ljava/lang/Object;

    .line 1158
    .local v2, "policy":Ljava/lang/Object;
    sget-object v4, Lorg/apache/http/impl/client/DefaultRequestDirector;->cleartextTrafficPermittedMethod:Ljava/lang/reflect/Method;

    .line 1159
    .local v4, "method":Ljava/lang/reflect/Method;
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_42

    .line 1160
    :try_start_33
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {v4, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_41
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_33 .. :try_end_41} :catch_45

    return v0

    .line 1159
    .end local v2    # "policy":Ljava/lang/Object;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    .end local p0    # "hostname":Ljava/lang/String;
    :try_start_44
    throw v2
    :try_end_45
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_44 .. :try_end_45} :catch_45

    .line 1161
    .restart local p0    # "hostname":Ljava/lang/String;
    :catch_45
    move-exception v1

    .line 1165
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    return v0
.end method

.method private processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 12
    .param p2, "authState"    # Lorg/apache/http/auth/AuthState;
    .param p3, "authHandler"    # Lorg/apache/http/client/AuthenticationHandler;
    .param p4, "response"    # Lorg/apache/http/HttpResponse;
    .param p5, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            ">;",
            "Lorg/apache/http/auth/AuthState;",
            "Lorg/apache/http/client/AuthenticationHandler;",
            "Lorg/apache/http/HttpResponse;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;,
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 1069
    .local p1, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    invoke-virtual {p2}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 1070
    .local v0, "authScheme":Lorg/apache/http/auth/AuthScheme;
    if-nez v0, :cond_d

    .line 1072
    invoke-interface {p3, p1, p4, p5}, Lorg/apache/http/client/AuthenticationHandler;->selectScheme(Ljava/util/Map;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 1073
    invoke-virtual {p2, v0}, Lorg/apache/http/auth/AuthState;->setAuthScheme(Lorg/apache/http/auth/AuthScheme;)V

    .line 1075
    :cond_d
    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    .line 1077
    .local v1, "id":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/Header;

    .line 1078
    .local v2, "challenge":Lorg/apache/http/Header;
    if-eqz v2, :cond_2a

    .line 1082
    invoke-interface {v0, v2}, Lorg/apache/http/auth/AuthScheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 1083
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Authorization challenge processed"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1084
    return-void

    .line 1079
    :cond_2a
    new-instance v3, Lorg/apache/http/auth/AuthenticationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " authorization challenge expected, but not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V
    .registers 11
    .param p1, "authState"    # Lorg/apache/http/auth/AuthState;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "credsProvider"    # Lorg/apache/http/client/CredentialsProvider;

    .line 1092
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->isValid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1093
    return-void

    .line 1096
    :cond_7
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, "hostname":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    .line 1098
    .local v1, "port":I
    if-gez v1, :cond_1f

    .line 1099
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Lorg/apache/http/HttpHost;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    .line 1100
    .local v2, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v1

    .line 1103
    .end local v2    # "scheme":Lorg/apache/http/conn/scheme/Scheme;
    :cond_1f
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v2

    .line 1104
    .local v2, "authScheme":Lorg/apache/http/auth/AuthScheme;
    new-instance v3, Lorg/apache/http/auth/AuthScope;

    .line 1107
    invoke-interface {v2}, Lorg/apache/http/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v4

    .line 1108
    invoke-interface {v2}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v1, v4, v5}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1110
    .local v3, "authScope":Lorg/apache/http/auth/AuthScope;
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1111
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Authentication scope: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1113
    :cond_50
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v4

    .line 1114
    .local v4, "creds":Lorg/apache/http/auth/Credentials;
    if-nez v4, :cond_74

    .line 1115
    invoke-interface {p3, v3}, Lorg/apache/http/client/CredentialsProvider;->getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object v4

    .line 1116
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 1117
    if-eqz v4, :cond_6c

    .line 1118
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Found credentials"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_82

    .line 1120
    :cond_6c
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Credentials not found"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_82

    .line 1124
    :cond_74
    invoke-interface {v2}, Lorg/apache/http/auth/AuthScheme;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 1125
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Authentication failed"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1126
    const/4 v4, 0x0

    .line 1129
    :cond_82
    :goto_82
    invoke-virtual {p1, v3}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    .line 1130
    invoke-virtual {p1, v4}, Lorg/apache/http/auth/AuthState;->setCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 1131
    return-void
.end method

.method private wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .registers 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .line 253
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_d

    .line 254
    new-instance v0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    move-object v1, p1

    check-cast v1, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    return-object v0

    .line 257
    :cond_d
    new-instance v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    return-object v0
.end method


# virtual methods
.method protected createConnectRequest(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpRequest;
    .registers 11
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 881
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 883
    .local v0, "target":Lorg/apache/http/HttpHost;
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    .line 885
    .local v2, "port":I
    if-gez v2, :cond_20

    .line 886
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v3

    .line 887
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v3

    .line 888
    .local v3, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v3}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v2

    .line 891
    .end local v3    # "scheme":Lorg/apache/http/conn/scheme/Scheme;
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 892
    .local v3, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 894
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 897
    .local v4, "authority":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v5}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    move-result-object v5

    .line 898
    .local v5, "ver":Lorg/apache/http/ProtocolVersion;
    new-instance v6, Lorg/apache/http/message/BasicHttpRequest;

    const-string v7, "CONNECT"

    invoke-direct {v6, v7, v4, v5}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    .line 901
    .local v6, "req":Lorg/apache/http/HttpRequest;
    return-object v6
.end method

.method protected createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 6
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "hop"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 860
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createTunnelToTarget(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Z
    .registers 26
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v9

    .line 715
    .local v9, "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v10

    .line 716
    .local v10, "target":Lorg/apache/http/HttpHost;
    const/4 v0, 0x0

    .line 718
    .local v0, "response":Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    move/from16 v22, v1

    move-object v1, v0

    move/from16 v0, v22

    .line 719
    .local v0, "done":Z
    .local v1, "response":Lorg/apache/http/HttpResponse;
    :goto_13
    if-nez v0, :cond_188

    .line 721
    const/4 v11, 0x1

    .line 723
    .end local v0    # "done":Z
    .local v11, "done":Z
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_28

    .line 724
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v2, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v12, p1

    invoke-interface {v0, v12, v8, v2}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto :goto_2a

    .line 723
    :cond_28
    move-object/from16 v12, p1

    .line 727
    :goto_2a
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createConnectRequest(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpRequest;

    move-result-object v13

    .line 729
    .local v13, "connect":Lorg/apache/http/HttpRequest;
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0}, Lorg/apache/http/params/HttpProtocolParams;->getUserAgent(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v14

    .line 730
    .local v14, "agent":Ljava/lang/String;
    if-eqz v14, :cond_3b

    .line 731
    const-string v0, "User-Agent"

    invoke-interface {v13, v0, v14}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_3b
    invoke-virtual {v10}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Host"

    invoke-interface {v13, v2, v0}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v15

    .line 736
    .local v15, "authScheme":Lorg/apache/http/auth/AuthScheme;
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getAuthScope()Lorg/apache/http/auth/AuthScope;

    move-result-object v16

    .line 737
    .local v16, "authScope":Lorg/apache/http/auth/AuthScope;
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v6

    .line 738
    .local v6, "creds":Lorg/apache/http/auth/Credentials;
    if-eqz v6, :cond_8d

    .line 739
    if-nez v16, :cond_60

    invoke-interface {v15}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 741
    :cond_60
    :try_start_60
    invoke-interface {v15, v6, v13}, Lorg/apache/http/auth/AuthScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v13, v0}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_67
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_60 .. :try_end_67} :catch_68

    .line 746
    goto :goto_8d

    .line 742
    :catch_68
    move-exception v0

    .line 743
    .local v0, "ex":Lorg/apache/http/auth/AuthenticationException;
    iget-object v2, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 744
    iget-object v2, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy authentication error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 750
    .end local v0    # "ex":Lorg/apache/http/auth/AuthenticationException;
    :cond_8d
    :goto_8d
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v2, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v0, v13, v2, v8}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 752
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 753
    .local v4, "status":I
    const/16 v0, 0xc8

    if-lt v4, v0, :cond_16a

    .line 758
    nop

    .line 759
    const-string v0, "http.auth.credentials-provider"

    invoke-interface {v8, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/apache/http/client/CredentialsProvider;

    .line 761
    .local v3, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    if-eqz v3, :cond_15d

    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_15d

    .line 762
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, v5, v8}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 764
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Proxy requested authentication"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 765
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, v5, v8}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v17

    .line 768
    .local v17, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :try_start_ca
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    iget-object v2, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;
    :try_end_ce
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_ca .. :try_end_ce} :catch_e8

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    move-object/from16 v19, v10

    move-object v10, v3

    .end local v3    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .local v10, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .local v19, "target":Lorg/apache/http/HttpHost;
    move-object v3, v0

    move/from16 v20, v4

    .end local v4    # "status":I
    .local v20, "status":I
    move-object/from16 v4, v18

    move-object/from16 v18, v5

    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .local v18, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v21, v6

    .end local v6    # "creds":Lorg/apache/http/auth/Credentials;
    .local v21, "creds":Lorg/apache/http/auth/Credentials;
    move-object/from16 v6, p2

    :try_start_e2
    invoke-direct/range {v1 .. v6}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_e5
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_e2 .. :try_end_e5} :catch_e6

    .line 776
    goto :goto_11b

    .line 771
    :catch_e6
    move-exception v0

    goto :goto_f2

    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "target":Lorg/apache/http/HttpHost;
    .end local v20    # "status":I
    .end local v21    # "creds":Lorg/apache/http/auth/Credentials;
    .restart local v3    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .restart local v4    # "status":I
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "creds":Lorg/apache/http/auth/Credentials;
    .local v10, "target":Lorg/apache/http/HttpHost;
    :catch_e8
    move-exception v0

    move/from16 v20, v4

    move-object/from16 v18, v5

    move-object/from16 v21, v6

    move-object/from16 v19, v10

    move-object v10, v3

    .line 772
    .end local v3    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .end local v4    # "status":I
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "creds":Lorg/apache/http/auth/Credentials;
    .restart local v0    # "ex":Lorg/apache/http/auth/AuthenticationException;
    .local v10, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "target":Lorg/apache/http/HttpHost;
    .restart local v20    # "status":I
    .restart local v21    # "creds":Lorg/apache/http/auth/Credentials;
    :goto_f2
    iget-object v1, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 773
    iget-object v1, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 774
    move v0, v11

    move-object/from16 v1, v18

    goto/16 :goto_18c

    .line 777
    .end local v0    # "ex":Lorg/apache/http/auth/AuthenticationException;
    :cond_11b
    :goto_11b
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-direct {v7, v0, v9, v10}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    .line 779
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_14a

    .line 780
    const/4 v11, 0x0

    .line 783
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    move-object/from16 v1, v18

    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v1    # "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v0, v1, v8}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 784
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Connection kept alive"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 786
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 787
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_143

    .line 788
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 790
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    :cond_143
    goto :goto_14c

    .line 791
    :cond_144
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    goto :goto_14c

    .line 779
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    :cond_14a
    move-object/from16 v1, v18

    .line 796
    .end local v17    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v1    # "response":Lorg/apache/http/HttpResponse;
    :goto_14c
    move v0, v11

    goto :goto_166

    .line 798
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "target":Lorg/apache/http/HttpHost;
    .end local v20    # "status":I
    .end local v21    # "creds":Lorg/apache/http/auth/Credentials;
    .restart local v3    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .restart local v4    # "status":I
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "creds":Lorg/apache/http/auth/Credentials;
    .local v10, "target":Lorg/apache/http/HttpHost;
    :cond_14e
    move/from16 v20, v4

    move-object v1, v5

    move-object/from16 v21, v6

    move-object/from16 v19, v10

    move-object v10, v3

    .end local v3    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .end local v4    # "status":I
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "creds":Lorg/apache/http/auth/Credentials;
    .restart local v1    # "response":Lorg/apache/http/HttpResponse;
    .local v10, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .restart local v19    # "target":Lorg/apache/http/HttpHost;
    .restart local v20    # "status":I
    .restart local v21    # "creds":Lorg/apache/http/auth/Credentials;
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    goto :goto_165

    .line 761
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "target":Lorg/apache/http/HttpHost;
    .end local v20    # "status":I
    .end local v21    # "creds":Lorg/apache/http/auth/Credentials;
    .restart local v3    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .restart local v4    # "status":I
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "creds":Lorg/apache/http/auth/Credentials;
    .local v10, "target":Lorg/apache/http/HttpHost;
    :cond_15d
    move/from16 v20, v4

    move-object v1, v5

    move-object/from16 v21, v6

    move-object/from16 v19, v10

    move-object v10, v3

    .line 801
    .end local v3    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    .end local v4    # "status":I
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "creds":Lorg/apache/http/auth/Credentials;
    .end local v10    # "target":Lorg/apache/http/HttpHost;
    .end local v13    # "connect":Lorg/apache/http/HttpRequest;
    .end local v14    # "agent":Ljava/lang/String;
    .end local v15    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .end local v16    # "authScope":Lorg/apache/http/auth/AuthScope;
    .restart local v1    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "target":Lorg/apache/http/HttpHost;
    :goto_165
    move v0, v11

    .end local v11    # "done":Z
    .local v0, "done":Z
    :goto_166
    move-object/from16 v10, v19

    goto/16 :goto_13

    .line 754
    .end local v0    # "done":Z
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "target":Lorg/apache/http/HttpHost;
    .restart local v4    # "status":I
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "creds":Lorg/apache/http/auth/Credentials;
    .restart local v10    # "target":Lorg/apache/http/HttpHost;
    .restart local v11    # "done":Z
    .restart local v13    # "connect":Lorg/apache/http/HttpRequest;
    .restart local v14    # "agent":Ljava/lang/String;
    .restart local v15    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .restart local v16    # "authScope":Lorg/apache/http/auth/AuthScope;
    :cond_16a
    move-object v1, v5

    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v1    # "response":Lorg/apache/http/HttpResponse;
    new-instance v0, Lorg/apache/http/HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected response to CONNECT request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 755
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    .end local v4    # "status":I
    .end local v6    # "creds":Lorg/apache/http/auth/Credentials;
    .end local v11    # "done":Z
    .end local v13    # "connect":Lorg/apache/http/HttpRequest;
    .end local v14    # "agent":Ljava/lang/String;
    .end local v15    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .end local v16    # "authScope":Lorg/apache/http/auth/AuthScope;
    .restart local v0    # "done":Z
    :cond_188
    move-object/from16 v12, p1

    move-object/from16 v19, v10

    .line 803
    .end local v10    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "target":Lorg/apache/http/HttpHost;
    :goto_18c
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 805
    .local v2, "status":I
    const/16 v3, 0x12b

    if-le v2, v3, :cond_1c8

    .line 808
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 809
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_1a6

    .line 810
    new-instance v4, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v4, v3}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v1, v4}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 813
    :cond_1a6
    iget-object v4, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 814
    new-instance v4, Lorg/apache/http/impl/client/TunnelRefusedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CONNECT refused by proxy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 815
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/http/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    throw v4

    .line 818
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    :cond_1c8
    iget-object v3, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 824
    const/4 v3, 0x0

    return v3
.end method

.method protected determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .registers 10
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 588
    if-nez p1, :cond_f

    .line 589
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.default-host"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lorg/apache/http/HttpHost;

    .line 592
    :cond_f
    if-nez p1, :cond_5b

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "scheme":Ljava/lang/String;
    const/4 v1, 0x0

    .line 597
    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x0

    .line 599
    .local v2, "path":Ljava/lang/String;
    instance-of v3, p2, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v3, :cond_2e

    move-object v3, p2

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 600
    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    move-object v4, v3

    .local v4, "uri":Ljava/net/URI;
    if-eqz v3, :cond_2e

    .line 601
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 605
    .end local v4    # "uri":Ljava/net/URI;
    :cond_2e
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target host must not be null, or set in parameters. scheme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 610
    .end local v0    # "scheme":Ljava/lang/String;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    :cond_5b
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/conn/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0
.end method

.method protected establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .registers 11
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    new-instance v0, Lorg/apache/http/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lorg/apache/http/conn/routing/BasicRouteDirector;-><init>()V

    .line 638
    .local v0, "rowdy":Lorg/apache/http/conn/routing/HttpRouteDirector;
    :cond_5
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    .line 639
    .local v1, "fact":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-interface {v0, p1, v1}, Lorg/apache/http/conn/routing/HttpRouteDirector;->nextStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v2

    .line 641
    .local v2, "step":I
    packed-switch v2, :pswitch_data_98

    .line 682
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown step indicator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from RouteDirector."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 668
    :pswitch_31
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v3, p2, v4}, Lorg/apache/http/conn/ManagedClientConnection;->layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 669
    goto :goto_72

    .line 659
    :pswitch_39
    invoke-virtual {v1}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 660
    .local v3, "hop":I
    invoke-virtual {p0, p1, v3, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    .line 661
    .local v4, "secure":Z
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Tunnel to proxy created."

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 662
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {p1, v3}, Lorg/apache/http/conn/routing/HttpRoute;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, v6, v4, v7}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 664
    .end local v3    # "hop":I
    .end local v4    # "secure":Z
    goto :goto_72

    .line 649
    :pswitch_56
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createTunnelToTarget(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    .line 650
    .local v3, "secure":Z
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Tunnel to target created."

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 651
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v4, v3, v5}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelTarget(ZLorg/apache/http/params/HttpParams;)V

    .line 652
    .end local v3    # "secure":Z
    goto :goto_72

    .line 645
    :pswitch_69
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v3, p1, p2, v4}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 646
    goto :goto_72

    .line 679
    :pswitch_71
    nop

    .line 686
    .end local v1    # "fact":Lorg/apache/http/conn/routing/HttpRoute;
    :goto_72
    if-gtz v2, :cond_5

    .line 688
    return-void

    .line 672
    .restart local v1    # "fact":Lorg/apache/http/conn/routing/HttpRoute;
    :pswitch_75
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to establish route.\nplanned = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ncurrent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_98
    .packed-switch -0x1
        :pswitch_75
        :pswitch_71
        :pswitch_69
        :pswitch_69
        :pswitch_56
        :pswitch_39
        :pswitch_31
    .end packed-switch
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 29
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v3, "http.user-token"

    move-object/from16 v4, p2

    .line 297
    .local v4, "orig":Lorg/apache/http/HttpRequest;
    invoke-direct {v1, v4}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v5

    .line 298
    .local v5, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    iget-object v6, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/RequestWrapper;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 299
    move-object/from16 v6, p1

    invoke-virtual {v1, v6, v5, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v7

    .line 301
    .local v7, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    new-instance v8, Lorg/apache/http/impl/client/RoutedRequest;

    invoke-direct {v8, v5, v7}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 303
    .local v8, "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    iget-object v9, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v9}, Lorg/apache/http/conn/params/ConnManagerParams;->getTimeout(Lorg/apache/http/params/HttpParams;)J

    move-result-wide v9

    .line 305
    .local v9, "timeout":J
    const/4 v11, 0x0

    .line 307
    .local v11, "execCount":I
    const/4 v12, 0x0

    .line 308
    .local v12, "reuse":Z
    const/4 v13, 0x0

    .line 309
    .local v13, "response":Lorg/apache/http/HttpResponse;
    const/4 v14, 0x0

    .line 311
    .end local p1    # "target":Lorg/apache/http/HttpHost;
    .local v6, "target":Lorg/apache/http/HttpHost;
    .local v14, "done":Z
    :goto_26
    if-nez v14, :cond_40f

    .line 317
    :try_start_28
    invoke-virtual {v8}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v15

    .line 318
    .local v15, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v8}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v16

    move-object/from16 p1, v16

    .line 321
    .local p1, "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-interface {v2, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16
    :try_end_36
    .catch Lorg/apache/http/HttpException; {:try_start_28 .. :try_end_36} :catch_402
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_36} :catch_3f4
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_36} :catch_3e6

    move-object/from16 v17, v16

    .line 324
    .local v17, "userToken":Ljava/lang/Object;
    move-object/from16 v16, v5

    .end local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .local v16, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :try_start_3a
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_3c
    .catch Lorg/apache/http/HttpException; {:try_start_3a .. :try_end_3c} :catch_3da
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3c} :catch_3ce
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3c} :catch_3c2

    if-nez v5, :cond_e1

    .line 325
    :try_start_3e
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_40
    .catch Lorg/apache/http/HttpException; {:try_start_3e .. :try_end_40} :catch_d5
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_40} :catch_c9
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_40} :catch_bd

    move-object/from16 v18, v6

    move-object/from16 v6, p1

    move-object/from16 v24, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v24

    .end local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .local v6, "route":Lorg/apache/http/conn/routing/HttpRoute;
    .local v7, "userToken":Ljava/lang/Object;
    .local v17, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .local v18, "target":Lorg/apache/http/HttpHost;
    :try_start_4a
    invoke-interface {v5, v6, v7}, Lorg/apache/http/conn/ClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v5

    .line 327
    .local v5, "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    move-object/from16 p1, v7

    .end local v7    # "userToken":Ljava/lang/Object;
    .local p1, "userToken":Ljava/lang/Object;
    instance-of v7, v4, Lorg/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v7, :cond_5a

    .line 328
    move-object v7, v4

    check-cast v7, Lorg/apache/http/client/methods/AbortableHttpRequest;

    invoke-interface {v7, v5}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V
    :try_end_5a
    .catch Lorg/apache/http/HttpException; {:try_start_4a .. :try_end_5a} :catch_b3
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5a} :catch_a9
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_5a} :catch_9f

    .line 332
    :cond_5a
    :try_start_5a
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v9, v10, v7}, Lorg/apache/http/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v7

    iput-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_62} :catch_91
    .catch Lorg/apache/http/HttpException; {:try_start_5a .. :try_end_62} :catch_b3
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_62} :catch_a9
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_62} :catch_9f

    .line 337
    nop

    .line 339
    :try_start_63
    iget-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v7}, Lorg/apache/http/params/HttpConnectionParams;->isStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;)Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 341
    iget-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v19, v5

    .end local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .local v19, "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    const-string v5, "Stale connection check"

    invoke-interface {v7, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 342
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->isStale()Z

    move-result v5

    if-eqz v5, :cond_e9

    .line 343
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Stale connection detected"

    invoke-interface {v5, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_83
    .catch Lorg/apache/http/HttpException; {:try_start_63 .. :try_end_83} :catch_b3
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_83} :catch_a9
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_83} :catch_9f

    .line 346
    :try_start_83
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_88} :catch_8a
    .catch Lorg/apache/http/HttpException; {:try_start_83 .. :try_end_88} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_83 .. :try_end_88} :catch_9f

    .line 354
    goto/16 :goto_e9

    .line 347
    :catch_8a
    move-exception v0

    goto/16 :goto_e9

    .line 339
    .end local v19    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :cond_8d
    move-object/from16 v19, v5

    .end local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v19    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    goto/16 :goto_e9

    .line 333
    .end local v19    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :catch_91
    move-exception v0

    move-object/from16 v19, v5

    move-object v3, v0

    .line 334
    .end local v5    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .local v3, "interrupted":Ljava/lang/InterruptedException;
    .restart local v19    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :try_start_95
    new-instance v5, Ljava/io/InterruptedIOException;

    invoke-direct {v5}, Ljava/io/InterruptedIOException;-><init>()V

    .line 335
    .local v5, "iox":Ljava/io/InterruptedIOException;
    invoke-virtual {v5, v3}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 336
    nop

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v8    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v9    # "timeout":J
    .end local v11    # "execCount":I
    .end local v12    # "reuse":Z
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "done":Z
    .end local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local p2    # "request":Lorg/apache/http/HttpRequest;
    .end local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    throw v5
    :try_end_9f
    .catch Lorg/apache/http/HttpException; {:try_start_95 .. :try_end_9f} :catch_b3
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_9f} :catch_a9
    .catch Ljava/lang/RuntimeException; {:try_start_95 .. :try_end_9f} :catch_9f

    .line 543
    .end local v3    # "interrupted":Ljava/lang/InterruptedException;
    .end local v5    # "iox":Ljava/io/InterruptedIOException;
    .end local v6    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v19    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .end local p1    # "userToken":Ljava/lang/Object;
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v8    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .restart local v9    # "timeout":J
    .restart local v11    # "execCount":I
    .restart local v12    # "reuse":Z
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "done":Z
    .restart local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .restart local p2    # "request":Lorg/apache/http/HttpRequest;
    .restart local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    :catch_9f
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v4

    move-wide/from16 v22, v9

    move-object/from16 v6, v18

    goto/16 :goto_456

    .line 540
    :catch_a9
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v4

    move-wide/from16 v22, v9

    move-object/from16 v6, v18

    goto/16 :goto_45a

    .line 537
    :catch_b3
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v4

    move-wide/from16 v22, v9

    move-object/from16 v6, v18

    goto/16 :goto_45e

    .line 543
    .end local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .local v6, "target":Lorg/apache/http/HttpHost;
    .local v7, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_bd
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-object v3, v0

    move-object/from16 v19, v4

    move-wide/from16 v22, v9

    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    goto/16 :goto_456

    .line 540
    .end local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_c9
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-object v3, v0

    move-object/from16 v19, v4

    move-wide/from16 v22, v9

    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    goto/16 :goto_45a

    .line 537
    .end local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    :catch_d5
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-object v3, v0

    move-object/from16 v19, v4

    move-wide/from16 v22, v9

    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    goto/16 :goto_45e

    .line 324
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .local v17, "userToken":Ljava/lang/Object;
    .local p1, "route":Lorg/apache/http/conn/routing/HttpRoute;
    :cond_e1
    move-object/from16 v18, v6

    move-object/from16 v6, p1

    move-object/from16 p1, v17

    move-object/from16 v17, v7

    .line 360
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .local v6, "route":Lorg/apache/http/conn/routing/HttpRoute;
    .local v17, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .local p1, "userToken":Ljava/lang/Object;
    :cond_e9
    :goto_e9
    :try_start_e9
    instance-of v5, v4, Lorg/apache/http/client/methods/AbortableHttpRequest;
    :try_end_eb
    .catch Lorg/apache/http/HttpException; {:try_start_e9 .. :try_end_eb} :catch_3b8
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_eb} :catch_3ae
    .catch Ljava/lang/RuntimeException; {:try_start_e9 .. :try_end_eb} :catch_3a4

    if-eqz v5, :cond_f5

    .line 361
    :try_start_ed
    move-object v5, v4

    check-cast v5, Lorg/apache/http/client/methods/AbortableHttpRequest;

    iget-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5, v7}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V
    :try_end_f5
    .catch Lorg/apache/http/HttpException; {:try_start_ed .. :try_end_f5} :catch_b3
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f5} :catch_a9
    .catch Ljava/lang/RuntimeException; {:try_start_ed .. :try_end_f5} :catch_9f

    .line 365
    :cond_f5
    :try_start_f5
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v5
    :try_end_fb
    .catch Lorg/apache/http/HttpException; {:try_start_f5 .. :try_end_fb} :catch_3b8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_fb} :catch_3ae
    .catch Ljava/lang/RuntimeException; {:try_start_f5 .. :try_end_fb} :catch_3a4

    if-nez v5, :cond_105

    .line 366
    :try_start_fd
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, v6, v2, v7}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    :try_end_104
    .catch Lorg/apache/http/HttpException; {:try_start_fd .. :try_end_104} :catch_b3
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_104} :catch_a9
    .catch Ljava/lang/RuntimeException; {:try_start_fd .. :try_end_104} :catch_9f

    goto :goto_110

    .line 371
    :cond_105
    :try_start_105
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v7}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v7

    invoke-interface {v5, v7}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V
    :try_end_110
    .catch Lorg/apache/http/HttpException; {:try_start_105 .. :try_end_110} :catch_3b8
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_110} :catch_3ae
    .catch Ljava/lang/RuntimeException; {:try_start_105 .. :try_end_110} :catch_3a4

    .line 376
    :goto_110
    :try_start_110
    invoke-virtual {v1, v6, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_113
    .catch Lorg/apache/http/impl/client/TunnelRefusedException; {:try_start_110 .. :try_end_113} :catch_386
    .catch Lorg/apache/http/HttpException; {:try_start_110 .. :try_end_113} :catch_3b8
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_113} :catch_3ae
    .catch Ljava/lang/RuntimeException; {:try_start_110 .. :try_end_113} :catch_3a4

    .line 383
    nop

    .line 386
    :try_start_114
    invoke-virtual {v15}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 389
    invoke-virtual {v1, v15, v6}, Lorg/apache/http/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 392
    invoke-virtual {v15}, Lorg/apache/http/impl/client/RequestWrapper;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v7, "http.virtual-host"

    invoke-interface {v5, v7}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/HttpHost;
    :try_end_126
    .catch Lorg/apache/http/HttpException; {:try_start_114 .. :try_end_126} :catch_3b8
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_126} :catch_3ae
    .catch Ljava/lang/RuntimeException; {:try_start_114 .. :try_end_126} :catch_3a4

    .line 395
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .local v5, "target":Lorg/apache/http/HttpHost;
    if-nez v5, :cond_149

    .line 396
    :try_start_128
    invoke-virtual {v6}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v7
    :try_end_12c
    .catch Lorg/apache/http/HttpException; {:try_start_128 .. :try_end_12c} :catch_140
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_12c} :catch_137
    .catch Ljava/lang/RuntimeException; {:try_start_128 .. :try_end_12c} :catch_12e

    move-object v5, v7

    goto :goto_149

    .line 543
    .end local v6    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local p1    # "userToken":Ljava/lang/Object;
    :catch_12e
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v4

    move-object v6, v5

    move-wide/from16 v22, v9

    goto/16 :goto_456

    .line 540
    :catch_137
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v4

    move-object v6, v5

    move-wide/from16 v22, v9

    goto/16 :goto_45a

    .line 537
    :catch_140
    move-exception v0

    move-object v3, v0

    move-object/from16 v19, v4

    move-object v6, v5

    move-wide/from16 v22, v9

    goto/16 :goto_45e

    .line 399
    .restart local v6    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local p1    # "userToken":Ljava/lang/Object;
    :cond_149
    :goto_149
    :try_start_149
    invoke-virtual {v6}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v7
    :try_end_14d
    .catch Lorg/apache/http/HttpException; {:try_start_149 .. :try_end_14d} :catch_37a
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14d} :catch_36e
    .catch Ljava/lang/RuntimeException; {:try_start_149 .. :try_end_14d} :catch_362

    .line 402
    .local v7, "proxy":Lorg/apache/http/HttpHost;
    move-object/from16 v19, v4

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .local v19, "orig":Lorg/apache/http/HttpRequest;
    :try_start_14f
    const-string v4, "http.target_host"

    invoke-interface {v2, v4, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    const-string v4, "http.proxy_host"

    invoke-interface {v2, v4, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    const-string v4, "http.connection"
    :try_end_15b
    .catch Lorg/apache/http/HttpException; {:try_start_14f .. :try_end_15b} :catch_358
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_15b} :catch_34e
    .catch Ljava/lang/RuntimeException; {:try_start_14f .. :try_end_15b} :catch_344

    move-object/from16 v18, v5

    .end local v5    # "target":Lorg/apache/http/HttpHost;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    :try_start_15d
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2, v4, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    const-string v4, "http.auth.target-scope"

    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-interface {v2, v4, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    const-string v4, "http.auth.proxy-scope"

    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-interface {v2, v4, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v4, v15, v5, v2}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 416
    const-string v4, "http.request"

    invoke-interface {v2, v4, v15}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    const/4 v4, 0x1

    .line 420
    .local v4, "retrying":Z
    :goto_17d
    if-eqz v4, :cond_2af

    .line 422
    add-int/lit8 v11, v11, 0x1

    .line 424
    invoke-virtual {v15}, Lorg/apache/http/impl/client/RequestWrapper;->incrementExecCount()V

    .line 425
    invoke-virtual {v15}, Lorg/apache/http/impl/client/RequestWrapper;->getExecCount()I

    move-result v5
    :try_end_188
    .catch Lorg/apache/http/HttpException; {:try_start_15d .. :try_end_188} :catch_33c
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_188} :catch_334
    .catch Ljava/lang/RuntimeException; {:try_start_15d .. :try_end_188} :catch_32c

    move/from16 v20, v4

    .end local v4    # "retrying":Z
    .local v20, "retrying":Z
    const/4 v4, 0x1

    if-le v5, v4, :cond_1a4

    :try_start_18d
    invoke-virtual {v15}, Lorg/apache/http/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v5

    if-eqz v5, :cond_194

    goto :goto_1a4

    .line 426
    :cond_194
    new-instance v3, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string v4, "Cannot retry request with a non-repeatable request entity"

    invoke-direct {v3, v4}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    .end local v8    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v9    # "timeout":J
    .end local v11    # "execCount":I
    .end local v12    # "reuse":Z
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "done":Z
    .end local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local p2    # "request":Lorg/apache/http/HttpRequest;
    .end local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    throw v3
    :try_end_19c
    .catch Lorg/apache/http/HttpException; {:try_start_18d .. :try_end_19c} :catch_21a
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_19c} :catch_19c
    .catch Ljava/lang/RuntimeException; {:try_start_18d .. :try_end_19c} :catch_212

    .line 540
    .end local v6    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v7    # "proxy":Lorg/apache/http/HttpHost;
    .end local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v20    # "retrying":Z
    .end local p1    # "userToken":Ljava/lang/Object;
    .restart local v8    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .restart local v9    # "timeout":J
    .restart local v11    # "execCount":I
    .restart local v12    # "reuse":Z
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "done":Z
    .restart local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .restart local p2    # "request":Lorg/apache/http/HttpRequest;
    .restart local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    :catch_19c
    move-exception v0

    move-object v3, v0

    move-wide/from16 v22, v9

    move-object/from16 v6, v18

    goto/16 :goto_45a

    .line 431
    .restart local v6    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v7    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v20    # "retrying":Z
    .restart local p1    # "userToken":Ljava/lang/Object;
    :cond_1a4
    :goto_1a4
    :try_start_1a4
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1cd

    .line 432
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1b3
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1b3} :catch_222
    .catch Lorg/apache/http/HttpException; {:try_start_1a4 .. :try_end_1b3} :catch_21a
    .catch Ljava/lang/RuntimeException; {:try_start_1a4 .. :try_end_1b3} :catch_212

    move-object/from16 v21, v7

    .end local v7    # "proxy":Lorg/apache/http/HttpHost;
    .local v21, "proxy":Lorg/apache/http/HttpHost;
    :try_start_1b5
    const-string v7, "Attempt "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " to execute request"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1cf

    .line 431
    .end local v21    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v7    # "proxy":Lorg/apache/http/HttpHost;
    :cond_1cd
    move-object/from16 v21, v7

    .line 435
    .end local v7    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v21    # "proxy":Lorg/apache/http/HttpHost;
    :goto_1cf
    invoke-virtual {v6}, Lorg/apache/http/conn/routing/HttpRoute;->isSecure()Z

    move-result v4

    if-nez v4, :cond_201

    .line 437
    invoke-virtual {v6}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-static {v4}, Lorg/apache/http/impl/client/DefaultRequestDirector;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e4

    goto :goto_201

    .line 438
    :cond_1e4
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleartext traffic not permitted: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 439
    invoke-virtual {v6}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v6    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v8    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v9    # "timeout":J
    .end local v11    # "execCount":I
    .end local v12    # "reuse":Z
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "done":Z
    .end local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v20    # "retrying":Z
    .end local v21    # "proxy":Lorg/apache/http/HttpHost;
    .end local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local p1    # "userToken":Ljava/lang/Object;
    .end local p2    # "request":Lorg/apache/http/HttpRequest;
    .end local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    throw v4

    .line 442
    .restart local v6    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v8    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .restart local v9    # "timeout":J
    .restart local v11    # "execCount":I
    .restart local v12    # "reuse":Z
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "done":Z
    .restart local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v20    # "retrying":Z
    .restart local v21    # "proxy":Lorg/apache/http/HttpHost;
    .restart local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .restart local p1    # "userToken":Ljava/lang/Object;
    .restart local p2    # "request":Lorg/apache/http/HttpRequest;
    .restart local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    :cond_201
    :goto_201
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v4, v15, v5, v2}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4
    :try_end_209
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_209} :catch_20f
    .catch Lorg/apache/http/HttpException; {:try_start_1b5 .. :try_end_209} :catch_21a
    .catch Ljava/lang/RuntimeException; {:try_start_1b5 .. :try_end_209} :catch_212

    move-object v13, v4

    .line 443
    const/4 v4, 0x0

    .line 472
    .end local v20    # "retrying":Z
    .restart local v4    # "retrying":Z
    move-object/from16 v7, v21

    goto/16 :goto_17d

    .line 445
    .end local v4    # "retrying":Z
    .restart local v20    # "retrying":Z
    :catch_20f
    move-exception v0

    move-object v4, v0

    goto :goto_226

    .line 543
    .end local v6    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v20    # "retrying":Z
    .end local v21    # "proxy":Lorg/apache/http/HttpHost;
    .end local p1    # "userToken":Ljava/lang/Object;
    :catch_212
    move-exception v0

    move-object v3, v0

    move-wide/from16 v22, v9

    move-object/from16 v6, v18

    goto/16 :goto_456

    .line 537
    :catch_21a
    move-exception v0

    move-object v3, v0

    move-wide/from16 v22, v9

    move-object/from16 v6, v18

    goto/16 :goto_45e

    .line 445
    .restart local v6    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v7    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v20    # "retrying":Z
    .restart local p1    # "userToken":Ljava/lang/Object;
    :catch_222
    move-exception v0

    move-object/from16 v21, v7

    move-object v4, v0

    .line 446
    .end local v7    # "proxy":Lorg/apache/http/HttpHost;
    .local v4, "ex":Ljava/io/IOException;
    .restart local v21    # "proxy":Lorg/apache/http/HttpHost;
    :goto_226
    :try_start_226
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Closing the connection."

    invoke-interface {v5, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 447
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 448
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-interface {v5, v4, v11, v2}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v5

    if-eqz v5, :cond_2ac

    .line 449
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_273

    .line 450
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_249
    .catch Lorg/apache/http/HttpException; {:try_start_226 .. :try_end_249} :catch_33c
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_249} :catch_334
    .catch Ljava/lang/RuntimeException; {:try_start_226 .. :try_end_249} :catch_32c

    move-wide/from16 v22, v9

    .end local v9    # "timeout":J
    .local v22, "timeout":J
    :try_start_24b
    const-string v9, "I/O exception ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ") caught when processing request: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 452
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 450
    invoke-interface {v5, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_275

    .line 449
    .end local v22    # "timeout":J
    .restart local v9    # "timeout":J
    :cond_273
    move-wide/from16 v22, v9

    .line 454
    .end local v9    # "timeout":J
    .restart local v22    # "timeout":J
    :goto_275
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_286

    .line 455
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 457
    :cond_286
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Retrying request"

    invoke-interface {v5, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 464
    invoke-virtual {v6}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2aa

    .line 465
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Reopening the direct connection."

    invoke-interface {v5, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 466
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, v6, v2, v7}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 472
    .end local v4    # "ex":Ljava/io/IOException;
    move/from16 v4, v20

    move-object/from16 v7, v21

    move-wide/from16 v9, v22

    goto/16 :goto_17d

    .line 469
    .restart local v4    # "ex":Ljava/io/IOException;
    :cond_2aa
    nop

    .end local v8    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v11    # "execCount":I
    .end local v12    # "reuse":Z
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "done":Z
    .end local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v22    # "timeout":J
    .end local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local p2    # "request":Lorg/apache/http/HttpRequest;
    .end local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    throw v4

    .line 459
    .restart local v8    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .restart local v9    # "timeout":J
    .restart local v11    # "execCount":I
    .restart local v12    # "reuse":Z
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "done":Z
    .restart local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .restart local p2    # "request":Lorg/apache/http/HttpRequest;
    .restart local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    :cond_2ac
    move-wide/from16 v22, v9

    .end local v8    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v9    # "timeout":J
    .end local v11    # "execCount":I
    .end local v12    # "reuse":Z
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "done":Z
    .end local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local p2    # "request":Lorg/apache/http/HttpRequest;
    .end local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    throw v4

    .line 477
    .end local v20    # "retrying":Z
    .end local v21    # "proxy":Lorg/apache/http/HttpHost;
    .local v4, "retrying":Z
    .restart local v7    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v8    # "roureq":Lorg/apache/http/impl/client/RoutedRequest;
    .restart local v9    # "timeout":J
    .restart local v11    # "execCount":I
    .restart local v12    # "reuse":Z
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "done":Z
    .restart local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local p0    # "this":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .restart local p2    # "request":Lorg/apache/http/HttpRequest;
    .restart local p3    # "context":Lorg/apache/http/protocol/HttpContext;
    :cond_2af
    move/from16 v20, v4

    move-object/from16 v21, v7

    move-wide/from16 v22, v9

    .end local v4    # "retrying":Z
    .end local v7    # "proxy":Lorg/apache/http/HttpHost;
    .end local v9    # "timeout":J
    .restart local v20    # "retrying":Z
    .restart local v21    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v22    # "timeout":J
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v13, v4}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 478
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v4, v13, v5, v2}, Lorg/apache/http/protocol/HttpRequestExecutor;->postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 482
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v4, v13, v2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    move v12, v4

    .line 483
    if-eqz v12, :cond_2d7

    .line 485
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    invoke-interface {v4, v13, v2}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v4

    .line 486
    .local v4, "duration":J
    iget-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v4, v5, v9}, Lorg/apache/http/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    .line 489
    .end local v4    # "duration":J
    :cond_2d7
    invoke-virtual {v1, v8, v13, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;

    move-result-object v4

    .line 490
    .local v4, "followup":Lorg/apache/http/impl/client/RoutedRequest;
    if-nez v4, :cond_2e0

    .line 491
    const/4 v5, 0x1

    move v14, v5

    .end local v14    # "done":Z
    .local v5, "done":Z
    goto :goto_310

    .line 493
    .end local v5    # "done":Z
    .restart local v14    # "done":Z
    :cond_2e0
    if-eqz v12, :cond_2f8

    .line 494
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Connection kept alive"

    invoke-interface {v5, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 496
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 497
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_2f2

    .line 498
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 502
    :cond_2f2
    iget-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v7}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 503
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_2fd

    .line 504
    :cond_2f8
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 507
    :goto_2fd
    invoke-virtual {v4}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v8}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30e

    .line 508
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    .line 510
    :cond_30e
    move-object v5, v4

    move-object v8, v5

    .line 513
    :goto_310
    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    invoke-interface {v5, v2}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v5

    .line 514
    .end local p1    # "userToken":Ljava/lang/Object;
    .local v5, "userToken":Ljava/lang/Object;
    invoke-interface {v2, v3, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 515
    iget-object v7, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v7, :cond_320

    .line 516
    invoke-interface {v7, v5}, Lorg/apache/http/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V

    .line 518
    .end local v4    # "followup":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v5    # "userToken":Ljava/lang/Object;
    .end local v6    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v20    # "retrying":Z
    .end local v21    # "proxy":Lorg/apache/http/HttpHost;
    :cond_320
    move-object/from16 v5, v16

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move-object/from16 v4, v19

    move-wide/from16 v9, v22

    goto/16 :goto_26

    .line 543
    .end local v22    # "timeout":J
    .restart local v9    # "timeout":J
    :catch_32c
    move-exception v0

    move-wide/from16 v22, v9

    move-object v3, v0

    move-object/from16 v6, v18

    .end local v9    # "timeout":J
    .restart local v22    # "timeout":J
    goto/16 :goto_456

    .line 540
    .end local v22    # "timeout":J
    .restart local v9    # "timeout":J
    :catch_334
    move-exception v0

    move-wide/from16 v22, v9

    move-object v3, v0

    move-object/from16 v6, v18

    .end local v9    # "timeout":J
    .restart local v22    # "timeout":J
    goto/16 :goto_45a

    .line 537
    .end local v22    # "timeout":J
    .restart local v9    # "timeout":J
    :catch_33c
    move-exception v0

    move-wide/from16 v22, v9

    move-object v3, v0

    move-object/from16 v6, v18

    .end local v9    # "timeout":J
    .restart local v22    # "timeout":J
    goto/16 :goto_45e

    .line 543
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v22    # "timeout":J
    .local v5, "target":Lorg/apache/http/HttpHost;
    .restart local v9    # "timeout":J
    :catch_344
    move-exception v0

    move-object/from16 v18, v5

    move-wide/from16 v22, v9

    move-object v3, v0

    move-object/from16 v6, v18

    .end local v5    # "target":Lorg/apache/http/HttpHost;
    .end local v9    # "timeout":J
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v22    # "timeout":J
    goto/16 :goto_456

    .line 540
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v22    # "timeout":J
    .restart local v5    # "target":Lorg/apache/http/HttpHost;
    .restart local v9    # "timeout":J
    :catch_34e
    move-exception v0

    move-object/from16 v18, v5

    move-wide/from16 v22, v9

    move-object v3, v0

    move-object/from16 v6, v18

    .end local v5    # "target":Lorg/apache/http/HttpHost;
    .end local v9    # "timeout":J
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v22    # "timeout":J
    goto/16 :goto_45a

    .line 537
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v22    # "timeout":J
    .restart local v5    # "target":Lorg/apache/http/HttpHost;
    .restart local v9    # "timeout":J
    :catch_358
    move-exception v0

    move-object/from16 v18, v5

    move-wide/from16 v22, v9

    move-object v3, v0

    move-object/from16 v6, v18

    .end local v5    # "target":Lorg/apache/http/HttpHost;
    .end local v9    # "timeout":J
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v22    # "timeout":J
    goto/16 :goto_45e

    .line 543
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v22    # "timeout":J
    .local v4, "orig":Lorg/apache/http/HttpRequest;
    .restart local v5    # "target":Lorg/apache/http/HttpHost;
    .restart local v9    # "timeout":J
    :catch_362
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v18, v5

    move-wide/from16 v22, v9

    move-object v3, v0

    move-object/from16 v6, v18

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v5    # "target":Lorg/apache/http/HttpHost;
    .end local v9    # "timeout":J
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v22    # "timeout":J
    goto/16 :goto_456

    .line 540
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v22    # "timeout":J
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v5    # "target":Lorg/apache/http/HttpHost;
    .restart local v9    # "timeout":J
    :catch_36e
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v18, v5

    move-wide/from16 v22, v9

    move-object v3, v0

    move-object/from16 v6, v18

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v5    # "target":Lorg/apache/http/HttpHost;
    .end local v9    # "timeout":J
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v22    # "timeout":J
    goto/16 :goto_45a

    .line 537
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v22    # "timeout":J
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v5    # "target":Lorg/apache/http/HttpHost;
    .restart local v9    # "timeout":J
    :catch_37a
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v18, v5

    move-wide/from16 v22, v9

    move-object v3, v0

    move-object/from16 v6, v18

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v5    # "target":Lorg/apache/http/HttpHost;
    .end local v9    # "timeout":J
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v22    # "timeout":J
    goto/16 :goto_45e

    .line 377
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v22    # "timeout":J
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v6    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v9    # "timeout":J
    .restart local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local p1    # "userToken":Ljava/lang/Object;
    :catch_386
    move-exception v0

    move-object/from16 v19, v4

    move-wide/from16 v22, v9

    move-object v3, v0

    .line 378
    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v9    # "timeout":J
    .local v3, "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v22    # "timeout":J
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_39d

    .line 379
    iget-object v4, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 381
    :cond_39d
    invoke-virtual {v3}, Lorg/apache/http/impl/client/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v4

    move-object v13, v4

    .line 382
    goto/16 :goto_419

    .line 543
    .end local v3    # "ex":Lorg/apache/http/impl/client/TunnelRefusedException;
    .end local v6    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v15    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v22    # "timeout":J
    .end local p1    # "userToken":Ljava/lang/Object;
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v9    # "timeout":J
    :catch_3a4
    move-exception v0

    move-object/from16 v19, v4

    move-wide/from16 v22, v9

    move-object v3, v0

    move-object/from16 v6, v18

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v9    # "timeout":J
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v22    # "timeout":J
    goto/16 :goto_456

    .line 540
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v22    # "timeout":J
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v9    # "timeout":J
    :catch_3ae
    move-exception v0

    move-object/from16 v19, v4

    move-wide/from16 v22, v9

    move-object v3, v0

    move-object/from16 v6, v18

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v9    # "timeout":J
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v22    # "timeout":J
    goto/16 :goto_45a

    .line 537
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v22    # "timeout":J
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v9    # "timeout":J
    :catch_3b8
    move-exception v0

    move-object/from16 v19, v4

    move-wide/from16 v22, v9

    move-object v3, v0

    move-object/from16 v6, v18

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v9    # "timeout":J
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v22    # "timeout":J
    goto/16 :goto_45e

    .line 543
    .end local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v22    # "timeout":J
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .local v6, "target":Lorg/apache/http/HttpHost;
    .local v7, "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v9    # "timeout":J
    :catch_3c2
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-wide/from16 v22, v9

    move-object v3, v0

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v9    # "timeout":J
    .restart local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v22    # "timeout":J
    goto/16 :goto_456

    .line 540
    .end local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v22    # "timeout":J
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v9    # "timeout":J
    :catch_3ce
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-wide/from16 v22, v9

    move-object v3, v0

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v9    # "timeout":J
    .restart local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v22    # "timeout":J
    goto/16 :goto_45a

    .line 537
    .end local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v22    # "timeout":J
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v9    # "timeout":J
    :catch_3da
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-wide/from16 v22, v9

    move-object v3, v0

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v9    # "timeout":J
    .restart local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v22    # "timeout":J
    goto/16 :goto_45e

    .line 543
    .end local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v22    # "timeout":J
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .local v5, "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v9    # "timeout":J
    :catch_3e6
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-wide/from16 v22, v9

    move-object v3, v0

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v9    # "timeout":J
    .restart local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v22    # "timeout":J
    goto/16 :goto_456

    .line 540
    .end local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v22    # "timeout":J
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v9    # "timeout":J
    :catch_3f4
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-wide/from16 v22, v9

    move-object v3, v0

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v9    # "timeout":J
    .restart local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v22    # "timeout":J
    goto/16 :goto_45a

    .line 537
    .end local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v22    # "timeout":J
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v9    # "timeout":J
    :catch_402
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-wide/from16 v22, v9

    move-object v3, v0

    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v9    # "timeout":J
    .restart local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v22    # "timeout":J
    goto :goto_45e

    .line 311
    .end local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .end local v19    # "orig":Lorg/apache/http/HttpRequest;
    .end local v22    # "timeout":J
    .restart local v4    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    .restart local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v9    # "timeout":J
    :cond_40f
    move-object/from16 v19, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-wide/from16 v22, v9

    .line 522
    .end local v4    # "orig":Lorg/apache/http/HttpRequest;
    .end local v5    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v6    # "target":Lorg/apache/http/HttpHost;
    .end local v7    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v9    # "timeout":J
    .restart local v16    # "origWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local v17    # "origRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v18    # "target":Lorg/apache/http/HttpHost;
    .restart local v19    # "orig":Lorg/apache/http/HttpRequest;
    .restart local v22    # "timeout":J
    :goto_419
    if-eqz v13, :cond_44b

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_44b

    .line 523
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v3

    if-nez v3, :cond_42c

    goto :goto_44b

    .line 530
    :cond_42c
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 531
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    new-instance v4, Lorg/apache/http/conn/BasicManagedEntity;

    iget-object v5, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-direct {v4, v3, v5, v12}, Lorg/apache/http/conn/BasicManagedEntity;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/conn/ManagedClientConnection;Z)V

    move-object v3, v4

    .line 532
    invoke-interface {v13, v3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_455

    .line 543
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    :catch_43c
    move-exception v0

    move-object v3, v0

    move-object/from16 v6, v18

    goto :goto_456

    .line 540
    :catch_441
    move-exception v0

    move-object v3, v0

    move-object/from16 v6, v18

    goto :goto_45a

    .line 537
    :catch_446
    move-exception v0

    move-object v3, v0

    move-object/from16 v6, v18

    goto :goto_45e

    .line 525
    :cond_44b
    :goto_44b
    if-eqz v12, :cond_452

    .line 526
    iget-object v3, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 527
    :cond_452
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V
    :try_end_455
    .catch Lorg/apache/http/HttpException; {:try_start_24b .. :try_end_455} :catch_446
    .catch Ljava/io/IOException; {:try_start_24b .. :try_end_455} :catch_441
    .catch Ljava/lang/RuntimeException; {:try_start_24b .. :try_end_455} :catch_43c

    .line 535
    :goto_455
    return-object v13

    .line 544
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    .local v3, "ex":Ljava/lang/RuntimeException;
    .restart local v6    # "target":Lorg/apache/http/HttpHost;
    :goto_456
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 545
    throw v3

    .line 541
    .local v3, "ex":Ljava/io/IOException;
    :goto_45a
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 542
    throw v3

    .line 538
    .local v3, "ex":Lorg/apache/http/HttpException;
    :goto_45e
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 539
    throw v3
.end method

.method protected handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;
    .registers 22
    .param p1, "roureq"    # Lorg/apache/http/impl/client/RoutedRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 923
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v10

    .line 924
    .local v10, "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-virtual {v10}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v11

    .line 925
    .local v11, "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v12

    .line 927
    .local v12, "request":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v12}, Lorg/apache/http/impl/client/RequestWrapper;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    .line 928
    .local v13, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v13}, Lorg/apache/http/client/params/HttpClientParams;->isRedirecting(Lorg/apache/http/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_b7

    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    .line 929
    invoke-interface {v0, v8, v9}, Lorg/apache/http/client/RedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 931
    iget v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    iget v1, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    if-ge v0, v1, :cond_96

    .line 935
    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 937
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    invoke-interface {v0, v8, v9}, Lorg/apache/http/client/RedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v0

    .line 939
    .local v0, "uri":Ljava/net/URI;
    new-instance v1, Lorg/apache/http/HttpHost;

    .line 940
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 941
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v3

    .line 942
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 944
    .local v1, "newTarget":Lorg/apache/http/HttpHost;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 946
    .local v2, "redirect":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v12}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v3

    .line 947
    .local v3, "orig":Lorg/apache/http/HttpRequest;
    invoke-interface {v3}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeaders([Lorg/apache/http/Header;)V

    .line 949
    new-instance v4, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v4, v2}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    .line 950
    .local v4, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v4, v13}, Lorg/apache/http/impl/client/RequestWrapper;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 952
    invoke-virtual {v7, v1, v4, v9}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    .line 953
    .local v5, "newRoute":Lorg/apache/http/conn/routing/HttpRoute;
    new-instance v6, Lorg/apache/http/impl/client/RoutedRequest;

    invoke-direct {v6, v4, v5}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 955
    .local v6, "newRequest":Lorg/apache/http/impl/client/RoutedRequest;
    iget-object v14, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_93

    .line 956
    iget-object v14, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    .end local v1    # "newTarget":Lorg/apache/http/HttpHost;
    .local v16, "newTarget":Lorg/apache/http/HttpHost;
    const-string v1, "Redirecting to \'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, "\' via "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_95

    .line 955
    .end local v16    # "newTarget":Lorg/apache/http/HttpHost;
    .restart local v1    # "newTarget":Lorg/apache/http/HttpHost;
    :cond_93
    move-object/from16 v16, v1

    .line 959
    .end local v1    # "newTarget":Lorg/apache/http/HttpHost;
    .restart local v16    # "newTarget":Lorg/apache/http/HttpHost;
    :goto_95
    return-object v6

    .line 932
    .end local v0    # "uri":Ljava/net/URI;
    .end local v2    # "redirect":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "orig":Lorg/apache/http/HttpRequest;
    .end local v4    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    .end local v5    # "newRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v6    # "newRequest":Lorg/apache/http/impl/client/RoutedRequest;
    .end local v16    # "newTarget":Lorg/apache/http/HttpHost;
    :cond_96
    new-instance v0, Lorg/apache/http/client/RedirectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum redirects ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") exceeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_b7
    nop

    .line 963
    const-string v0, "http.auth.credentials-provider"

    invoke-interface {v9, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/apache/http/client/CredentialsProvider;

    .line 965
    .local v14, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    if-eqz v14, :cond_1a9

    invoke-static {v13}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 967
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, v8, v9}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    const-string v6, "Authentication error: "

    if-eqz v0, :cond_141

    .line 969
    nop

    .line 970
    const-string v0, "http.target_host"

    invoke-interface {v9, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;

    .line 971
    .local v0, "target":Lorg/apache/http/HttpHost;
    if-nez v0, :cond_e4

    .line 972
    invoke-virtual {v10}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    move-object v5, v0

    goto :goto_e5

    .line 971
    :cond_e4
    move-object v5, v0

    .line 975
    .end local v0    # "target":Lorg/apache/http/HttpHost;
    .local v5, "target":Lorg/apache/http/HttpHost;
    :goto_e5
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Target requested authentication"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 976
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, v8, v9}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v16

    .line 979
    .local v16, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :try_start_f2
    iget-object v3, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    iget-object v4, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;
    :try_end_f6
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_f2 .. :try_end_f6} :catch_107

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v17, v5

    .end local v5    # "target":Lorg/apache/http/HttpHost;
    .local v17, "target":Lorg/apache/http/HttpHost;
    move-object/from16 v5, p2

    move-object v15, v6

    move-object/from16 v6, p3

    :try_start_101
    invoke-direct/range {v1 .. v6}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_104
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_101 .. :try_end_104} :catch_105

    .line 987
    goto :goto_12f

    .line 982
    :catch_105
    move-exception v0

    goto :goto_10b

    .end local v17    # "target":Lorg/apache/http/HttpHost;
    .restart local v5    # "target":Lorg/apache/http/HttpHost;
    :catch_107
    move-exception v0

    move-object/from16 v17, v5

    move-object v15, v6

    .line 983
    .end local v5    # "target":Lorg/apache/http/HttpHost;
    .local v0, "ex":Lorg/apache/http/auth/AuthenticationException;
    .restart local v17    # "target":Lorg/apache/http/HttpHost;
    :goto_10b
    iget-object v1, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_12f

    .line 984
    iget-object v1, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 985
    const/4 v1, 0x0

    return-object v1

    .line 988
    .end local v0    # "ex":Lorg/apache/http/auth/AuthenticationException;
    :cond_12f
    :goto_12f
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v1, v17

    .end local v17    # "target":Lorg/apache/http/HttpHost;
    .local v1, "target":Lorg/apache/http/HttpHost;
    invoke-direct {v7, v0, v1, v14}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    .line 990
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_13f

    .line 992
    return-object p1

    .line 994
    :cond_13f
    const/4 v2, 0x0

    return-object v2

    .line 998
    .end local v1    # "target":Lorg/apache/http/HttpHost;
    .end local v16    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :cond_141
    move-object v15, v6

    const/4 v2, 0x0

    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0, v2}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    .line 1001
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, v8, v9}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 1003
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Proxy requested authentication"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1004
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, v8, v9}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v16

    .line 1007
    .restart local v16    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :try_start_15d
    iget-object v3, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    iget-object v4, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_16c
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_15d .. :try_end_16c} :catch_16d

    .line 1015
    goto :goto_192

    .line 1010
    :catch_16d
    move-exception v0

    .line 1011
    .restart local v0    # "ex":Lorg/apache/http/auth/AuthenticationException;
    iget-object v1, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_192

    .line 1012
    iget-object v1, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 1013
    const/4 v1, 0x0

    return-object v1

    .line 1016
    .end local v0    # "ex":Lorg/apache/http/auth/AuthenticationException;
    :cond_192
    :goto_192
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-direct {v7, v0, v11, v14}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    .line 1018
    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_1a0

    .line 1020
    return-object p1

    .line 1022
    :cond_1a0
    const/4 v1, 0x0

    return-object v1

    .line 1026
    .end local v16    # "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :cond_1a2
    const/4 v1, 0x0

    iget-object v0, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0, v1}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    goto :goto_1aa

    .line 965
    :cond_1a9
    const/4 v1, 0x0

    .line 1029
    :goto_1aa
    return-object v1
.end method

.method protected releaseConnection()V
    .registers 4

    .line 559
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 562
    goto :goto_e

    .line 560
    :catch_6
    move-exception v0

    .line 561
    .local v0, "ignored":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "IOException releasing connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 563
    .end local v0    # "ignored":Ljava/io/IOException;
    :goto_e
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 564
    return-void
.end method

.method protected rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V
    .registers 7
    .param p1, "request"    # Lorg/apache/http/impl/client/RequestWrapper;
    .param p2, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .line 268
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 269
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_23

    .line 271
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_32

    .line 272
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 273
    .local v1, "target":Lorg/apache/http/HttpHost;
    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;

    move-result-object v2

    move-object v0, v2

    .line 274
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    .line 275
    .end local v1    # "target":Lorg/apache/http/HttpHost;
    goto :goto_32

    .line 278
    :cond_23
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 279
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;

    move-result-object v1

    move-object v0, v1

    .line 280
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_32
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_32} :catch_34

    .line 287
    .end local v0    # "uri":Ljava/net/URI;
    :cond_32
    :goto_32
    nop

    .line 288
    return-void

    .line 284
    :catch_34
    move-exception v0

    .line 285
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v1, Lorg/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
