.class public final Lcom/android/server/display/DisplayManagerService$CallbackRecord;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CallbackRecord"
.end annotation


# instance fields
.field public final mCallback:Landroid/hardware/display/IDisplayManagerCallback;

.field public mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mPid:I

.field public final mUid:I

.field public mWifiDisplayScanRequested:Z

.field public mWifiDisplayScanRequestedTime:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;IILandroid/hardware/display/IDisplayManagerCallback;J)V
    .registers 7

    .line 3961
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3962
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 3963
    iput p3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    .line 3964
    iput-object p4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    .line 3965
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1, p5, p6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 3977
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$monCallbackDied(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    return-void
.end method

.method public notifyDeviceEventAsync(Landroid/os/Bundle;I)V
    .registers 4

    .line 4045
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManagerCallback;->onDeviceEvent(Landroid/os/Bundle;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_27

    :catch_6
    move-exception p1

    .line 4047
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to notify process "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " that displays changed, assuming it died."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DisplayManagerService"

    invoke-static {v0, p2, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4049
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    :goto_27
    return-void
.end method

.method public notifyDisplayEventAsync(II)V
    .registers 4

    .line 3981
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->shouldSendEvent(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3986
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayEvent(II)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_2e

    :catch_d
    move-exception p1

    .line 3988
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to notify process "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " that displays changed, assuming it died."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DisplayManagerService"

    invoke-static {v0, p2, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3990
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    :goto_2e
    return-void
.end method

.method public notifyDisplayVolumeEventAsync(ILandroid/os/Bundle;)V
    .registers 4

    .line 4015
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayVolumeEvent(ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_27

    :catch_6
    move-exception p1

    .line 4017
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to notify process "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " that displays changed, assuming it died."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DisplayManagerService"

    invoke-static {v0, p2, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4019
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    :goto_27
    return-void
.end method

.method public notifyDisplayVolumeKeyEventAsync(I)V
    .registers 4

    .line 4025
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayVolumeKeyEvent(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_27

    :catch_6
    move-exception p1

    .line 4027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to notify process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " that displays changed, assuming it died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4029
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    :goto_27
    return-void
.end method

.method public notifyWifiDisplayParameterEventAsync(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)V"
        }
    .end annotation

    .line 4035
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManagerCallback;->onWifiDisplayParameterEvent(ILjava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_27

    :catch_6
    move-exception p1

    .line 4037
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to notify process "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " that displays changed, assuming it died."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DisplayManagerService"

    invoke-static {v0, p2, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4039
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    :goto_27
    return-void
.end method

.method public final shouldSendEvent(I)Z
    .registers 9

    .line 3995
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const/4 p0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_47

    const/4 v5, 0x2

    if-eq p1, v5, :cond_3e

    const/4 v5, 0x3

    if-eq p1, v5, :cond_35

    const/4 v5, 0x4

    if-eq p1, v5, :cond_2c

    .line 4007
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown display event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManagerService"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2c
    const-wide/16 v5, 0x8

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_34

    move p0, v4

    :cond_34
    return p0

    :cond_35
    const-wide/16 v5, 0x2

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3d

    move p0, v4

    :cond_3d
    return p0

    :cond_3e
    const-wide/16 v5, 0x4

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_46

    move p0, v4

    :cond_46
    return p0

    :cond_47
    const-wide/16 v5, 0x1

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4f

    move p0, v4

    :cond_4f
    return p0
.end method

.method public updateEventsMask(J)V
    .registers 3

    .line 3969
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
