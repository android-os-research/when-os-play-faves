.class public Landroid/net/http/LoggingEventHandler;
.super Ljava/lang/Object;
.source "LoggingEventHandler.java"

# interfaces
.implements Landroid/net/http/EventHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public certificate(Landroid/net/http/SslCertificate;)V
    .registers 2
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;

    .line 73
    return-void
.end method

.method public data([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .line 62
    return-void
.end method

.method public endData()V
    .registers 1

    .line 67
    return-void
.end method

.method public error(ILjava/lang/String;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 80
    return-void
.end method

.method public handleSslErrorRequest(Landroid/net/http/SslError;)Z
    .registers 3
    .param p1, "error"    # Landroid/net/http/SslError;

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public headers(Landroid/net/http/Headers;)V
    .registers 2
    .param p1, "headers"    # Landroid/net/http/Headers;

    .line 48
    return-void
.end method

.method public locationChanged(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "newLocation"    # Ljava/lang/String;
    .param p2, "permanent"    # Z

    .line 55
    return-void
.end method

.method public requestSent()V
    .registers 2

    .line 28
    const-string v0, "LoggingEventHandler:requestSent()"

    invoke-static {v0}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public status(IIILjava/lang/String;)V
    .registers 5
    .param p1, "major_version"    # I
    .param p2, "minor_version"    # I
    .param p3, "code"    # I
    .param p4, "reason_phrase"    # Ljava/lang/String;

    .line 41
    return-void
.end method
