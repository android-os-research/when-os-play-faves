.class public abstract Lcom/android/server/display/RefreshRateToken;
.super Lcom/samsung/android/hardware/display/IRefreshRateToken$Stub;
.source "RefreshRateToken.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;
    }
.end annotation


# instance fields
.field public mInfo:Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;

.field public mRemoveConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/display/RefreshRateToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/IRefreshRateToken$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/android/server/display/RefreshRateToken;->remove()V

    return-void
.end method

.method public init(Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/display/RefreshRateToken;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/android/server/display/RefreshRateToken;->mInfo:Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;

    .line 45
    iput-object p2, p0, Lcom/android/server/display/RefreshRateToken;->mRemoveConsumer:Ljava/util/function/Consumer;

    .line 46
    iget-object p1, p1, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;->mToken:Landroid/os/IBinder;

    if-eqz p1, :cond_14

    const/4 p2, 0x0

    .line 48
    :try_start_9
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_14

    :catch_d
    move-exception p0

    .line 51
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_14
    :goto_14
    return-void
.end method

.method public release()V
    .registers 1

    .line 58
    invoke-virtual {p0}, Lcom/android/server/display/RefreshRateToken;->remove()V

    return-void
.end method

.method public final remove()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/android/server/display/RefreshRateToken;->mRemoveConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_7

    .line 68
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 70
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/RefreshRateToken;->mInfo:Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    .line 71
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RefreshRateToken["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/RefreshRateToken;->mInfo:Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;

    iget-object v1, v1, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " acquire at "

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/RefreshRateToken;->mInfo:Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;

    iget-wide v1, p0, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;->mAcquireTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract updateVote()V
.end method
