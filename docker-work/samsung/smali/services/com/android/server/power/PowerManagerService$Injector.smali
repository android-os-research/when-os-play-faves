.class Lcom/android/server/power/PowerManagerService$Injector;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAmbientDisplayConfiguration(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .registers 2

    .line 1407
    new-instance p0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public createAmbientDisplaySuppressionController(Landroid/content/Context;)Lcom/android/server/power/AmbientDisplaySuppressionController;
    .registers 2

    .line 1412
    new-instance p0, Lcom/android/server/power/AmbientDisplaySuppressionController;

    invoke-direct {p0, p1}, Lcom/android/server/power/AmbientDisplaySuppressionController;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public createAppOpsManager(Landroid/content/Context;)Landroid/app/AppOpsManager;
    .registers 2

    .line 1466
    const-class p0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public createBatterySaverController(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverController;
    .registers 11

    .line 1388
    new-instance p0, Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/batterysaver/BatterySaverController;-><init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    return-object p0
.end method

.method public createBatterySaverPolicy(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .registers 4

    .line 1382
    new-instance p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    return-object p0
.end method

.method public createBatterySaverStateMachine(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
    .registers 4

    .line 1394
    new-instance p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V

    return-object p0
.end method

.method public createClock()Lcom/android/server/power/PowerManagerService$Clock;
    .registers 2

    .line 1434
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$Injector$2;-><init>(Lcom/android/server/power/PowerManagerService$Injector;)V

    return-object v0
.end method

.method public createCoverManager(Landroid/content/Context;)Lcom/samsung/android/cover/CoverManager;
    .registers 2

    .line 1471
    new-instance p0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {p0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 4

    .line 1454
    new-instance p0, Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-object p0
.end method

.method public createInattentiveSleepWarningController()Lcom/android/server/power/InattentiveSleepWarningController;
    .registers 1

    .line 1416
    new-instance p0, Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-direct {p0}, Lcom/android/server/power/InattentiveSleepWarningController;-><init>()V

    return-object p0
.end method

.method public createLowPowerStandbyController(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/power/LowPowerStandbyController;
    .registers 4

    .line 1462
    new-instance p0, Lcom/android/server/power/LowPowerStandbyController;

    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$Injector$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/power/LowPowerStandbyController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/LowPowerStandbyController$Clock;)V

    return-object p0
.end method

.method public createNativeWrapper()Lcom/android/server/power/PowerManagerService$NativeWrapper;
    .registers 1

    .line 1398
    new-instance p0, Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;-><init>()V

    return-object p0
.end method

.method public createNotifier(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/ScreenUndimDetector;Ljava/util/concurrent/Executor;)Lcom/android/server/power/Notifier;
    .registers 19

    .line 1369
    new-instance v9, Lcom/android/server/power/Notifier;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/ScreenUndimDetector;Ljava/util/concurrent/Executor;)V

    return-object v9
.end method

.method public createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .registers 3

    .line 1375
    new-instance p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 1376
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmSuspendBlockers(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public createSystemPropertiesWrapper()Lcom/android/server/power/SystemPropertiesWrapper;
    .registers 2

    .line 1420
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$Injector$1;-><init>(Lcom/android/server/power/PowerManagerService$Injector;)V

    return-object v0
.end method

.method public createWirelessChargerDetector(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)Lcom/android/server/power/WirelessChargerDetector;
    .registers 4

    .line 1403
    new-instance p0, Lcom/android/server/power/WirelessChargerDetector;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    return-object p0
.end method

.method public getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .registers 2

    const-string p0, "activity"

    .line 1490
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    return-object p0
.end method

.method public getNotificationManager()Landroid/app/INotificationManager;
    .registers 1

    .line 1484
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    return-object p0
.end method

.method public getWindowManagerService()Lcom/android/server/wm/WindowManagerService;
    .registers 1

    const-string/jumbo p0, "window"

    .line 1478
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 1477
    invoke-static {p0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public invalidateIsInteractiveCaches()V
    .registers 1

    .line 1458
    invoke-static {}, Landroid/os/PowerManager;->invalidateIsInteractiveCaches()V

    return-void
.end method
