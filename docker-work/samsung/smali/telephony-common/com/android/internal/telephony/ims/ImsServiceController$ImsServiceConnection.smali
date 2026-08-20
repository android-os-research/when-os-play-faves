.class Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;
.super Ljava/lang/Object;
.source "ImsServiceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsServiceConnection"
.end annotation


# instance fields
.field private blacklist mIsServiceConnectionDead:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->mIsServiceConnectionDead:Z

    return-void
.end method

.method private blacklist cleanupConnection()V
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mcleanupAllFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 184
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->setServiceController(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 5

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->mIsServiceConnectionDead:Z

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_8
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 142
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 143
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_78

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmImsServiceConnection(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmImsServiceConnection(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->unbindfromService(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;)V

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmImsServiceConnection(Lcom/android/internal/telephony/ims/ImsServiceController;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;)V

    .line 152
    :cond_2b
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->cleanupConnection()V

    const-string v0, "ImsServiceController"

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): onBindingDied. Starting rebind..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mstartDelayedRebindToService(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 155
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindingDied, retrying in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmBackoff(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ExponentialBackoff;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " mS"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    :catchall_78
    move-exception p0

    .line 143
    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p0
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 5

    const-string v0, "ImsServiceController"

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): onNullBinding. Is service dead = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->mIsServiceConnectionDead:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNullBinding, is service dead = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->mIsServiceConnectionDead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 165
    iget-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->mIsServiceConnectionDead:Z

    if-eqz p1, :cond_41

    return-void

    .line 166
    :cond_41
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 167
    :try_start_46
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->cleanupConnection()V

    .line 172
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_6e

    .line 173
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    move-result-object p1

    if-eqz p1, :cond_6d

    .line 175
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceBindPermanentError(Landroid/content/ComponentName;)V

    :cond_6d
    return-void

    :catchall_6e
    move-exception p0

    .line 172
    :try_start_6f
    monitor-exit p1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p0
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmBackoff(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ExponentialBackoff;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    .line 94
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 95
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_fb

    .line 97
    :try_start_1a
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v1

    const-string v3, "onServiceConnected"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const-string v1, "ImsServiceController"

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsService("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): onServiceConnected with binder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->setServiceController(Landroid/os/IBinder;)V

    .line 101
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->notifyImsServiceReady()V

    .line 102
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mretrieveStaticImsServiceCapabilities(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 104
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmImsFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 105
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmImsFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/Set;

    move-result-object v4

    iget v5, v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget-object v6, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v6}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmServiceCapabilities(Lcom/android/internal/telephony/ims/ImsServiceController;)J

    move-result-wide v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mmodifyCapabiltiesForSlot(Lcom/android/internal/telephony/ims/ImsServiceController;Ljava/util/Set;IJ)J

    move-result-wide v3

    .line 107
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmSlotIdToSubIdMap(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/util/SparseIntArray;

    move-result-object v6

    iget v7, v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-static {v5, v1, v3, v4, v6}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$maddImsServiceFeature(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_89} :catch_8a
    .catchall {:try_start_1a .. :try_end_89} :catchall_fb

    goto :goto_5c

    :catch_8a
    move-exception p2

    .line 110
    :try_start_8b
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->cleanupConnection()V

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$munbindService(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 116
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mstartDelayedRebindToService(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 117
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnected exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", retry in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmBackoff(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ExponentialBackoff;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " mS"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 117
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const-string p0, "ImsServiceController"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") RemoteException:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_f9
    monitor-exit v0

    return-void

    :catchall_fb
    move-exception p0

    monitor-exit v0
    :try_end_fd
    .catchall {:try_start_8b .. :try_end_fd} :catchall_fb

    throw p0
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 129
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->cleanupConnection()V

    .line 130
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_3b

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const-string v0, "ImsServiceController"

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): onServiceDisconnected. Waiting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mcheckAndReportAnomaly(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/content/ComponentName;)V

    return-void

    :catchall_3b
    move-exception p0

    .line 130
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0
.end method
