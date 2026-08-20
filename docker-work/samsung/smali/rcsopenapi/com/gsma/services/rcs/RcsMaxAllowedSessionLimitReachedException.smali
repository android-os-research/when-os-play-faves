.class public Lcom/gsma/services/rcs/RcsMaxAllowedSessionLimitReachedException;
.super Lcom/gsma/services/rcs/RcsServiceException;
.source "RcsMaxAllowedSessionLimitReachedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    const-string v0, "Rcs max allowed session limit reached"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method public static assertException(Ljava/lang/Exception;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsMaxAllowedSessionLimitReachedException;
        }
    .end annotation

    .line 50
    const-class v0, Lcom/gsma/services/rcs/RcsMaxAllowedSessionLimitReachedException;

    invoke-static {p0, v0}, Lcom/gsma/services/rcs/RcsMaxAllowedSessionLimitReachedException;->isIntendedException(Ljava/lang/Exception;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 53
    return-void

    .line 51
    :cond_9
    new-instance v0, Lcom/gsma/services/rcs/RcsMaxAllowedSessionLimitReachedException;

    invoke-static {p0}, Lcom/gsma/services/rcs/RcsMaxAllowedSessionLimitReachedException;->extractServerException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/gsma/services/rcs/RcsMaxAllowedSessionLimitReachedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
