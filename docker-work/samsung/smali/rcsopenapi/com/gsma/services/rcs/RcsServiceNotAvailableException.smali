.class public Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
.super Lcom/gsma/services/rcs/RcsServiceException;
.source "RcsServiceNotAvailableException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    const-string v0, "Rcs service not available"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method
