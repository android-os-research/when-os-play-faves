.class public Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;
.super Landroid/os/Handler;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdbDebuggingHandler"
.end annotation


# static fields
.field public static final ADB_NOTIFICATION_CHANNEL_ID_TV:Ljava/lang/String; = "usbdevicemanager.adb.tv"

.field public static final MESSAGE_ADB_ALLOW:I = 0x3

.field public static final MESSAGE_ADB_CLEAR:I = 0x6

.field public static final MESSAGE_ADB_CONFIRM:I = 0x5

.field public static final MESSAGE_ADB_CONNECTED_KEY:I = 0xa

.field public static final MESSAGE_ADB_DENY:I = 0x4

.field public static final MESSAGE_ADB_DISABLED:I = 0x2

.field public static final MESSAGE_ADB_DISCONNECT:I = 0x7

.field public static final MESSAGE_ADB_ENABLED:I = 0x1

.field public static final MESSAGE_ADB_PERSIST_KEYSTORE:I = 0x8

.field public static final MESSAGE_ADB_UPDATE_KEYSTORE:I = 0x9

.field public static final MESSAGE_KEY_FILES_UPDATED:I = 0x1c

.field public static final MSG_ADBDWIFI_DISABLE:I = 0xc

.field public static final MSG_ADBDWIFI_ENABLE:I = 0xb

.field public static final MSG_ADBD_SOCKET_CONNECTED:I = 0x1a

.field public static final MSG_ADBD_SOCKET_DISCONNECTED:I = 0x1b

.field public static final MSG_ADBWIFI_ALLOW:I = 0x12

.field public static final MSG_ADBWIFI_DENY:I = 0x13

.field public static final MSG_DISABLE_ADBDWIFI:Ljava/lang/String; = "DA"

.field public static final MSG_DISCONNECT_DEVICE:Ljava/lang/String; = "DD"

.field public static final MSG_PAIRING_CANCEL:I = 0xe

.field public static final MSG_PAIR_PAIRING_CODE:I = 0xf

.field public static final MSG_PAIR_QR_CODE:I = 0x10

.field public static final MSG_REQ_UNPAIR:I = 0x11

.field public static final MSG_RESPONSE_PAIRING_PORT:I = 0x15

.field public static final MSG_RESPONSE_PAIRING_RESULT:I = 0x14

.field public static final MSG_SERVER_CONNECTED:I = 0x18

.field public static final MSG_SERVER_DISCONNECTED:I = 0x19

.field public static final MSG_WIFI_DEVICE_CONNECTED:I = 0x16

.field public static final MSG_WIFI_DEVICE_DISCONNECTED:I = 0x17

.field public static final UPDATE_KEYSTORE_JOB_INTERVAL:J = 0x5265c00L

.field public static final UPDATE_KEYSTORE_MIN_JOB_INTERVAL:J = 0xea60L


# instance fields
.field public mAdbEnabledRefCount:I

.field public mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mAdbNotificationShown:Z

.field public mAuthTimeObserver:Landroid/database/ContentObserver;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Landroid/os/Looper;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 817
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 818
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 651
    new-instance p2, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;

    invoke-direct {p2, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;)V

    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 p2, 0x0

    .line 804
    iput p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    .line 806
    new-instance p2, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$2;

    invoke-direct {p2, p0, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$2;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAuthTimeObserver:Landroid/database/ContentObserver;

    .line 819
    invoke-static {p1, p3}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmThread(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)V

    return-void
.end method


# virtual methods
.method public final cancelJobToUpdateAdbKeyStore()V
    .registers 2

    const/16 v0, 0x9

    .line 1338
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final createPairingCode(I)Ljava/lang/String;
    .registers 5

    .line 1344
    new-instance p0, Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    const-string v0, ""

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p1, :cond_22

    .line 1346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_22
    return-object v0
.end method

.method public final getCurrentWifiApInfo()Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;
    .registers 8

    .line 1379
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 1380
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8a

    .line 1381
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1e

    goto :goto_8a

    .line 1387
    :cond_1e
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v2

    if-nez v2, :cond_69

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_69

    .line 1390
    :cond_2b
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_39

    const-string v3, "<unknown ssid>"

    .line 1391
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 1393
    :cond_39
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 1394
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_42
    if-ge v4, v3, :cond_5d

    .line 1396
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    if-ne v5, v6, :cond_5a

    .line 1397
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_5d
    if-nez v2, :cond_6d

    .line 1401
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unable to get ssid of the wifi AP."

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1388
    :cond_69
    :goto_69
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object v2

    .line 1407
    :cond_6d
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_80

    .line 1408
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7a

    goto :goto_80

    .line 1412
    :cond_7a
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    invoke-direct {v0, p0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1409
    :cond_80
    :goto_80
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unable to get the wifi ap\'s BSSID."

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1382
    :cond_8a
    :goto_8a
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Not connected to any wireless network. Not enabling adbwifi."

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 889
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->initKeyStore()V

    .line 891
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1049
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    packed-switch v0, :pswitch_data_6a8

    :pswitch_11
    goto/16 :goto_6a7

    .line 1276
    :pswitch_13
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->reloadKeyMap()V

    goto/16 :goto_6a7

    .line 1264
    :pswitch_1a
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "adbd socket disconnected"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectionPortPoller(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 1266
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectionPortPoller(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->cancelAndWait()V

    .line 1267
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1, v3}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmConnectionPortPoller(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;)V

    .line 1269
    :cond_39
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result p1

    if-eqz p1, :cond_6a7

    .line 1271
    invoke-virtual {p0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onAdbdWifiServerDisconnected(I)V

    goto/16 :goto_6a7

    .line 1254
    :pswitch_46
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "adbd socket connected"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result p1

    if-eqz p1, :cond_6a7

    .line 1257
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmPortListener(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V

    invoke-static {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmConnectionPortPoller(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;)V

    .line 1259
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectionPortPoller(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_6a7

    .line 1239
    :pswitch_72
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto/16 :goto_6a7

    .line 1242
    :cond_7c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1243
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onAdbdWifiServerDisconnected(I)V

    .line 1244
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "adb_wifi_enabled"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1246
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->stopAdbDebuggingThread()V

    .line 1247
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectionPortPoller(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    move-result-object p1

    if-eqz p1, :cond_6a7

    .line 1248
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectionPortPoller(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->cancelAndWait()V

    .line 1249
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0, v3}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmConnectionPortPoller(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;)V

    goto/16 :goto_6a7

    .line 1229
    :pswitch_ad
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1230
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onAdbdWifiServerConnected(I)V

    .line 1231
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    move-result-object v0

    monitor-enter v0

    .line 1232
    :try_start_bf
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->setPort(I)V

    .line 1233
    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_bf .. :try_end_c9} :catchall_d6

    .line 1234
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "adb_wifi_enabled"

    invoke-static {p0, p1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6a7

    :catchall_d6
    move-exception p0

    .line 1233
    :try_start_d7
    monitor-exit v0
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    throw p0

    .line 1219
    :pswitch_d9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1220
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmWifiConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a7

    .line 1221
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    .line 1222
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmWifiConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6a7

    .line 1223
    invoke-virtual {p0, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->showAdbConnectedNotification(Z)V

    goto/16 :goto_6a7

    .line 1211
    :pswitch_103
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1212
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmWifiConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a7

    .line 1213
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    .line 1214
    invoke-virtual {p0, v5}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->showAdbConnectedNotification(Z)V

    goto/16 :goto_6a7

    .line 1179
    :pswitch_121
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1180
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairingPortToUI(I)V

    goto/16 :goto_6a7

    .line 1171
    :pswitch_12e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo v0, "publicKey"

    .line 1172
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1173
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onPairingResult(Ljava/lang/String;)V

    .line 1175
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    goto/16 :goto_6a7

    .line 1149
    :pswitch_147
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "adb_wifi_enabled"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1151
    invoke-virtual {p0, v4, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendServerConnectionState(ZI)V

    goto/16 :goto_6a7

    .line 1114
    :pswitch_157
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result v0

    if-eqz v0, :cond_161

    goto/16 :goto_6a7

    .line 1117
    :cond_161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1118
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v5, :cond_16a

    move v4, v5

    :cond_16a
    if-eqz v4, :cond_171

    .line 1120
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->addTrustedNetwork(Ljava/lang/String;)V

    .line 1125
    :cond_171
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->getCurrentWifiApInfo()Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    move-result-object p1

    if-eqz p1, :cond_6a7

    .line 1126
    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_183

    goto/16 :goto_6a7

    .line 1130
    :cond_183
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msetAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V

    .line 1131
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "adb_wifi_enabled"

    invoke-static {p1, v0, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1133
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 1135
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1136
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo p1, "persist.adb.tls_server.enable"

    const-string v0, "1"

    .line 1138
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmPortListener(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V

    invoke-static {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmConnectionPortPoller(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;)V

    .line 1141
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectionPortPoller(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1143
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->startAdbDebuggingThread()V

    .line 1144
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0, v5}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;Z)V

    .line 1146
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "adb start wireless adb"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a7

    .line 1154
    :pswitch_1de
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1156
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->findKeyFromFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_223

    .line 1157
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f1

    goto :goto_223

    .line 1161
    :cond_1f1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DD"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1162
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v1

    if-eqz v1, :cond_213

    .line 1163
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    .line 1165
    :cond_213
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->removeKey(Ljava/lang/String;)V

    .line 1167
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    goto/16 :goto_6a7

    .line 1158
    :cond_223
    :goto_223
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a known fingerprint ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a7

    .line 1191
    :pswitch_242
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo v0, "serviceName"

    .line 1192
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "password"

    .line 1193
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1194
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    new-instance v2, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {v2, v3, p1, v0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;-><init>(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmPairingThread(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$PairingThread;)V

    .line 1195
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmPairingThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_6a7

    .line 1184
    :pswitch_26b
    invoke-virtual {p0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->createPairingCode(I)Ljava/lang/String;

    move-result-object p1

    .line 1185
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->updateUIPairCode(Ljava/lang/String;)V

    .line 1186
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    new-instance v1, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {v1, v2, p1, v3}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;-><init>(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmPairingThread(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$PairingThread;)V

    .line 1187
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmPairingThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_6a7

    .line 1199
    :pswitch_289
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmPairingThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    move-result-object p1

    if-eqz p1, :cond_6a7

    .line 1200
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmPairingThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->cancelPairing()V

    .line 1202
    :try_start_29a
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmPairingThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_2a3
    .catch Ljava/lang/InterruptedException; {:try_start_29a .. :try_end_2a3} :catch_2a4

    goto :goto_2b1

    :catch_2a4
    move-exception p1

    .line 1204
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error while waiting for pairing thread to quit."

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1207
    :goto_2b1
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0, v3}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmPairingThread(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$PairingThread;)V

    goto/16 :goto_6a7

    .line 1100
    :pswitch_2b8
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result p1

    if-nez p1, :cond_2c2

    goto/16 :goto_6a7

    .line 1103
    :cond_2c2
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1, v4}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;Z)V

    .line 1104
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1, v3}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msetAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V

    .line 1105
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1107
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object p1

    if-eqz p1, :cond_2ea

    .line 1108
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object p1

    const-string v0, "DA"

    invoke-virtual {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    .line 1110
    :cond_2ea
    invoke-virtual {p0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onAdbdWifiServerDisconnected(I)V

    .line 1111
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->stopAdbDebuggingThread()V

    goto/16 :goto_6a7

    .line 1061
    :pswitch_2f2
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result p1

    if-eqz p1, :cond_2fc

    goto/16 :goto_6a7

    .line 1065
    :cond_2fc
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->getCurrentWifiApInfo()Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    move-result-object p1

    if-nez p1, :cond_30f

    .line 1067
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "adb_wifi_enabled"

    invoke-static {p0, p1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6a7

    .line 1072
    :cond_30f
    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 1073
    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 1072
    invoke-virtual {p0, v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->verifyWifiNetwork(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32a

    .line 1077
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "adb_wifi_enabled"

    invoke-static {p0, p1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6a7

    .line 1082
    :cond_32a
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msetAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V

    .line 1083
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 1085
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo p1, "persist.adb.tls_server.enable"

    const-string v0, "1"

    .line 1088
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmPortListener(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V

    invoke-static {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmConnectionPortPoller(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;)V

    .line 1091
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectionPortPoller(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1093
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->startAdbDebuggingThread()V

    .line 1094
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0, v5}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;Z)V

    .line 1096
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "adb start wireless adb"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a7

    .line 1043
    :pswitch_37a
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "handleMessage -> MESSAGE_ADB_CONNECTED_KEY"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3e2

    .line 1045
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_391

    goto :goto_3e2

    .line 1048
    :cond_391
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a7

    .line 1049
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c5

    .line 1051
    :cond_3a7
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    :goto_3c5
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    .line 1054
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1055
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    const/4 v0, 0x4

    .line 1056
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    goto/16 :goto_6a7

    .line 1046
    :cond_3e2
    :goto_3e2
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Received a connected key message with an empty key"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a7

    .line 1027
    :pswitch_3ed
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "handleMessage -> MESSAGE_ADB_UPDATE_KEYSTORE"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_43d

    .line 1029
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_411
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_433

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1030
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    move-result-object v2

    .line 1031
    invoke-interface {v2}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v2

    .line 1030
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    goto :goto_411

    .line 1033
    :cond_433
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1034
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    goto/16 :goto_6a7

    .line 1035
    :cond_43d
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6a7

    .line 1036
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->updateKeyStore()V

    .line 1037
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    goto/16 :goto_6a7

    .line 1019
    :pswitch_44f
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "handleMessage -> MESSAGE_ADB_PERSIST_KEYSTORE"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    if-eqz p0, :cond_6a7

    .line 1021
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->persistKeyStore()V

    goto/16 :goto_6a7

    .line 994
    :pswitch_462
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "handleMessage -> MESSAGE_ADB_DISCONNECT"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4c7

    .line 997
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4c7

    .line 998
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d0

    .line 1000
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v5

    if-nez v0, :cond_4b8

    .line 1002
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    move-result-object v1

    .line 1003
    invoke-interface {v1}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v1

    .line 1002
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    .line 1004
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1005
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 1006
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c5

    .line 1008
    :cond_4b8
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4c5
    move v4, v5

    goto :goto_4d0

    .line 1012
    :cond_4c7
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received a disconnected key message with an empty key"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d0
    :goto_4d0
    const/4 v0, 0x7

    .line 1014
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    goto/16 :goto_6a7

    .line 981
    :pswitch_4d6
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "handleMessage -> MESSAGE_ADB_CLEAR"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Received a request to clear the adb authorizations"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 986
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->initKeyStore()V

    .line 987
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmWifiConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 988
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->deleteKeyStore()V

    .line 989
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->cancelJobToUpdateAdbKeyStore()V

    goto/16 :goto_6a7

    .line 946
    :pswitch_508
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "handleMessage -> MESSAGE_ADB_CONFIRM"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v0, "trigger_restart_min_framework"

    const-string/jumbo v2, "vold.decrypt"

    .line 949
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 948
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_551

    .line 950
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Deferring adb confirmation until after vold decrypt"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    if-eqz v0, :cond_6a7

    .line 952
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "handleMessage -> MESSAGE_ADB_CONFIRM_DENY_1"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    const-string v2, "NO"

    invoke-virtual {v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p0, p1, v1, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    goto/16 :goto_6a7

    .line 958
    :cond_551
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 959
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_582

    .line 960
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    if-eqz v0, :cond_6a7

    .line 961
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "handleMessage -> MESSAGE_ADB_CONFIRM_DENY_2"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 963
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    goto/16 :goto_6a7

    .line 967
    :cond_582
    invoke-virtual {p0, p1, v5, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    .line 969
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.auto_confirm"

    const-string v1, "0"

    .line 970
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 971
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a6

    .line 972
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-virtual {p0, v5, p1}, Lcom/android/server/adb/AdbDebuggingManager;->allowDebugging(ZLjava/lang/String;)V

    goto/16 :goto_6a7

    .line 974
    :cond_5a6
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmFingerprints(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mstartConfirmationForKey(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6a7

    .line 937
    :pswitch_5b1
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "handleMessage -> MESSAGE_ADB_DENY"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object p1

    if-eqz p1, :cond_6a7

    .line 939
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Denying adb confirmation"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object p1

    const-string v0, "NO"

    invoke-virtual {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 941
    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    goto/16 :goto_6a7

    .line 911
    :pswitch_5dd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 912
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 913
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmFingerprints(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61b

    .line 914
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fingerprints do not match. Got "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmFingerprints(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a7

    .line 919
    :cond_61b
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v5, :cond_620

    move v4, v5

    .line 920
    :cond_620
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object p1

    if-eqz p1, :cond_665

    .line 921
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object p1

    const-string v1, "OK"

    invoke-virtual {p1, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    if-eqz v4, :cond_661

    .line 923
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64a

    .line 924
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    :cond_64a
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    .line 927
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 928
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    :cond_661
    const/4 p1, 0x2

    .line 930
    invoke-virtual {p0, v0, p1, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(Ljava/lang/String;IZ)V

    .line 932
    :cond_665
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "handleMessage -> MESSAGE_ADB_ALLOW"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a7

    .line 902
    :pswitch_670
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "handleMessage -> MESSAGE_ADB_DISABLED"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbUsbEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result p1

    if-nez p1, :cond_683

    goto :goto_6a7

    .line 906
    :cond_683
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->stopAdbDebuggingThread()V

    .line 907
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0, v4}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmAdbUsbEnabled(Lcom/android/server/adb/AdbDebuggingManager;Z)V

    goto :goto_6a7

    .line 893
    :pswitch_68c
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "handleMessage -> MESSAGE_ADB_ENABLED"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmAdbUsbEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z

    move-result p1

    if-eqz p1, :cond_69f

    goto :goto_6a7

    .line 897
    :cond_69f
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->startAdbDebuggingThread()V

    .line 898
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0, v5}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmAdbUsbEnabled(Lcom/android/server/adb/AdbDebuggingManager;Z)V

    :cond_6a7
    :goto_6a7
    return-void

    :pswitch_data_6a8
    .packed-switch 0x1
        :pswitch_68c
        :pswitch_670
        :pswitch_5dd
        :pswitch_5b1
        :pswitch_508
        :pswitch_4d6
        :pswitch_462
        :pswitch_44f
        :pswitch_3ed
        :pswitch_37a
        :pswitch_2f2
        :pswitch_2b8
        :pswitch_11
        :pswitch_289
        :pswitch_26b
        :pswitch_242
        :pswitch_1de
        :pswitch_157
        :pswitch_147
        :pswitch_12e
        :pswitch_121
        :pswitch_103
        :pswitch_d9
        :pswitch_ad
        :pswitch_72
        :pswitch_46
        :pswitch_1a
        :pswitch_13
    .end packed-switch
.end method

.method public initKeyStore()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 825
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    if-nez v0, :cond_d

    .line 826
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    :cond_d
    return-void
.end method

.method public final isTv()Z
    .registers 2

    .line 710
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final logAdbConnectionChanged(Ljava/lang/String;IZ)V
    .registers 12

    .line 1288
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getLastConnectionTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 1289
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v4

    .line 1290
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logging key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", state = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", alwaysAllow = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", lastConnectionTime = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", authWindow = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x90

    move v6, p2

    move v7, p3

    .line 1294
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJJIZ)V

    return-void
.end method

.method public final onAdbdWifiServerConnected(I)V
    .registers 3

    .line 1363
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    const/4 v0, 0x1

    .line 1364
    invoke-virtual {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendServerConnectionState(ZI)V

    return-void
.end method

.method public final onAdbdWifiServerDisconnected(I)V
    .registers 3

    .line 1370
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmWifiConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 1371
    invoke-virtual {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->showAdbConnectedNotification(Z)V

    .line 1372
    invoke-virtual {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendServerConnectionState(ZI)V

    return-void
.end method

.method public final onPairingResult(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    const-string/jumbo v1, "status"

    const-string v2, "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

    if-nez p1, :cond_1c

    .line 1428
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1430
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_6d

    .line 1433
    :cond_1c
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1434
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1436
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1, p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "\\s+"

    .line 1438
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1439
    array-length v5, v4

    if-le v5, v2, :cond_37

    .line 1440
    aget-object v2, v4, v2

    goto :goto_3a

    :cond_37
    const-string/jumbo v2, "nouser@nohostname"

    .line 1442
    :goto_3a
    new-instance v4, Landroid/debug/PairDevice;

    invoke-direct {v4}, Landroid/debug/PairDevice;-><init>()V

    .line 1443
    iput-object v1, v4, Landroid/debug/PairDevice;->name:Ljava/lang/String;

    .line 1444
    iput-object v2, v4, Landroid/debug/PairDevice;->guid:Ljava/lang/String;

    .line 1445
    iput-boolean v0, v4, Landroid/debug/PairDevice;->connected:Z

    const-string/jumbo v0, "pair_device"

    .line 1446
    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1447
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v0, v3, v1}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1450
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    .line 1451
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1452
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    :goto_6d
    return-void
.end method

.method public registerForAuthTimeChanges()V
    .registers 4

    const-string v0, "adb_allowed_connection_time"

    .line 1283
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1284
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAuthTimeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public scheduleJobToUpdateAdbKeyStore()J
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1308
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->cancelJobToUpdateAdbKeyStore()V

    .line 1309
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getNextExpirationTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    return-wide v2

    :cond_10
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    goto :goto_25

    :cond_17
    const-wide/32 v2, 0x5265c00

    .line 1325
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_25
    const/16 v0, 0x9

    .line 1328
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1329
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-wide v2
.end method

.method public final sendPairedDevicesToUI(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/debug/PairDevice;",
            ">;)V"
        }
    .end annotation

    .line 1465
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.adb.WIRELESS_DEBUG_PAIRED_DEVICES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1467
    check-cast p1, Ljava/util/HashMap;

    const-string v1, "devices_map"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1468
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendPairingPortToUI(I)V
    .registers 5

    .line 1457
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    const/4 v2, 0x4

    .line 1458
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "adb_port"

    .line 1460
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1461
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendServerConnectionState(ZI)V
    .registers 5

    .line 1353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.adb.WIRELESS_DEBUG_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_b

    const/4 p1, 0x4

    goto :goto_c

    :cond_b
    const/4 p1, 0x5

    :goto_c
    const-string/jumbo v1, "status"

    .line 1354
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "adb_port"

    .line 1357
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1358
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final setupNotifications()V
    .registers 5

    .line 714
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_5

    return-void

    .line 717
    :cond_5
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "notification"

    .line 718
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_22

    .line 720
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unable to setup notifications for wireless debugging"

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 725
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->isTv()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 727
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p0

    const v2, 0x104018b

    .line 729
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    const-string/jumbo v3, "usbdevicemanager.adb.tv"

    invoke-direct {v1, v3, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 727
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_43
    return-void
.end method

.method public showAdbConnectedNotification(Z)V
    .registers 5

    .line 833
    iget-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNotificationShown:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 836
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->setupNotifications()V

    .line 837
    iget-boolean p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNotificationShown:Z

    const/16 v0, 0x3e

    const/4 v1, 0x0

    if-nez p1, :cond_24

    .line 838
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {p1, v2}, Landroid/debug/AdbNotifications;->createNotification(Landroid/content/Context;B)Landroid/app/Notification;

    move-result-object p1

    .line 840
    iput-boolean v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNotificationShown:Z

    .line 841
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_2e

    :cond_24
    const/4 p1, 0x0

    .line 844
    iput-boolean p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNotificationShown:Z

    .line 845
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_2e
    return-void
.end method

.method public final startAdbDebuggingThread()V
    .registers 5

    .line 850
    iget v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    .line 851
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAdbDebuggingThread ref="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    if-le v0, v1, :cond_26

    return-void

    .line 856
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->registerForAuthTimeChanges()V

    .line 857
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    new-instance v1, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    invoke-direct {v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmThread(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)V

    .line 858
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v1, v1, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->setHandler(Landroid/os/Handler;)V

    .line 859
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 861
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->updateKeyStore()V

    .line 862
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    return-void
.end method

.method public final stopAdbDebuggingThread()V
    .registers 6

    .line 866
    iget v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    .line 867
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopAdbDebuggingThread ref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    if-lez v0, :cond_26

    return-void

    .line 872
    :cond_26
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 873
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->stopListening()V

    .line 874
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fputmThread(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)V

    .line 877
    :cond_3d
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_90

    .line 878
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 879
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;J)V

    goto :goto_57

    .line 881
    :cond_79
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 882
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 883
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmWifiConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 885
    :cond_90
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    return-void
.end method

.method public final updateUIPairCode(Ljava/lang/String;)V
    .registers 5

    .line 1472
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIPairCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "pairing_code"

    .line 1475
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "status"

    const/4 v1, 0x3

    .line 1476
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1478
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final verifyWifiNetwork(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1417
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-virtual {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->isTrustedNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 1422
    :cond_a
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0, p2, p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mstartConfirmationForNetwork(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
