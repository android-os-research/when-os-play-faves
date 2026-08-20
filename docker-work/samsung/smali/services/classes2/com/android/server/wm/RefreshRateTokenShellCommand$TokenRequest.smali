.class public Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;
.super Ljava/lang/Object;
.source "RefreshRateTokenShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RefreshRateTokenShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokenRequest"
.end annotation


# instance fields
.field public mToken:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquire(Ljava/lang/String;)Z
    .registers 2

    .line 171
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;->acquireInner(Ljava/lang/String;)Z

    move-result p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :catch_8
    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public acquireInner(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getError()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public release()V
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;->mToken:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 185
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;->releaseInner()V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/android/server/wm/RefreshRateTokenShellCommand$TokenRequest;->mToken:Ljava/lang/Object;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-void
.end method

.method public releaseInner()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
