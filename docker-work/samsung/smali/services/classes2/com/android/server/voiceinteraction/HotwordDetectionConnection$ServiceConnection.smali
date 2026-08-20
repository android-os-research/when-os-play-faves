.class Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/HotwordDetectionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/voice/IHotwordDetectionService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBindingFlags:I

.field private final mInstanceNumber:I

.field private final mIntent:Landroid/content/Intent;

.field private mIsBound:Z

.field private mIsLoggedFirstConnect:Z

.field private final mLock:Ljava/lang/Object;

.field private mRespectServiceConnectionStatusChanged:Z

.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "II",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "Landroid/service/voice/IHotwordDetectionService;",
            ">;I)V"
        }
    .end annotation

    .line 986
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 987
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 973
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mLock:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 979
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mRespectServiceConnectionStatusChanged:Z

    const/4 p1, 0x0

    .line 980
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsBound:Z

    .line 981
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsLoggedFirstConnect:Z

    .line 988
    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIntent:Landroid/content/Intent;

    .line 989
    iput p4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mBindingFlags:I

    .line 990
    iput p7, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mInstanceNumber:I

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/ServiceConnection;)Z
    .registers 12

    const/4 v0, 0x3

    .line 1041
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget v3, v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-static {v1, v2, v3}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 1044
    iget-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIntent:Landroid/content/Intent;

    const v1, 0x4000001

    iget v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mBindingFlags:I

    or-int v6, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hotword_detector_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mInstanceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_43

    .line 1051
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget v2, v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-static {v1, v0, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V
    :try_end_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_43} :catch_44

    :cond_43
    return p1

    :catch_44
    move-exception p1

    .line 1057
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-static {v1, v0, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    const-string p0, "HotwordDetectionConnection"

    const-string v0, "Can\'t bind to the hotword detection service!"

    .line 1060
    invoke-static {p0, v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public binderDied()V
    .registers 5

    .line 1021
    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    .line 1022
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1023
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mRespectServiceConnectionStatusChanged:Z

    if-nez v1, :cond_13

    const-string p0, "HotwordDetectionConnection"

    const-string v1, "Ignored #binderDied event"

    .line 1024
    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    monitor-exit v0

    return-void

    :cond_13
    const-string v1, "HotwordDetectionConnection"

    const-string v2, "binderDied"

    .line 1028
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_3e

    .line 1030
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmCallback(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    move-result-object p0

    const/4 v1, -0x1

    invoke-interface {p0, v1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onError(I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_25
    .catchall {:try_start_1a .. :try_end_24} :catchall_3e

    goto :goto_3c

    :catch_25
    move-exception p0

    :try_start_26
    const-string v1, "HotwordDetectionConnection"

    .line 1032
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report onError status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :goto_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public getAutoDisconnectTimeoutMs()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public ignoreConnectionStatusEvents()V
    .registers 3

    .line 1072
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1073
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mRespectServiceConnectionStatusChanged:Z

    .line 1074
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public isBound()Z
    .registers 2

    .line 1066
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1067
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsBound:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1068
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3

    .line 972
    check-cast p1, Landroid/service/voice/IHotwordDetectionService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->onServiceConnectionStatusChanged(Landroid/service/voice/IHotwordDetectionService;Z)V

    return-void
.end method

.method public onServiceConnectionStatusChanged(Landroid/service/voice/IHotwordDetectionService;Z)V
    .registers 4

    .line 999
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1000
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mRespectServiceConnectionStatusChanged:Z

    if-nez v0, :cond_10

    const-string p0, "HotwordDetectionConnection"

    const-string p2, "Ignored onServiceConnectionStatusChanged event"

    .line 1001
    invoke-static {p0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    monitor-exit p1

    return-void

    .line 1004
    :cond_10
    iput-boolean p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsBound:Z

    if-eqz p2, :cond_29

    .line 1005
    iget-boolean p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsLoggedFirstConnect:Z

    if-nez p2, :cond_29

    const/4 p2, 0x1

    .line 1006
    iput-boolean p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->mIsLoggedFirstConnect:Z

    .line 1007
    iget-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {p2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result p2

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-static {p2, v0, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 1011
    :cond_29
    monitor-exit p1

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method
