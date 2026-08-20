.class Lcom/samsung/android/gesture/PocketModeEvent$8;
.super Landroid/content/BroadcastReceiver;
.source "PocketModeEvent.java"


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

    .line 1918
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1922
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1924
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->checkSettingEnable()V

    .line 1925
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmIsSettingEnabled(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1926
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PocketModeSetting is off "

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    return-void

    .line 1930
    :cond_1b
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketDeviceManager;->isFactoryBinary()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1931
    return-void

    .line 1934
    :cond_26
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ")"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6b

    .line 1935
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_BOOT_COMPLETED("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    const-wide/high16 v7, 0x4016000000000000L    # 5.5

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "%.1f"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "h"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->handleBootComplete()V

    .line 1940
    :cond_6b
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 1941
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    const-string v3, "why"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 1942
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setWakeUpReason(I)V

    .line 1943
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_SCREEN_ON(by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v4}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmIsInitalized(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v1

    if-nez v1, :cond_b8

    return-void

    .line 1946
    :cond_b8
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->handleScreenOn()V

    goto/16 :goto_2e4

    .line 1948
    :cond_bf
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 1949
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_SCREEN_OFF"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmIsInitalized(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v1

    if-nez v1, :cond_d9

    return-void

    .line 1953
    :cond_d9
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->handleScreenOff()V

    goto/16 :goto_2e4

    .line 1955
    :cond_e0
    const-string v1, "com.samsung.intent.action.KSO_CLICK_OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_100

    .line 1956
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v2, v5, v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1957
    const/4 v1, 0x5

    sput v1, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    .line 1958
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT_KSO_CLICK_OK"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e4

    .line 1959
    :cond_100
    const-string v1, "com.samsung.android.intent.action.IRIS_LED_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 1960
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->TURN_ON:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputirisState(Lcom/samsung/android/gesture/PocketModeEvent;Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;)V

    .line 1961
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT_KSO_IRIS_LED_ON"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e4

    .line 1962
    :cond_11a
    const-string v1, "com.samsung.android.intent.action.IRIS_LED_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_147

    .line 1963
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetirisState(Lcom/samsung/android/gesture/PocketModeEvent;)Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->TURN_ON:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    if-ne v1, v2, :cond_2e4

    .line 1964
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->TURN_OFF:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputirisState(Lcom/samsung/android/gesture/PocketModeEvent;Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;)V

    .line 1965
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmIrisLedOffTime(Lcom/samsung/android/gesture/PocketModeEvent;J)V

    .line 1966
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT_KSO_IRIS_LED_OFF"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e4

    .line 1968
    :cond_147
    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_185

    .line 1969
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HQM DATA REQUEST"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v1

    if-eqz v1, :cond_2e4

    .line 1971
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketBigDataManager;->printBigData()V

    .line 1973
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    const-string v4, "PKMD"

    const-string v5, "sm"

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/samsung/android/gesture/PocketBigDataManager;->sendHWParamServer(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 1974
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketBigDataManager;->initialize()V

    goto/16 :goto_2e4

    .line 1976
    :cond_185
    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_196

    .line 1977
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    const-string v2, "INTENT_SCREEN_ON_BY_PROXIMITY"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mstopVirtualPocketOperation(Lcom/samsung/android/gesture/PocketModeEvent;Ljava/lang/String;)V

    goto/16 :goto_2e4

    .line 1978
    :cond_196
    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a7

    .line 1979
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    const-string v2, "INTENT_SCREEN_OFF_BY_PROXIMITY"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mstopVirtualPocketOperation(Lcom/samsung/android/gesture/PocketModeEvent;Ljava/lang/String;)V

    goto/16 :goto_2e4

    .line 1980
    :cond_1a7
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1be

    .line 1981
    const/16 v1, -0x64

    const-string v2, "temperature"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1982
    .local v1, "temperature":I
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2, v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputbatteryTemp(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 1983
    .end local v1    # "temperature":I
    goto/16 :goto_2e4

    :cond_1be
    const-string v1, "com.samsung.android.bixby.intent.action.POCKET_MODE_CHECK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d6

    .line 1984
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT_BIXBY_UPDATED"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v1, v4}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmIsOccurTouch(Lcom/samsung/android/gesture/PocketModeEvent;Z)V

    goto/16 :goto_2e4

    .line 1986
    :cond_1d6
    const-string v1, "com.samsung.keyguard.FACE_UNLOCK_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_207

    .line 1987
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT_ACTION_FACE_UNLOCK"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetisRunning(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v1

    if-ne v1, v4, :cond_2e4

    .line 1989
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->handlePocketOut()V

    .line 1990
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v1

    if-ne v1, v4, :cond_2e4

    .line 1991
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->resetPocketProxySensor()V

    goto/16 :goto_2e4

    .line 1994
    :cond_207
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_232

    .line 1995
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT_ACTION_USER_SWITCHED"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->checkSensorType()V

    .line 1997
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmIsSettingEnabled(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmIsSettingEnabledPrev(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v2

    if-eq v1, v2, :cond_2e4

    .line 1998
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->checkRegisterProximitySensor()V

    goto/16 :goto_2e4

    .line 2000
    :cond_232
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_285

    .line 2001
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "INTENT_ACTION_USER_PRESENT"

    invoke-static {v1, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    if-eq v1, v4, :cond_272

    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    if-eq v1, v2, :cond_272

    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    const/4 v2, 0x4

    if-ne v1, v2, :cond_25a

    goto :goto_272

    .line 2006
    :cond_25a
    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v2, 0x14c

    if-ne v1, v2, :cond_2e4

    .line 2007
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketSensitivityManager;->isDualFlipEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_2e4

    .line 2008
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketSensitivityManager;->disableDualFlipMode()V

    goto :goto_2e4

    .line 2003
    :cond_272
    :goto_272
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->END:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setSensitivityState(Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;)V

    .line 2004
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "END_INSENSITIVE_MODE"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e4

    .line 2010
    :cond_285
    const-string v1, "com.android.systemui.edgelighting.start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b9

    .line 2011
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT_EDGE_LIGHTING_SHOW"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketDeviceManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_2e4

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetelState()Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->NONE:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    if-ne v1, v2, :cond_2e4

    .line 2013
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->SHOWN:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mchangeEdgeLightingState(Lcom/samsung/android/gesture/PocketModeEvent;Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;)V

    .line 2014
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v5, v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_2e4

    .line 2016
    :cond_2b9
    const-string v1, "com.android.systemui.edgelighting.stop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2db

    .line 2017
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT_EDGE_LIGHTING_REMOVE"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->NONE:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mchangeEdgeLightingState(Lcom/samsung/android/gesture/PocketModeEvent;Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;)V

    .line 2019
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v5, v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_2e4

    .line 2021
    :cond_2db
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "We don\'t use this"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    :cond_2e4
    :goto_2e4
    return-void
.end method
