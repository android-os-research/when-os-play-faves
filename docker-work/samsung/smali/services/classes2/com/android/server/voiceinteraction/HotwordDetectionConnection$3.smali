.class public Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->detectFromDspSourceForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
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

    .line 518
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

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

    const-string v0, "HotwordDetectionConnection"

    const-string/jumbo v1, "onDetected"

    .line 521
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmValidatingDspTrigger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string p0, "HotwordDetectionConnection"

    const-string p1, "Ignored hotword detected since trigger has been handled"

    .line 524
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    monitor-exit v0

    return-void

    .line 527
    :cond_1e
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fputmValidatingDspTrigger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_79

    .line 529
    :try_start_24
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$menforcePermissionsForDataDelivery(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_29} :catch_71
    .catchall {:try_start_24 .. :try_end_29} :catchall_79

    .line 534
    :try_start_29
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V

    if-eqz p1, :cond_6f

    const-string v1, "HotwordDetectionConnection"

    .line 536
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

    .line 538
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDebugHotwordLogging(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result p0

    if-eqz p0, :cond_6f

    const-string p0, "HotwordDetectionConnection"

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Egressed detected result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_6f
    monitor-exit v0

    return-void

    .line 531
    :catch_71
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    const/4 p1, -0x2

    invoke-interface {p0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onError(I)V

    .line 532
    monitor-exit v0

    return-void

    :catchall_79
    move-exception p0

    .line 542
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_29 .. :try_end_7b} :catchall_79

    throw p0
.end method

.method public onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "HotwordDetectionConnection"

    const-string/jumbo v1, "onRejected"

    .line 547
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    :try_start_d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmValidatingDspTrigger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 550
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fputmValidatingDspTrigger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)V

    .line 551
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 552
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDebugHotwordLogging(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result p0

    if-eqz p0, :cond_48

    if-eqz p1, :cond_48

    const-string p0, "HotwordDetectionConnection"

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Egressed rejected result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_41
    const-string p0, "HotwordDetectionConnection"

    const-string p1, "Ignored hotword rejected since trigger has been handled"

    .line 556
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_48
    :goto_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_d .. :try_end_4c} :catchall_4a

    throw p0
.end method
