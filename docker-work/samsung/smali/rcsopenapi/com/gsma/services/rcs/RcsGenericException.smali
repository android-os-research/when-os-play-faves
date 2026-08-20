.class public Lcom/gsma/services/rcs/RcsGenericException;
.super Lcom/gsma/services/rcs/RcsServiceException;
.source "RcsGenericException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    const-string v0, "Rcs service not available"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 16
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method

.method public static assertException(Ljava/lang/Exception;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 45
    const-class v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-static {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;->isIntendedException(Ljava/lang/Exception;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 48
    return-void

    .line 46
    :cond_9
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-static {p0}, Lcom/gsma/services/rcs/RcsGenericException;->extractServerException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
