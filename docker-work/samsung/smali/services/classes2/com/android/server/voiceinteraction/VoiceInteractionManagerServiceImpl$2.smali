.class public Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 6

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindingDied to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceInteractionServiceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 169
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x1

    iget v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    invoke-interface {v2, p1, v0, v3, v1}, Landroid/app/IActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;III)Landroid/content/pm/ParceledListSlice;

    move-result-object v1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_27} :catch_28

    goto :goto_29

    :catch_28
    const/4 v1, 0x0

    :goto_29
    if-nez v1, :cond_2c

    return-void

    .line 176
    :cond_2c
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 177
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    return-void

    .line 181
    :cond_37
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 182
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_56

    .line 183
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_56

    .line 185
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    invoke-virtual {v0, p1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->handleUserStop(Ljava/lang/String;I)V

    :cond_56
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 143
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter p1

    .line 144
    :try_start_5
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-static {p2}, Landroid/service/voice/IVoiceInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    .line 146
    :try_start_d
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {p0}, Landroid/service/voice/IVoiceInteractionService;->ready()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_14
    .catchall {:try_start_d .. :try_end_14} :catchall_16

    .line 149
    :catch_14
    :try_start_14
    monitor-exit p1

    return-void

    :catchall_16
    move-exception p0

    monitor-exit p1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 157
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter p1

    .line 158
    :try_start_5
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    .line 159
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->resetHotwordDetectionConnectionLocked()V

    .line 160
    monitor-exit p1

    return-void

    :catchall_f
    move-exception p0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p0
.end method
