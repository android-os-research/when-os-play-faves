.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;
.super Landroid/os/Handler;
.source "SemWifiApSmartBleScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BleWorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Landroid/os/Looper;)V
    .registers 3

    .line 1078
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    .line 1079
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1083
    iget v2, v1, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x7530

    const-wide/16 v5, 0x4e20

    const-string v7, "smart_tethering_AES_key_error"

    const-string v8, "wifi_ap_smart_tethering_settings"

    const-wide/16 v9, -0x1

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x7

    const/4 v14, 0x0

    const/4 v15, 0x1

    packed-switch v2, :pswitch_data_844

    goto/16 :goto_842

    .line 1147
    :pswitch_1a
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v1

    if-lez v1, :cond_1ac

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->Check_MHS_AES_Key()Z

    move-result v1

    if-eqz v1, :cond_34

    goto/16 :goto_1ac

    .line 1153
    :cond_34
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->checkIfActiveNetworkHasInternet()Z

    move-result v1

    .line 1154
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHECK_AES_KEY_STATUS_START_SCAN isInternetConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1156
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v3

    const-string v4, ":\tcould not get AES keys by ["

    const-string v5, "could not get AES keys by ["

    const/16 v6, 0x7530

    if-lez v3, :cond_f1

    if-eqz v1, :cond_f1

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetAesKeyRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I

    move-result v3

    if-lez v3, :cond_f1

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v3

    .line 1157
    invoke-virtual {v3, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_f1

    .line 1158
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], try again. AesKeyRetryNumber:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetAesKeyRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetAesKeyRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1160
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetAesKeyRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I

    move-result v2

    sub-int/2addr v2, v15

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputAesKeyRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;I)V

    .line 1161
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->updateAESKeyUsingLocalGroupSmartTetheringApk()I

    .line 1162
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-virtual {v0, v13, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->sendMessagewithDelay(II)V

    goto/16 :goto_842

    .line 1163
    :cond_f1
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetAesKeyRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I

    move-result v3

    if-nez v3, :cond_154

    if-nez v1, :cond_115

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|no internet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1166
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    :cond_115
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_842

    :cond_154
    if-nez v1, :cond_842

    .line 1171
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not get AES keys by [no internet], try again. AesKeyRetryNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetAesKeyRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tcould not get AES keys by [no internet], try again. AesKeyRetryNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetAesKeyRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1173
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetAesKeyRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I

    move-result v2

    sub-int/2addr v2, v15

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputAesKeyRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;I)V

    .line 1174
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-virtual {v0, v13, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->sendMessagewithDelay(II)V

    goto/16 :goto_842

    .line 1148
    :cond_1ac
    :goto_1ac
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_1c9

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1c9

    .line 1149
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->removeMessages(I)V

    :cond_1c9
    return-void

    .line 1085
    :pswitch_1ca
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    move-result-object v1

    .line 1086
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v7, "received CHECK_TO_STOP_D2D_CLIENT_ADV"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":\treceived CHECK_TO_STOP_D2D_CLIENT_ADV"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1088
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetlast_client_adv_time(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v2, v7, v3

    if-lez v2, :cond_235

    .line 1089
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "check and stop D2D client Advertizement ,as there is no MHS D2D request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tcheck and stop D2D client Advertizement ,as there is no MHS D2D request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_234

    .line 1092
    invoke-virtual {v1, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->sendEmptyMessage(I)V

    :cond_234
    return-void

    :cond_235
    if-eqz v1, :cond_842

    .line 1096
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvertising()Z

    move-result v1

    if-eqz v1, :cond_842

    .line 1097
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetd2d_client_adv_TimeoutMessage(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    goto/16 :goto_842

    .line 1101
    :pswitch_24d
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "received CHECK_TO_STOP_MHS_ADV"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":\treceived CHECK_TO_STOP_MHS_ADV"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1103
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v8, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xb

    if-nez v1, :cond_2c8

    .line 1104
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isMHSAdvertizing()Z

    move-result v1

    if-eqz v1, :cond_2c8

    .line 1105
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "received CHECK_TO_STOP_MHS_ADV, but DB is zero"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\treceived CHECK_TO_STOP_MHS_ADV, but DB is zero"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1107
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1, v14}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputmIsGotAutohotspotBleAdvFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V

    .line 1108
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->sendEmptyMessage(I)V

    return-void

    .line 1111
    :cond_2c8
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->hasLowBatteryMessages()Z

    move-result v1

    if-eqz v1, :cond_316

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isMHSAdvertizing()Z

    move-result v1

    if-eqz v1, :cond_316

    .line 1112
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "received CHECK_TO_STOP_MHS_ADV, but lowbattery adv"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\treceived CHECK_TO_STOP_MHS_ADV, but low battery adv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1114
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmhs_adv_TimeoutMessage(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    return-void

    .line 1117
    :cond_316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetlast_client_adv_time(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v1, v7, v3

    if-lez v1, :cond_35b

    .line 1118
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "check and stop MHS Advertizement ,as there is no cient request"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\tcheck and stop MHS Advertizement ,as there is no cient request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1120
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1, v14}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputmIsGotAutohotspotBleAdvFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V

    .line 1121
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->sendEmptyMessage(I)V

    return-void

    .line 1124
    :cond_35b
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isMHSAdvertizing()Z

    move-result v1

    if-eqz v1, :cond_842

    .line 1125
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmhs_adv_TimeoutMessage(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    goto/16 :goto_842

    .line 1129
    :pswitch_377
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v1

    cmp-long v1, v1, v9

    if-eqz v1, :cond_398

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSameUserName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_398

    .line 1130
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-virtual {v0, v12, v14}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->sendMessagewithDelay(II)V

    goto/16 :goto_842

    .line 1133
    :cond_398
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v1

    if-lez v1, :cond_408

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->checkIfActiveNetworkHasInternet()Z

    move-result v1

    if-eqz v1, :cond_408

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetLoginRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I

    move-result v1

    if-lez v1, :cond_408

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    .line 1134
    invoke-virtual {v1, v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_408

    .line 1135
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "could not get guid or username, try again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tcould not get guid or username, trying again"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1137
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetLoginRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I

    move-result v2

    sub-int/2addr v2, v15

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputLoginRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;I)V

    .line 1138
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->updateFamilyDetailsUsingLocalGroupSmartTetheringApk()I

    .line 1139
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    const v1, 0x9c40

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->sendMessagewithDelay(II)V

    goto/16 :goto_842

    .line 1140
    :cond_408
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetLoginRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I

    move-result v1

    if-nez v1, :cond_842

    .line 1141
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "could not get guid or username, try again. So can\'t use auto hotspot"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\tcould not get guid or username, trying again. So can\'t use auto hotspot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_842

    .line 1189
    :pswitch_439
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$mstopBleScanning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    goto/16 :goto_842

    .line 1178
    :pswitch_440
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v1

    if-lez v1, :cond_4a1

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_4a1

    .line 1179
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v1

    cmp-long v1, v1, v9

    const-wide/16 v2, 0x0

    if-nez v1, :cond_46e

    .line 1180
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v0

    invoke-virtual {v0, v11, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1182
    :cond_46e
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "NOT_SUPPORT_AGENT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a1

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAESKey(J)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4a1

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetAesKeyRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I

    move-result v1

    if-lez v1, :cond_4a1

    .line 1183
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v13, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1186
    :cond_4a1
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->startBleScanning()V

    goto/16 :goto_842

    .line 1192
    :pswitch_4a8
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HANDLE_BLE_SCAN_RESULT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    .line 1194
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    const/16 v3, 0x75

    .line 1195
    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object v3

    if-nez v3, :cond_4cc

    .line 1197
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mScanResultData is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_842

    .line 1200
    :cond_4cc
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGuidScanFilter:Landroid/bluetooth/le/ScanFilter;

    const-string v5, ":\tMHS adv adv result is less than 25:"

    const-string v6, "MHS adv adv result is less than 25:"

    const-wide/16 v16, 0x2710

    const/16 v7, 0x19

    const/16 v13, 0xa

    if-eqz v4, :cond_600

    invoke-virtual {v4, v1}, Landroid/bluetooth/le/ScanFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_600

    .line 1201
    aget-byte v4, v3, v13

    const/4 v9, 0x5

    if-ne v4, v9, :cond_502

    .line 1202
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    move-result v0

    if-eqz v0, :cond_842

    .line 1203
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotMHSLcdOnOff()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;->receiveClientWakeupMsg([B)V

    goto/16 :goto_842

    :cond_502
    if-ne v4, v15, :cond_5b0

    .line 1207
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isMHSAdvertizing()Z

    move-result v1

    if-eqz v1, :cond_519

    .line 1208
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputlast_client_adv_time(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;J)V

    .line 1209
    :cond_519
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v8, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v15, :cond_842

    .line 1210
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isMHSAdvertizing()Z

    move-result v1

    if-nez v1, :cond_842

    .line 1212
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "same guid starting, MHS adv, secheduling 10 sec timer "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputmIsGotAutohotspotBleAdvFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V

    .line 1214
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tsame guid starting, MHS adv, secheduling 10 sec timer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1215
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputlast_client_adv_time(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;J)V

    .line 1216
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmhs_adv_TimeoutMessage(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v2, v2, v16

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1217
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_592

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v1

    if-nez v1, :cond_592

    .line 1218
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-virtual {v1, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setBleStandAloneModeByAutohotspot(Z)V

    .line 1220
    :cond_592
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-virtual {v1, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->registerAutoHotspotGattServer(Z)Z

    move-result v1

    if-eqz v1, :cond_5a5

    .line 1221
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->sendEmptyMessage(I)V

    goto/16 :goto_842

    .line 1223
    :cond_5a5
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "can\'t start MHS advertisement1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_842

    :cond_5b0
    if-ne v4, v12, :cond_842

    .line 1229
    array-length v3, v3

    if-le v3, v7, :cond_5c9

    .line 1230
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sendScanResultFromScanner"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object v0

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->sendScanResultFromScanner(ILandroid/bluetooth/le/ScanResult;)V

    goto/16 :goto_842

    .line 1233
    :cond_5c9
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_842

    .line 1238
    :cond_600
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    if-eqz v4, :cond_756

    invoke-virtual {v4, v1}, Landroid/bluetooth/le/ScanFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_756

    .line 1239
    aget-byte v4, v3, v13

    if-ne v4, v15, :cond_706

    .line 1240
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isMHSAdvertizing()Z

    move-result v1

    if-eqz v1, :cond_625

    .line 1241
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputlast_client_adv_time(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;J)V

    .line 1242
    :cond_625
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v8, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v15, :cond_842

    .line 1243
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isMHSAdvertizing()Z

    move-result v1

    if-nez v1, :cond_842

    .line 1245
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "same family starting, MHS adv ,scheduling 10 secs timer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputmIsGotAutohotspotBleAdvFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V

    .line 1247
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tsame family starting, MHS adv ,scheduling 10 secs timer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1248
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputlast_client_adv_time(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;J)V

    .line 1249
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmhs_adv_TimeoutMessage(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v2, v2, v16

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1250
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_69e

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v1

    if-nez v1, :cond_69e

    .line 1251
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-virtual {v1, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setBleStandAloneModeByAutohotspot(Z)V

    .line 1253
    :cond_69e
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-virtual {v1, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->registerAutoHotspotGattServer(Z)Z

    move-result v1

    if-eqz v1, :cond_6b0

    .line 1254
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->sendEmptyMessage(I)V

    goto :goto_6b9

    .line 1256
    :cond_6b0
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "can\'t start MHS advertisement2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :goto_6b9
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_842

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    if-ne v1, v13, :cond_842

    .line 1259
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "same family and enable BT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tsame family and enable BT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1261
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    const-string v0, "vendor.wifiap.autohotspot.btadapterenable.smartmhs"

    const-string v1, "1"

    .line 1262
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_842

    :cond_706
    if-ne v4, v12, :cond_842

    .line 1268
    array-length v3, v3

    if-le v3, v7, :cond_71f

    .line 1269
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sendScanResultFromScanner"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object v0

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->sendScanResultFromScanner(ILandroid/bluetooth/le/ScanResult;)V

    goto/16 :goto_842

    .line 1272
    :cond_71f
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_842

    .line 1277
    :cond_756
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mMhsD2dFilter:Landroid/bluetooth/le/ScanFilter;

    if-eqz v2, :cond_7e8

    invoke-virtual {v2, v1}, Landroid/bluetooth/le/ScanFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_7e8

    .line 1278
    aget-byte v1, v3, v13

    const/4 v2, 0x3

    if-ne v1, v2, :cond_842

    .line 1279
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    move-result-object v1

    if-eqz v1, :cond_842

    .line 1281
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvertising()Z

    move-result v2

    if-eqz v2, :cond_780

    .line 1282
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputlast_client_adv_time(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;J)V

    .line 1283
    :cond_780
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvertising()Z

    move-result v2

    if-nez v2, :cond_842

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->checkPreConditions()I

    move-result v2

    if-ltz v2, :cond_842

    .line 1284
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "starting D2D client adv ,10secs timer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\tstarting D2D client adv ,10 secs timer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1286
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputlast_client_adv_time(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;J)V

    .line 1287
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetd2d_client_adv_TimeoutMessage(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v3, v3, v16

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1288
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_7e4

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v2

    if-nez v2, :cond_7e4

    .line 1289
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-virtual {v0, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setBleStandAloneModeByAutohotspot(Z)V

    .line 1291
    :cond_7e4
    invoke-virtual {v1, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->sendEmptyMessage(I)V

    goto :goto_842

    .line 1296
    :cond_7e8
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mClientD2dFilter:Landroid/bluetooth/le/ScanFilter;

    if-eqz v2, :cond_809

    invoke-virtual {v2, v1}, Landroid/bluetooth/le/ScanFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_809

    .line 1297
    aget-byte v0, v3, v13

    if-ne v0, v11, :cond_842

    .line 1298
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    move-result-object v0

    if-eqz v0, :cond_842

    .line 1299
    array-length v2, v3

    if-le v2, v7, :cond_842

    .line 1300
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->sendScanResultFromScanner(Landroid/bluetooth/le/ScanResult;)V

    goto :goto_842

    .line 1303
    :cond_809
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v1

    cmp-long v1, v1, v9

    if-eqz v1, :cond_842

    sget-boolean v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_LITE:Z

    if-nez v1, :cond_842

    .line 1304
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "does not belong it to any filter "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\tdoes not belong it to any filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_842
    :goto_842
    return-void

    nop

    :pswitch_data_844
    .packed-switch 0x1
        :pswitch_4a8
        :pswitch_440
        :pswitch_439
        :pswitch_377
        :pswitch_24d
        :pswitch_1ca
        :pswitch_1a
    .end packed-switch
.end method
