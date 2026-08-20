.class public final Lcom/android/server/audio/AudioService$AudioServiceInternal;
.super Landroid/media/AudioManagerInternal;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioServiceInternal"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 11558
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/media/AudioManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public addAssistantServiceUid(I)V
    .registers 9

    .line 11596
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0x2c

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public getRingerModeInternal()I
    .registers 1

    .line 11572
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result p0

    return p0
.end method

.method public removeAssistantServiceUid(I)V
    .registers 9

    .line 11602
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0x2d

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public setAccessibilityServiceUids(Landroid/util/IntArray;)V
    .registers 10

    .line 11633
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAccessibilityServiceUidsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11634
    :try_start_7
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-nez v1, :cond_14

    .line 11635
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;[I)V

    goto :goto_58

    .line 11637
    :cond_14
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    array-length v1, v1

    .line 11638
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v4

    if-eq v1, v4, :cond_2c

    goto :goto_2e

    :cond_2c
    move v1, v2

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v1, v3

    :goto_2f
    if-nez v1, :cond_4c

    .line 11640
    :goto_31
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_4c

    .line 11641
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v5

    aget v5, v5, v2

    if-eq v4, v5, :cond_49

    goto :goto_4d

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_4c
    move v3, v1

    :goto_4d
    if-eqz v3, :cond_58

    .line 11648
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;[I)V

    .line 11651
    :cond_58
    :goto_58
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 11653
    monitor-exit v0

    return-void

    :catchall_6a
    move-exception p0

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_7 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public setActiveAssistantServicesUids(Landroid/util/IntArray;)V
    .registers 9

    .line 11608
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11609
    :try_start_7
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-nez v1, :cond_17

    .line 11610
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {}, Lcom/android/server/audio/AudioService;->-$$Nest$sfgetNO_ACTIVE_ASSISTANT_SERVICE_UIDS()[I

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;[I)V

    goto :goto_5b

    .line 11612
    :cond_17
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    array-length v1, v1

    .line 11613
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v4

    if-eq v1, v4, :cond_2f

    goto :goto_31

    :cond_2f
    move v1, v2

    goto :goto_32

    :cond_31
    :goto_31
    move v1, v3

    :goto_32
    if-nez v1, :cond_4f

    .line 11615
    :goto_34
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_4f

    .line 11616
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v5

    aget v5, v5, v2

    if-eq v4, v5, :cond_4c

    goto :goto_50

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_4f
    move v3, v1

    :goto_50
    if-eqz v3, :cond_5b

    .line 11623
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;[I)V

    .line 11626
    :cond_5b
    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_7 .. :try_end_5c} :catchall_6d

    .line 11627
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :catchall_6d
    move-exception p0

    .line 11626
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public setInputMethodServiceUid(I)V
    .registers 4

    .line 11661
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmInputMethodServiceUidLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11662
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmInputMethodServiceUid(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eq v1, p1, :cond_1d

    .line 11663
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setCurrentImeUid(I)I

    .line 11664
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmInputMethodServiceUid(Lcom/android/server/audio/AudioService;I)V

    .line 11666
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V
    .registers 3

    .line 11561
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmRingerModeDelegate(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)V

    .line 11562
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmRingerModeDelegate(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 11563
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 11564
    :try_start_14
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateRingerAndZenModeAffectedStreams(Lcom/android/server/audio/AudioService;)Z

    .line 11565
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_24

    .line 11566
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result p1

    const-string v0, "AS.AudioService.setRingerModeDelegate"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->setRingerModeInternal(ILjava/lang/String;)V

    goto :goto_27

    :catchall_24
    move-exception p0

    .line 11565
    :try_start_25
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0

    :cond_27
    :goto_27
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .registers 3

    .line 11577
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    return-void
.end method

.method public silenceRingerModeInternal(Ljava/lang/String;)V
    .registers 2

    .line 11582
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->silenceRingerModeInternal(Ljava/lang/String;)V

    return-void
.end method

.method public updateRingerModeAffectedStreamsInternal()V
    .registers 4

    .line 11587
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11588
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateRingerAndZenModeAffectedStreams(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 11589
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result p0

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$msetRingerModeInt(Lcom/android/server/audio/AudioService;IZ)V

    .line 11591
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p0
.end method
