.class public Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

.field public final synthetic val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public final synthetic val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .registers 4

    .line 580
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

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

    .line 586
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_5
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmCancellationKeyPhraseDetectionFuture(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 591
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmCancellationKeyPhraseDetectionFuture(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 593
    :cond_17
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(II)V

    .line 596
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmValidatingDspTrigger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string p1, "HotwordDetectionConnection"

    const-string v1, "Ignoring #onDetected due to a process restart"

    .line 597
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result p0

    const/4 p1, 0x7

    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(II)V

    .line 601
    monitor-exit v0

    return-void

    .line 603
    :cond_3c
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fputmValidatingDspTrigger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)V
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_a2

    .line 605
    :try_start_42
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$menforcePermissionsForDataDelivery(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    :try_end_47
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_47} :catch_8f
    .catchall {:try_start_42 .. :try_end_47} :catchall_a2

    .line 613
    :try_start_47
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V

    if-eqz p1, :cond_8d

    const-string v1, "HotwordDetectionConnection"

    .line 615
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

    .line 617
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDebugHotwordLogging(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result p0

    if-eqz p0, :cond_8d

    const-string p0, "HotwordDetectionConnection"

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Egressed detected result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_8d
    monitor-exit v0

    return-void

    .line 607
    :catch_8f
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result p1

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(II)V

    .line 610
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    const/4 p1, -0x2

    invoke-interface {p0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onError(I)V

    .line 611
    monitor-exit v0

    return-void

    :catchall_a2
    move-exception p0

    .line 621
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_47 .. :try_end_a4} :catchall_a2

    throw p0
.end method

.method public onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_5
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmCancellationKeyPhraseDetectionFuture(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 631
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmCancellationKeyPhraseDetectionFuture(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 633
    :cond_17
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(II)V

    .line 636
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmValidatingDspTrigger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v1

    if-nez v1, :cond_3d

    const-string p1, "HotwordDetectionConnection"

    const-string v1, "Ignoring #onRejected due to a process restart"

    .line 637
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result p0

    const/16 p1, 0x9

    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(II)V

    .line 641
    monitor-exit v0

    return-void

    .line 643
    :cond_3d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fputmValidatingDspTrigger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)V

    .line 644
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 645
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$4;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDebugHotwordLogging(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result p0

    if-eqz p0, :cond_68

    if-eqz p1, :cond_68

    const-string p0, "HotwordDetectionConnection"

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Egressed rejected result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_68
    monitor-exit v0

    return-void

    :catchall_6a
    move-exception p0

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_5 .. :try_end_6c} :catchall_6a

    throw p0
.end method
