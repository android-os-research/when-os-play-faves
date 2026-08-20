.class public final Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VibrationThreadCallbacks"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 2

    .line 1409
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    return-void
.end method


# virtual methods
.method public cancelSyncedVibration()V
    .registers 1

    .line 1427
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->cancelSynced()V

    return-void
.end method

.method public noteVibratorOff(I)V
    .registers 4

    .line 1452
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmBatteryStatsService(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V

    const/16 p0, 0x54

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1453
    invoke-static {p0, p1, v0, v1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_10

    :catch_10
    return-void
.end method

.method public noteVibratorOn(IJ)V
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_7

    return-void

    :cond_7
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p2, v0

    if-nez v0, :cond_12

    const-wide/16 p2, 0x1388

    :cond_12
    move-wide v4, p2

    .line 1441
    :try_start_13
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmBatteryStatsService(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p0

    invoke-interface {p0, p1, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    const/16 v0, 0x54

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v1, p1

    .line 1442
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IJ)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method

.method public onVibrationCompleted(JLcom/android/server/vibrator/Vibration$Status;)V
    .registers 7

    const-string v0, "VibratorManagerService"

    .line 1463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " finished with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1466
    :try_start_25
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v1

    .line 1467
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long p1, v1, p1

    if-nez p1, :cond_42

    .line 1468
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0, p3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mreportFinishedVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 1470
    :cond_42
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_25 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public onVibrationThreadReleased(J)V
    .registers 10

    const-string v0, "VibratorManagerService"

    const-string v1, "VibrationThread released after finished vibration"

    .line 1476
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_e
    const-string v1, "VibratorManagerService"

    const-string v2, "Processing VibrationThread released callback"

    .line 1480
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v1

    .line 1483
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_59

    const-string v1, "VibratorManagerService"

    const-string v2, "VibrationId mismatch on release. expected=%d, released=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1484
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v5

    .line 1486
    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v4

    .line 1484
    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_59
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)V

    .line 1489
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmNextVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object p1

    if-eqz p1, :cond_85

    .line 1490
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmNextVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object p1

    .line 1491
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmNextVibration(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)V

    .line 1492
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p2, p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mstartVibrationOnThreadLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object p2

    .line 1493
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq p2, v1, :cond_85

    .line 1494
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 1497
    :cond_85
    monitor-exit v0

    return-void

    :catchall_87
    move-exception p0

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_e .. :try_end_89} :catchall_87

    throw p0
.end method

.method public prepareSyncedVibration(J[I)Z
    .registers 6

    .line 1413
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCapabilities(Lcom/android/server/vibrator/VibratorManagerService;)J

    move-result-wide v0

    and-long/2addr v0, p1

    cmp-long p1, v0, p1

    if-eqz p1, :cond_d

    const/4 p0, 0x0

    return p0

    .line 1417
    :cond_d
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->prepareSynced([I)Z

    move-result p0

    return p0
.end method

.method public triggerSyncedVibration(J)Z
    .registers 3

    .line 1422
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->triggerSynced(J)Z

    move-result p0

    return p0
.end method
