.class abstract Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;
.super Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;
.source "SemSarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseHeadSarManager"
.end annotation


# instance fields
.field protected mBaseHeadSarIntentFilter:Landroid/content/IntentFilter;

.field mBaseHeadSarReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsCloseToProximitySensor:Z

.field protected mIsProximitySensorMonitorEnabled:Z

.field protected mIsRcvEnabled:Z

.field protected mProximitySensor:Landroid/hardware/Sensor;

.field protected mProximityThreshold:F

.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V
    .registers 4

    .line 447
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 448
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    const/4 p2, 0x0

    .line 438
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsRcvEnabled:Z

    .line 439
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsCloseToProximitySensor:Z

    .line 440
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mIsProximitySensorMonitorEnabled:Z

    .line 458
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mBaseHeadSarReceiver:Landroid/content/BroadcastReceiver;

    .line 449
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/hardware/SensorManager;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz p2, :cond_26

    .line 450
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p2

    goto :goto_27

    :cond_26
    const/4 p2, 0x0

    :goto_27
    iput p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mProximityThreshold:F

    .line 451
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mBaseHeadSarIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.samsung.media.action.receiver_sar"

    .line 452
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mBaseHeadSarIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mBaseHeadSarReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mBaseHeadSarIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p2, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 455
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetHEAD_SAR_SUPPORT_BY_PROXIMITY(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$mcheckRfMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Z)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fputmIsRfTestMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Z)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public abstract triggerReceiverRoutine(Z)V
.end method

.method public updateWifiState(Landroid/content/Context;I)V
    .registers 3

    .line 479
    invoke-super {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->updateWifiState(Landroid/content/Context;I)V

    .line 480
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->checkAndSetListener(Z)V

    return-void
.end method
