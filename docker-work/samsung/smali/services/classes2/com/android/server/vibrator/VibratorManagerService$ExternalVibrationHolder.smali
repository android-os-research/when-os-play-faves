.class public final Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExternalVibrationHolder"
.end annotation


# instance fields
.field public final externalVibration:Landroid/os/ExternalVibration;

.field public mEndTimeDebug:J

.field public mEndUptimeMillis:J

.field public final mStartTimeDebug:J

.field public final mStartUptimeMillis:J

.field public mStatus:Lcom/android/server/vibrator/Vibration$Status;

.field public scale:I

.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;)V
    .registers 3

    .line 1571
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1572
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    const/4 p1, 0x0

    .line 1573
    iput p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    .line 1574
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStartUptimeMillis:J

    .line 1575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStartTimeDebug:J

    .line 1576
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1590
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1591
    :try_start_7
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    if-eqz v1, :cond_1e

    const-string v1, "VibratorManagerService"

    const-string v2, "External vibration finished because binder died"

    .line 1593
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/Vibration$Status;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendExternalVibrateLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 1598
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public end(Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 4

    .line 1580
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq v0, v1, :cond_7

    return-void

    .line 1584
    :cond_7
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 1585
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mEndUptimeMillis:J

    .line 1586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mEndTimeDebug:J

    return-void
.end method

.method public getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;
    .registers 19

    move-object/from16 v0, p0

    .line 1602
    iget-wide v1, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mEndUptimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_d

    const-wide/16 v1, -0x1

    goto :goto_10

    :cond_d
    iget-wide v3, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStartUptimeMillis:J

    sub-long/2addr v1, v3

    :goto_10
    move-wide v8, v1

    .line 1603
    new-instance v1, Lcom/android/server/vibrator/Vibration$DebugInfo;

    iget-wide v4, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStartTimeDebug:J

    iget-wide v6, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mEndTimeDebug:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v2, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    int-to-float v12, v2

    iget-object v2, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 1606
    invoke-virtual {v2}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v13

    iget-object v2, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v2}, Landroid/os/ExternalVibration;->getUid()I

    move-result v14

    iget-object v2, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 1607
    invoke-virtual {v2}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    move-object v3, v1

    move-object/from16 v17, v0

    invoke-direct/range {v3 .. v17}, Lcom/android/server/vibrator/Vibration$DebugInfo;-><init>(JJJLandroid/os/CombinedVibration;Landroid/os/CombinedVibration;FLandroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/Vibration$Status;)V

    return-object v1
.end method
