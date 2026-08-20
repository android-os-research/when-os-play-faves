.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;
.super Ljava/lang/Object;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_DekData"
.end annotation


# instance fields
.field public dek:[B

.field public errorCode:I

.field public wrappedDek:[B


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 5848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5845
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->dek:[B

    .line 5846
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->wrappedDek:[B

    .line 5849
    iput p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->errorCode:I

    return-void
.end method
