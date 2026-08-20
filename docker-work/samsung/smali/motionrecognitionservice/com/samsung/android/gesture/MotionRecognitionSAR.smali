.class public Lcom/samsung/android/gesture/MotionRecognitionSAR;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;,
        Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;,
        Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;,
        Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;,
        Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;,
        Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;,
        Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;,
        Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;,
        Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;
    }
.end annotation


# static fields
.field private static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final CLEAR_LEFT_RIGHT_CH:I = 0x64

.field private static final EXTRA_ICCSTATE:Ljava/lang/String; = "ss"

.field private static final GRIP_DETECT:I = 0x0

.field private static final GRIP_NONE:I = -0x1

.field private static final GRIP_RELEASE:I = 0x5

.field private static final GRIP_UNKNOWN_STATE:I = 0x12c

.field private static final INJECT_GRIP_SAR_MOTION_INIT:F = 300.0f

.field private static final INJECT_GRIP_SAR_MOTION_TRIGGER:F = 200.0f

.field private static final INJECT_GRIP_TRIGGER:F = 100.0f

.field private static final INJECT_SIM_TRAY_CHANGED:F = 1.0f

.field private static final MAIN_TUNER_GRIP_1CH:J = 0x200000000L

.field private static final MAIN_TUNER_GRIP_2CH:J = 0x400000000L

.field private static final RECEIVER_MEDIA_EXTRA:Ljava/lang/String; = "android.samsung.media.extra.receiver"

.field private static final RECEIVER_MEDIA_SAR:Ljava/lang/String; = "android.samsung.media.action.receiver_sar"

.field private static final SARDEVICE_CP:Ljava/lang/String; = "com.sec.intent.action.SARDEVICE_CP"

.field private static final SAR_ALL:I = 0x20

.field private static final SAR_DEVICE_GRIP:I = 0x1

.field private static final SAR_DEVICE_GRIP_2CH:I = 0x10000

.field private static final SAR_DEVICE_GRIP_SUB:I = 0x80000

.field private static final SAR_DEVICE_GRIP_SUB2:I = 0x8000000

.field private static final SAR_DEVICE_GRIP_SUB3:I = 0x20000000

.field private static final SAR_DEVICE_GRIP_SUB_MULTI_CH:I = 0x80

.field private static final SAR_DEVICE_GRIP_WIFI:I = 0x2000

.field private static final SAR_DEVICE_GRIP_WIFI_MULTI_CH:I = 0x40000000

.field private static final SAR_DEVICE_PROX:I = 0x2

.field private static final SAR_GRIP:I = 0x0

.field private static final SAR_GRIP_2CH:I = 0x10

.field private static final SAR_GRIP_SUB:I = 0x13

.field private static final SAR_GRIP_SUB2:I = 0x1b

.field private static final SAR_GRIP_SUB3:I = 0x1d

.field private static final SAR_GRIP_SUB_MULTI_CH:I = 0x7

.field private static final SAR_GRIP_WIFI:I = 0xd

.field private static final SAR_GRIP_WIFI_MULTI_CH:I = 0x1e

.field private static final SAR_PROX:I = 0x1

.field private static final SET_LEFT_CH:I = 0x66

.field private static final SET_RIGHT_CH:I = 0x65

.field private static final SIM_READY:Ljava/lang/String; = "READY"

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionService"

.field private static final TA_USB_STATE:I = 0x8000

.field private static final USB_OTG_CABLE_CONNECTION:Ljava/lang/String; = "com.samsung.UsbOtgCableConnection"

.field private static instance:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# instance fields
.field private mBigData:Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;

.field private final mContext:Landroid/content/Context;

.field private mEnabledGripMotion:Z

.field private mGripMotionSensor:Landroid/hardware/Sensor;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

.field private final mIsKoreaPhoneType:Z

.field mMainGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

.field mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

.field private final mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

.field private mProximitySAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

.field private final mSarReceiver:Landroid/content/BroadcastReceiver;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mSub1GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

.field mSub2GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

.field mSub3GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

.field private final mTriggerListener:Landroid/hardware/TriggerEventListener;

.field mWiFiGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBigData(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mBigData:Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGripMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsKoreaPhoneType(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mIsKoreaPhoneType:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrevRegistrations(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProximitySAR(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mProximitySAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEnabledGripMotion(Lcom/samsung/android/gesture/MotionRecognitionSAR;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mEnabledGripMotion:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallSARDeviceID(Lcom/samsung/android/gesture/MotionRecognitionSAR;ILjava/lang/String;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->callSARDeviceID(ILjava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableGripMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionSAR;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->enableGripMotionSensor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->setTransmitPower(JZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteSysfs(Lcom/samsung/android/gesture/MotionRecognitionSAR;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->writeSysfs(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    invoke-direct {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    .line 111
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    invoke-direct {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mIntentHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mProximitySAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    .line 561
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mMainGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 562
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub1GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 563
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub2GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 564
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub3GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 565
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mWiFiGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 583
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSarReceiver:Landroid/content/BroadcastReceiver;

    .line 749
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

    .line 996
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$3;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mTriggerListener:Landroid/hardware/TriggerEventListener;

    .line 841
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    .line 842
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    .line 843
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;

    invoke-direct {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mBigData:Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;

    .line 844
    const-string v1, "MotionRecognitionService"

    const-string v2, "[SAR] MotionRecognitionSAR()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->isKoreaPhoneType()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mIsKoreaPhoneType:Z

    .line 848
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "sensorSarThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 849
    .local v2, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 850
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mHandler:Landroid/os/Handler;

    .line 852
    if-eqz v0, :cond_1a9

    .line 853
    const-string v3, "[SAR] Check sensors."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 856
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Integer;

    const v4, 0x10018

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x10064

    .line 857
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v3, v7

    const/4 v5, 0x2

    const v8, 0x10065

    .line 858
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v5

    const v5, 0x10066

    .line 859
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v3, v8

    const/4 v5, 0x4

    const v9, 0x10027

    .line 860
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v5

    .line 856
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 862
    .local v3, "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v9, Lcom/samsung/android/gesture/MotionRecognitionSAR$$ExternalSyntheticLambda0;

    invoke-direct {v9, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 863
    invoke-interface {v5, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 864
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 866
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_ca
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, ", "

    if-eqz v10, :cond_102

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Sensor;

    .line 867
    .local v10, "sensor":Landroid/hardware/Sensor;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[SAR] Check: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Landroid/hardware/Sensor;->getType()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-direct {p0, v10}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->registerGripSensor(Landroid/hardware/Sensor;)V

    .line 869
    .end local v10    # "sensor":Landroid/hardware/Sensor;
    goto :goto_ca

    .line 871
    :cond_102
    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    .line 872
    .local v9, "prox":Landroid/hardware/Sensor;
    if-eqz v9, :cond_124

    .line 873
    invoke-direct {p0, v9}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->isSupportProxSar(Landroid/hardware/Sensor;)Z

    move-result v10

    if-eqz v10, :cond_124

    .line 874
    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v10, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 875
    .local v4, "gripSensor":Landroid/hardware/Sensor;
    new-instance v10, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    invoke-direct {v10, p0, v9, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Landroid/hardware/Sensor;)V

    iput-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mProximitySAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    .line 877
    const-string v10, "[SAR] Sensor configuration for PROX is done."

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    .end local v4    # "gripSensor":Landroid/hardware/Sensor;
    :cond_124
    iput-boolean v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mEnabledGripMotion:Z

    .line 882
    iget-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mIsKoreaPhoneType:Z

    if-nez v4, :cond_1a4

    .line 883
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    const v6, 0x1006b

    invoke-virtual {v4, v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    .line 884
    if-nez v4, :cond_141

    .line 885
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    .line 888
    :cond_141
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_170

    .line 889
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SAR] Motion for Grip: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_175

    .line 891
    :cond_170
    const-string v4, "[SAR] Motion for Grip: Not supported."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :goto_175
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    const v6, 0x1006d

    invoke-virtual {v4, v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v4

    .line 895
    .local v4, "gripNotifierSensor":Landroid/hardware/Sensor;
    if-eqz v4, :cond_1a3

    .line 896
    new-instance v6, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;)V

    .line 909
    .local v6, "gripNotifierListener":Landroid/hardware/SensorEventListener;
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6, v4, v8, v10}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v7

    .line 912
    .local v7, "gripNotifierEnable":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SAR] Enable grip notifier sensor : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    .end local v4    # "gripNotifierSensor":Landroid/hardware/Sensor;
    .end local v6    # "gripNotifierListener":Landroid/hardware/SensorEventListener;
    .end local v7    # "gripNotifierEnable":Z
    :cond_1a3
    goto :goto_1a9

    .line 915
    :cond_1a4
    const-string v4, "[SAR] Not support Grip Unknown Mode (KOR_PHONE)"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    .end local v0    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v3    # "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v9    # "prox":Landroid/hardware/Sensor;
    :cond_1a9
    :goto_1a9
    const-string v0, "[SAR] Sensor configuration is done."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->setupIntentFilter()V

    .line 922
    const-string v0, "[SAR] SarService is ready."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    return-void
.end method

.method private callSARDeviceID(ILjava/lang/String;II)V
    .registers 14
    .param p1, "deviceID"    # I
    .param p2, "callAction"    # Ljava/lang/String;
    .param p3, "slot"    # I
    .param p4, "deviceIDExt"    # I

    .line 692
    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 693
    .local v0, "on":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 694
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mBigData:Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;

    int-to-long v3, p1

    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->-$$Nest$msetStartTime(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;IJ)V

    goto :goto_16

    .line 696
    :cond_10
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mBigData:Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;

    int-to-long v3, p1

    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->-$$Nest$msetEndTime(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;IJ)V

    .line 698
    :goto_16
    const/4 v2, 0x0

    .local v2, "type":I
    :goto_17
    const/16 v3, 0x20

    if-ge v2, v3, :cond_b5

    .line 699
    const/4 v3, 0x1

    shl-int v4, v3, v2

    .line 700
    .local v4, "sar_type":I
    and-int v5, v4, p1

    if-eqz v5, :cond_b1

    .line 701
    const-string v5, "MotionRecognitionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SAR] id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cmd :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    sparse-switch v2, :sswitch_data_b6

    .line 743
    const-string v3, "MotionRecognitionService"

    const-string v5, "DEFAULT"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 722
    :sswitch_4f
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    monitor-enter v5

    .line 723
    :try_start_52
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_58
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_74

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    .line 724
    .local v7, "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    invoke-virtual {v7, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->getSarDevice(I)I

    move-result v8

    if-ne v8, v4, :cond_73

    .line 725
    if-eqz v0, :cond_70

    .line 726
    invoke-virtual {v7, v3, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->enable(II)V

    goto :goto_73

    .line 728
    :cond_70
    invoke-virtual {v7, v3, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->disable(II)V

    .line 730
    .end local v7    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    :cond_73
    :goto_73
    goto :goto_58

    .line 731
    :cond_74
    monitor-exit v5

    .line 732
    goto :goto_b1

    .line 731
    :catchall_76
    move-exception v1

    monitor-exit v5
    :try_end_78
    .catchall {:try_start_52 .. :try_end_78} :catchall_76

    throw v1

    .line 734
    :sswitch_79
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mProximitySAR:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    if-eqz v3, :cond_b1

    .line 735
    if-eqz v0, :cond_83

    .line 736
    invoke-virtual {v3, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->enable(I)V

    goto :goto_b1

    .line 738
    :cond_83
    invoke-virtual {v3, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->disable(I)V

    goto :goto_b1

    .line 708
    :sswitch_87
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    monitor-enter v3

    .line 709
    :try_start_8a
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_90
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ac

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    .line 710
    .local v6, "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    invoke-virtual {v6, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->getSarDevice(I)I

    move-result v7

    if-ne v7, v4, :cond_ab

    .line 711
    if-eqz v0, :cond_a8

    .line 712
    invoke-virtual {v6, v1, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->enable(II)V

    goto :goto_ab

    .line 714
    :cond_a8
    invoke-virtual {v6, v1, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->disable(II)V

    .line 716
    .end local v6    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    :cond_ab
    :goto_ab
    goto :goto_90

    .line 717
    :cond_ac
    monitor-exit v3

    .line 718
    goto :goto_b1

    .line 717
    :catchall_ae
    move-exception v1

    monitor-exit v3
    :try_end_b0
    .catchall {:try_start_8a .. :try_end_b0} :catchall_ae

    throw v1

    .line 698
    .end local v4    # "sar_type":I
    :cond_b1
    :goto_b1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_17

    .line 748
    .end local v2    # "type":I
    :cond_b5
    return-void

    :sswitch_data_b6
    .sparse-switch
        0x0 -> :sswitch_87
        0x1 -> :sswitch_79
        0x7 -> :sswitch_4f
        0xd -> :sswitch_87
        0x10 -> :sswitch_4f
        0x13 -> :sswitch_87
        0x1b -> :sswitch_87
        0x1d -> :sswitch_87
        0x1e -> :sswitch_4f
    .end sparse-switch
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 824
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->instance:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    if-nez v0, :cond_b

    .line 825
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->instance:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 827
    :cond_b
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->instance:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    return-object v0
.end method

.method private enableGripMotionSensor()V
    .registers 7

    .line 972
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_5

    .line 973
    return-void

    .line 976
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mEnabledGripMotion:Z

    const/4 v2, 0x1

    const-string v3, "MotionRecognitionService"

    if-nez v1, :cond_1b

    .line 977
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mTriggerListener:Landroid/hardware/TriggerEventListener;

    invoke-virtual {v1, v4, v0}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 978
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mEnabledGripMotion:Z

    .line 979
    const-string v0, "[SAR] Trigger start (enable)"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 981
    :cond_1b
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 982
    .local v0, "type":I
    const v1, 0x1006b

    if-ne v0, v1, :cond_59

    .line 983
    new-array v1, v2, [F

    const/high16 v2, 0x43960000    # 300.0f

    const/4 v4, 0x0

    aput v2, v1, v4

    .line 984
    .local v1, "data":[F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SAR] SBM init: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mGripMotionSensor:Landroid/hardware/Sensor;

    const/high16 v4, 0x10000000

    invoke-static {v2, v4, v1}, Landroid/hardware/SensorAdditionalInfo;->createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v2

    .line 987
    .local v2, "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v2}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 988
    const-string v4, "[SAR] injectSensorData failed "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    .end local v1    # "data":[F
    .end local v2    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_58
    goto :goto_5e

    .line 991
    :cond_59
    const-string v1, "[SAR] already Triggered"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    .end local v0    # "type":I
    :goto_5e
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .registers 2

    .line 834
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->instance:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    if-nez v0, :cond_b

    .line 835
    const-string v0, "MotionRecognitionService"

    const-string v1, "[SAR] MotionRecognitionSAR is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_b
    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->instance:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    return-object v0
.end method

.method private isKoreaPhoneType()Z
    .registers 5

    .line 942
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.feature.device_category_tablet"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MotionRecognitionService"

    if-eqz v0, :cond_17

    .line 944
    const-string v0, "[SAR] Device type is Tablet"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return v1

    .line 947
    :cond_17
    const-string v0, "[SAR] Device type is phone"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const-string v0, "ro.csc.country_code"

    const-string v3, "NONE"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 949
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, "countryCode":Ljava/lang/String;
    const-string v3, "KOREA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 951
    const-string v1, "[SAR] Country code is KOREA"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v1, 0x1

    return v1

    .line 954
    :cond_3b
    return v1
.end method

.method private isSupportProxSar(Landroid/hardware/Sensor;)Z
    .registers 6
    .param p1, "proximitySensor"    # Landroid/hardware/Sensor;

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] ProximitySensor Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Palm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_37

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Ear Hover Proximity Lite"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_37

    .line 968
    :cond_36
    return v2

    .line 960
    :cond_37
    :goto_37
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "A908"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 961
    const-string v0, "[SAR] Prox SAR for R3"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return v2

    .line 964
    :cond_47
    const-string v0, "[SAR] This type doesn\'t support Prox SAR"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$new$0(Ljava/util/List;Landroid/hardware/Sensor;)Z
    .registers 3
    .param p0, "filter"    # Ljava/util/List;
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 863
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private registerGripSensor(Landroid/hardware/Sensor;)V
    .registers 6
    .param p1, "s"    # Landroid/hardware/Sensor;

    .line 780
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 781
    .local v0, "type":I
    const v1, 0x10018

    if-ne v0, v1, :cond_2a

    .line 782
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mMainGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    if-nez v1, :cond_17

    .line 783
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    const/4 v2, 0x1

    const/high16 v3, 0x10000

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;II)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mMainGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 785
    :cond_17
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mMainGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->addSensor()V

    .line 786
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mMainGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$MainGripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 787
    .local v1, "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c1

    .line 788
    .end local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    :cond_2a
    const v1, 0x10064

    if-ne v0, v1, :cond_50

    .line 789
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub1GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    if-nez v1, :cond_3e

    .line 790
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    const/high16 v2, 0x80000

    const/16 v3, 0x80

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;II)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub1GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 792
    :cond_3e
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub1GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->addSensor()V

    .line 793
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub1GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$Sub1GripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 794
    .restart local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c1

    .line 795
    .end local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    :cond_50
    const v1, 0x10065

    if-ne v0, v1, :cond_74

    .line 796
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub2GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    if-nez v1, :cond_62

    .line 797
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    const/high16 v2, 0x8000000

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;I)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub2GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 799
    :cond_62
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub2GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->addSensor()V

    .line 800
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub2GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 801
    .restart local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c1

    .line 802
    .end local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    :cond_74
    const v1, 0x10066

    if-ne v0, v1, :cond_98

    .line 803
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub3GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    if-nez v1, :cond_86

    .line 804
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    const/high16 v2, 0x20000000

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;I)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub3GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 806
    :cond_86
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub3GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->addSensor()V

    .line 807
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSub3GripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SubGripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 808
    .restart local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c1

    .line 809
    .end local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    :cond_98
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const v2, 0x10027

    if-ne v1, v2, :cond_c1

    .line 810
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mWiFiGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    if-nez v1, :cond_b0

    .line 811
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    const/16 v2, 0x2000

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;II)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mWiFiGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 813
    :cond_b0
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mWiFiGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->addSensor()V

    .line 814
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mWiFiGripSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$WifiGripSensorWrapper;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V

    .line 815
    .restart local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    .end local v1    # "gripSensorWrapper":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    :cond_c1
    :goto_c1
    return-void
.end method

.method private setTransmitPower(JZ)V
    .registers 8
    .param p1, "device"    # J
    .param p3, "enable"    # Z

    .line 752
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

    const-string v1, "MotionRecognitionService"

    if-nez v0, :cond_17

    .line 753
    const-string v0, "[SAR] Try to get SemTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v0, "isemtelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

    .line 756
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

    if-nez v0, :cond_21

    .line 757
    const-string v0, "[SAR] SemTelephonyService is null."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return-void

    .line 761
    :cond_21
    const-wide v2, 0x200000000L

    cmp-long v2, p1, v2

    const-string v3, " : "

    if-gez v2, :cond_4f

    .line 762
    long-to-int v2, p1

    :try_start_2d
    invoke-interface {v0, v2, p3}, Lcom/android/internal/telephony/ISemTelephony;->setTransmitPowerWithFlag(IZ)Z

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SAR] set setTransmitPowerWithFlag  value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 765
    :cond_4f
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ISemTelephony;->setTransmitPowerExt(JZ)Z

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SAR] set setTransmitPowerExt  value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_70} :catch_71

    .line 770
    :goto_70
    goto :goto_77

    .line 768
    :catch_71
    move-exception v0

    .line 769
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "[SAR] RemoteException occurs in setTransmitPower"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_77
    const/4 v0, 0x1

    if-eqz p3, :cond_80

    .line 772
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mBigData:Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;

    invoke-static {v1, v0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->-$$Nest$msetStartTime(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;IJ)V

    goto :goto_85

    .line 774
    :cond_80
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mBigData:Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;

    invoke-static {v1, v0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->-$$Nest$msetEndTime(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;IJ)V

    .line 776
    :goto_85
    return-void
.end method

.method private setupIntentFilter()V
    .registers 8

    .line 926
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 927
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.intent.action.SARDEVICE_CP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 928
    const-string v1, "android.samsung.media.action.receiver_sar"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 929
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 930
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 931
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 932
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 933
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 934
    const-string v1, "com.samsung.UsbOtgCableConnection"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 935
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 936
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 937
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mSarReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 938
    const-string v1, "MotionRecognitionService"

    const-string v2, "[SAR] Intent registration is done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    return-void
.end method

.method private writeSysfs(Ljava/lang/String;I)V
    .registers 7
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 571
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_39

    .line 572
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_e

    .line 573
    const/16 v1, 0x31

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_13

    .line 575
    :cond_e
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 577
    :goto_13
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EARJACK] write state :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_2f

    .line 578
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_39

    .line 580
    .end local v0    # "out":Ljava/io/FileOutputStream;
    goto :goto_3d

    .line 571
    .restart local v0    # "out":Ljava/io/FileOutputStream;
    :catchall_2f
    move-exception v1

    :try_start_30
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v2

    :try_start_35
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .end local p1    # "file":Ljava/lang/String;
    .end local p2    # "state":I
    :goto_38
    throw v1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_39} :catch_39

    .line 578
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .restart local p1    # "file":Ljava/lang/String;
    .restart local p2    # "state":I
    :catch_39
    move-exception v0

    .line 579
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 581
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3d
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 1044
    :try_start_1
    const-string v0, "\n===== SAR Service Previous Registrations ====="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    const-string v0, "===== SAR + RCV Intent ====="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mIntentHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1048
    const-string v0, "\n===== Latest SAR Intent ======"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mIntentHistory:Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->miniDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 1050
    monitor-exit p0

    return-void

    .line 1043
    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getUsage()Ljava/lang/String;
    .registers 2

    .line 1041
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR;->mBigData:Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->-$$Nest$mgetUsage(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateSpeakerStatus(Z)V
    .registers 2
    .param p1, "speaker"    # Z

    .line 1035
    return-void
.end method
