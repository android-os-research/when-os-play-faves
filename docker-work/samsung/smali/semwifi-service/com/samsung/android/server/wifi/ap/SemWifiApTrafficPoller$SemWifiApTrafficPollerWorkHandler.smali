.class Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;
.super Landroid/os/Handler;
.source "SemWifiApTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemWifiApTrafficPollerWorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Landroid/os/Looper;)V
    .registers 3

    .line 188
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 189
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 193
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_219

    const/4 v1, 0x2

    const-string v2, "SemWifiApTrafficPoller"

    if-eq p1, v1, :cond_213

    const/4 v1, 0x3

    if-eq p1, v1, :cond_20d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_f8

    const/4 v1, 0x5

    if-eq p1, v1, :cond_31

    const/16 v1, 0xb

    if-eq p1, v1, :cond_19

    goto/16 :goto_21e

    .line 293
    :cond_19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "sem_wifi"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    const-string p1, "mSemWifiManager.setAntMode(1)"

    .line 294
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setAntMode(I)V

    goto/16 :goto_21e

    .line 248
    :cond_31
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmUsedDual(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z

    move-result p1

    const-string v0, "Failed to stop tracking interface hotspot : "

    const/4 v1, 0x0

    if-eqz p1, :cond_78

    .line 249
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForDualHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    move-result-object p1

    if-eqz p1, :cond_21e

    const-string p1, "mPacketTrackerForDualHotspot stop "

    .line 250
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :try_start_49
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmConnectivityPacketLogForDualHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;

    move-result-object p1

    const-string v3, "stop logging ap_br_swlan0"

    invoke-virtual {p1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 253
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForDualHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->stop()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5d} :catch_5e

    goto :goto_71

    :catch_5e
    move-exception p1

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmPacketTrackerForDualHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)V

    goto/16 :goto_21e

    .line 260
    :cond_78
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    move-result-object p1

    if-eqz p1, :cond_b2

    const-string p1, "mPacketTrackerForHotspot stop "

    .line 261
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :try_start_85
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmConnectivityPacketLogForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;

    move-result-object p1

    const-string v3, "stop logging swlan0"

    invoke-virtual {p1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->stop()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_99} :catch_9a

    goto :goto_ad

    :catch_9a
    move-exception p1

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_ad
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)V

    .line 271
    :cond_b2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmIsSupportWifiSharing(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z

    move-result p1

    if-eqz p1, :cond_21e

    .line 272
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    move-result-object p1

    if-eqz p1, :cond_21e

    const-string p1, "mPacketTrackerForWlan0 stop "

    .line 273
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :try_start_c7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmConnectivityPacketLogForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;

    move-result-object p1

    const-string v0, "stop logging wlan0"

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->stop()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_db} :catch_dc

    goto :goto_f1

    :catch_dc
    move-exception p1

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop tracking interface station : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_f1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmPacketTrackerForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)V

    goto/16 :goto_21e

    .line 199
    :cond_f8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 215
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$sfgetsPktLogsMhs()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmConnectivityPacketLogForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Landroid/util/LocalLog;)V

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createPacketTracker swlan0 mApInterfaceName : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmConnectivityPacketLogForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$mcreatePacketTracker(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)V

    .line 218
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    move-result-object p1

    if-eqz p1, :cond_207

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPacketTrackerForHotspot start mApInterfaceName : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_169
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmConnectivityPacketLogForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;

    move-result-object p1

    const-string v0, "Start logging swlan0"

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->start(Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmUsedDual(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Z)V
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_189} :catch_18a

    goto :goto_19f

    :catch_18a
    move-exception p1

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to start tracking interface hotspot : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_19f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmIsSupportWifiSharing(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z

    move-result p1

    if-eqz p1, :cond_207

    .line 229
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$sfgetsPktLogsMhs()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string v1, "wlan0"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmConnectivityPacketLogForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Landroid/util/LocalLog;)V

    const-string p1, "createPacketTracker INTERFACE_NAME_OF_WLAN : wlan0"

    .line 230
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {v1}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmConnectivityPacketLogForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$mcreatePacketTracker(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmPacketTrackerForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)V

    .line 232
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    move-result-object p1

    if-eqz p1, :cond_207

    const-string p1, "mPacketTrackerForWlan0 start INTERFACE_NAME_OF_WLAN : wlan0"

    .line 233
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :try_start_1dd
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmConnectivityPacketLogForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;

    move-result-object p1

    const-string v0, "Start logging wlan0"

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 236
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->start(Ljava/lang/String;)V
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_1f1} :catch_1f2

    goto :goto_207

    :catch_1f2
    move-exception p0

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to start tracking interface station : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_207
    :goto_207
    const-string p0, "received START_PACKET_LOG"

    .line 245
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21e

    :cond_20d
    const-string p0, "received SET_CHANGE_PCIE_CORE"

    .line 290
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21e

    :cond_213
    const-string p0, "received STOP_TRAFFIC_CHECK"

    .line 287
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21e

    .line 195
    :cond_219
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->determineMaximumTpHotspot()V

    :cond_21e
    :goto_21e
    return-void
.end method
