.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApSmartMHS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemWifiApSmartMHSBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V
    .registers 2

    .line 270
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    .line 273
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xb

    const-string v3, "SemWifiApSmartMHS"

    if-eqz v1, :cond_53

    .line 277
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v1, "isWifiTetheringEnabled"

    invoke-static {p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_49

    const-string p2, "SEC_PRODUCT_FEATURE_KNOX_SUPPORT_MDM not allowed"

    .line 280
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/util/LocalLog;

    move-result-object p2

    const-string v0, "SemWifiApSmartMHS:\t SEC_PRODUCT_FEATURE_KNOX_SUPPORT_MDM not allowed"

    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 282
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetisAdveretizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 283
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p2

    if-eqz p2, :cond_49

    .line 284
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessage(I)Z

    :cond_49
    const-string p0, "TetheringRestricted changed. sendBroadcastForMDE"

    .line 288
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->sendBroadcastForMDE(Landroid/content/Context;)V

    goto/16 :goto_424

    :cond_53
    const-string p1, "android.intent.action.TIME_SET"

    .line 293
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v1, 0xa

    if-eqz p1, :cond_9b

    const-string p1, " System time changed"

    .line 294
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/util/LocalLog;

    move-result-object p1

    const-string p2, "SemWifiApSmartMHS:\tSystem time changed"

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetisAdveretizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p1

    if-eqz p1, :cond_424

    .line 297
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_86

    .line 298
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 300
    :cond_86
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_424

    .line 301
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p0

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_424

    :cond_9b
    const-string p1, "android.intent.action.SIM_STATE_CHANGED"

    .line 305
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_112

    const-string p1, "ss"

    .line 306
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ABSENT"

    .line 307
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e3

    .line 308
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetisAdveretizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p1

    if-eqz p1, :cond_424

    const-string p1, "SIM card removed"

    .line 309
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/util/LocalLog;

    move-result-object p1

    const-string p2, "SemWifiApSmartMHS:\tSIM card removed"

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 311
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fputisAdvStoppedbecauseOfSIMRemoval(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V

    .line 312
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_424

    .line 313
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_424

    :cond_e3
    const-string p2, "READY"

    .line 316
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_424

    .line 317
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetisAdveretizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p1

    if-nez p1, :cond_424

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetisAdvStoppedbecauseOfSIMRemoval(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p1

    if-eqz p1, :cond_424

    const-string p1, "SIM card inserted"

    .line 318
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/util/LocalLog;

    move-result-object p1

    const-string p2, "SemWifiApSmartMHS:\tSIM card inserted"

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 320
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fputisAdvStoppedbecauseOfSIMRemoval(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V

    goto/16 :goto_424

    :cond_112
    const-string p1, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 326
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_185

    const/high16 p1, -0x80000000

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    .line 327
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 328
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action BLE state:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/util/LocalLog;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SemWifiApSmartMHS:\taction BLE state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/16 p2, 0x10

    if-ne p1, p2, :cond_424

    const-string p1, "BLE is turned off"

    .line 331
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/util/LocalLog;

    move-result-object p1

    const-string p2, "SemWifiApSmartMHS:\tBLE is turned off"

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 333
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_424

    .line 334
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_424

    :cond_185
    const-string p1, "android.intent.action.BATTERY_LEVEL_CHANGED"

    .line 337
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "wifi_ap_smart_tethering_settings"

    const-wide/16 v6, 0x3e8

    const-wide/32 v8, 0x9c40

    if-eqz p1, :cond_368

    .line 338
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "level"

    const/4 v10, -0x1

    .line 339
    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v11, "scale"

    .line 340
    invoke-virtual {p1, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 341
    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, p1

    int-to-byte p1, v0

    invoke-static {v10, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fputmBatteryPct(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;B)V

    .line 342
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string p2, " ,,isAdveretizing: "

    const/16 v0, 0xf

    if-ne p1, v5, :cond_2be

    .line 343
    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetislowBattery(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result v10

    if-nez v10, :cond_2be

    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBatteryPct(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)B

    move-result v10

    if-gt v10, v0, :cond_2be

    .line 344
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "low battery:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBatteryPct(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetisAdveretizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fputislowBattery(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V

    .line 346
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SemWifiApSmartMHS:\tlow battery pct:  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBatteryPct(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)B

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",, isAdveretizing: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetisAdveretizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 347
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetisAdveretizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p1

    if-eqz p1, :cond_280

    .line 348
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_252

    .line 349
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 351
    :cond_252
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_424

    .line 352
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v1, v6, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 353
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetautohotspot_mhs_check_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p1

    if-nez p1, :cond_424

    .line 354
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetautohotspot_mhs_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/android/internal/util/WakeupMessage;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v8

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 355
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fputautohotspot_mhs_check_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V

    goto/16 :goto_424

    .line 358
    :cond_280
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_424

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTetheredClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->getNumOfConnectedDevices()I

    move-result p1

    if-lez p1, :cond_424

    .line 359
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    const-wide/16 v2, 0x2

    invoke-virtual {p1, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 360
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetautohotspot_mhs_check_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p1

    if-nez p1, :cond_424

    .line 361
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetautohotspot_mhs_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/android/internal/util/WakeupMessage;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v8

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 362
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fputautohotspot_mhs_check_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V

    goto/16 :goto_424

    :cond_2be
    if-ne p1, v5, :cond_424

    .line 366
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_424

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetislowBattery(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p1

    if-eqz p1, :cond_424

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBatteryPct(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)B

    move-result p1

    if-le p1, v0, :cond_424

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "charged from low battery:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBatteryPct(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,,isAdveretizing:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetisAdveretizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fputislowBattery(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V

    .line 369
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemWifiApSmartMHS:\t change from low battery pct:  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBatteryPct(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetisAdveretizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 370
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetisAdveretizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p1

    if-eqz p1, :cond_424

    .line 371
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 372
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v1, v6, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 373
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetautohotspot_mhs_check_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p1

    if-nez p1, :cond_424

    .line 374
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetautohotspot_mhs_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/android/internal/util/WakeupMessage;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v8

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 375
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fputautohotspot_mhs_check_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V

    goto/16 :goto_424

    :cond_368
    const-string p1, "com.samsung.android.server.wifi.softap.smarttethering.ssid_changed"

    .line 379
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3bf

    const-string p1, "com.android.settings.DEVICE_NAME_CHANGED"

    .line 380
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3bf

    const-string p1, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_381

    goto :goto_3bf

    :cond_381
    const-string p1, "com.samsung.android.nearbyscanning"

    .line 396
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_424

    .line 397
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetisAdveretizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p1

    if-eqz p1, :cond_424

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result p1

    if-nez p1, :cond_424

    .line 398
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_424

    .line 399
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/util/LocalLog;

    move-result-object p1

    const-string p2, "SemWifiApSmartMHS:\t NearBy is off, stop to send adv"

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const-string p1, "NearBy is off, stop to send adv"

    .line 400
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessage(I)Z

    goto :goto_424

    :cond_3bf
    :goto_3bf
    const-string p1, " restarting advertisement,because of SSID/devicename/DataSaver changed"

    .line 381
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 383
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/util/LocalLog;

    move-result-object p2

    const-string v0, "SemWifiApSmartMHS:\tSSID/Password/devicename is changed, so restarting adv"

    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-ne p1, v5, :cond_424

    .line 384
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetisAdveretizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p1

    if-eqz p1, :cond_424

    .line 385
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_3f8

    .line 386
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 388
    :cond_3f8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_424

    .line 389
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v1, v6, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 390
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetautohotspot_mhs_check_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Z

    move-result p1

    if-nez p1, :cond_424

    .line 391
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetautohotspot_mhs_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/android/internal/util/WakeupMessage;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v8

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 392
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$SemWifiApSmartMHSBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fputautohotspot_mhs_check_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V

    :cond_424
    :goto_424
    return-void
.end method
