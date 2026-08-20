.class public Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SamsungBroadcastReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public static synthetic $r8$lambda$Jx-x4d-P8M4bTYdKln2y_vKcxrs(Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->lambda$recoverService$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$c6QI12hADyFmreV0jtnf3v-vw2o(Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->lambda$externalDeviceConnected$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 2

    .line 2444
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    return-void
.end method

.method private synthetic lambda$externalDeviceConnected$0(Ljava/lang/String;)V
    .registers 4

    .line 2447
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2448
    :try_start_7
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVirtualVibSoundHelper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VirtualVibSoundHelper;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 2449
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVirtualVibSoundHelper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VirtualVibSoundHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V

    .line 2451
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private synthetic lambda$recoverService$1()V
    .registers 3

    .line 2457
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2458
    :try_start_7
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SERVICE_RECOVERED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->cancelCurrentVibration(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 2459
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw p0
.end method


# virtual methods
.method public externalDeviceConnected(Ljava/lang/String;)V
    .registers 4

    .line 2446
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 2465
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 2467
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 2468
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmGoodCatchManager(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/samsung/android/server/audio/GoodCatchManager;

    move-result-object p1

    if-nez p1, :cond_6e

    .line 2469
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    new-instance p2, Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmContext(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "VibratorService"

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/server/audio/GoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmGoodCatchManager(Lcom/android/server/vibrator/VibratorManagerService;Lcom/samsung/android/server/audio/GoodCatchManager;)V

    goto :goto_6e

    :cond_27
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 2472
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4c

    .line 2473
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmContext(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmHqmHelper(Lcom/android/server/vibrator/VibratorManagerService;Lcom/samsung/android/server/vibrator/VibratorHqmHelper;)V

    .line 2474
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmHqmHelper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmContext(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->startLogging(Landroid/content/Context;)V

    goto :goto_6e

    :cond_4c
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 2475
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_69

    const-string p2, "com.sec.media.action.VIBRTOR_LOGGING"

    .line 2477
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5d

    goto :goto_69

    :cond_5d
    const-string p2, "com.android.launcher3.quickstep.closeall"

    .line 2498
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 2499
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->recoverService()V

    goto :goto_6e

    .line 2478
    :cond_69
    :goto_69
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$msendDataToHqm(Lcom/android/server/vibrator/VibratorManagerService;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public recoverService()V
    .registers 5

    .line 2456
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
