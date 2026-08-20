.class public Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

.field public final synthetic val$this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;


# direct methods
.method public static synthetic $r8$lambda$xOFOuxTEFbTmEVBJw8Ek2kLmLso(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2;IIILcom/android/server/sensorprivacy/SensorState;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2;->lambda$onReceive$0(IIILcom/android/server/sensorprivacy/SensorState;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Lcom/android/server/sensorprivacy/SensorPrivacyService;)V
    .registers 3

    .line 317
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    iput-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2;->val$this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(IIILcom/android/server/sensorprivacy/SensorState;)V
    .registers 12

    .line 322
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p4}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    move-result v3

    .line 323
    invoke-virtual {p4}, Lcom/android/server/sensorprivacy/SensorState;->getLastChange()J

    move-result-wide v4

    const/4 v1, 0x5

    const/4 v6, 0x1

    move v2, p3

    .line 322
    invoke-static/range {v0 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$mlogSensorPrivacyToggle(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIZJZ)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 320
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$fgetmSensorPrivacyStateController(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    move-result-object p1

    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2;)V

    invoke-virtual {p1, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->forEachState(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;)V

    .line 326
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    sget-object p1, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$mremoveSensorUseReminderNotification(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;I)V

    return-void
.end method
