.class public Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->startListeningFromMicLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .registers 2

    .line 418
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-direct {p0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_5
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmPerformingSoftwareHotwordDetection(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string p0, "HotwordDetectionConnection"

    const-string p1, "Hotword detection has already completed"

    .line 426
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    monitor-exit v0

    return-void

    .line 429
    :cond_16
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fputmPerformingSoftwareHotwordDetection(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_77

    .line 431
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$menforcePermissionsForDataDelivery(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_21} :catch_6c
    .catchall {:try_start_1c .. :try_end_21} :catchall_77

    .line 436
    :try_start_21
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmSoftwareCallback(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v2}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V

    if-eqz p1, :cond_6a

    const-string v1, "HotwordDetectionConnection"

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Egressed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/service/voice/HotwordDetectedResult;->getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bits from hotword trusted process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDebugHotwordLogging(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result p0

    if-eqz p0, :cond_6a

    const-string p0, "HotwordDetectionConnection"

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Egressed detected result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_6a
    monitor-exit v0

    return-void

    .line 433
    :catch_6c
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmSoftwareCallback(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    move-result-object p0

    invoke-interface {p0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onError()V

    .line 434
    monitor-exit v0

    return-void

    :catchall_77
    move-exception p0

    .line 444
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_21 .. :try_end_79} :catchall_77

    throw p0
.end method

.method public onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
