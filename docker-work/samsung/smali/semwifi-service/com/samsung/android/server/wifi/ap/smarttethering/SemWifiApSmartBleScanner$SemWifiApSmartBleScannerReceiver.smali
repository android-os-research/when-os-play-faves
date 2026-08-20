.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApSmartBleScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemWifiApSmartBleScannerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V
    .registers 2

    .line 435
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 444
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "phone"

    const-string v6, "autohotspot_family_sharing_saved_state"

    const-wide/16 v7, -0x1

    const-string v9, "wifi_ap_smart_tethering_settings_with_family"

    const-string v10, "wifi_ap_smart_tethering_settings"

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v4, :cond_197

    const-string v3, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v4, -0x1

    .line 445
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 447
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 448
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "subId:"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v4, :cond_46

    return-void

    .line 453
    :cond_46
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "smart_tethering_sim_value"

    invoke-static {v2, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 455
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_5e

    :cond_5d
    move-wide v4, v7

    .line 457
    :goto_5e
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->generateHashKey(Ljava/lang/String;)J

    move-result-wide v1

    .line 458
    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14, v6, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v11, :cond_7e

    move v14, v11

    goto :goto_7f

    :cond_7e
    move v14, v12

    :goto_7f
    invoke-static {v13, v14}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputmFamilySharingSavedState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V

    .line 459
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Carrier config ,vold_value:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ",new_value:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ",mFamilySharingSavedState:"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmFamilySharingSavedState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z

    move-result v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":\tCarrier config ,old_value:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmFamilySharingSavedState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z

    move-result v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    cmp-long v7, v4, v7

    if-nez v7, :cond_e8

    goto :goto_ee

    :cond_e8
    cmp-long v4, v4, v1

    if-eqz v4, :cond_ee

    const/4 v4, 0x1

    goto :goto_ef

    :cond_ee
    :goto_ee
    const/4 v4, 0x0

    .line 466
    :goto_ef
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v3, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmFamilySharingSavedState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z

    move-result v1

    if-eqz v1, :cond_bc0

    .line 468
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v10, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 469
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    const-string v3, "com.samsung.android.mobileservice"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isPackageExists(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_187

    if-nez v4, :cond_187

    .line 471
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM card inserted,trying to set familySharing,isSEMSExist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\tSIM card inserted,trying to set familySharing,isSEMSExist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_187

    .line 474
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 475
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "smart_tethering_family_sharing_service_registered"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_187
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_bc0

    :cond_197
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    .line 481
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v11, 0xa

    if-eqz v4, :cond_3c2

    .line 482
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ABSENT:1,READY:5,LOADED:10"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\tABSENT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",READY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",LOADED:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 487
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_25b

    const/4 v2, 0x0

    .line 488
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    .line 489
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 490
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "simState1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",simState2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",telephonyManager.getPhoneCount():"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":\tsimState1:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",telephonyManager.getPhoneCount()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eq v5, v4, :cond_29f

    if-eq v5, v11, :cond_29f

    if-eq v2, v11, :cond_29f

    if-ne v2, v4, :cond_29d

    goto :goto_29f

    .line 499
    :cond_25b
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 500
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simState:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\tsimState:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eq v1, v4, :cond_29f

    if-ne v1, v11, :cond_29d

    goto :goto_29f

    :cond_29d
    const/4 v1, 0x0

    goto :goto_2a0

    :cond_29f
    :goto_29f
    move v1, v4

    :goto_2a0
    if-nez v1, :cond_36c

    .line 510
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v10, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 511
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v9, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_307

    .line 513
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "autohotspot_saved_state"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SIM card not ready,disabling AutoHotspot"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\tSIM card not ready,disabling AutoHotspot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 516
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v10, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x1

    :cond_307
    if-ne v3, v2, :cond_3ae

    .line 519
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM card not ready,resetting familysharing agreement page,disabling familysharing,mst:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\tSIM card not ready,resetting familysharing agreement page,disabling familysharing,mst:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 521
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "smart_tethering_family_sharing_service_registered"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 523
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3ae

    :cond_36c
    const/4 v2, 0x1

    if-ne v1, v4, :cond_3ae

    .line 526
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "autohotspot_saved_state"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3ae

    .line 527
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIM card inserted,trying to set AutohotspotDB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tSIM card inserted,trying to set AutohotspotDB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 529
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$mSetAutoHotspotSettingsDB(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    .line 532
    :cond_3ae
    :goto_3ae
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIM state changed. sendBroadcastForMDE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->sendBroadcastForMDE(Landroid/content/Context;)V

    goto/16 :goto_bc0

    :cond_3c2
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    .line 535
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v12, 0x3

    if-eqz v1, :cond_42b

    .line 536
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v1

    if-lez v1, :cond_bc0

    .line 537
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-nez v1, :cond_bc0

    .line 538
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connected to Internet,Samsung account loggedin, but hashbased on Guid is -1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tConnected to Internet,Samsung account loggedin, but hashbased on Guid is -1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 540
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_bc0

    .line 541
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 542
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v0

    invoke-virtual {v0, v6, v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_bc0

    :cond_42b
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 547
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v13, 0x2

    if-eqz v1, :cond_4d8

    const-string v1, "wifi_state"

    .line 548
    invoke-virtual {v2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v12, :cond_bc0

    .line 550
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetisJDMDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z

    move-result v1

    if-eqz v1, :cond_bc0

    .line 551
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " JDM Wi-Fi Enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\t JDM Wi-Fi Enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 553
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_48c

    .line 554
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v1

    .line 555
    array-length v2, v1

    if-lez v2, :cond_48c

    .line 556
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->writeWifiMacInfo(Ljava/lang/String;)V

    .line 559
    :cond_48c
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_bc0

    .line 560
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_bc0

    .line 561
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetisScanningRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z

    move-result v1

    if-nez v1, :cond_bc0

    .line 562
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " JDM Wi-Fi Enabled, starting scannnig"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\t JDM Wi-Fi Enabled, starting scannnig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 564
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v0

    invoke-virtual {v0, v13, v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_bc0

    :cond_4d8
    const-string v1, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 571
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v4, 0x1f4

    if-eqz v1, :cond_667

    const/high16 v1, -0x80000000

    const-string v6, "android.bluetooth.adapter.extra.STATE"

    .line 572
    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 573
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action BLE state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":\taction BLE state:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 575
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetisScanningRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_540

    .line 576
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputisStartScanningPending(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V

    :cond_540
    const/16 v2, 0xf

    if-ne v1, v2, :cond_582

    .line 578
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "STATE_BLE_ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":\tSTATE_BLE_ON"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 580
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputisStartScanningPending(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V

    .line 581
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v2

    if-eqz v2, :cond_582

    .line 582
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    :cond_582
    const/16 v2, 0x10

    if-ne v1, v2, :cond_5d0

    .line 586
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BLE is turned off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":\tBLE is turned off"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 588
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartGattServer(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->removeGattServer()V

    .line 589
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartGattServer(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    .line 590
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v2

    if-eqz v2, :cond_5d0

    .line 591
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    :cond_5d0
    if-ne v1, v11, :cond_bc0

    .line 595
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5e7

    const/4 v11, 0x1

    goto :goto_5e8

    :cond_5e7
    const/4 v11, 0x0

    .line 596
    :goto_5e8
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v11, :cond_bc0

    if-eqz v1, :cond_bc0

    .line 597
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v1

    if-nez v1, :cond_bc0

    .line 598
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BLE is OFF, in BT OFF,so check for Enabling BLE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetisScanningRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tBLE is OFF, in BT OFF,socheck for  Enabling BLE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetisScanningRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 600
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetisScanningRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z

    move-result v1

    if-eqz v1, :cond_654

    .line 601
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_654

    .line 602
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 604
    :cond_654
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_bc0

    .line 605
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v0

    invoke-virtual {v0, v13, v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_bc0

    :cond_667
    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.changed"

    .line 609
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v14, 0x7d0

    const/16 v6, 0xb

    if-eqz v1, :cond_711

    .line 610
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v10, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 611
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v9, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 612
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", val : "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_bc0

    if-ne v2, v3, :cond_bc0

    .line 613
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetisScanningRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z

    move-result v1

    if-eqz v1, :cond_bc0

    .line 614
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " Stopping backgroundScanning ,because of family group modification"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tStopping backgroundScanning ,because of family group modification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 616
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_6f5

    .line 617
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 619
    :cond_6f5
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->sendEmptyMessage(I)V

    .line 620
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_bc0

    .line 621
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v0

    invoke-virtual {v0, v13, v14, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_bc0

    :cond_711
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 624
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b9

    .line 625
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_72e

    const/4 v11, 0x1

    goto :goto_72f

    :cond_72e
    const/4 v11, 0x0

    .line 626
    :goto_72f
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAirplaneMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tisAirplaneMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v11, :cond_794

    .line 629
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setBleStandAloneModeByAutohotspot(Z)V

    .line 630
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_78a

    .line 631
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->removeMessages(I)V

    .line 632
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 634
    :cond_78a
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->sendEmptyMessage(I)V

    goto :goto_7a5

    .line 637
    :cond_794
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_7a5

    .line 638
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v13, v14, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 640
    :cond_7a5
    :goto_7a5
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AirplaneMode changed. sendBroadcastForMDE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->sendBroadcastForMDE(Landroid/content/Context;)V

    goto/16 :goto_bc0

    :cond_7b9
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 643
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83b

    const-string v1, "android.telephony.extra.PHONE_IN_ECM_STATE"

    const/4 v3, 0x0

    .line 644
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 645
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartBleScanner, emergencyMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\temergencyMode:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_828

    .line 648
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_81d

    .line 649
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->removeMessages(I)V

    .line 650
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 652
    :cond_81d
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->sendEmptyMessage(I)V

    goto/16 :goto_bc0

    .line 655
    :cond_828
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_bc0

    .line 656
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v0

    invoke-virtual {v0, v13, v14, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_bc0

    :cond_83b
    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.familyid"

    .line 659
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_920

    const-string v1, "familyHashID"

    .line 660
    invoke-virtual {v2, v1, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 661
    sget-boolean v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_D2D:Z

    if-eqz v3, :cond_8c2

    cmp-long v1, v1, v7

    if-nez v1, :cond_8c2

    .line 662
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tfamily id is changed, reset white list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 663
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "family id is changed, reset white list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    move-result-object v1

    if-eqz v1, :cond_8c2

    .line 666
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->resetWhitelist()V

    .line 667
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " familyID reset\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "smartApWhiteList_migration_q_os_to_r"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 672
    :cond_8c2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetisScanningRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z

    move-result v1

    if-eqz v1, :cond_bc0

    .line 673
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tfamily id is changed, restarting scanning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 674
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "family id is changed, restarting scanning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_902

    .line 676
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 677
    :cond_902
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->sendEmptyMessage(I)V

    .line 678
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_bc0

    .line 679
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v13, v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_bc0

    :cond_920
    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.isServiceRegistered"

    .line 681
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98a

    .line 682
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "received SMART_TETHERING_SERVICE_REGISTER"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->setFamilySharingServiceRegisteredDB(Landroid/content/Context;Z)V

    .line 684
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_smart_tethering_settings_with_family_restoring_required"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_bc0

    .line 685
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Family sharing switch restoring required DB is 1. Trying to Enabling Family Sharing DB."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_smart_tethering_settings_with_family_restoring_required"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 687
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->canFamilySharingBeEnabled()Z

    move-result v1

    if-eqz v1, :cond_bc0

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isNearByDeviceScanningEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_bc0

    .line 688
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    goto/16 :goto_bc0

    :cond_98a
    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.d2dfamilyid"

    .line 691
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f2

    .line 692
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetisScanningRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z

    move-result v1

    if-eqz v1, :cond_bc0

    .line 693
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\t d2d family id is changed, restarting scanning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 694
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "d2d family id is changed, restarting scanning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->clearLocalResults()V

    .line 696
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_9dd

    .line 697
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 698
    :cond_9dd
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_bc0

    .line 699
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v13, v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_bc0

    :cond_9f2
    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 701
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4b

    .line 702
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputisLcdOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V

    .line 703
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetisScanningRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z

    move-result v1

    if-eqz v1, :cond_bc0

    .line 704
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_bc0

    .line 705
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tScreen is OFF, restarting scanning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 706
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Screen is OFF, restarting scanning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 708
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v0

    invoke-virtual {v0, v13, v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_bc0

    :cond_a4b
    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 711
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa4

    .line 712
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputisLcdOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V

    .line 713
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetisScanningRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z

    move-result v1

    if-eqz v1, :cond_bc0

    .line 714
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_bc0

    .line 715
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tScreen is ON, restarting scanning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 716
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Screen is ON, restarting scanning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 718
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v0

    invoke-virtual {v0, v13, v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_bc0

    :cond_aa4
    const-string v1, "com.samsung.android.nearbyscanning"

    .line 721
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc0

    .line 722
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v1

    if-eqz v1, :cond_b00

    .line 723
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$mSetAutoHotspotSettingsDB(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    .line 724
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_bc0

    .line 725
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\t NearBy is toggelled, restarting scanning:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 726
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NearBy is toggelled, restarting scanning:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 728
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v0

    invoke-virtual {v0, v13, v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_bc0

    .line 731
    :cond_b00
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v10, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_b40

    .line 732
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "autohotspot_saved_nearby_state"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 733
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_b40

    .line 734
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autohotspot_family_sharing_nearby_saved_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 737
    :cond_b40
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v10, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 738
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 739
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\t NearBy is toggelled, Turn off auto hotspot settings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 740
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NearBy is toggelled, Turn off auto hotspot settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_bc0

    .line 742
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\t NearBy is toggelled, stop scanning:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 743
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NearBy is toggelled, stop scanning:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 745
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setBleStandAloneModeByAutohotspot(Z)V

    :cond_bc0
    :goto_bc0
    return-void
.end method
