.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final blacklist TRANSACTION_addApeRule:I = 0x72

.field static final blacklist TRANSACTION_addChain:I = 0x57

.field static final greylist-max-o TRANSACTION_addInterfaceToLocalNetwork:I = 0x37

.field static final blacklist TRANSACTION_addIpAcceptRule:I = 0x63

.field static final blacklist TRANSACTION_addLegacyRoute:I = 0x88

.field static final blacklist TRANSACTION_addMptcpLink:I = 0x55

.field static final blacklist TRANSACTION_addOrRemoveSystemAppFromDataSaverWhitelist:I = 0x40

.field static final blacklist TRANSACTION_addPortFwdRules:I = 0x4b

.field static final greylist-max-o TRANSACTION_addRoute:I = 0xd

.field static final blacklist TRANSACTION_addSocksRule:I = 0x59

.field static final blacklist TRANSACTION_addSocksSkipRule:I = 0x5d

.field static final blacklist TRANSACTION_addSocksSkipRuleProto:I = 0x5f

.field static final blacklist TRANSACTION_addSourcePortAcceptRule:I = 0x6b

.field static final blacklist TRANSACTION_addSourceRoute:I = 0x69

.field static final blacklist TRANSACTION_addUidSocksRule:I = 0x5b

.field static final blacklist TRANSACTION_addUidToChain:I = 0x61

.field static final greylist-max-o TRANSACTION_allowProtect:I = 0x35

.field static final blacklist TRANSACTION_buildFirewall:I = 0x81

.field static final blacklist TRANSACTION_cleanAllBlock:I = 0x7b

.field static final blacklist TRANSACTION_cleanBlockPorts:I = 0x7e

.field static final blacklist TRANSACTION_clearEbpfMap:I = 0x44

.field static final greylist-max-o TRANSACTION_clearInterfaceAddresses:I = 0x6

.field static final blacklist TRANSACTION_closeSocketsForFreecess:I = 0x32

.field static final blacklist TRANSACTION_closeSocketsForUid:I = 0x34

.field static final blacklist TRANSACTION_closeSocketsForUids:I = 0x33

.field static final blacklist TRANSACTION_createNetworkGuardChain:I = 0x4d

.field static final blacklist TRANSACTION_delIpAcceptRule:I = 0x64

.field static final blacklist TRANSACTION_delSourcePortAcceptRule:I = 0x6c

.field static final blacklist TRANSACTION_delSourceRoute:I = 0x6a

.field static final blacklist TRANSACTION_deleteNetworkGuardChain:I = 0x4e

.field static final blacklist TRANSACTION_deleteNetworkGuardWhiteListRule:I = 0x51

.field static final greylist-max-o TRANSACTION_denyProtect:I = 0x36

.field static final blacklist TRANSACTION_disableEpdg:I = 0x75

.field static final greylist-max-o TRANSACTION_disableIpv6:I = 0xa

.field static final blacklist TRANSACTION_disableMptcp:I = 0x68

.field static final greylist-max-o TRANSACTION_disableNat:I = 0x1d

.field static final blacklist TRANSACTION_disableNetworkGuard:I = 0x50

.field static final blacklist TRANSACTION_enableEpdg:I = 0x74

.field static final greylist-max-o TRANSACTION_enableIpv6:I = 0xb

.field static final blacklist TRANSACTION_enableKnoxVpnFlagForTether:I = 0x47

.field static final blacklist TRANSACTION_enableMptcp:I = 0x67

.field static final greylist-max-o TRANSACTION_enableNat:I = 0x1c

.field static final blacklist TRANSACTION_enableNetworkGuard:I = 0x4f

.field static final greylist-max-o TRANSACTION_getDnsForwarders:I = 0x19

.field static final greylist-max-o TRANSACTION_getInterfaceConfig:I = 0x4

.field static final greylist-max-o TRANSACTION_getIpForwardingEnabled:I = 0x10

.field static final greylist-max-o TRANSACTION_getNetworkStatsTethering:I = 0x21

.field static final blacklist TRANSACTION_getNetworkStatsVideoCall:I = 0x3d

.field static final greylist-max-o TRANSACTION_isBandwidthControlEnabled:I = 0x2b

.field static final greylist-max-o TRANSACTION_isFirewallEnabled:I = 0x2d

.field static final greylist-max-o TRANSACTION_isNetworkRestricted:I = 0x3a

.field static final greylist-max-o TRANSACTION_isTetheringStarted:I = 0x15

.field static final greylist-max-o TRANSACTION_listInterfaces:I = 0x3

.field static final greylist-max-o TRANSACTION_listTetheredInterfaces:I = 0x18

.field static final blacklist TRANSACTION_prioritizeApp:I = 0x71

.field static final blacklist TRANSACTION_registerNetdTetherEventListener:I = 0x48

.field static final greylist-max-o TRANSACTION_registerObserver:I = 0x1

.field static final greylist-max-o TRANSACTION_registerTetheringStatsProvider:I = 0x1e

.field static final blacklist TRANSACTION_removeChain:I = 0x58

.field static final greylist-max-o TRANSACTION_removeInterfaceAlert:I = 0x25

.field static final greylist-max-o TRANSACTION_removeInterfaceFromLocalNetwork:I = 0x38

.field static final greylist-max-o TRANSACTION_removeInterfaceQuota:I = 0x23

.field static final blacklist TRANSACTION_removeLegacyRoute:I = 0x89

.field static final blacklist TRANSACTION_removeMptcpLink:I = 0x56

.field static final greylist-max-o TRANSACTION_removeRoute:I = 0xe

.field static final greylist-max-o TRANSACTION_removeRoutesFromLocalNetwork:I = 0x39

.field static final blacklist TRANSACTION_removeSocksRule:I = 0x5a

.field static final blacklist TRANSACTION_removeSocksSkipRule:I = 0x5e

.field static final blacklist TRANSACTION_removeSocksSkipRuleProto:I = 0x60

.field static final blacklist TRANSACTION_removeUidFromChain:I = 0x62

.field static final blacklist TRANSACTION_removeUidSocksRule:I = 0x5c

.field static final blacklist TRANSACTION_replaceApeRule:I = 0x73

.field static final blacklist TRANSACTION_runKnoxFirewallRulesCommand:I = 0x45

.field static final blacklist TRANSACTION_runKnoxRulesCommand:I = 0x46

.field static final blacklist TRANSACTION_setAllowListIPs:I = 0x7a

.field static final blacklist TRANSACTION_setBlockAllDNSPackets:I = 0x78

.field static final blacklist TRANSACTION_setBlockAllPackets:I = 0x7c

.field static final blacklist TRANSACTION_setBlockListIPs:I = 0x79

.field static final blacklist TRANSACTION_setBlockPorts:I = 0x7d

.field static final greylist-max-o TRANSACTION_setDataSaverModeEnabled:I = 0x29

.field static final blacklist TRANSACTION_setDestinationBasedMarkRule:I = 0x6f

.field static final blacklist TRANSACTION_setDnsForwardersForKnoxVpn:I = 0x3e

.field static final blacklist TRANSACTION_setEpdgInterfaceDropRule:I = 0x76

.field static final greylist-max-o TRANSACTION_setFirewallChainEnabled:I = 0x31

.field static final greylist-max-o TRANSACTION_setFirewallEnabled:I = 0x2c

.field static final greylist-max-o TRANSACTION_setFirewallInterfaceRule:I = 0x2e

.field static final blacklist TRANSACTION_setFirewallRuleMobileData:I = 0x83

.field static final blacklist TRANSACTION_setFirewallRuleWifi:I = 0x82

.field static final greylist-max-o TRANSACTION_setFirewallUidRule:I = 0x2f

.field static final greylist-max-o TRANSACTION_setFirewallUidRules:I = 0x30

.field static final greylist-max-o TRANSACTION_setGlobalAlert:I = 0x26

.field static final greylist-max-o TRANSACTION_setIPv6AddrGenMode:I = 0xc

.field static final greylist-max-o TRANSACTION_setInterfaceAlert:I = 0x24

.field static final greylist-max-o TRANSACTION_setInterfaceConfig:I = 0x5

.field static final greylist-max-o TRANSACTION_setInterfaceDown:I = 0x7

.field static final greylist-max-o TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0x9

.field static final greylist-max-o TRANSACTION_setInterfaceQuota:I = 0x22

.field static final greylist-max-o TRANSACTION_setInterfaceUp:I = 0x8

.field static final greylist-max-o TRANSACTION_setIpForwardingEnabled:I = 0x11

.field static final blacklist TRANSACTION_setKnoxGuardExemptRule:I = 0x4c

.field static final blacklist TRANSACTION_setKnoxVpn:I = 0x4a

.field static final blacklist TRANSACTION_setMptcpMtuValue:I = 0x66

.field static final blacklist TRANSACTION_setNetworkGuardProtocolAcceptRule:I = 0x54

.field static final blacklist TRANSACTION_setNetworkGuardUidRangeAcceptRule:I = 0x52

.field static final blacklist TRANSACTION_setNetworkGuardUidRule:I = 0x53

.field static final blacklist TRANSACTION_setNetworkInfo:I = 0x3f

.field static final blacklist TRANSACTION_setPrivateIpRoute:I = 0x6e

.field static final blacklist TRANSACTION_setQboxUid:I = 0x86

.field static final blacklist TRANSACTION_setTcpBufferSize:I = 0x65

.field static final blacklist TRANSACTION_setUIDRoute:I = 0x70

.field static final greylist-max-o TRANSACTION_setUidCleartextNetworkPolicy:I = 0x2a

.field static final blacklist TRANSACTION_setUidOnMeteredNetworkAllowlist:I = 0x28

.field static final blacklist TRANSACTION_setUidOnMeteredNetworkDenylist:I = 0x27

.field static final blacklist TRANSACTION_setUrlFirewallRuleMobileData:I = 0x7f

.field static final blacklist TRANSACTION_setUrlFirewallRuleWifi:I = 0x80

.field static final greylist-max-o TRANSACTION_shutdown:I = 0xf

.field static final blacklist TRANSACTION_spegRestrictNetworkConnection:I = 0x87

.field static final greylist-max-o TRANSACTION_startInterfaceForwarding:I = 0x1a

.field static final blacklist TRANSACTION_startNetworkStatsOnPorts:I = 0x3b

.field static final blacklist TRANSACTION_startQbox:I = 0x84

.field static final greylist-max-o TRANSACTION_startTethering:I = 0x12

.field static final blacklist TRANSACTION_startTetheringWithConfiguration:I = 0x13

.field static final greylist-max-o TRANSACTION_stopInterfaceForwarding:I = 0x1b

.field static final blacklist TRANSACTION_stopNetworkStatsOnPorts:I = 0x3c

.field static final blacklist TRANSACTION_stopQbox:I = 0x85

.field static final greylist-max-o TRANSACTION_stopTethering:I = 0x14

.field static final greylist-max-o TRANSACTION_tetherInterface:I = 0x16

.field static final greylist-max-o TRANSACTION_tetherLimitReached:I = 0x20

.field static final blacklist TRANSACTION_unregisterNetdTetherEventListener:I = 0x49

.field static final greylist-max-o TRANSACTION_unregisterObserver:I = 0x2

.field static final greylist-max-o TRANSACTION_unregisterTetheringStatsProvider:I = 0x1f

.field static final greylist-max-o TRANSACTION_untetherInterface:I = 0x17

.field static final blacklist TRANSACTION_updateDefaultGatewayForEpdg:I = 0x77

.field static final blacklist TRANSACTION_updateInputFilterAppWideRules:I = 0x43

.field static final blacklist TRANSACTION_updateInputFilterExemptRules:I = 0x41

.field static final blacklist TRANSACTION_updateInputFilterUserWideRules:I = 0x42

.field static final blacklist TRANSACTION_updateSourceRule:I = 0x6d


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 575
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 576
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 584
    if-nez p0, :cond_4

    .line 585
    const/4 v0, 0x0

    return-object v0

    .line 587
    :cond_4
    const-string v0, "android.os.INetworkManagementService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 588
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_14

    .line 589
    move-object v1, v0

    check-cast v1, Landroid/os/INetworkManagementService;

    return-object v1

    .line 591
    :cond_14
    new-instance v1, Landroid/os/INetworkManagementService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 600
    packed-switch p0, :pswitch_data_1fe

    .line 1152
    const/4 v0, 0x0

    return-object v0

    .line 1148
    :pswitch_5
    const-string/jumbo v0, "removeLegacyRoute"

    return-object v0

    .line 1144
    :pswitch_9
    const-string v0, "addLegacyRoute"

    return-object v0

    .line 1140
    :pswitch_c
    const-string/jumbo v0, "spegRestrictNetworkConnection"

    return-object v0

    .line 1136
    :pswitch_10
    const-string/jumbo v0, "setQboxUid"

    return-object v0

    .line 1132
    :pswitch_14
    const-string/jumbo v0, "stopQbox"

    return-object v0

    .line 1128
    :pswitch_18
    const-string/jumbo v0, "startQbox"

    return-object v0

    .line 1124
    :pswitch_1c
    const-string/jumbo v0, "setFirewallRuleMobileData"

    return-object v0

    .line 1120
    :pswitch_20
    const-string/jumbo v0, "setFirewallRuleWifi"

    return-object v0

    .line 1116
    :pswitch_24
    const-string v0, "buildFirewall"

    return-object v0

    .line 1112
    :pswitch_27
    const-string/jumbo v0, "setUrlFirewallRuleWifi"

    return-object v0

    .line 1108
    :pswitch_2b
    const-string/jumbo v0, "setUrlFirewallRuleMobileData"

    return-object v0

    .line 1104
    :pswitch_2f
    const-string v0, "cleanBlockPorts"

    return-object v0

    .line 1100
    :pswitch_32
    const-string/jumbo v0, "setBlockPorts"

    return-object v0

    .line 1096
    :pswitch_36
    const-string/jumbo v0, "setBlockAllPackets"

    return-object v0

    .line 1092
    :pswitch_3a
    const-string v0, "cleanAllBlock"

    return-object v0

    .line 1088
    :pswitch_3d
    const-string/jumbo v0, "setAllowListIPs"

    return-object v0

    .line 1084
    :pswitch_41
    const-string/jumbo v0, "setBlockListIPs"

    return-object v0

    .line 1080
    :pswitch_45
    const-string/jumbo v0, "setBlockAllDNSPackets"

    return-object v0

    .line 1076
    :pswitch_49
    const-string/jumbo v0, "updateDefaultGatewayForEpdg"

    return-object v0

    .line 1072
    :pswitch_4d
    const-string/jumbo v0, "setEpdgInterfaceDropRule"

    return-object v0

    .line 1068
    :pswitch_51
    const-string v0, "disableEpdg"

    return-object v0

    .line 1064
    :pswitch_54
    const-string v0, "enableEpdg"

    return-object v0

    .line 1060
    :pswitch_57
    const-string/jumbo v0, "replaceApeRule"

    return-object v0

    .line 1056
    :pswitch_5b
    const-string v0, "addApeRule"

    return-object v0

    .line 1052
    :pswitch_5e
    const-string/jumbo v0, "prioritizeApp"

    return-object v0

    .line 1048
    :pswitch_62
    const-string/jumbo v0, "setUIDRoute"

    return-object v0

    .line 1044
    :pswitch_66
    const-string/jumbo v0, "setDestinationBasedMarkRule"

    return-object v0

    .line 1040
    :pswitch_6a
    const-string/jumbo v0, "setPrivateIpRoute"

    return-object v0

    .line 1036
    :pswitch_6e
    const-string/jumbo v0, "updateSourceRule"

    return-object v0

    .line 1032
    :pswitch_72
    const-string v0, "delSourcePortAcceptRule"

    return-object v0

    .line 1028
    :pswitch_75
    const-string v0, "addSourcePortAcceptRule"

    return-object v0

    .line 1024
    :pswitch_78
    const-string v0, "delSourceRoute"

    return-object v0

    .line 1020
    :pswitch_7b
    const-string v0, "addSourceRoute"

    return-object v0

    .line 1016
    :pswitch_7e
    const-string v0, "disableMptcp"

    return-object v0

    .line 1012
    :pswitch_81
    const-string v0, "enableMptcp"

    return-object v0

    .line 1008
    :pswitch_84
    const-string/jumbo v0, "setMptcpMtuValue"

    return-object v0

    .line 1004
    :pswitch_88
    const-string/jumbo v0, "setTcpBufferSize"

    return-object v0

    .line 1000
    :pswitch_8c
    const-string v0, "delIpAcceptRule"

    return-object v0

    .line 996
    :pswitch_8f
    const-string v0, "addIpAcceptRule"

    return-object v0

    .line 992
    :pswitch_92
    const-string/jumbo v0, "removeUidFromChain"

    return-object v0

    .line 988
    :pswitch_96
    const-string v0, "addUidToChain"

    return-object v0

    .line 984
    :pswitch_99
    const-string/jumbo v0, "removeSocksSkipRuleProto"

    return-object v0

    .line 980
    :pswitch_9d
    const-string v0, "addSocksSkipRuleProto"

    return-object v0

    .line 976
    :pswitch_a0
    const-string/jumbo v0, "removeSocksSkipRule"

    return-object v0

    .line 972
    :pswitch_a4
    const-string v0, "addSocksSkipRule"

    return-object v0

    .line 968
    :pswitch_a7
    const-string/jumbo v0, "removeUidSocksRule"

    return-object v0

    .line 964
    :pswitch_ab
    const-string v0, "addUidSocksRule"

    return-object v0

    .line 960
    :pswitch_ae
    const-string/jumbo v0, "removeSocksRule"

    return-object v0

    .line 956
    :pswitch_b2
    const-string v0, "addSocksRule"

    return-object v0

    .line 952
    :pswitch_b5
    const-string/jumbo v0, "removeChain"

    return-object v0

    .line 948
    :pswitch_b9
    const-string v0, "addChain"

    return-object v0

    .line 944
    :pswitch_bc
    const-string/jumbo v0, "removeMptcpLink"

    return-object v0

    .line 940
    :pswitch_c0
    const-string v0, "addMptcpLink"

    return-object v0

    .line 936
    :pswitch_c3
    const-string/jumbo v0, "setNetworkGuardProtocolAcceptRule"

    return-object v0

    .line 932
    :pswitch_c7
    const-string/jumbo v0, "setNetworkGuardUidRule"

    return-object v0

    .line 928
    :pswitch_cb
    const-string/jumbo v0, "setNetworkGuardUidRangeAcceptRule"

    return-object v0

    .line 924
    :pswitch_cf
    const-string v0, "deleteNetworkGuardWhiteListRule"

    return-object v0

    .line 920
    :pswitch_d2
    const-string v0, "disableNetworkGuard"

    return-object v0

    .line 916
    :pswitch_d5
    const-string v0, "enableNetworkGuard"

    return-object v0

    .line 912
    :pswitch_d8
    const-string v0, "deleteNetworkGuardChain"

    return-object v0

    .line 908
    :pswitch_db
    const-string v0, "createNetworkGuardChain"

    return-object v0

    .line 904
    :pswitch_de
    const-string/jumbo v0, "setKnoxGuardExemptRule"

    return-object v0

    .line 900
    :pswitch_e2
    const-string v0, "addPortFwdRules"

    return-object v0

    .line 896
    :pswitch_e5
    const-string/jumbo v0, "setKnoxVpn"

    return-object v0

    .line 892
    :pswitch_e9
    const-string/jumbo v0, "unregisterNetdTetherEventListener"

    return-object v0

    .line 888
    :pswitch_ed
    const-string/jumbo v0, "registerNetdTetherEventListener"

    return-object v0

    .line 884
    :pswitch_f1
    const-string v0, "enableKnoxVpnFlagForTether"

    return-object v0

    .line 880
    :pswitch_f4
    const-string/jumbo v0, "runKnoxRulesCommand"

    return-object v0

    .line 876
    :pswitch_f8
    const-string/jumbo v0, "runKnoxFirewallRulesCommand"

    return-object v0

    .line 872
    :pswitch_fc
    const-string v0, "clearEbpfMap"

    return-object v0

    .line 868
    :pswitch_ff
    const-string/jumbo v0, "updateInputFilterAppWideRules"

    return-object v0

    .line 864
    :pswitch_103
    const-string/jumbo v0, "updateInputFilterUserWideRules"

    return-object v0

    .line 860
    :pswitch_107
    const-string/jumbo v0, "updateInputFilterExemptRules"

    return-object v0

    .line 856
    :pswitch_10b
    const-string v0, "addOrRemoveSystemAppFromDataSaverWhitelist"

    return-object v0

    .line 852
    :pswitch_10e
    const-string/jumbo v0, "setNetworkInfo"

    return-object v0

    .line 848
    :pswitch_112
    const-string/jumbo v0, "setDnsForwardersForKnoxVpn"

    return-object v0

    .line 844
    :pswitch_116
    const-string/jumbo v0, "getNetworkStatsVideoCall"

    return-object v0

    .line 840
    :pswitch_11a
    const-string/jumbo v0, "stopNetworkStatsOnPorts"

    return-object v0

    .line 836
    :pswitch_11e
    const-string/jumbo v0, "startNetworkStatsOnPorts"

    return-object v0

    .line 832
    :pswitch_122
    const-string/jumbo v0, "isNetworkRestricted"

    return-object v0

    .line 828
    :pswitch_126
    const-string/jumbo v0, "removeRoutesFromLocalNetwork"

    return-object v0

    .line 824
    :pswitch_12a
    const-string/jumbo v0, "removeInterfaceFromLocalNetwork"

    return-object v0

    .line 820
    :pswitch_12e
    const-string v0, "addInterfaceToLocalNetwork"

    return-object v0

    .line 816
    :pswitch_131
    const-string v0, "denyProtect"

    return-object v0

    .line 812
    :pswitch_134
    const-string v0, "allowProtect"

    return-object v0

    .line 808
    :pswitch_137
    const-string v0, "closeSocketsForUid"

    return-object v0

    .line 804
    :pswitch_13a
    const-string v0, "closeSocketsForUids"

    return-object v0

    .line 800
    :pswitch_13d
    const-string v0, "closeSocketsForFreecess"

    return-object v0

    .line 796
    :pswitch_140
    const-string/jumbo v0, "setFirewallChainEnabled"

    return-object v0

    .line 792
    :pswitch_144
    const-string/jumbo v0, "setFirewallUidRules"

    return-object v0

    .line 788
    :pswitch_148
    const-string/jumbo v0, "setFirewallUidRule"

    return-object v0

    .line 784
    :pswitch_14c
    const-string/jumbo v0, "setFirewallInterfaceRule"

    return-object v0

    .line 780
    :pswitch_150
    const-string/jumbo v0, "isFirewallEnabled"

    return-object v0

    .line 776
    :pswitch_154
    const-string/jumbo v0, "setFirewallEnabled"

    return-object v0

    .line 772
    :pswitch_158
    const-string/jumbo v0, "isBandwidthControlEnabled"

    return-object v0

    .line 768
    :pswitch_15c
    const-string/jumbo v0, "setUidCleartextNetworkPolicy"

    return-object v0

    .line 764
    :pswitch_160
    const-string/jumbo v0, "setDataSaverModeEnabled"

    return-object v0

    .line 760
    :pswitch_164
    const-string/jumbo v0, "setUidOnMeteredNetworkAllowlist"

    return-object v0

    .line 756
    :pswitch_168
    const-string/jumbo v0, "setUidOnMeteredNetworkDenylist"

    return-object v0

    .line 752
    :pswitch_16c
    const-string/jumbo v0, "setGlobalAlert"

    return-object v0

    .line 748
    :pswitch_170
    const-string/jumbo v0, "removeInterfaceAlert"

    return-object v0

    .line 744
    :pswitch_174
    const-string/jumbo v0, "setInterfaceAlert"

    return-object v0

    .line 740
    :pswitch_178
    const-string/jumbo v0, "removeInterfaceQuota"

    return-object v0

    .line 736
    :pswitch_17c
    const-string/jumbo v0, "setInterfaceQuota"

    return-object v0

    .line 732
    :pswitch_180
    const-string/jumbo v0, "getNetworkStatsTethering"

    return-object v0

    .line 728
    :pswitch_184
    const-string/jumbo v0, "tetherLimitReached"

    return-object v0

    .line 724
    :pswitch_188
    const-string/jumbo v0, "unregisterTetheringStatsProvider"

    return-object v0

    .line 720
    :pswitch_18c
    const-string/jumbo v0, "registerTetheringStatsProvider"

    return-object v0

    .line 716
    :pswitch_190
    const-string v0, "disableNat"

    return-object v0

    .line 712
    :pswitch_193
    const-string v0, "enableNat"

    return-object v0

    .line 708
    :pswitch_196
    const-string/jumbo v0, "stopInterfaceForwarding"

    return-object v0

    .line 704
    :pswitch_19a
    const-string/jumbo v0, "startInterfaceForwarding"

    return-object v0

    .line 700
    :pswitch_19e
    const-string v0, "getDnsForwarders"

    return-object v0

    .line 696
    :pswitch_1a1
    const-string/jumbo v0, "listTetheredInterfaces"

    return-object v0

    .line 692
    :pswitch_1a5
    const-string/jumbo v0, "untetherInterface"

    return-object v0

    .line 688
    :pswitch_1a9
    const-string/jumbo v0, "tetherInterface"

    return-object v0

    .line 684
    :pswitch_1ad
    const-string/jumbo v0, "isTetheringStarted"

    return-object v0

    .line 680
    :pswitch_1b1
    const-string/jumbo v0, "stopTethering"

    return-object v0

    .line 676
    :pswitch_1b5
    const-string/jumbo v0, "startTetheringWithConfiguration"

    return-object v0

    .line 672
    :pswitch_1b9
    const-string/jumbo v0, "startTethering"

    return-object v0

    .line 668
    :pswitch_1bd
    const-string/jumbo v0, "setIpForwardingEnabled"

    return-object v0

    .line 664
    :pswitch_1c1
    const-string/jumbo v0, "getIpForwardingEnabled"

    return-object v0

    .line 660
    :pswitch_1c5
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 656
    :pswitch_1c9
    const-string/jumbo v0, "removeRoute"

    return-object v0

    .line 652
    :pswitch_1cd
    const-string v0, "addRoute"

    return-object v0

    .line 648
    :pswitch_1d0
    const-string/jumbo v0, "setIPv6AddrGenMode"

    return-object v0

    .line 644
    :pswitch_1d4
    const-string v0, "enableIpv6"

    return-object v0

    .line 640
    :pswitch_1d7
    const-string v0, "disableIpv6"

    return-object v0

    .line 636
    :pswitch_1da
    const-string/jumbo v0, "setInterfaceIpv6PrivacyExtensions"

    return-object v0

    .line 632
    :pswitch_1de
    const-string/jumbo v0, "setInterfaceUp"

    return-object v0

    .line 628
    :pswitch_1e2
    const-string/jumbo v0, "setInterfaceDown"

    return-object v0

    .line 624
    :pswitch_1e6
    const-string v0, "clearInterfaceAddresses"

    return-object v0

    .line 620
    :pswitch_1e9
    const-string/jumbo v0, "setInterfaceConfig"

    return-object v0

    .line 616
    :pswitch_1ed
    const-string/jumbo v0, "getInterfaceConfig"

    return-object v0

    .line 612
    :pswitch_1f1
    const-string/jumbo v0, "listInterfaces"

    return-object v0

    .line 608
    :pswitch_1f5
    const-string/jumbo v0, "unregisterObserver"

    return-object v0

    .line 604
    :pswitch_1f9
    const-string/jumbo v0, "registerObserver"

    return-object v0

    nop

    :pswitch_data_1fe
    .packed-switch 0x1
        :pswitch_1f9
        :pswitch_1f5
        :pswitch_1f1
        :pswitch_1ed
        :pswitch_1e9
        :pswitch_1e6
        :pswitch_1e2
        :pswitch_1de
        :pswitch_1da
        :pswitch_1d7
        :pswitch_1d4
        :pswitch_1d0
        :pswitch_1cd
        :pswitch_1c9
        :pswitch_1c5
        :pswitch_1c1
        :pswitch_1bd
        :pswitch_1b9
        :pswitch_1b5
        :pswitch_1b1
        :pswitch_1ad
        :pswitch_1a9
        :pswitch_1a5
        :pswitch_1a1
        :pswitch_19e
        :pswitch_19a
        :pswitch_196
        :pswitch_193
        :pswitch_190
        :pswitch_18c
        :pswitch_188
        :pswitch_184
        :pswitch_180
        :pswitch_17c
        :pswitch_178
        :pswitch_174
        :pswitch_170
        :pswitch_16c
        :pswitch_168
        :pswitch_164
        :pswitch_160
        :pswitch_15c
        :pswitch_158
        :pswitch_154
        :pswitch_150
        :pswitch_14c
        :pswitch_148
        :pswitch_144
        :pswitch_140
        :pswitch_13d
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12a
        :pswitch_126
        :pswitch_122
        :pswitch_11e
        :pswitch_11a
        :pswitch_116
        :pswitch_112
        :pswitch_10e
        :pswitch_10b
        :pswitch_107
        :pswitch_103
        :pswitch_ff
        :pswitch_fc
        :pswitch_f8
        :pswitch_f4
        :pswitch_f1
        :pswitch_ed
        :pswitch_e9
        :pswitch_e5
        :pswitch_e2
        :pswitch_de
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
        :pswitch_d2
        :pswitch_cf
        :pswitch_cb
        :pswitch_c7
        :pswitch_c3
        :pswitch_c0
        :pswitch_bc
        :pswitch_b9
        :pswitch_b5
        :pswitch_b2
        :pswitch_ae
        :pswitch_ab
        :pswitch_a7
        :pswitch_a4
        :pswitch_a0
        :pswitch_9d
        :pswitch_99
        :pswitch_96
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_88
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5b
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 595
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 5159
    const/16 v0, 0x88

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 1159
    invoke-static {p1}, Landroid/os/INetworkManagementService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1163
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.os.INetworkManagementService"

    .line 1164
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    .line 1165
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1167
    :cond_15
    packed-switch v8, :pswitch_data_a8c

    .line 1175
    packed-switch v8, :pswitch_data_a92

    .line 2646
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1171
    :pswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1172
    return v12

    .line 2630
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2632
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2634
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2636
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2638
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2639
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2640
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->removeLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2642
    goto/16 :goto_a8b

    .line 2613
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2615
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2617
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2619
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2621
    .restart local v15    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2622
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2623
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->addLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2625
    goto/16 :goto_a8b

    .line 2602
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2604
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2605
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2606
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->spegRestrictNetworkConnection(IZ)V

    .line 2607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2608
    goto/16 :goto_a8b

    .line 2591
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2593
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2594
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2595
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setQboxUid(IZ)V

    .line 2596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2597
    goto/16 :goto_a8b

    .line 2584
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_98
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->stopQbox()V

    .line 2585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2586
    goto/16 :goto_a8b

    .line 2576
    :pswitch_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2577
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2578
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->startQbox(Ljava/lang/String;)V

    .line 2579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2580
    goto/16 :goto_a8b

    .line 2565
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2567
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2568
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2569
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallRuleMobileData(IZ)V

    .line 2570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2571
    goto/16 :goto_a8b

    .line 2554
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2556
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2557
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2558
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallRuleWifi(IZ)V

    .line 2559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2560
    goto/16 :goto_a8b

    .line 2547
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_d5
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->buildFirewall()V

    .line 2548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2549
    goto/16 :goto_a8b

    .line 2535
    :pswitch_dd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2537
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2539
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2540
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2541
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setUrlFirewallRuleWifi(ILjava/lang/String;Z)V

    .line 2542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2543
    goto/16 :goto_a8b

    .line 2522
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2524
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2526
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2527
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2528
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setUrlFirewallRuleMobileData(ILjava/lang/String;Z)V

    .line 2529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2530
    goto/16 :goto_a8b

    .line 2515
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_10b
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->cleanBlockPorts()V

    .line 2516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2517
    goto/16 :goto_a8b

    .line 2503
    :pswitch_113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2505
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2507
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2508
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2509
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setBlockPorts(Ljava/lang/String;ILjava/lang/String;)V

    .line 2510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2511
    goto/16 :goto_a8b

    .line 2496
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_12a
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->setBlockAllPackets()V

    .line 2497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2498
    goto/16 :goto_a8b

    .line 2490
    :pswitch_132
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->cleanAllBlock()V

    .line 2491
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2492
    goto/16 :goto_a8b

    .line 2482
    :pswitch_13a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2483
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2484
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setAllowListIPs(Ljava/lang/String;)V

    .line 2485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2486
    goto/16 :goto_a8b

    .line 2473
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2474
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2475
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setBlockListIPs(Ljava/lang/String;)V

    .line 2476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2477
    goto/16 :goto_a8b

    .line 2464
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2465
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2466
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setBlockAllDNSPackets(Z)V

    .line 2467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2468
    goto/16 :goto_a8b

    .line 2455
    .end local v0    # "_arg0":Z
    :pswitch_167
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .line 2456
    .local v0, "_arg0":Landroid/net/Network;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2457
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->updateDefaultGatewayForEpdg(Landroid/net/Network;)V

    .line 2458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2459
    goto/16 :goto_a8b

    .line 2444
    .end local v0    # "_arg0":Landroid/net/Network;
    :pswitch_17a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2446
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2447
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2448
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setEpdgInterfaceDropRule(Ljava/lang/String;Z)V

    .line 2449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2450
    goto/16 :goto_a8b

    .line 2433
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_18d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2435
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2436
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2437
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->disableEpdg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2439
    goto/16 :goto_a8b

    .line 2420
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2422
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2424
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2425
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2426
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->enableEpdg(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2428
    goto/16 :goto_a8b

    .line 2406
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_1b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2408
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2410
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2411
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2412
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->replaceApeRule(Ljava/lang/String;II)I

    move-result v3

    .line 2413
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2414
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2415
    goto/16 :goto_a8b

    .line 2392
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_1d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2394
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2396
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2397
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2398
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addApeRule(ZLjava/lang/String;I)I

    move-result v3

    .line 2399
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2400
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2401
    goto/16 :goto_a8b

    .line 2380
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_1ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2382
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2383
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2384
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->prioritizeApp(ZI)I

    move-result v2

    .line 2385
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2386
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2387
    goto/16 :goto_a8b

    .line 2363
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 2365
    .local v6, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2367
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2369
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2371
    .restart local v15    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2372
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2373
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->setUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2375
    goto/16 :goto_a8b

    .line 2346
    .end local v6    # "_arg0":Z
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_22b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 2348
    .restart local v6    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2350
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2352
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2354
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2355
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2356
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->setDestinationBasedMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 2357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2358
    goto/16 :goto_a8b

    .line 2333
    .end local v6    # "_arg0":Z
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2335
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2337
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2338
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2339
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setPrivateIpRoute(ZLjava/lang/String;I)V

    .line 2340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2341
    goto/16 :goto_a8b

    .line 2320
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2322
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2324
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2325
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2326
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->updateSourceRule(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2328
    goto/16 :goto_a8b

    .line 2307
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2309
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2311
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2312
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2313
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->delSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2315
    goto/16 :goto_a8b

    .line 2294
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2296
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2298
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2299
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2300
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2302
    goto/16 :goto_a8b

    .line 2281
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_2ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2283
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2285
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2286
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2287
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->delSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2289
    goto/16 :goto_a8b

    .line 2268
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2270
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2272
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2273
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2274
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2276
    goto/16 :goto_a8b

    .line 2261
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2dc
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->disableMptcp()V

    .line 2262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2263
    goto/16 :goto_a8b

    .line 2253
    :pswitch_2e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2254
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2255
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->enableMptcp(Ljava/lang/String;)V

    .line 2256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2257
    goto/16 :goto_a8b

    .line 2242
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2244
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2245
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2246
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setMptcpMtuValue(Ljava/lang/String;I)V

    .line 2247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2248
    goto/16 :goto_a8b

    .line 2231
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2233
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2234
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2235
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2237
    goto/16 :goto_a8b

    .line 2218
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2220
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2222
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2223
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2224
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->delIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2226
    goto/16 :goto_a8b

    .line 2205
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2207
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2209
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2210
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2211
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2213
    goto/16 :goto_a8b

    .line 2192
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2194
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2196
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2197
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2198
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeUidFromChain(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2200
    goto/16 :goto_a8b

    .line 2179
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_35e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2181
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2183
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2184
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2185
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addUidToChain(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2187
    goto/16 :goto_a8b

    .line 2162
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2164
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2166
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2168
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2170
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2171
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2172
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->removeSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2174
    goto/16 :goto_a8b

    .line 2145
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_39c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2147
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2149
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2151
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2153
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2154
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2155
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->addSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2157
    goto/16 :goto_a8b

    .line 2132
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_3c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2134
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2136
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2137
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2138
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2140
    goto/16 :goto_a8b

    .line 2119
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_3da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2121
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2123
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2124
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2125
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2127
    goto/16 :goto_a8b

    .line 2100
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_3f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2102
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2104
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2106
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2108
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2110
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2111
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2112
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/INetworkManagementService$Stub;->removeUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2114
    goto/16 :goto_a8b

    .line 2081
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_41f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2083
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2085
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2087
    .restart local v15    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2089
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2091
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2092
    .restart local v18    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2093
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/INetworkManagementService$Stub;->addUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2094
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2095
    goto/16 :goto_a8b

    .line 2064
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_44d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2066
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2068
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2070
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2072
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2073
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2074
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->removeSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2076
    goto/16 :goto_a8b

    .line 2047
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2049
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2051
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2053
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2055
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2056
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2057
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->addSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2058
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2059
    goto/16 :goto_a8b

    .line 2036
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_49b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2038
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2039
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2040
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->removeChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2042
    goto/16 :goto_a8b

    .line 2025
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_4ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2027
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2028
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2029
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->addChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2031
    goto/16 :goto_a8b

    .line 2016
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_4c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2017
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2018
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->removeMptcpLink(Ljava/lang/String;)V

    .line 2019
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2020
    goto/16 :goto_a8b

    .line 2007
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_4d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2008
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2009
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->addMptcpLink(Ljava/lang/String;)V

    .line 2010
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2011
    goto/16 :goto_a8b

    .line 1998
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_4df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1999
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2000
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setNetworkGuardProtocolAcceptRule(I)V

    .line 2001
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2002
    goto/16 :goto_a8b

    .line 1985
    .end local v0    # "_arg0":I
    :pswitch_4ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1987
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1989
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1990
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1991
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setNetworkGuardUidRule(IZZ)V

    .line 1992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1993
    goto/16 :goto_a8b

    .line 1974
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :pswitch_505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1976
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1977
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1978
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setNetworkGuardUidRangeAcceptRule(II)V

    .line 1979
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1980
    goto/16 :goto_a8b

    .line 1967
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_518
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->deleteNetworkGuardWhiteListRule()V

    .line 1968
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1969
    goto/16 :goto_a8b

    .line 1961
    :pswitch_520
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->disableNetworkGuard()V

    .line 1962
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1963
    goto/16 :goto_a8b

    .line 1953
    :pswitch_528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1954
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1955
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->enableNetworkGuard(Z)V

    .line 1956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1957
    goto/16 :goto_a8b

    .line 1946
    .end local v0    # "_arg0":Z
    :pswitch_537
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->deleteNetworkGuardChain()V

    .line 1947
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1948
    goto/16 :goto_a8b

    .line 1940
    :pswitch_53f
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->createNetworkGuardChain()V

    .line 1941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1942
    goto/16 :goto_a8b

    .line 1928
    :pswitch_547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1930
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1932
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1933
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1934
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V

    .line 1935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1936
    goto/16 :goto_a8b

    .line 1911
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_55e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1913
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1915
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1917
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1919
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1920
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1921
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->addPortFwdRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1923
    goto/16 :goto_a8b

    .line 1900
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1902
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1903
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1904
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setKnoxVpn(IZ)V

    .line 1905
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1906
    goto/16 :goto_a8b

    .line 1893
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_598
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->unregisterNetdTetherEventListener()V

    .line 1894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1895
    goto/16 :goto_a8b

    .line 1887
    :pswitch_5a0
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->registerNetdTetherEventListener()V

    .line 1888
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1889
    goto/16 :goto_a8b

    .line 1879
    :pswitch_5a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1880
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1881
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->enableKnoxVpnFlagForTether(Z)V

    .line 1882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1883
    goto/16 :goto_a8b

    .line 1868
    .end local v0    # "_arg0":Z
    :pswitch_5b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1870
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1871
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1872
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->runKnoxRulesCommand(I[Ljava/lang/String;)V

    .line 1873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1874
    goto/16 :goto_a8b

    .line 1856
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_5ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1858
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1859
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1860
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1861
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1862
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1863
    goto/16 :goto_a8b

    .line 1847
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_5e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1848
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1849
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->clearEbpfMap(I)V

    .line 1850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1851
    goto/16 :goto_a8b

    .line 1834
    .end local v0    # "_arg0":I
    :pswitch_5f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1836
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1838
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1839
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1840
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->updateInputFilterAppWideRules([III)V

    .line 1841
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1842
    goto/16 :goto_a8b

    .line 1821
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1823
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1825
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1826
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1827
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->updateInputFilterUserWideRules([III)V

    .line 1828
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1829
    goto/16 :goto_a8b

    .line 1810
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_61e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1812
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1813
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1814
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->updateInputFilterExemptRules(II)V

    .line 1815
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1816
    goto/16 :goto_a8b

    .line 1799
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1801
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1802
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1803
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->addOrRemoveSystemAppFromDataSaverWhitelist(ZI)V

    .line 1804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1805
    goto/16 :goto_a8b

    .line 1786
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1788
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1790
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1791
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1792
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setNetworkInfo(IZI)V

    .line 1793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1794
    goto/16 :goto_a8b

    .line 1775
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_65b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1777
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1778
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1779
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setDnsForwardersForKnoxVpn(I[Ljava/lang/String;)V

    .line 1780
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1781
    goto/16 :goto_a8b

    .line 1761
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_66e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1763
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1765
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1766
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1767
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsVideoCall(Ljava/lang/String;II)J

    move-result-wide v3

    .line 1768
    .local v3, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1769
    invoke-virtual {v10, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1770
    goto/16 :goto_a8b

    .line 1748
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":J
    :pswitch_689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1750
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1752
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1753
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1754
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->stopNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 1755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    goto/16 :goto_a8b

    .line 1735
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_6a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1737
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1739
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1740
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1741
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->startNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 1742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    goto/16 :goto_a8b

    .line 1725
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_6b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1726
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1727
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->isNetworkRestricted(I)Z

    move-result v1

    .line 1728
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1729
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1730
    goto/16 :goto_a8b

    .line 1715
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_6ca
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1716
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1717
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    move-result v1

    .line 1718
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1719
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1720
    goto/16 :goto_a8b

    .line 1706
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    .end local v1    # "_result":I
    :pswitch_6df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1707
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1708
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 1709
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1710
    goto/16 :goto_a8b

    .line 1695
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_6ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1697
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1698
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1699
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 1700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1701
    goto/16 :goto_a8b

    .line 1686
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :pswitch_703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1687
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1688
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->denyProtect(I)V

    .line 1689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1690
    goto/16 :goto_a8b

    .line 1677
    .end local v0    # "_arg0":I
    :pswitch_712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1678
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1679
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->allowProtect(I)V

    .line 1680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1681
    goto/16 :goto_a8b

    .line 1668
    .end local v0    # "_arg0":I
    :pswitch_721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1669
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1670
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->closeSocketsForUid(I)V

    .line 1671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1672
    goto/16 :goto_a8b

    .line 1659
    .end local v0    # "_arg0":I
    :pswitch_730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1660
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1661
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->closeSocketsForUids([I)V

    .line 1662
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1663
    goto/16 :goto_a8b

    .line 1648
    .end local v0    # "_arg0":[I
    :pswitch_73f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1650
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1651
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1652
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->closeSocketsForFreecess(ILjava/lang/String;)V

    .line 1653
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1654
    goto/16 :goto_a8b

    .line 1637
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1639
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1640
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1641
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallChainEnabled(IZ)V

    .line 1642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1643
    goto/16 :goto_a8b

    .line 1624
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1626
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1628
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1629
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1630
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRules(I[I[I)V

    .line 1631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1632
    goto/16 :goto_a8b

    .line 1611
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":[I
    :pswitch_77c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1613
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1615
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1616
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1617
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(III)V

    .line 1618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1619
    goto/16 :goto_a8b

    .line 1600
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1602
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1603
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1604
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 1605
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1606
    goto/16 :goto_a8b

    .line 1592
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_7a6
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    move-result v0

    .line 1593
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1594
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1595
    goto/16 :goto_a8b

    .line 1584
    .end local v0    # "_result":Z
    :pswitch_7b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1585
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1586
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    .line 1587
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1588
    goto/16 :goto_a8b

    .line 1576
    .end local v0    # "_arg0":Z
    :pswitch_7c1
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    move-result v0

    .line 1577
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1579
    goto/16 :goto_a8b

    .line 1566
    .end local v0    # "_result":Z
    :pswitch_7cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1568
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1569
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1570
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setUidCleartextNetworkPolicy(II)V

    .line 1571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1572
    goto/16 :goto_a8b

    .line 1556
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_7e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1557
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1558
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setDataSaverModeEnabled(Z)Z

    move-result v1

    .line 1559
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1560
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1561
    goto/16 :goto_a8b

    .line 1545
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_7f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1547
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1548
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1549
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setUidOnMeteredNetworkAllowlist(IZ)V

    .line 1550
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1551
    goto/16 :goto_a8b

    .line 1534
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1536
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1537
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1538
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setUidOnMeteredNetworkDenylist(IZ)V

    .line 1539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1540
    goto/16 :goto_a8b

    .line 1525
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1526
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1527
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    .line 1528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1529
    goto/16 :goto_a8b

    .line 1516
    .end local v0    # "_arg0":J
    :pswitch_828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1517
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1518
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    .line 1519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1520
    goto/16 :goto_a8b

    .line 1505
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1507
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1508
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1509
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 1510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1511
    goto/16 :goto_a8b

    .line 1496
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    :pswitch_84a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1497
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1498
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1500
    goto/16 :goto_a8b

    .line 1485
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1487
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1488
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1489
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 1490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1491
    goto/16 :goto_a8b

    .line 1475
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    :pswitch_86c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1476
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1477
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1478
    .local v1, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1479
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1480
    goto/16 :goto_a8b

    .line 1466
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/net/NetworkStats;
    :pswitch_87f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v0

    .line 1467
    .local v0, "_arg0":Landroid/net/ITetheringStatsProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1468
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V

    .line 1469
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1470
    goto/16 :goto_a8b

    .line 1457
    .end local v0    # "_arg0":Landroid/net/ITetheringStatsProvider;
    :pswitch_892
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v0

    .line 1458
    .restart local v0    # "_arg0":Landroid/net/ITetheringStatsProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1459
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->unregisterTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;)V

    .line 1460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    goto/16 :goto_a8b

    .line 1446
    .end local v0    # "_arg0":Landroid/net/ITetheringStatsProvider;
    :pswitch_8a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v0

    .line 1448
    .restart local v0    # "_arg0":Landroid/net/ITetheringStatsProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1450
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V

    .line 1451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    goto/16 :goto_a8b

    .line 1435
    .end local v0    # "_arg0":Landroid/net/ITetheringStatsProvider;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_8bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1437
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1438
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1439
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    goto/16 :goto_a8b

    .line 1424
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_8cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1426
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1427
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1428
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    goto/16 :goto_a8b

    .line 1413
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_8e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1415
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1416
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1417
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    goto/16 :goto_a8b

    .line 1402
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_8f5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1404
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1405
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1406
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1408
    goto/16 :goto_a8b

    .line 1394
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_908
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    move-result-object v0

    .line 1395
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1396
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1397
    goto/16 :goto_a8b

    .line 1387
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_914
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v0

    .line 1388
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1390
    goto/16 :goto_a8b

    .line 1379
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1380
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1381
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    .line 1382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    goto/16 :goto_a8b

    .line 1370
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_92f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1371
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1372
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    .line 1373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    goto/16 :goto_a8b

    .line 1362
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_93e
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    move-result v0

    .line 1363
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1364
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1365
    goto/16 :goto_a8b

    .line 1356
    .end local v0    # "_result":Z
    :pswitch_94a
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    .line 1357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    goto/16 :goto_a8b

    .line 1346
    :pswitch_952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1348
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1349
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1350
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->startTetheringWithConfiguration(Z[Ljava/lang/String;)V

    .line 1351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    goto/16 :goto_a8b

    .line 1337
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1338
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1339
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    .line 1340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1341
    goto/16 :goto_a8b

    .line 1328
    .end local v0    # "_arg0":[Ljava/lang/String;
    :pswitch_974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1329
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1330
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    .line 1331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    goto/16 :goto_a8b

    .line 1320
    .end local v0    # "_arg0":Z
    :pswitch_983
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    move-result v0

    .line 1321
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1323
    goto/16 :goto_a8b

    .line 1314
    .end local v0    # "_result":Z
    :pswitch_98f
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    .line 1315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1316
    goto/16 :goto_a8b

    .line 1304
    :pswitch_997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1306
    .local v0, "_arg0":I
    sget-object v1, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1307
    .local v1, "_arg1":Landroid/net/RouteInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1308
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->removeRoute(ILandroid/net/RouteInfo;)V

    .line 1309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1310
    goto/16 :goto_a8b

    .line 1293
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/net/RouteInfo;
    :pswitch_9ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1295
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1296
    .restart local v1    # "_arg1":Landroid/net/RouteInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1297
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->addRoute(ILandroid/net/RouteInfo;)V

    .line 1298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    goto/16 :goto_a8b

    .line 1282
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/net/RouteInfo;
    :pswitch_9c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1284
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1285
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1286
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 1287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    goto/16 :goto_a8b

    .line 1273
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_9d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1274
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1275
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    .line 1276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    goto/16 :goto_a8b

    .line 1264
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_9e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1265
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1266
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    .line 1267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    goto/16 :goto_a8b

    .line 1253
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_9f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1255
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1256
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1257
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 1258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    goto/16 :goto_a8b

    .line 1244
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_a09
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1245
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1246
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    .line 1247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    goto/16 :goto_a8b

    .line 1235
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_a18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1236
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1237
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    .line 1238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    goto :goto_a8b

    .line 1226
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_a26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1227
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1228
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 1229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    goto :goto_a8b

    .line 1215
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_a34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1217
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/InterfaceConfiguration;

    .line 1218
    .local v1, "_arg1":Landroid/net/InterfaceConfiguration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1219
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    goto :goto_a8b

    .line 1205
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/InterfaceConfiguration;
    :pswitch_a4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1206
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1207
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 1208
    .local v1, "_result":Landroid/net/InterfaceConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1210
    goto :goto_a8b

    .line 1197
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/net/InterfaceConfiguration;
    :pswitch_a5c
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v0

    .line 1198
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1200
    goto :goto_a8b

    .line 1189
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_a67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v0

    .line 1190
    .local v0, "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1191
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 1192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    goto :goto_a8b

    .line 1180
    .end local v0    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :pswitch_a79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v0

    .line 1181
    .restart local v0    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1182
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 1183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    nop

    .line 2649
    .end local v0    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :goto_a8b
    return v12

    :pswitch_data_a8c
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_a92
    .packed-switch 0x1
        :pswitch_a79
        :pswitch_a67
        :pswitch_a5c
        :pswitch_a4a
        :pswitch_a34
        :pswitch_a26
        :pswitch_a18
        :pswitch_a09
        :pswitch_9f6
        :pswitch_9e7
        :pswitch_9d8
        :pswitch_9c5
        :pswitch_9ae
        :pswitch_997
        :pswitch_98f
        :pswitch_983
        :pswitch_974
        :pswitch_965
        :pswitch_952
        :pswitch_94a
        :pswitch_93e
        :pswitch_92f
        :pswitch_920
        :pswitch_914
        :pswitch_908
        :pswitch_8f5
        :pswitch_8e2
        :pswitch_8cf
        :pswitch_8bc
        :pswitch_8a5
        :pswitch_892
        :pswitch_87f
        :pswitch_86c
        :pswitch_859
        :pswitch_84a
        :pswitch_837
        :pswitch_828
        :pswitch_819
        :pswitch_806
        :pswitch_7f3
        :pswitch_7e0
        :pswitch_7cd
        :pswitch_7c1
        :pswitch_7b2
        :pswitch_7a6
        :pswitch_793
        :pswitch_77c
        :pswitch_765
        :pswitch_752
        :pswitch_73f
        :pswitch_730
        :pswitch_721
        :pswitch_712
        :pswitch_703
        :pswitch_6ee
        :pswitch_6df
        :pswitch_6ca
        :pswitch_6b7
        :pswitch_6a0
        :pswitch_689
        :pswitch_66e
        :pswitch_65b
        :pswitch_644
        :pswitch_631
        :pswitch_61e
        :pswitch_607
        :pswitch_5f0
        :pswitch_5e1
        :pswitch_5ca
        :pswitch_5b7
        :pswitch_5a8
        :pswitch_5a0
        :pswitch_598
        :pswitch_585
        :pswitch_55e
        :pswitch_547
        :pswitch_53f
        :pswitch_537
        :pswitch_528
        :pswitch_520
        :pswitch_518
        :pswitch_505
        :pswitch_4ee
        :pswitch_4df
        :pswitch_4d0
        :pswitch_4c1
        :pswitch_4ae
        :pswitch_49b
        :pswitch_474
        :pswitch_44d
        :pswitch_41f
        :pswitch_3f1
        :pswitch_3da
        :pswitch_3c3
        :pswitch_39c
        :pswitch_375
        :pswitch_35e
        :pswitch_347
        :pswitch_330
        :pswitch_319
        :pswitch_306
        :pswitch_2f3
        :pswitch_2e4
        :pswitch_2dc
        :pswitch_2c5
        :pswitch_2ae
        :pswitch_297
        :pswitch_280
        :pswitch_269
        :pswitch_252
        :pswitch_22b
        :pswitch_204
        :pswitch_1ed
        :pswitch_1d2
        :pswitch_1b7
        :pswitch_1a0
        :pswitch_18d
        :pswitch_17a
        :pswitch_167
        :pswitch_158
        :pswitch_149
        :pswitch_13a
        :pswitch_132
        :pswitch_12a
        :pswitch_113
        :pswitch_10b
        :pswitch_f4
        :pswitch_dd
        :pswitch_d5
        :pswitch_c2
        :pswitch_af
        :pswitch_a0
        :pswitch_98
        :pswitch_85
        :pswitch_72
        :pswitch_4b
        :pswitch_24
    .end packed-switch
.end method
