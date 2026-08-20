.class public Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;
.super Ljava/lang/Thread;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeKeyLongPressControlThread"
.end annotation


# instance fields
.field public final DURATION_LONG_PRESS:I

.field public final DURATION_REPEAT:I

.field public final MAX_REPEAT:I

.field public mDirection:I

.field public mFlags:I

.field public mNeedToRun:Z

.field public mOpPackageName:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPm:Landroid/os/PowerManager;

.field public mSleepDuration:I

.field public mStream:I

.field public final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 3191
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3179
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_HOME_IOT:Z

    const/16 v1, 0x12c

    if-eqz v0, :cond_d

    move v2, v1

    goto :goto_f

    :cond_d
    const/16 v2, 0x1f4

    :goto_f
    iput v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->DURATION_LONG_PRESS:I

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/16 v1, 0x32

    .line 3180
    :goto_16
    iput v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->DURATION_REPEAT:I

    if-eqz v0, :cond_1d

    const/16 v0, 0x22

    goto :goto_1f

    :cond_1d
    const/16 v0, 0xc8

    .line 3181
    :goto_1f
    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->MAX_REPEAT:I

    .line 3192
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mPm:Landroid/os/PowerManager;

    .line 3193
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mPackageName:Ljava/lang/String;

    .line 3194
    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mOpPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final isScreenOn()Z
    .registers 3

    .line 3206
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 3212
    :cond_a
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmDesktopModeHelper(Lcom/android/server/media/MediaSessionService;)Lcom/samsung/android/server/audio/DesktopModeHelper;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmDesktopModeHelper(Lcom/android/server/media/MediaSessionService;)Lcom/samsung/android/server/audio/DesktopModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DesktopModeHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_23
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    if-nez v0, :cond_2e

    :cond_2d
    return v1

    .line 3216
    :cond_2e
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManagerInternal;->isInternalDisplayOff()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public run()V
    .registers 15

    const/4 v0, 0x0

    move v1, v0

    .line 3225
    :goto_2
    :try_start_2
    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_8

    .line 3229
    :catch_8
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3230
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_25

    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_HOME_IOT:Z

    if-nez v3, :cond_25

    const-string p0, "MediaSessionService"

    const-string/jumbo v0, "screen is on"

    .line 3231
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    monitor-exit v2

    goto :goto_76

    .line 3235
    :cond_25
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mNeedToRun:Z

    if-eqz v3, :cond_75

    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->MAX_REPEAT:I

    if-lt v1, v3, :cond_2e

    goto :goto_75

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    const-string v3, "MediaSessionService"

    .line 3240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "volumekey long press repeat:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->DURATION_LONG_PRESS:I

    if-ne v3, v4, :cond_51

    .line 3243
    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->DURATION_REPEAT:I

    iput v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    .line 3246
    :cond_51
    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mFlags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_5a

    const/4 v3, 0x1

    move v13, v3

    goto :goto_5b

    :cond_5a
    move v13, v0

    .line 3247
    :goto_5b
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mOpPackageName:Ljava/lang/String;

    iget-object v3, v4, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmSystemServerPid(Lcom/android/server/media/MediaSessionService;)I

    move-result v7

    const/16 v8, 0x3e8

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mStream:I

    iget v11, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mDirection:I

    iget v12, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mFlags:I

    invoke-static/range {v4 .. v13}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchAdjustVolumeLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V

    .line 3251
    monitor-exit v2

    goto :goto_2

    .line 3236
    :cond_75
    :goto_75
    monitor-exit v2

    :goto_76
    return-void

    :catchall_77
    move-exception p0

    .line 3251
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_11 .. :try_end_79} :catchall_77

    throw p0
.end method

.method public updateInfoLocked(IIIZ)V
    .registers 5

    .line 3198
    iput p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mStream:I

    .line 3199
    iput p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mDirection:I

    .line 3200
    iget p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->DURATION_LONG_PRESS:I

    iput p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    .line 3201
    iput-boolean p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mNeedToRun:Z

    .line 3202
    iput p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mFlags:I

    return-void
.end method
