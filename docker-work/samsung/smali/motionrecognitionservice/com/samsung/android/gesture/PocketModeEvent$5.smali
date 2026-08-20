.class Lcom/samsung/android/gesture/PocketModeEvent$5;
.super Ljava/lang/Object;
.source "PocketModeEvent.java"

# interfaces
.implements Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;


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

    .line 1098
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent$5;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLidStateChanged(JI)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "lidState"    # I

    .line 1101
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LID state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setPocketSensorReceived(Z)V

    .line 1103
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setPocketPosSensorReceived(Z)V

    .line 1105
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->resetPocketProxySensor()V

    .line 1107
    const-wide/16 v0, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne p3, v3, :cond_47

    .line 1108
    sget v3, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    if-ne v3, v2, :cond_6a

    .line 1109
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_6a

    .line 1112
    :cond_47
    if-nez p3, :cond_6a

    .line 1113
    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    if-ne v4, v2, :cond_6a

    .line 1114
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v2

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v0, v1}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1115
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->isDualFlipEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_6a

    .line 1116
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->disableDualFlipMode()V

    .line 1119
    :cond_6a
    :goto_6a
    return-void
.end method
