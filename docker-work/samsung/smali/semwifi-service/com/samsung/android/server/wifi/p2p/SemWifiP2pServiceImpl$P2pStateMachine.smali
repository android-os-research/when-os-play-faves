.class Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "SemWifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2pStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;,
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;,
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;,
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;,
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;,
        Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private mDefaultState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;

.field private mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mGroupCreatedState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

.field private mInactiveState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;

.field private mInterfaceName:Ljava/lang/String;

.field private mP2pDisabledState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

.field private mP2pEnabledState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

.field private mP2pNotSupportedState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

.field private final mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

.field private mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGroup(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupCreatedState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInactiveState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmP2pDisabledState(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPeers(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiMonitor(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmGroup(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInterfaceName(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeP2pSettings(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->initializeP2pSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendP2pDiscoveryChangedBroadcast(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->sendP2pDiscoveryChangedBroadcast(Z)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;Z)V
    .registers 5

    .line 675
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    .line 676
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 662
    new-instance p2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;

    .line 663
    new-instance p2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mP2pNotSupportedState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    .line 664
    new-instance p2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    .line 665
    new-instance p2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    .line 666
    new-instance p2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;

    .line 667
    new-instance p2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    .line 669
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiP2pNative()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 670
    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiP2pMonitor()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 671
    new-instance p1, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 679
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 680
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 681
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 682
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$InactiveState;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 683
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    if-eqz p4, :cond_73

    .line 686
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_78

    .line 688
    :cond_73
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mP2pNotSupportedState:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    :goto_78
    const/16 p1, 0x64

    .line 690
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->setLogRecSize(I)V

    return-void
.end method

.method private enableVerboseLogging(Z)V
    .registers 4

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVerboseLogging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fputmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V

    .line 786
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->enableVerboseLogging(Z)V

    .line 787
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->enableVerboseLogging(Z)V

    return-void
.end method

.method private initializeP2pSettings()V
    .registers 5

    const-string v0, "initializeP2pSettings"

    .line 1223
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->enableVerboseLogging(Z)V

    .line 1226
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$msetDeviceName(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)V

    const-string v0, "ro.build.characteristics"

    .line 1229
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    const-string v1, "tablet"

    .line 1230
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v0, 0x200

    goto :goto_2c

    :cond_2a
    const/16 v0, 0x100

    .line 1233
    :goto_2c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    const-string v2, "samsung_discovery"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1234
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "discovery_icon"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .registers 2

    .line 1250
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    .line 1251
    iget p1, p1, Landroid/os/Message;->arg2:I

    iput p1, p0, Landroid/os/Message;->arg2:I

    return-object p0
.end method

.method private sendP2pDiscoveryChangedBroadcast(Z)V
    .registers 4

    .line 1238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "discovery change broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1240
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x4000000

    .line 1241
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "discoveryState"

    const/4 v1, 0x2

    .line 1242
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1244
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 695
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 4

    .line 713
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2300b

    if-eq v0, v1, :cond_1d

    const v1, 0x2300e

    if-eq v0, v1, :cond_12

    goto :goto_27

    :cond_12
    const-string v0, "channel="

    .line 720
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_1d
    const-string v0, "set="

    .line 717
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 725
    :goto_27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .registers 3

    sparse-switch p1, :sswitch_data_58

    .line 776
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "what:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_15
    const-string p0, "SemWifiP2pMonitor.P2P_BIGDATA_GROUP_OWNER_INTENT_EVENT"

    return-object p0

    :sswitch_18
    const-string p0, "SemWifiP2pMonitor.P2P_BIGDATA_CONNECTION_RESULT_EVENT"

    return-object p0

    :sswitch_1b
    const-string p0, "SemWifiP2pMonitor.P2P_BIGDATA_DISCONNECT_EVENT"

    return-object p0

    :sswitch_1e
    const-string p0, "SemWifiP2pMonitor.P2P_GOPS_EVENT"

    return-object p0

    :sswitch_21
    const-string p0, "SemWifiP2pMonitor.AP_STA_POSSIBLE_PSK_MISMATCH"

    return-object p0

    :sswitch_24
    const-string p0, "SemWifiP2pMonitor.AP_STA_CONNECTED_EVENT"

    return-object p0

    :sswitch_27
    const-string p0, "SemWifiP2pMonitor.AP_STA_DISCONNECTED_EVENT"

    return-object p0

    :sswitch_2a
    const-string p0, "SemWifiP2pMonitor.P2P_PERSISTENT_PSK_FAIL_EVENT"

    return-object p0

    :sswitch_2d
    const-string p0, "SemWifiP2pMonitor.P2P_GROUP_REMOVED_EVENT"

    return-object p0

    :sswitch_30
    const-string p0, "SemWifiP2pMonitor.P2P_GROUP_STARTED_EVENT"

    return-object p0

    :sswitch_33
    const-string p0, "SemWifiP2pMonitor.P2P_GO_NEGOTIATION_REQUEST_EVENT"

    return-object p0

    :sswitch_36
    const-string p0, "SemWifiP2pMonitor.SUP_DISCONNECTION_EVENT"

    return-object p0

    :sswitch_39
    const-string p0, "SemWifiP2pMonitor.SUP_CONNECTION_EVENT"

    return-object p0

    :sswitch_3c
    const-string p0, "CMD_DISCOVER_PEERS"

    return-object p0

    :sswitch_3f
    const-string p0, "CMD_REMOVE_P2P_CLIENT"

    return-object p0

    :sswitch_42
    const-string p0, "CMD_SET_LISTEN_OFFLOADING"

    return-object p0

    :sswitch_45
    const-string p0, "CMD_SET_SCREEN_SHARING"

    return-object p0

    :sswitch_48
    const-string p0, "CMD_SET_MICROSOFT_MICE"

    return-object p0

    :sswitch_4b
    const-string p0, "GROUP_REMOVED_EVENT"

    return-object p0

    :sswitch_4e
    const-string p0, "GROUP_STARTED_EVENT"

    return-object p0

    :sswitch_51
    const-string p0, "EVENT_WIFI_P2P_DISABLED"

    return-object p0

    :sswitch_54
    const-string p0, "EVENT_WIFI_P2P_ENABLED"

    return-object p0

    nop

    :sswitch_data_58
    .sparse-switch
        0x23001 -> :sswitch_54
        0x23002 -> :sswitch_51
        0x23003 -> :sswitch_4e
        0x23004 -> :sswitch_4b
        0x2300a -> :sswitch_48
        0x2300b -> :sswitch_45
        0x2300c -> :sswitch_42
        0x2300d -> :sswitch_3f
        0x2300e -> :sswitch_3c
        0x24001 -> :sswitch_39
        0x24002 -> :sswitch_36
        0x24017 -> :sswitch_33
        0x2401d -> :sswitch_30
        0x2401e -> :sswitch_2d
        0x24028 -> :sswitch_2a
        0x24029 -> :sswitch_27
        0x2402a -> :sswitch_24
        0x2402b -> :sswitch_21
        0x24031 -> :sswitch_1e
        0x24050 -> :sswitch_1b
        0x24051 -> :sswitch_18
        0x24052 -> :sswitch_15
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 2

    const-string p0, "SemWifiP2pService"

    .line 1257
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 2

    const-string p0, "SemWifiP2pService"

    .line 1262
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .registers 2

    .line 700
    iget p0, p1, Landroid/os/Message;->what:I

    sparse-switch p0, :sswitch_data_a

    const/4 p0, 0x1

    return p0

    :sswitch_7
    const/4 p0, 0x0

    return p0

    nop

    :sswitch_data_a
    .sparse-switch
        0x24001 -> :sswitch_7
        0x24002 -> :sswitch_7
        0x24015 -> :sswitch_7
        0x24016 -> :sswitch_7
    .end sparse-switch
.end method

.method public registerForWifiMonitorEvents()V
    .registers 5

    .line 791
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 792
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x2402a

    .line 791
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 793
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 794
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x24029

    .line 793
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 795
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 796
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x24015

    .line 795
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 797
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 798
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x24016

    .line 797
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 799
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 800
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x24017

    .line 799
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 801
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 802
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x2401d

    .line 801
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 803
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 804
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x2401e

    .line 803
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 805
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 806
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x24021

    .line 805
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 807
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 808
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x24001

    .line 807
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 809
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 810
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x24002

    .line 809
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 811
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 812
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x24047

    .line 811
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 813
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 814
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x24031

    .line 813
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 815
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 816
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x24050

    .line 815
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 817
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 818
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x24051

    .line 817
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 819
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 820
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x24052

    .line 819
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 821
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 822
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x24028

    .line 821
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 823
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$P2pStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->startMonitoring(Ljava/lang/String;)V

    return-void
.end method
