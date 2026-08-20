.class public Lcom/android/server/am/UserController$UserProgressListener;
.super Landroid/os/IProgressListener$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserProgressListener"
.end annotation


# instance fields
.field public volatile mUnlockStarted:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3614
    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/UserController$UserProgressListener-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/UserController$UserProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3629
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/UserController$UserProgressListener;->mUnlockStarted:J

    sub-long/2addr v0, v2

    if-nez p1, :cond_14

    .line 3633
    new-instance p0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {p0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    const-string p1, "SystemUserUnlock"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->logDuration(Ljava/lang/String;J)V

    goto :goto_32

    .line 3635
    :cond_14
    new-instance p0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {p0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "Unlock"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->logDuration(Ljava/lang/String;J)V

    :goto_32
    return-void
.end method

.method public onProgress(IILandroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3624
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unlocking user "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " progress "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStarted(ILandroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3618
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Started unlocking user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/UserController$UserProgressListener;->mUnlockStarted:J

    return-void
.end method
