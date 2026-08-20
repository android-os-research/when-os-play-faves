.class public Lcom/android/server/display/WifiDisplayController$34;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2

    .line 2337
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(Landroid/view/Surface;III)V
    .registers 12

    .line 2437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisplayChanged, width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectedDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmRemoteDisplay(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAdvertisedDisplay(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 2439
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAdvertisedDisplay(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$madvertiseDisplay(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    :cond_44
    return-void
.end method

.method public onDisplayConnected(Landroid/view/Surface;IIIILjava/lang/String;)V
    .registers 16

    .line 2340
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectedDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_192

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmRemoteDisplay(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v0

    if-eqz v0, :cond_192

    .line 2341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisplayConnected, width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , flags : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1, p4}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mflagsToString(Lcom/android/server/display/WifiDisplayController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nOpened RTSP connection with Wifi display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectedDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectedDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$smcreateWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-static {v0, v2, p4}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msetWifiDisplayConfig(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;I)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 2345
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object v4, v0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$madvertiseDisplay(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 2346
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    and-int/lit8 v2, p4, 0x4

    const/4 v3, 0x1

    if-nez v2, :cond_73

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_71

    goto :goto_73

    :cond_71
    const/4 p4, 0x0

    goto :goto_74

    :cond_73
    :goto_73
    move p4, v3

    :goto_74
    invoke-static {p1, p4}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmIsPortraitDisplay(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 2347
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmWfdUibcManager(Lcom/android/server/display/WifiDisplayController;)Lcom/samsung/android/wfd/WFDUibcManager;

    move-result-object p1

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/wfd/WFDUibcManager;->setUIBCNegotiagedResolution(FF)V

    .line 2348
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1, v3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmRemoteDisplayConnected(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 2349
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmHandler(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmRtspTimeout(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2351
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1, v3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendSSRMRequestIntent(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 2352
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 p2, 0x2

    const/4 p3, 0x4

    invoke-static {p1, p2, p3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendEventToSemDeviceStatusListener(Lcom/android/server/display/WifiDisplayController;II)V

    .line 2354
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2355
    iget-object p3, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAdvertisedDisplay(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;

    move-result-object p4

    invoke-static {p3, p4, p6}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mparseParametersFromEngine(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Ljava/util/List;

    .line 2356
    iget-object p3, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAdvertisedDisplay(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;

    move-result-object p3

    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->getParameters()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    .line 2357
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_c2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_e3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 2358
    new-instance p6, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-direct {p6, v2, p4}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c2

    .line 2360
    :cond_e3
    iget-object p3, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p3, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$monConnectionSuccess(Lcom/android/server/display/WifiDisplayController;Ljava/util/List;)V

    .line 2361
    iget-object p3, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p3, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendWifiDisplayParameterEvent(Lcom/android/server/display/WifiDisplayController;Ljava/util/List;)V

    .line 2362
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendWifiDisplayVolumeSupportChangedBroadcast(Lcom/android/server/display/WifiDisplayController;)V

    .line 2364
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmWifiDisplayCertMode(Lcom/android/server/display/WifiDisplayController;)Z

    move-result p1

    if-eqz p1, :cond_10d

    .line 2365
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectedDeviceGroupInfo(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object p4

    invoke-static {p3, p4, p5}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mgetSessionInfo(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 2367
    :cond_10d
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmWifiDisplayConfig(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/SemWifiDisplayConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplayConfig;->isInitiateMirroringMode()Z

    move-result p1

    if-eqz p1, :cond_11e

    .line 2368
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mwakeUpScreen(Lcom/android/server/display/WifiDisplayController;)V

    .line 2370
    :cond_11e
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmWifiDisplayConfig(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/SemWifiDisplayConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    move-result p1

    if-eq p1, p2, :cond_136

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getIconIdx()I

    move-result p1

    const p2, 0xff00

    and-int/2addr p1, p2

    const/16 p2, 0x600

    if-ne p1, p2, :cond_16e

    .line 2371
    :cond_136
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mregisterGameManagerCallback(Lcom/android/server/display/WifiDisplayController;)V

    .line 2373
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.samsung.media.action.AUDIO_MODE"

    .line 2374
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2375
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAudioModeChangedReceiver(Lcom/android/server/display/WifiDisplayController;)Landroid/content/BroadcastReceiver;

    move-result-object p3

    const/4 p4, 0x0

    iget-object p5, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p5}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmHandler(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object p5

    invoke-virtual {p2, p3, p1, p4, p5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2376
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAdvertisedDisplay(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAudioManager(Lcom/android/server/display/WifiDisplayController;)Landroid/media/AudioManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/AudioManager;->getMode()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendVoipModeMessageIfNecessary(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;I)V

    .line 2379
    :cond_16e
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1, v3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mhandleWifiDisplayStateBroadcast(Lcom/android/server/display/WifiDisplayController;I)V

    .line 2380
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onDisplayConnected wifidisplay "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAdvertisedDisplay(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_192
    return-void
.end method

.method public onDisplayDisconnected()V
    .registers 5

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "onDisplayDisconnected"

    .line 2386
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendSSRMRequestIntent(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 2389
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectedDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectedDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmDesiredDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    if-ne v1, v3, :cond_45

    .line 2390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closed RTSP connection with Wifi display: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectedDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mdisconnect(Lcom/android/server/display/WifiDisplayController;)V

    .line 2394
    :cond_45
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmWifiDisplayConfig(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/SemWifiDisplayConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayConfig;->isInitiateMirroringMode()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 2396
    :try_start_51
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmInitiateReceiver(Lcom/android/server/display/WifiDisplayController;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_60} :catch_61

    goto :goto_67

    :catch_61
    const-string/jumbo v1, "unregisterReceiver:: mInitiateReceiver not registered"

    .line 2398
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :cond_67
    :goto_67
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$munregisterGameManagerCallback(Lcom/android/server/display/WifiDisplayController;)V

    .line 2404
    :try_start_6c
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAudioModeChangedReceiver(Lcom/android/server/display/WifiDisplayController;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6c .. :try_end_7b} :catch_7c

    goto :goto_82

    :catch_7c
    const-string/jumbo v1, "unregisterReceiver:: mAudioModeChangedReceiver not registered"

    .line 2406
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    :goto_82
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v0, 0x4

    invoke-static {p0, v2, v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendEventToSemDeviceStatusListener(Lcom/android/server/display/WifiDisplayController;II)V

    return-void
.end method

.method public onDisplayError(I)V
    .registers 8

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "onDisplayError"

    .line 2414
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendSSRMRequestIntent(Lcom/android/server/display/WifiDisplayController;Z)V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1c

    const-string p1, "HDCP Key is no written"

    .line 2418
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0, v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mhandleConnectionFailure(Lcom/android/server/display/WifiDisplayController;I)V

    goto :goto_8e

    .line 2420
    :cond_1c
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectedDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectedDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmDesiredDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    if-ne v1, v3, :cond_8e

    .line 2421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lost RTSP connection with Wifi display due to error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectedDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 2423
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v3, v1

    :goto_69
    const/4 v4, 0x4

    if-ge v2, v3, :cond_89

    aget-object v5, v1, v2

    .line 2424
    invoke-virtual {p1, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    if-eqz v5, :cond_86

    .line 2425
    invoke-virtual {v5, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_86

    const-string p1, "Connection ended due to VPN."

    .line 2426
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 p1, 0x5

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mhandleConnectionFailure(Lcom/android/server/display/WifiDisplayController;I)V

    return-void

    :cond_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 2431
    :cond_89
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$34;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0, v4}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mhandleConnectionFailure(Lcom/android/server/display/WifiDisplayController;I)V

    :cond_8e
    :goto_8e
    return-void
.end method
