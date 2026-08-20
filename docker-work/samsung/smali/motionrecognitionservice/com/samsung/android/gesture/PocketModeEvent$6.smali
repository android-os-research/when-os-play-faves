.class Lcom/samsung/android/gesture/PocketModeEvent$6;
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

    .line 1122
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent$6;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLidStateChanged(JI)V
    .registers 10
    .param p1, "whenNanos"    # J
    .param p3, "lidState"    # I

    .line 1125
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

    .line 1126
    const/4 v0, 0x3

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-nez p3, :cond_58

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v4

    if-ne v4, v1, :cond_58

    .line 1127
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1128
    sget-boolean v4, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v4, v1, :cond_47

    .line 1129
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Popup release by LID event"

    invoke-static {v1, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1132
    :cond_47
    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    if-ne v1, v0, :cond_7d

    .line 1133
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_7d

    .line 1136
    :cond_58
    if-ne p3, v1, :cond_7d

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 1137
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1138
    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    if-ne v1, v0, :cond_7d

    .line 1139
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1142
    :cond_7d
    :goto_7d
    return-void
.end method
