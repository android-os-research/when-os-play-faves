.class public Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;
.super Lcom/gsma/services/rcs/RcsServiceException;
.source "RcsServiceNotRegisteredException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    const-string v0, "Rcs service not registered"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public static assertException(Ljava/lang/Exception;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;
        }
    .end annotation

    .line 56
    const-class v0, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;

    invoke-static {p0, v0}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->isIntendedException(Ljava/lang/Exception;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 59
    return-void

    .line 57
    :cond_9
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;

    invoke-static {p0}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->extractServerException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
