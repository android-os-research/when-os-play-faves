.class public Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackAidlImpl;
.super Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback$Stub;
.source "SemSehSupplicantP2pIfaceCallbackAidlImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemSehSupplicantP2pIfaceCallbackAidlImpl"

.field private static sVerboseLoggingEnabled:Z = true


# instance fields
.field private final mInterface:Ljava/lang/String;

.field private final mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback$Stub;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    return-void
.end method

.method public static enableVerboseLogging(Z)V
    .registers 1

    .line 43
    sput-boolean p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackAidlImpl;->sVerboseLoggingEnabled:Z

    return-void
.end method

.method protected static logd(Ljava/lang/String;)V
    .registers 2

    .line 47
    sget-boolean v0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackAidlImpl;->sVerboseLoggingEnabled:Z

    if-eqz v0, :cond_9

    const-string v0, "SemSehSupplicantP2pIfaceCallbackAidlImpl"

    .line 48
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "72b0193a7f92a79bcf2c7aa6415ee61b1579065d"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onBigDataLogging(Ljava/lang/String;)V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastBigDataEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGoPs(Ljava/lang/String;)V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastGoPsEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGroupStarted(Ljava/lang/String;Z[BI[BLjava/lang/String;[BZ[B)V
    .registers 10

    return-void
.end method

.method public onP2pEventReceived(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pEventNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
