.class public Lorg/apache/http/client/CircularRedirectException;
.super Lorg/apache/http/client/RedirectException;
.source "CircularRedirectException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5ec9428de010dedbL


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lorg/apache/http/client/RedirectException;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 73
    invoke-direct {p0, p1, p2}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method
