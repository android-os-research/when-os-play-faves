.class Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;
.super Landroid/os/Handler;
.source "SemWifiApClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Landroid/os/Looper;Landroid/content/Context;)V
    .registers 4

    .line 132
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifiApClientInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v2, v1, Landroid/os/Message;->what:I

    const-string v6, "sem_wifi"

    const-string v7, "sta_assoc"

    const-string v8, "sta_dhcpack"

    const-string v9, "NUM_STA"

    const-string v10, " "

    const-wide/16 v11, 0x0

    const-string v13, "com.samsung.android.mhshome"

    const-string v14, "EVENT"

    const-string v15, "com.samsung.android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    const/4 v5, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_6f6

    :pswitch_35
    const-string v0, "Not Impplemented"

    .line 347
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6f5

    .line 327
    :pswitch_3c
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;[Ljava/lang/String;)V

    .line 331
    :try_start_49
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_55} :catch_62

    .line 332
    :try_start_55
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_61} :catch_63

    goto :goto_90

    :catch_62
    move-wide v1, v11

    .line 335
    :catch_63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AP_TSF_INFO_EVENT invalid values, tsf = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " utc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    move-result-object v8

    aget-object v5, v8, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v7, v11

    .line 337
    :goto_90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AP_TSF_INFO_EVENT tsf = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " utc="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v3, v1, v11

    if-lez v3, :cond_6f5

    cmp-long v3, v7, v11

    if-lez v3, :cond_6f5

    .line 339
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v3, v1, v2, v7, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$msendTsfInfoResults(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;JJ)V

    .line 340
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfgetmIsLOHSmode()Z

    move-result v1

    if-eqz v1, :cond_6f5

    .line 341
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmWifiManager(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Lcom/samsung/android/wifi/SemWifiManager;)V

    .line 342
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/wifi/SemWifiManager;->enableHotspotTsfInfo(Z)V

    goto/16 :goto_6f5

    .line 310
    :pswitch_d7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD_AP_STA_RECONNECT.Current val"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Old client list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmClients(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "New client list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_136

    const-string v2, ""

    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_136

    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_137

    :cond_136
    move v1, v4

    .line 317
    :goto_137
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    move-result v2

    if-eqz v2, :cond_6f5

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmClients(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)I

    move-result v2

    if-le v2, v1, :cond_6f5

    const-string v1, "Reconnect didn\'t happen in 10 sec"

    .line 318
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Z)V

    const-string v1, "Sending Broadcast com.samsung.actoin.24GHZ_AP_STA_DISCONNECTED"

    .line 320
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.actoin.24GHZ_AP_STA_DISCONNECTED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Landroid/content/Intent;)V

    .line 322
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel switch flag reset status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6f5

    .line 265
    :pswitch_18d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD_AP_STA_DISCONNECT.Current val"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Z)V

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD_AP_STA_DISCONNECT.Reset val"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6f5

    :pswitch_1c8
    const-string v1, "Wps State Action : wps_overlap"

    .line 302
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Landroid/content/Intent;)V

    .line 304
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "wps_overlap"

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6f5

    .line 202
    :pswitch_20b
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;[Ljava/lang/String;)V

    .line 203
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AP_STA_DEAUTH_EVENT"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "sta_deauth"

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_6f5

    .line 189
    :pswitch_251
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;[Ljava/lang/String;)V

    .line 190
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AP_STA_REMOVE_EVENT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f5

    .line 193
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    .line 194
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 195
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "sta_remove"

    invoke-static {v0, v2, v5, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 196
    iget-boolean v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->isInUIList:Z

    if-eqz v0, :cond_6f5

    .line 197
    iput-boolean v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->isInUIList:Z

    goto/16 :goto_6f5

    .line 232
    :pswitch_2b3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 233
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    const-string v2, "sta_notidisassoc"

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_6f5

    :pswitch_2c1
    const/4 v3, -0x1

    .line 227
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 228
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    const-string v2, "sta_notallow"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_6f5

    .line 212
    :pswitch_2cf
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 213
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    if-eqz v2, :cond_2fa

    .line 214
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f3

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2fa

    :cond_2f3
    const-string v0, "Got sta_new, but already in associated state, ignoring"

    .line 215
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6f5

    .line 218
    :cond_2fa
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    const-string v5, "sta_new"

    const/4 v6, -0x1

    invoke-static {v2, v1, v5, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfgetMHSDBG()Z

    move-result v1

    if-eqz v1, :cond_30d

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowClientsInfo(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Ljava/lang/String;

    .line 221
    :cond_30d
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    move-result v1

    if-eqz v1, :cond_6f5

    const-string v1, "Resetting the mChannelSwitch"

    .line 222
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Z)V

    goto/16 :goto_6f5

    .line 249
    :pswitch_321
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharingLite()Z

    move-result v2

    if-eqz v2, :cond_6f5

    .line 250
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AP_CSA_FINISHED_EVENT : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->addMHSDumpCSALog(Ljava/lang/String;)V

    if-eqz v1, :cond_6f5

    const-string v2, "5"

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f5

    .line 254
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmClients(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;I)V

    .line 255
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Z)V

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel switched from 2.4GHz to 5GHz: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Switch flag set to:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x78

    .line 257
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    .line 258
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6f5

    .line 237
    :pswitch_3a4
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmWifiManager(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Lcom/samsung/android/wifi/SemWifiManager;)V

    .line 238
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    const/4 v4, 0x0

    if-eq v1, v2, :cond_3d4

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3c5

    goto :goto_3d4

    :cond_3c5
    const/16 v2, 0xe

    if-ne v1, v2, :cond_6f5

    .line 244
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    goto/16 :goto_6f5

    :cond_3d4
    :goto_3d4
    const-string v1, "WIFI_AP_DRIVER_STATE_HANGED, disabling"

    .line 241
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/wifi/SemWifiManager;->resetSoftAp(Landroid/os/Message;)V

    goto/16 :goto_6f5

    .line 208
    :pswitch_3e4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 209
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    const-string v2, "sta_mismatch"

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_6f5

    :pswitch_3f2
    const-string v1, "Wps State Action : wps_pin_needed"

    .line 294
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Landroid/content/Intent;)V

    .line 296
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "wps_pin_needed"

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 298
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6f5

    :pswitch_435
    const-string v1, "Wps State Action : wps_timeout"

    .line 286
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Landroid/content/Intent;)V

    .line 288
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "wps_timeout"

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6f5

    :pswitch_478
    const-string v1, "Wps State Action : wps_fail"

    .line 278
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Landroid/content/Intent;)V

    .line 280
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "wps_fail"

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6f5

    :pswitch_4bb
    const-string v1, "Wps State Action : wps_success"

    .line 270
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Landroid/content/Intent;)V

    .line 272
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "wps_success"

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 274
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6f5

    .line 183
    :pswitch_4fe
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;[Ljava/lang/String;)V

    .line 184
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AP_STA_DISASSOCIATION_EVENT"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "sta_disassoc"

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_6f5

    .line 161
    :pswitch_53e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AP_STA_ASSOCIATION_EVENT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v4, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " remaining_cnt: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->getConnectedDeviceLength()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    const/4 v4, -0x1

    invoke-static {v2, v1, v7, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f5

    .line 166
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 168
    iget-wide v9, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mRemovedTime:J

    sub-long v9, v6, v9

    .line 169
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sta_assoc "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v14, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " gap:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " mConnectedTime:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v16, v6

    iget-wide v5, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnectedTime:J

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 170
    iget-object v4, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 171
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d5

    iget-wide v4, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnectedTime:J

    cmp-long v4, v4, v11

    if-eqz v4, :cond_6f5

    iget-wide v4, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mRemovedTime:J

    sub-long v6, v16, v4

    const-wide/32 v4, 0xea60

    cmp-long v4, v6, v4

    if-gez v4, :cond_6f5

    .line 172
    :cond_5d5
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    const/4 v5, -0x1

    invoke-static {v4, v1, v8, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "roaming dhcpack mac:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v6, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ip:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnectedTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " gap :"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 174
    iput-boolean v1, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->isInUIList:Z

    .line 175
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mgetClientCntDhcpack(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)I

    move-result v1

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mhs client cnt:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " d:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 177
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->getConnectedDeviceLength()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfgetMHSDBG()Z

    move-result v1

    if-eqz v1, :cond_6f5

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowClientsInfo(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Ljava/lang/String;

    goto/16 :goto_6f5

    .line 138
    :pswitch_663
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AP_STA_DISCONNECTED_EVENT - disconnected_device : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v4, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " remaining_cnt :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->getConnectedDeviceLength()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_6a5

    .line 141
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x1

    const-string v8, "SemWifiApClientInfo"

    const-string v9, "Client device disconnected from Wi-Fi hotspot"

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->auditLog(Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_6a5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c3

    .line 149
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    .line 150
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 151
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    const-string v4, "sta_disconn"

    const/4 v5, -0x1

    invoke-static {v2, v1, v4, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    :cond_6c3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel switch status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    move-result v1

    if-eqz v1, :cond_6f5

    const-string v1, "Wait for 10 sec for reconnection of client. Sending CMD_AP_STA_RECONNECT"

    .line 155
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x79

    .line 156
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    .line 157
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6f5
    :goto_6f5
    :pswitch_6f5
    return-void

    :pswitch_data_6f6
    .packed-switch 0x65
        :pswitch_663
        :pswitch_53e
        :pswitch_4fe
        :pswitch_4bb
        :pswitch_478
        :pswitch_435
        :pswitch_3f2
        :pswitch_3e4
        :pswitch_3a4
        :pswitch_321
        :pswitch_6f5
        :pswitch_35
        :pswitch_2cf
        :pswitch_2c1
        :pswitch_2b3
        :pswitch_251
        :pswitch_20b
        :pswitch_1c8
        :pswitch_35
        :pswitch_18d
        :pswitch_d7
        :pswitch_3c
    .end packed-switch
.end method
