.class public Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;
.super Ljava/lang/Object;
.source "SemWifiP2pNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;
    }
.end annotation


# static fields
.field private static final CONNECT_TO_SUPPLICANT_MAX_SAMPLES:I = 0x32

.field private static final CONNECT_TO_SUPPLICANT_SAMPLING_INTERVAL_MS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SemWifiP2pNative"


# instance fields
.field private final mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

.field private mIWifiP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;

.field private mInterfaceDestroyedListener:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;

.field private final mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSupplicantP2pIfaceHal(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;)Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIWifiP2pIface(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mIWifiP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 76
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    return-void
.end method

.method private createP2pIface(Landroid/os/Handler;)Ljava/lang/String;
    .registers 6

    .line 127
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SemWifiP2pNative"

    if-eqz v0, :cond_2e

    .line 128
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mInterfaceDestroyedListener:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;

    .line 129
    invoke-virtual {v0, v3, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->createP2pIface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mIWifiP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;

    if-nez p1, :cond_1d

    const-string p0, "Failed to create P2p iface in HalDeviceManager"

    .line 131
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 134
    :cond_1d
    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object p0

    .line 135
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2d

    const-string p0, "Failed to get p2p iface name"

    .line 136
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2d
    return-object p0

    :cond_2e
    const-string p0, "Vendor Hal is not supported, ignoring createP2pIface."

    .line 141
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private waitForSupplicantConnection()Z
    .registers 6

    .line 96
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->isInitializationStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    .line 97
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->initialize()Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    :cond_12
    move v0, v1

    :goto_13
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x32

    if-ge v0, v3, :cond_2a

    .line 103
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->isInitializationComplete()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    const-wide/16 v3, 0x64

    .line 107
    :try_start_25
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_28

    :catch_28
    move v0, v2

    goto :goto_13

    :cond_2a
    return v1
.end method


# virtual methods
.method public enableVerboseLogging(Z)V
    .registers 2

    .line 83
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->enableVerboseLogging(Z)V

    return-void
.end method

.method public isHalInterfaceSupported()Z
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isSupported()Z

    move-result p0

    return p0
.end method

.method public p2pFind(II)Z
    .registers 3

    .line 212
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->find(II)Z

    move-result p0

    return p0
.end method

.method public p2pRemoveClient(Ljava/lang/String;Z)Z
    .registers 3

    .line 223
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->p2pRemoveClient(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public p2pSet(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 234
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setP2pIncBw(Ljava/lang/String;ZI)Z
    .registers 4

    .line 264
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->setP2pIncBw(Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public setP2pNoa(Ljava/lang/String;ZI)Z
    .registers 4

    .line 258
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->setP2pNoa(Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public setupP2pInterface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Ljava/lang/String;
    .registers 6

    const-string v0, "SemWifiP2pNative"

    const-string v1, "Setup P2P interface"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mIWifiP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;

    const/4 v2, 0x0

    if-nez v1, :cond_42

    .line 157
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mInterfaceDestroyedListener:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;

    .line 159
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->createP2pIface(Landroid/os/Handler;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1f

    const-string p0, "Failed to create P2p iface"

    .line 161
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 164
    :cond_1f
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->waitForSupplicantConnection()Z

    move-result p2

    if-nez p2, :cond_2e

    const-string p2, "Failed to connect to supplicant"

    .line 165
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->teardownInterface(Ljava/lang/String;)V

    return-object v2

    .line 169
    :cond_2e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->setupIface(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3c

    const-string p0, "Failed to setup P2p iface in supplicant"

    .line 170
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3c
    const-string p0, "P2P interface setup completed"

    .line 173
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_42
    const-string p1, "P2P interface is already existed"

    .line 176
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 178
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mIWifiP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v2

    :cond_55
    return-object v2
.end method

.method public startP2pListenOffloading(IIII)Z
    .registers 5

    .line 243
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->startP2pListenOffloading(IIII)Z

    move-result p0

    return p0
.end method

.method public stopP2pListenOffloading()Z
    .registers 1

    .line 252
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;->stopP2pListenOffloading()Z

    move-result p0

    return p0
.end method

.method public teardownInterface(Ljava/lang/String;)V
    .registers 4

    const-string v0, "SemWifiP2pNative"

    const-string v1, "Teardown P2P interface"

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 189
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mIWifiP2pIface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;

    if-eqz v1, :cond_28

    .line 191
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mInterfaceDestroyedListener:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->teardownAndInvalidate(Ljava/lang/String;)V

    const-string p0, "P2P interface teardown completed"

    .line 192
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_1e
    const-string v1, "HAL (HIDL) is not supported. Destroy listener for the interface."

    .line 195
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->mInterfaceDestroyedListener:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative$InterfaceDestroyedListenerInternal;->teardownAndInvalidate(Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void
.end method
