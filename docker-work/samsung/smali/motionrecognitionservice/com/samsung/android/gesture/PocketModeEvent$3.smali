.class Lcom/samsung/android/gesture/PocketModeEvent$3;
.super Ljava/lang/Object;
.source "PocketModeEvent.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketModeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketModeEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketModeEvent;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketModeEvent;

    .line 1038
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1074
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1042
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 1045
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ge v0, v3, :cond_a3

    .line 1046
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    or-int/2addr v0, v2

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 1047
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    const/16 v3, 0x8

    if-lt v0, v3, :cond_2b

    .line 1048
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetlightReCheckCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputlightReCheckCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 1050
    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetlightReCheckCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_84

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    const/16 v3, 0xb

    if-ne v0, v3, :cond_84

    .line 1051
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketLogManager;->getIsDumpWrite()I

    move-result v0

    if-nez v0, :cond_7f

    .line 1052
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    new-instance v11, Lcom/samsung/android/gesture/PocketDumpRecogInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v3

    add-int/lit16 v6, v3, 0x3e8

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v7

    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v8

    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v9

    sget v10, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/gesture/PocketDumpRecogInfo;-><init>(JIIIII)V

    invoke-virtual {v0, v11}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 1053
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 1055
    :cond_7f
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->handlePocketIn()V

    .line 1057
    :cond_84
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v1, :cond_bc

    .line 1058
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v0, v2, :cond_9d

    .line 1059
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 1061
    :cond_9d
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->handlePocketOut()V

    goto :goto_bc

    .line 1065
    :cond_a3
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/lit8 v0, v0, -0x2

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 1066
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v0, v2, :cond_b7

    .line 1067
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 1069
    :cond_b7
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->handlePocketOut()V

    .line 1071
    :cond_bc
    :goto_bc
    return-void
.end method
