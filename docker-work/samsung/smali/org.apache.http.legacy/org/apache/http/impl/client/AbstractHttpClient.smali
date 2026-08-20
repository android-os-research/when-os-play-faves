.class public abstract Lorg/apache/http/impl/client/AbstractHttpClient;
.super Ljava/lang/Object;
.source "AbstractHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "0"

.field private static final SEND_MMS_BLOCK_DB_NAME:Ljava/lang/String; = "send_mms_block_list"

.field private static final SEPARATOR:Ljava/lang/String; = " "


# instance fields
.field private connManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private cookieStore:Lorg/apache/http/client/CookieStore;

.field private credsProvider:Lorg/apache/http/client/CredentialsProvider;

.field private defaultParams:Lorg/apache/http/params/HttpParams;

.field private httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

.field private keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final log:Lorg/apache/commons/logging/Log;

.field private proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

.field private redirectHandler:Lorg/apache/http/client/RedirectHandler;

.field private requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

.field private retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

.field private reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field private routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

.field private supportedAuthSchemes:Lorg/apache/http/auth/AuthSchemeRegistry;

.field private supportedCookieSpecs:Lorg/apache/http/cookie/CookieSpecRegistry;

.field private targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

.field private userTokenHandler:Lorg/apache/http/client/UserTokenHandler;


# direct methods
.method protected constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 4
    .param p1, "conman"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->log:Lorg/apache/commons/logging/Log;

    .line 165
    iput-object p2, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/apache/http/params/HttpParams;

    .line 166
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 167
    return-void
.end method

.method private checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;

    .line 522
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 524
    :cond_2e
    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 525
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->isMmsRequest(Ljava/lang/String;)Z

    move-result v1

    .line 526
    .local v1, "mIsMmsRequest":Z
    if-eqz v1, :cond_6b

    .line 527
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 528
    .local v2, "callingUid":I
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "callingPackage":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[NALSECURITY] checkMmsSendPermission() : callingPackage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", callingUid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 530
    invoke-direct {p0, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getMmsPermissionForUid(I)Z

    move-result v4

    return v4

    .line 534
    .end local v1    # "mIsMmsRequest":Z
    .end local v2    # "callingUid":I
    .end local v3    # "callingPackage":Ljava/lang/String;
    :cond_6b
    iget-object v1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "[NALSECURITY] checkMmsSendPermission() : Allow"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 535
    const/4 v1, 0x1

    return v1
.end method

.method private determineTarget(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;
    .registers 8
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 629
    const/4 v0, 0x0

    .line 631
    .local v0, "target":Lorg/apache/http/HttpHost;
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 632
    .local v1, "requestURI":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 633
    new-instance v2, Lorg/apache/http/HttpHost;

    .line 634
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 635
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v4

    .line 636
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v2

    .line 638
    :cond_1d
    return-object v0
.end method

.method private getContentType(Lorg/apache/http/HttpRequest;)Ljava/lang/String;
    .registers 5
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .line 574
    if-eqz p1, :cond_27

    .line 575
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_1a

    .line 576
    move-object v0, p1

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 577
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_1a

    .line 578
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 579
    .local v1, "contentType":Lorg/apache/http/Header;
    if-eqz v1, :cond_1a

    .line 580
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 584
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v1    # "contentType":Lorg/apache/http/Header;
    :cond_1a
    const-string v0, "Accept"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 585
    .local v0, "header":Lorg/apache/http/Header;
    if-eqz v0, :cond_27

    .line 586
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 589
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method private getContentType(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .registers 5
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 555
    if-eqz p1, :cond_27

    .line 556
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_1a

    .line 557
    move-object v0, p1

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 558
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_1a

    .line 559
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 560
    .local v1, "contentType":Lorg/apache/http/Header;
    if-eqz v1, :cond_1a

    .line 561
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 565
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v1    # "contentType":Lorg/apache/http/Header;
    :cond_1a
    const-string v0, "Accept"

    invoke-interface {p1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 566
    .local v0, "header":Lorg/apache/http/Header;
    if-eqz v0, :cond_27

    .line 567
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 570
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMethod(Lorg/apache/http/HttpRequest;)Ljava/lang/String;
    .registers 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .line 546
    if-eqz p1, :cond_11

    .line 547
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 548
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 551
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMethod(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .registers 3
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 539
    if-eqz p1, :cond_7

    .line 540
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 542
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMmsPermissionForUid(I)Z
    .registers 14
    .param p1, "uid"    # I

    .line 483
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "send_mms_block_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "allowListFullString":Ljava/lang/String;
    if-nez v0, :cond_12

    .line 485
    const-string v0, "0"

    .line 487
    :cond_12
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "allowList":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    const-string v5, "[NALSECURITY] getMmsPermissionForUid uid ="

    if-ge v4, v2, :cond_69

    aget-object v6, v1, v4

    .line 489
    .local v6, "allowUidSt":Ljava/lang/String;
    const-string v7, "0"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 491
    .local v7, "allowUid":I
    :try_start_27
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2b} :catch_2d

    move v7, v8

    .line 494
    goto :goto_46

    .line 492
    :catch_2d
    move-exception v8

    .line 493
    .local v8, "e":Ljava/lang/NumberFormatException;
    iget-object v9, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NumberFormatException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 495
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :goto_46
    if-ne p1, v7, :cond_66

    .line 496
    iget-object v2, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", allow to send MMS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 497
    const/4 v2, 0x1

    return v2

    .line 488
    .end local v6    # "allowUidSt":Ljava/lang/String;
    .end local v7    # "allowUid":I
    :cond_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 500
    :cond_69
    iget-object v2, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Block MMS sending"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 501
    return v3
.end method

.method private isMmsRequest(Ljava/lang/String;)Z
    .registers 7
    .param p1, "contentType"    # Ljava/lang/String;

    .line 505
    const/4 v0, 0x1

    if-eqz p1, :cond_24

    .line 506
    iget-object v1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NALSECURITY] isMmsRequest() : contentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 507
    const-string v1, "mms-message"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 508
    return v0

    .line 511
    :cond_24
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.useragent"

    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 512
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "mUserAgent":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NALSECURITY] isMmsRequest() : CoreProtocolPNames.USER_AGENT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 514
    const-string v2, "Android-Mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 515
    return v0

    .line 518
    .end local v1    # "mUserAgent":Ljava/lang/String;
    :cond_63
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    .registers 3
    .param p1, "itcp"    # Lorg/apache/http/HttpRequestInterceptor;

    monitor-enter p0

    .line 453
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 454
    monitor-exit p0

    return-void

    .line 452
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "itcp":Lorg/apache/http/HttpRequestInterceptor;
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V
    .registers 4
    .param p1, "itcp"    # Lorg/apache/http/HttpRequestInterceptor;
    .param p2, "index"    # I

    monitor-enter p0

    .line 458
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 459
    monitor-exit p0

    return-void

    .line 457
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "itcp":Lorg/apache/http/HttpRequestInterceptor;
    .end local p2    # "index":I
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    .registers 3
    .param p1, "itcp"    # Lorg/apache/http/HttpResponseInterceptor;

    monitor-enter p0

    .line 423
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 424
    monitor-exit p0

    return-void

    .line 422
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "itcp":Lorg/apache/http/HttpResponseInterceptor;
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V
    .registers 4
    .param p1, "itcp"    # Lorg/apache/http/HttpResponseInterceptor;
    .param p2, "index"    # I

    monitor-enter p0

    .line 428
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 429
    monitor-exit p0

    return-void

    .line 427
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "itcp":Lorg/apache/http/HttpResponseInterceptor;
    .end local p2    # "index":I
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearRequestInterceptors()V
    .registers 2

    monitor-enter p0

    .line 473
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->clearRequestInterceptors()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 474
    monitor-exit p0

    return-void

    .line 472
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearResponseInterceptors()V
    .registers 2

    monitor-enter p0

    .line 443
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->clearResponseInterceptors()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 444
    monitor-exit p0

    return-void

    .line 442
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract createAuthSchemeRegistry()Lorg/apache/http/auth/AuthSchemeRegistry;
.end method

.method protected abstract createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
.end method

.method protected createClientRequestDirector(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/RequestDirector;
    .registers 27
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
    .param p11, "stateHandler"    # Lorg/apache/http/client/UserTokenHandler;
    .param p12, "params"    # Lorg/apache/http/params/HttpParams;

    .line 715
    new-instance v13, Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lorg/apache/http/impl/client/DefaultRequestDirector;-><init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V

    return-object v13
.end method

.method protected abstract createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
.end method

.method protected abstract createConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;
.end method

.method protected abstract createCookieSpecRegistry()Lorg/apache/http/cookie/CookieSpecRegistry;
.end method

.method protected abstract createCookieStore()Lorg/apache/http/client/CookieStore;
.end method

.method protected abstract createCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;
.end method

.method protected abstract createHttpContext()Lorg/apache/http/protocol/HttpContext;
.end method

.method protected abstract createHttpParams()Lorg/apache/http/params/HttpParams;
.end method

.method protected abstract createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
.end method

.method protected abstract createHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
.end method

.method protected abstract createHttpRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;
.end method

.method protected abstract createProxyAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
.end method

.method protected abstract createRedirectHandler()Lorg/apache/http/client/RedirectHandler;
.end method

.method protected abstract createRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;
.end method

.method protected abstract createTargetAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
.end method

.method protected abstract createUserTokenHandler()Lorg/apache/http/client/UserTokenHandler;
.end method

.method protected determineParams(Lorg/apache/http/HttpRequest;)Lorg/apache/http/params/HttpParams;
    .registers 6
    .param p1, "req"    # Lorg/apache/http/HttpRequest;

    .line 746
    new-instance v0, Lorg/apache/http/impl/client/ClientParamsStack;

    .line 747
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Lorg/apache/http/impl/client/ClientParamsStack;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    .line 746
    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 6
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 783
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getMethod(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getContentType(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 786
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 784
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 11
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 797
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getMethod(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getContentType(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 800
    if-eqz p3, :cond_54

    .line 805
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 809
    .local v0, "response":Lorg/apache/http/HttpResponse;
    :try_start_14
    invoke-interface {p3, v0}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_23

    .line 835
    .local v1, "result":Ljava/lang/Object;, "TT;"
    nop

    .line 839
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 840
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_22

    .line 842
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 845
    :cond_22
    return-object v1

    .line 810
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    :catchall_23
    move-exception v1

    .line 811
    .local v1, "t":Ljava/lang/Throwable;
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 812
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_36

    .line 814
    :try_start_2a
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    .line 819
    goto :goto_36

    .line 815
    :catchall_2e
    move-exception v3

    .line 818
    .local v3, "t2":Ljava/lang/Throwable;
    iget-object v4, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Error consuming content after an exception."

    invoke-interface {v4, v5, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 822
    .end local v3    # "t2":Ljava/lang/Throwable;
    :cond_36
    :goto_36
    instance-of v3, v1, Ljava/lang/Error;

    if-nez v3, :cond_50

    .line 826
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-nez v3, :cond_4c

    .line 830
    instance-of v3, v1, Ljava/io/IOException;

    if-eqz v3, :cond_46

    .line 831
    move-object v3, v1

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 834
    :cond_46
    new-instance v3, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v3, v1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 827
    :cond_4c
    move-object v3, v1

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 823
    :cond_50
    move-object v3, v1

    check-cast v3, Ljava/lang/Error;

    throw v3

    .line 801
    .end local v0    # "response":Lorg/apache/http/HttpResponse;
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response handler must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_5c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 756
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getMethod(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getContentType(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 759
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 757
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 769
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getMethod(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getContentType(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 772
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->determineTarget(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 773
    .local v0, "target":Lorg/apache/http/HttpHost;
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 770
    .end local v0    # "target":Lorg/apache/http/HttpHost;
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 5
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 644
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getMethod(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getContentType(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 647
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    .line 645
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 24
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 655
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v13, p3

    invoke-direct {v14, v15}, Lorg/apache/http/impl/client/AbstractHttpClient;->getMethod(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v15}, Lorg/apache/http/impl/client/AbstractHttpClient;->getContentType(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 658
    if-eqz v15, :cond_9b

    .line 665
    const/4 v1, 0x0

    .line 666
    .local v1, "execContext":Lorg/apache/http/protocol/HttpContext;
    const/16 v16, 0x0

    .line 670
    .local v16, "director":Lorg/apache/http/client/RequestDirector;
    monitor-enter p0

    .line 672
    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v0

    .line 673
    .local v0, "defaultContext":Lorg/apache/http/protocol/HttpContext;
    if-nez v13, :cond_23

    .line 674
    move-object v1, v0

    move-object v12, v1

    goto :goto_2a

    .line 676
    :cond_23
    new-instance v2, Lorg/apache/http/protocol/DefaultedHttpContext;

    invoke-direct {v2, v13, v0}, Lorg/apache/http/protocol/DefaultedHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_94

    move-object v1, v2

    move-object v12, v1

    .line 679
    .end local v1    # "execContext":Lorg/apache/http/protocol/HttpContext;
    .local v12, "execContext":Lorg/apache/http/protocol/HttpContext;
    :goto_2a
    nop

    .line 680
    :try_start_2b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;

    move-result-object v2

    .line 681
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    .line 682
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;

    move-result-object v4

    .line 683
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    move-result-object v5

    .line 684
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;

    move-result-object v6

    .line 685
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->copy()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v7

    .line 686
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v8

    .line 687
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRedirectHandler()Lorg/apache/http/client/RedirectHandler;

    move-result-object v9

    .line 688
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getTargetAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object v10

    .line 689
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getProxyAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object v11

    .line 690
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getUserTokenHandler()Lorg/apache/http/client/UserTokenHandler;

    move-result-object v17

    .line 691
    invoke-virtual {v14, v15}, Lorg/apache/http/impl/client/AbstractHttpClient;->determineParams(Lorg/apache/http/HttpRequest;)Lorg/apache/http/params/HttpParams;

    move-result-object v18
    :try_end_5f
    .catchall {:try_start_2b .. :try_end_5f} :catchall_8e

    .line 679
    move-object/from16 v1, p0

    move-object/from16 v19, v12

    .end local v12    # "execContext":Lorg/apache/http/protocol/HttpContext;
    .local v19, "execContext":Lorg/apache/http/protocol/HttpContext;
    move-object/from16 v12, v17

    move-object/from16 v13, v18

    :try_start_67
    invoke-virtual/range {v1 .. v13}, Lorg/apache/http/impl/client/AbstractHttpClient;->createClientRequestDirector(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/RequestDirector;

    move-result-object v1
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_87

    .line 692
    .end local v0    # "defaultContext":Lorg/apache/http/protocol/HttpContext;
    .end local v16    # "director":Lorg/apache/http/client/RequestDirector;
    .local v1, "director":Lorg/apache/http/client/RequestDirector;
    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_7e

    .line 695
    move-object/from16 v2, p1

    move-object/from16 v3, v19

    .end local v19    # "execContext":Lorg/apache/http/protocol/HttpContext;
    .local v3, "execContext":Lorg/apache/http/protocol/HttpContext;
    :try_start_70
    invoke-interface {v1, v2, v15, v3}, Lorg/apache/http/client/RequestDirector;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0
    :try_end_74
    .catch Lorg/apache/http/HttpException; {:try_start_70 .. :try_end_74} :catch_75

    return-object v0

    .line 696
    :catch_75
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 697
    .local v0, "httpException":Lorg/apache/http/HttpException;
    new-instance v4, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v4, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 692
    .end local v0    # "httpException":Lorg/apache/http/HttpException;
    .end local v3    # "execContext":Lorg/apache/http/protocol/HttpContext;
    .restart local v19    # "execContext":Lorg/apache/http/protocol/HttpContext;
    :catchall_7e
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move-object/from16 v16, v1

    move-object v1, v3

    .end local v19    # "execContext":Lorg/apache/http/protocol/HttpContext;
    .restart local v3    # "execContext":Lorg/apache/http/protocol/HttpContext;
    goto :goto_97

    .end local v1    # "director":Lorg/apache/http/client/RequestDirector;
    .end local v3    # "execContext":Lorg/apache/http/protocol/HttpContext;
    .restart local v16    # "director":Lorg/apache/http/client/RequestDirector;
    .restart local v19    # "execContext":Lorg/apache/http/protocol/HttpContext;
    :catchall_87
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move-object v1, v3

    .end local v19    # "execContext":Lorg/apache/http/protocol/HttpContext;
    .restart local v3    # "execContext":Lorg/apache/http/protocol/HttpContext;
    goto :goto_97

    .end local v3    # "execContext":Lorg/apache/http/protocol/HttpContext;
    .restart local v12    # "execContext":Lorg/apache/http/protocol/HttpContext;
    :catchall_8e
    move-exception v0

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v1, v3

    .end local v12    # "execContext":Lorg/apache/http/protocol/HttpContext;
    .restart local v3    # "execContext":Lorg/apache/http/protocol/HttpContext;
    goto :goto_97

    .end local v3    # "execContext":Lorg/apache/http/protocol/HttpContext;
    .local v1, "execContext":Lorg/apache/http/protocol/HttpContext;
    :catchall_94
    move-exception v0

    move-object/from16 v2, p1

    :goto_97
    :try_start_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_99

    throw v0

    :catchall_99
    move-exception v0

    goto :goto_97

    .line 659
    .end local v1    # "execContext":Lorg/apache/http/protocol/HttpContext;
    .end local v16    # "director":Lorg/apache/http/client/RequestDirector;
    :cond_9b
    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_a5
    move-object/from16 v2, p1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 596
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getMethod(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getContentType(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 599
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    .line 597
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 5
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 615
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getMethod(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getContentType(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 618
    if-eqz p1, :cond_19

    .line 623
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->determineTarget(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    .line 619
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;
    .registers 2

    monitor-enter p0

    .line 257
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lorg/apache/http/auth/AuthSchemeRegistry;

    if-nez v0, :cond_b

    .line 258
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createAuthSchemeRegistry()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lorg/apache/http/auth/AuthSchemeRegistry;

    .line 260
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lorg/apache/http/auth/AuthSchemeRegistry;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 256
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .registers 2

    monitor-enter p0

    .line 296
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    if-nez v0, :cond_b

    .line 297
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 299
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 295
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 2

    monitor-enter p0

    .line 241
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v0, :cond_b

    .line 242
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 244
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->connManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 240
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;
    .registers 2

    monitor-enter p0

    .line 283
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    if-nez v0, :cond_b

    .line 284
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 286
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 282
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;
    .registers 2

    monitor-enter p0

    .line 270
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lorg/apache/http/cookie/CookieSpecRegistry;

    if-nez v0, :cond_b

    .line 271
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createCookieSpecRegistry()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lorg/apache/http/cookie/CookieSpecRegistry;

    .line 273
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lorg/apache/http/cookie/CookieSpecRegistry;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 269
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieStore()Lorg/apache/http/client/CookieStore;
    .registers 2

    monitor-enter p0

    .line 363
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->cookieStore:Lorg/apache/http/client/CookieStore;

    if-nez v0, :cond_b

    .line 364
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 366
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->cookieStore:Lorg/apache/http/client/CookieStore;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 362
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;
    .registers 2

    monitor-enter p0

    .line 376
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->credsProvider:Lorg/apache/http/client/CredentialsProvider;

    if-nez v0, :cond_b

    .line 377
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->credsProvider:Lorg/apache/http/client/CredentialsProvider;

    .line 379
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->credsProvider:Lorg/apache/http/client/CredentialsProvider;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 375
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .registers 2

    monitor-enter p0

    .line 415
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    if-nez v0, :cond_b

    .line 416
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 418
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 414
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    .registers 2

    monitor-enter p0

    .line 309
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    if-nez v0, :cond_b

    .line 310
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 312
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 308
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/apache/http/params/HttpParams;

    if-nez v0, :cond_b

    .line 223
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/apache/http/params/HttpParams;

    .line 225
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/apache/http/params/HttpParams;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 221
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getProxyAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
    .registers 2

    monitor-enter p0

    .line 349
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    if-nez v0, :cond_b

    .line 350
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createProxyAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 352
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 348
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRedirectHandler()Lorg/apache/http/client/RedirectHandler;
    .registers 2

    monitor-enter p0

    .line 322
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    if-nez v0, :cond_b

    .line 323
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createRedirectHandler()Lorg/apache/http/client/RedirectHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    .line 325
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->redirectHandler:Lorg/apache/http/client/RedirectHandler;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 321
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;
    .registers 2

    monitor-enter p0

    .line 249
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    if-nez v0, :cond_b

    .line 250
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 252
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 248
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestInterceptor(I)Lorg/apache/http/HttpRequestInterceptor;
    .registers 3
    .param p1, "index"    # I

    monitor-enter p0

    .line 463
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->getRequestInterceptor(I)Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 463
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "index":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRequestInterceptorCount()I
    .registers 2

    monitor-enter p0

    .line 468
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->getRequestInterceptorCount()I

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    .line 468
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseInterceptor(I)Lorg/apache/http/HttpResponseInterceptor;
    .registers 3
    .param p1, "index"    # I

    monitor-enter p0

    .line 433
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->getResponseInterceptor(I)Lorg/apache/http/HttpResponseInterceptor;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 433
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "index":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getResponseInterceptorCount()I
    .registers 2

    monitor-enter p0

    .line 438
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->getResponseInterceptorCount()I

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    .line 438
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .registers 2

    monitor-enter p0

    .line 389
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    if-nez v0, :cond_b

    .line 390
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createHttpRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    .line 392
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 388
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getTargetAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
    .registers 2

    monitor-enter p0

    .line 335
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    if-nez v0, :cond_b

    .line 336
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createTargetAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 338
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 334
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getUserTokenHandler()Lorg/apache/http/client/UserTokenHandler;
    .registers 2

    monitor-enter p0

    .line 402
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    if-nez v0, :cond_b

    .line 403
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->createUserTokenHandler()Lorg/apache/http/client/UserTokenHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    .line 405
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 401
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/http/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 478
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/HttpRequestInterceptor;>;"
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    .line 479
    return-void
.end method

.method public removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/http/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 448
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/HttpResponseInterceptor;>;"
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->removeResponseInterceptorByClass(Ljava/lang/Class;)V

    .line 449
    return-void
.end method

.method public declared-synchronized setAuthSchemes(Lorg/apache/http/auth/AuthSchemeRegistry;)V
    .registers 2
    .param p1, "authSchemeRegistry"    # Lorg/apache/http/auth/AuthSchemeRegistry;

    monitor-enter p0

    .line 265
    :try_start_1
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lorg/apache/http/auth/AuthSchemeRegistry;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 266
    monitor-exit p0

    return-void

    .line 264
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "authSchemeRegistry":Lorg/apache/http/auth/AuthSchemeRegistry;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCookieSpecs(Lorg/apache/http/cookie/CookieSpecRegistry;)V
    .registers 2
    .param p1, "cookieSpecRegistry"    # Lorg/apache/http/cookie/CookieSpecRegistry;

    monitor-enter p0

    .line 278
    :try_start_1
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lorg/apache/http/cookie/CookieSpecRegistry;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 279
    monitor-exit p0

    return-void

    .line 277
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "cookieSpecRegistry":Lorg/apache/http/cookie/CookieSpecRegistry;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .registers 2
    .param p1, "cookieStore"    # Lorg/apache/http/client/CookieStore;

    monitor-enter p0

    .line 371
    :try_start_1
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->cookieStore:Lorg/apache/http/client/CookieStore;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 372
    monitor-exit p0

    return-void

    .line 370
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "cookieStore":Lorg/apache/http/client/CookieStore;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)V
    .registers 2
    .param p1, "credsProvider"    # Lorg/apache/http/client/CredentialsProvider;

    monitor-enter p0

    .line 384
    :try_start_1
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->credsProvider:Lorg/apache/http/client/CredentialsProvider;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 385
    monitor-exit p0

    return-void

    .line 383
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    .registers 2
    .param p1, "retryHandler"    # Lorg/apache/http/client/HttpRequestRetryHandler;

    monitor-enter p0

    .line 317
    :try_start_1
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 318
    monitor-exit p0

    return-void

    .line 316
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V
    .registers 2
    .param p1, "keepAliveStrategy"    # Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    monitor-enter p0

    .line 304
    :try_start_1
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 305
    monitor-exit p0

    return-void

    .line 303
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "keepAliveStrategy":Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParams(Lorg/apache/http/params/HttpParams;)V
    .registers 2
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    monitor-enter p0

    .line 236
    :try_start_1
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/apache/http/params/HttpParams;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 237
    monitor-exit p0

    return-void

    .line 235
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "params":Lorg/apache/http/params/HttpParams;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProxyAuthenticationHandler(Lorg/apache/http/client/AuthenticationHandler;)V
    .registers 2
    .param p1, "proxyAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;

    monitor-enter p0

    .line 358
    :try_start_1
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 359
    monitor-exit p0

    return-void

    .line 357
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "proxyAuthHandler":Lorg/apache/http/client/AuthenticationHandler;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V
    .registers 2
    .param p1, "redirectHandler"    # Lorg/apache/http/client/RedirectHandler;

    monitor-enter p0

    .line 330
    :try_start_1
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->redirectHandler:Lorg/apache/http/client/RedirectHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 331
    monitor-exit p0

    return-void

    .line 329
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "redirectHandler":Lorg/apache/http/client/RedirectHandler;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)V
    .registers 2
    .param p1, "reuseStrategy"    # Lorg/apache/http/ConnectionReuseStrategy;

    monitor-enter p0

    .line 291
    :try_start_1
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 292
    monitor-exit p0

    return-void

    .line 290
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "reuseStrategy":Lorg/apache/http/ConnectionReuseStrategy;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRoutePlanner(Lorg/apache/http/conn/routing/HttpRoutePlanner;)V
    .registers 2
    .param p1, "routePlanner"    # Lorg/apache/http/conn/routing/HttpRoutePlanner;

    monitor-enter p0

    .line 397
    :try_start_1
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 398
    monitor-exit p0

    return-void

    .line 396
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "routePlanner":Lorg/apache/http/conn/routing/HttpRoutePlanner;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTargetAuthenticationHandler(Lorg/apache/http/client/AuthenticationHandler;)V
    .registers 2
    .param p1, "targetAuthHandler"    # Lorg/apache/http/client/AuthenticationHandler;

    monitor-enter p0

    .line 344
    :try_start_1
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 345
    monitor-exit p0

    return-void

    .line 343
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "targetAuthHandler":Lorg/apache/http/client/AuthenticationHandler;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserTokenHandler(Lorg/apache/http/client/UserTokenHandler;)V
    .registers 2
    .param p1, "userTokenHandler"    # Lorg/apache/http/client/UserTokenHandler;

    monitor-enter p0

    .line 410
    :try_start_1
    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 411
    monitor-exit p0

    return-void

    .line 409
    .end local p0    # "this":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local p1    # "userTokenHandler":Lorg/apache/http/client/UserTokenHandler;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
