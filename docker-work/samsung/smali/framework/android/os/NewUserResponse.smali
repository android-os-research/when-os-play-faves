.class public final Landroid/os/NewUserResponse;
.super Ljava/lang/Object;
.source "NewUserResponse.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mOperationResult:I

.field private final blacklist mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor blacklist <init>(Landroid/os/UserHandle;I)V
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "operationResult"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/os/NewUserResponse;->mUser:Landroid/os/UserHandle;

    .line 40
    iput p2, p0, Landroid/os/NewUserResponse;->mOperationResult:I

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist getOperationResult()I
    .registers 2

    .line 62
    iget v0, p0, Landroid/os/NewUserResponse;->mOperationResult:I

    return v0
.end method

.method public whitelist getUser()Landroid/os/UserHandle;
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/os/NewUserResponse;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist isSuccessful()Z
    .registers 2

    .line 47
    iget-object v0, p0, Landroid/os/NewUserResponse;->mUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
