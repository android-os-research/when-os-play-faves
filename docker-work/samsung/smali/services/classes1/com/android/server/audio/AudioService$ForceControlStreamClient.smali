.class public Lcom/android/server/audio/AudioService$ForceControlStreamClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForceControlStreamClient"
.end annotation


# instance fields
.field public mCb:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .registers 4

    .line 4527
    iput-object p1, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_28

    const/4 p1, 0x0

    .line 4530
    :try_start_8
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_28

    .line 4533
    :catch_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ForceControlStreamClient() could not link to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " binder death"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AS.AudioService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 4537
    :cond_28
    :goto_28
    iput-object p2, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 4541
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmForceControlStreamLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "AS.AudioService"

    const-string v2, "SCO client died"

    .line 4542
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4543
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmForceControlStreamClient(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    move-result-object v1

    if-eq v1, p0, :cond_1f

    const-string p0, "AS.AudioService"

    const-string/jumbo v1, "unregistered control stream client died"

    .line 4544
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 4546
    :cond_1f
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmForceControlStreamClient(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)V

    .line 4547
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmVolumeControlStream(Lcom/android/server/audio/AudioService;I)V

    .line 4548
    iget-object p0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmUserSelectedVolumeControlStream(Lcom/android/server/audio/AudioService;Z)V

    .line 4550
    :goto_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 1

    .line 4561
    iget-object p0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    return-object p0
.end method

.method public release()V
    .registers 3

    .line 4554
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 4555
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 4556
    iput-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    :cond_b
    return-void
.end method
