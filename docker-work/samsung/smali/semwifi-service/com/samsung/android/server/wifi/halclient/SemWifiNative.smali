.class public Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
.super Ljava/lang/Object;
.source "SemWifiNative.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;
.implements Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;
.implements Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiNative$SupplicantDeathEventHandler;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceCallback;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiNative"


# instance fields
.field private final mIfaceMgr:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

.field private final mLock:Ljava/lang/Object;

.field private final mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

.field private final mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIfaceMgr(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mIfaceMgr:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mVerboseLoggingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$monInterfaceDestroyed(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->onInterfaceDestroyed(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .registers 6

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mVerboseLoggingEnabled:Z

    .line 263
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    .line 264
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager-IA;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mIfaceMgr:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    .line 52
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    .line 53
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    .line 54
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    return-void
.end method

.method private createStaIface(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;)Ljava/lang/String;
    .registers 6

    .line 1048
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1049
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->isVendorHalSupported()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1050
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;

    iget v3, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->id:I

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceDestoyedListenerInternal;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;I)V

    iget-object p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->createStaIface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1c
    const-string p0, "SemWifiNative"

    const-string p1, "Vendor Hal not supported, ignoring createStaIface."

    .line 1053
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1054
    monitor-exit v0

    return-object p0

    :catchall_26
    move-exception p0

    .line 1056
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private onInterfaceDestroyed(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;)V
    .registers 4

    .line 1090
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1091
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object v1, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->stopMonitoring(Ljava/lang/String;)V

    .line 1093
    iget-object p0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->externalListener:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceCallback;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceCallback;->onDestroyed(Ljava/lang/String;)V

    .line 1094
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method private toBytes(I)[B
    .registers 4

    const/4 p0, 0x2

    new-array p0, p0, [B

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    int-to-byte p1, p1

    const/4 v0, 0x1

    aput-byte p1, p0, v0

    return-object p0
.end method


# virtual methods
.method public addRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 681
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->addRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addRoamScanChannelsLegacy(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 685
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->addRoamScanChannelsLegacy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 689
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->addRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addRoamScanFrequenciesLegacy(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 693
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->addRoamScanFrequenciesLegacy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public changePktlogSize(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 859
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->changePktlogSize(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearTwtStatistics(Ljava/lang/String;I)Z
    .registers 3

    .line 939
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->clearTwtStatistics(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public doLeakyApActiveDetection(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 973
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->doLeakyApActiveDetection(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public eLnaControl(Ljava/lang/String;I)I
    .registers 3

    .line 1030
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->eLnaControl(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public eLnaStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1039
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->eLnaStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public enableBeaconInterval(Ljava/lang/String;Z)Z
    .registers 3

    .line 486
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->enableBeaconInterval(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public enablePktlogFilter(Ljava/lang/String;Z)Z
    .registers 3

    .line 869
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->enablePktlogFilter(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public enableVerboseLogging(I)V
    .registers 3

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 77
    :goto_5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mVerboseLoggingEnabled:Z

    .line 78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->enableVerboseLogging(Z)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mVerboseLoggingEnabled:Z

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->enableVerboseLogging(Z)V

    return-void
.end method

.method public endLeakyApPassiveDetection(Ljava/lang/String;)I
    .registers 2

    .line 990
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->endLeakyApPassiveDetection(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getChannelUtilization(Ljava/lang/String;)I
    .registers 2

    .line 544
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getChannelUtilization(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getChipsetVendorName()Ljava/lang/String;
    .registers 1

    .line 433
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getChipsetVendorName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCountryRev(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 604
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getCountryRev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentBss(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/BssInfo;
    .registers 2

    .line 475
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getCurrentBss(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/BssInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMaxTdlsSession(Ljava/lang/String;)I
    .registers 2

    .line 1153
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getMaxTdlsSession(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getNumOfTdlsSession(Ljava/lang/String;)I
    .registers 2

    .line 1161
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getNumOfTdlsSession(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRoamBand(Ljava/lang/String;)I
    .registers 2

    .line 594
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getRoamBand(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRoamDelta(Ljava/lang/String;)I
    .registers 2

    .line 574
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getRoamDelta(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRoamScanChannels(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 629
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getRoamScanChannels(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRoamScanChannelsLegacy(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 634
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getRoamScanChannelsLegacy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRoamScanControl(Ljava/lang/String;)I
    .registers 2

    .line 619
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getRoamScanControl(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRoamScanPeriod(Ljava/lang/String;)I
    .registers 2

    .line 584
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getRoamScanPeriod(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRoamTrigger(Ljava/lang/String;)I
    .registers 2

    .line 559
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getRoamTrigger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRoamTriggerLegacy(Ljava/lang/String;)I
    .registers 2

    .line 564
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getRoamTriggerLegacy(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTidMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 724
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getTidMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTwtParameters()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 443
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getTwtParameters()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public getVendorConnFileInfo(I)Ljava/lang/String;
    .registers 2

    .line 392
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getVendorConnFileInfo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVendorProperty(I)Ljava/lang/String;
    .registers 2

    .line 397
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getVendorProperty(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .registers 2

    .line 1102
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object p0

    return-object p0
.end method

.method public getWifiStaInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1169
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getWifiStaInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiUwbCoexMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1119
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getWifiUwbCoexMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initialize()Z
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal-IA;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->initialize(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SemWifiNative"

    if-nez v0, :cond_17

    const-string p0, "Vendor Hal not initialized, bail out..."

    .line 59
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 62
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->isVendorHalSupported()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_26

    const-string p0, "Vendor Hal not supported, ignoring createStaIface"

    .line 63
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 66
    :cond_26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->initialize()Z

    move-result p0

    if-nez p0, :cond_34

    const-string p0, "Supplicant Sta Iface Hal not initialized, bail out..."

    .line 67
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_34
    return v3
.end method

.method public isAvailableTdls(Ljava/lang/String;)Z
    .registers 2

    .line 1127
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->isAvailableTdls(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isNCHOModeEnabled(Ljava/lang/String;)Z
    .registers 2

    .line 609
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->isNCHOModeEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isWesModeEnabled(Ljava/lang/String;)Z
    .registers 2

    .line 648
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->isWesModeEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isWiderBandwidthTdlsSupported(Ljava/lang/String;)Z
    .registers 2

    .line 1135
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->isWiderBandwidthTdlsSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public probeStaIfaceNames()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->probeStaIfaceNames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryScheduledPmStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 964
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->queryScheduledPmStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public queryTwtCapabilities(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 913
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->queryTwtCapabilities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public queryTwtStatistics(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 931
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->queryTwtStatistics(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public queryTwtStatus(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 922
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->queryTwtStatus(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeAllNetworks(Ljava/lang/String;)Z
    .registers 2

    .line 387
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->removeAllNetworks(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 849
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeVendorConnFile(I)Z
    .registers 2

    .line 412
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->removeVendorConnFile(I)Z

    move-result p0

    return p0
.end method

.method public removeVendorLogFiles()Z
    .registers 1

    .line 407
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->removeVendorLogFiles()Z

    move-result p0

    return p0
.end method

.method public resumeTwt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 905
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->resumeTwt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public saveFwDump()Z
    .registers 3

    .line 491
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mIfaceMgr:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->-$$Nest$mfindAnyStaIfaceName(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;)Ljava/lang/String;

    move-result-object v1

    .line 493
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_11

    .line 494
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->saveDebugDump(Ljava/lang/String;)Z

    move-result p0

    return p0

    :catchall_11
    move-exception p0

    .line 493
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public semGetLqcmReport(Ljava/lang/String;)I
    .registers 2

    .line 540
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getLqcmReport(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public semGetSnr(Ljava/lang/String;)I
    .registers 2

    .line 531
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->getSnr(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public sendLegacyReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 671
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->sendLegacyReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public sendLegacyReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 665
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->sendLegacyReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 677
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .registers 7

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 659
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setAdpsEnabled(Ljava/lang/String;Z)Z
    .registers 3

    .line 829
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setAdpsEnabled(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setAffinityBooster(Ljava/lang/String;I)Z
    .registers 3

    .line 503
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setAffinityBooster(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 599
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setDelayedWakeupType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1020
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setDelayedWakeupType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setDtimInSuspendMode(Ljava/lang/String;I)Z
    .registers 3

    .line 522
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setDtimInSuspendMode(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setFccChannelBackoffEnabled(Ljava/lang/String;I)Z
    .registers 6

    .line 464
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---- [FRAMEWORK] SET_FCC_CHANNEL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastConnectivityLogEvent(Ljava/lang/String;)V

    .line 465
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setFccChannelBackoffEnabled(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setIndoorChannels(ILjava/lang/String;)Z
    .registers 5

    .line 704
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mIfaceMgr:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->-$$Nest$mfindAnyStaIfaceName(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;)Ljava/lang/String;

    move-result-object v1

    .line 706
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_11

    .line 707
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setIndoorChannels(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    :catchall_11
    move-exception p0

    .line 706
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public setInterwokingEnabled(Ljava/lang/String;Z)Z
    .registers 3

    .line 766
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setInterwokingEnabled(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setLatencyCritical(Ljava/lang/String;I)Z
    .registers 3

    .line 733
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setLatencyCritical(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setLeakyApGracePeriod(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 999
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setLeakyApGracePeriod(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setMaxDtimInSuspendMode(Ljava/lang/String;Z)Z
    .registers 3

    .line 512
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setMaxDtimInSuspendMode(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setNCHOModeEnabled(Ljava/lang/String;Z)Z
    .registers 3

    .line 614
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setNCHOModeEnabled(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 839
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setRoamBand(Ljava/lang/String;I)Z
    .registers 3

    .line 589
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setRoamBand(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setRoamDelta(Ljava/lang/String;I)Z
    .registers 3

    .line 569
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setRoamDelta(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setRoamScanChannels(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 4

    if-eqz p2, :cond_12

    .line 639
    array-length v0, p2

    if-eqz v0, :cond_12

    const-string v0, " "

    .line 640
    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 641
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setRoamScanChannels(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public setRoamScanEnabled(Ljava/lang/String;Z)Z
    .registers 3

    .line 624
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setRoamScanControl(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setRoamScanPeriod(Ljava/lang/String;I)Z
    .registers 3

    .line 579
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setRoamScanPeriod(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setRoamTrigger(Ljava/lang/String;I)Z
    .registers 3

    .line 549
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setRoamTrigger(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setRoamTriggerLegacy(Ljava/lang/String;I)Z
    .registers 3

    .line 554
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setRoamTriggerLegacy(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setScanDwell(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 741
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setScanDwell(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTdlsEnabled(Ljava/lang/String;Z)Z
    .registers 3

    .line 1145
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setTdlsEnabled(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setTidMode(Ljava/lang/String;III)I
    .registers 5

    .line 716
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setTidMode(Ljava/lang/String;III)Z

    move-result p0

    return p0
.end method

.method public setTxPowerBackOff(Ljava/lang/String;I)Z
    .registers 3

    .line 746
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setTxPowerBackOff(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setTxPowerBackOff(Ljava/lang/String;II)Z
    .registers 4

    .line 751
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setTxPowerBackOff(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public setVendorProperty(ILjava/lang/String;)Z
    .registers 3

    .line 402
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->setVendorProperty(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setWesModeEnabled(Ljava/lang/String;Z)Z
    .registers 3

    .line 653
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setWesModeEnabled(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setWifiCustomBackoff(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1177
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setWifiCustomBackoff(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setWifiToCellular(Ljava/lang/String;IIIIII)Z
    .registers 16

    .line 818
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setWifiToCellular(Ljava/lang/String;IIIIII)Z

    move-result p0

    return p0
.end method

.method public setWifiUwbCoexEnabled(Ljava/lang/String;ZIIII)Z
    .registers 14

    .line 1111
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setWifiUwbCoexEnabled(Ljava/lang/String;ZIIII)Z

    move-result p0

    return p0
.end method

.method public setWsecInfo(Ljava/lang/String;Z)Z
    .registers 3

    .line 759
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setWsecInfo(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setupInterfaceForClientInConnectivityMode(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceCallback;)Ljava/lang/String;
    .registers 6

    .line 339
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mIfaceMgr:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->-$$Nest$mallocateIface(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;I)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    move-result-object v1

    .line 341
    iput-object p2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->externalListener:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$InterfaceCallback;

    .line 342
    iput-object p1, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    .line 343
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->createStaIface(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;)Ljava/lang/String;

    .line 344
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    iget-object p2, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setupIface(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_39

    const-string p1, "SemWifiNative"

    .line 345
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to setup iface in supplicant on "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object p1, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->teardownInterface(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 347
    monitor-exit v0

    return-object p0

    .line 349
    :cond_39
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p1, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->startMonitoring(Ljava/lang/String;)V

    const-string p0, "SemWifiNative"

    .line 350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Successfully setup "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p0, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;->name:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_5a
    move-exception p0

    .line 353
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public setupScheduledPm(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 948
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setupScheduledPm(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setupTwt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 878
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->setupTwt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public startLeakyApPassiveDetection(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 982
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->startLeakyApPassiveDetection(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public suspendTwt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 896
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->suspendTwt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public teardownInterface(Ljava/lang/String;)V
    .registers 5

    .line 366
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mIfaceMgr:Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;->-$$Nest$mgetIface(Lcom/samsung/android/server/wifi/halclient/SemWifiNative$IfaceManager;Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$Iface;

    move-result-object v1

    if-nez v1, :cond_23

    const-string p0, "SemWifiNative"

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to teardown an invalid iface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    monitor-exit v0

    return-void

    .line 372
    :cond_23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->teardownIface(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_43

    const-string p0, "SemWifiNative"

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiated teardown failed for iface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    monitor-exit v0

    return-void

    :cond_43
    const-string p0, "SemWifiNative"

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully initiated teardown for iface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    monitor-exit v0

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public teardownScheduledPm(Ljava/lang/String;)I
    .registers 2

    .line 956
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->teardownScheduledPm(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public teardownTwt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 887
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->teardownTwt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public triggerDelayedWakeup(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1010
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->triggerDelayedWakeup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public updateCellularCapabilities(Ljava/lang/String;IIII)Z
    .registers 12

    .line 788
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mSupplicantStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    int-to-byte v2, p2

    int-to-byte v3, p3

    int-to-byte v4, p4

    .line 789
    invoke-direct {p0, p5}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->toBytes(I)[B

    move-result-object v5

    move-object v1, p1

    .line 788
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;->updateCellularCapabilities(Ljava/lang/String;BBB[B)Z

    move-result p0

    return p0
.end method

.method public updateVendorConnFile(I)Z
    .registers 2

    .line 422
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->updateVendorConnFile(I)Z

    move-result p0

    return p0
.end method

.method public writeVendorConnFile(ILjava/lang/String;)Z
    .registers 3

    .line 417
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->mWifiVendorHal:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->writeVendorConnFile(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method
