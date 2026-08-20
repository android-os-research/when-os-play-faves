.class public Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;
.super Lcom/android/server/location/contexthub/IContextHubWrapper;
.source "IContextHubWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/IContextHubWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextHubWrapperAidl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;
    }
.end annotation


# instance fields
.field public final mAidlCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mHub:Landroid/hardware/contexthub/IContextHub;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Landroid/hardware/contexthub/IContextHub;)V
    .registers 5

    .line 403
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper;-><init>()V

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    .line 347
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Context Hub AIDL callback"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 404
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    .line 405
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 406
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public disableNanoapp(IJI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/contexthub/IContextHub;->disableNanoapp(IJI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_5} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x0

    return p0

    :catch_7
    const/4 p0, 0x2

    return p0

    :catch_9
    const/4 p0, 0x1

    return p0
.end method

.method public enableNanoapp(IJI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/contexthub/IContextHub;->enableNanoapp(IJI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_5} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x0

    return p0

    :catch_7
    const/4 p0, 0x2

    return p0

    :catch_9
    const/4 p0, 0x1

    return p0
.end method

.method public getHubs()Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 412
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    invoke-interface {p0}, Landroid/hardware/contexthub/IContextHub;->getContextHubs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/ContextHubInfo;

    .line 413
    new-instance v3, Landroid/hardware/location/ContextHubInfo;

    invoke-direct {v3, v2}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/ContextHubInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v2, v2, Landroid/hardware/contexthub/ContextHubInfo;->supportedPermissions:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, v3, :cond_14

    aget-object v5, v2, v4

    .line 415
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 418
    :cond_36
    new-instance p0, Landroid/util/Pair;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    invoke-static {p2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createAidlNanoAppBinary(Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/contexthub/NanoappBinary;

    move-result-object p2

    .line 511
    :try_start_4
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/contexthub/IContextHub;->loadNanoapp(ILandroid/hardware/contexthub/NanoappBinary;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_9} :catch_d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_9} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_9} :catch_b

    const/4 p0, 0x0

    return p0

    :catch_b
    const/4 p0, 0x2

    return p0

    :catch_d
    const/4 p0, 0x1

    return p0
.end method

.method public onAirplaneModeSettingChanged(Z)V
    .registers 3

    const/4 v0, 0x4

    .line 449
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    return-void
.end method

.method public onBtMainSettingChanged(Z)V
    .registers 3

    const/4 v0, 0x6

    .line 465
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    return-void
.end method

.method public onBtScanningSettingChanged(Z)V
    .registers 3

    const/4 v0, 0x7

    .line 469
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    return-void
.end method

.method public onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    .registers 3

    .line 475
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHub;->onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_21

    :catch_6
    move-exception p0

    .line 477
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in onHostEndpointConnected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IContextHubWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public onHostEndpointDisconnected(S)V
    .registers 3

    .line 484
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    int-to-char p1, p1

    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHub;->onHostEndpointDisconnected(C)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_22

    :catch_7
    move-exception p0

    .line 486
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in onHostEndpointDisconnected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IContextHubWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    return-void
.end method

.method public onLocationSettingChanged(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 442
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    return-void
.end method

.method public onMicrophoneSettingChanged(Z)V
    .registers 3

    const/4 v0, 0x5

    .line 453
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    return-void
.end method

.method public final onSettingChanged(BZ)V
    .registers 3

    .line 582
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    invoke-interface {p0, p1, p2}, Landroid/hardware/contexthub/IContextHub;->onSettingChanged(BZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_21

    :catch_6
    move-exception p0

    .line 584
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception while sending setting update: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IContextHubWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public onWifiMainSettingChanged(Z)V
    .registers 3

    const/4 v0, 0x2

    .line 457
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    return-void
.end method

.method public onWifiScanningSettingChanged(Z)V
    .registers 3

    const/4 v0, 0x3

    .line 461
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    return-void
.end method

.method public onWifiSettingChanged(Z)V
    .registers 2

    return-void
.end method

.method public queryNanoapps(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHub;->queryNanoapps(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_5} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x0

    return p0

    :catch_7
    const/4 p0, 0x2

    return p0

    :catch_9
    const/4 p0, 0x1

    return p0
.end method

.method public registerCallback(ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    :try_start_e
    iget-object p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/contexthub/IContextHubCallback;

    invoke-interface {p2, p1, p0}, Landroid/hardware/contexthub/IContextHub;->registerCallback(ILandroid/hardware/contexthub/IContextHubCallback;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1f} :catch_20
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_1f} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_1f} :catch_20

    goto :goto_3b

    :catch_20
    move-exception p0

    .line 576
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception while registering callback: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IContextHubWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    return-void
.end method

.method public sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    .line 496
    invoke-static {p1, p3}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createAidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/ContextHubMessage;

    move-result-object p1

    .line 495
    invoke-interface {p0, p2, p1}, Landroid/hardware/contexthub/IContextHub;->sendMessageToHub(ILandroid/hardware/contexthub/ContextHubMessage;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_9} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 p0, 0x0

    return p0

    :catch_b
    const/4 p0, 0x2

    return p0

    :catch_d
    const/4 p0, 0x1

    return p0
.end method

.method public supportsAirplaneModeSettingNotifications()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public supportsBtSettingNotifications()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public supportsLocationSettingNotifications()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public supportsMicrophoneSettingNotifications()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public supportsWifiSettingNotifications()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public unloadNanoapp(IJI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/contexthub/IContextHub;->unloadNanoapp(IJI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_5} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x0

    return p0

    :catch_7
    const/4 p0, 0x2

    return p0

    :catch_9
    const/4 p0, 0x1

    return p0
.end method
