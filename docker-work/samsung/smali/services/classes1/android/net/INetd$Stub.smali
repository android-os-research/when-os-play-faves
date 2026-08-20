.class public abstract Landroid/net/INetd$Stub;
.super Landroid/os/Binder;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetd$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final TRANSACTION_bandwidthAddNaughtyApp:I = 0x32

.field public static final TRANSACTION_bandwidthAddNiceApp:I = 0x34

.field public static final TRANSACTION_bandwidthEnableDataSaver:I = 0x3

.field public static final TRANSACTION_bandwidthRemoveInterfaceAlert:I = 0x30

.field public static final TRANSACTION_bandwidthRemoveInterfaceQuota:I = 0x2e

.field public static final TRANSACTION_bandwidthRemoveNaughtyApp:I = 0x33

.field public static final TRANSACTION_bandwidthRemoveNiceApp:I = 0x35

.field public static final TRANSACTION_bandwidthSetGlobalAlert:I = 0x31

.field public static final TRANSACTION_bandwidthSetInterfaceAlert:I = 0x2f

.field public static final TRANSACTION_bandwidthSetInterfaceQuota:I = 0x2d

.field public static final TRANSACTION_clatdStart:I = 0x25

.field public static final TRANSACTION_clatdStop:I = 0x26

.field public static final TRANSACTION_firewallAddUidInterfaceRules:I = 0x5b

.field public static final TRANSACTION_firewallEnableChildChain:I = 0x4f

.field public static final TRANSACTION_firewallRemoveUidInterfaceRules:I = 0x5c

.field public static final TRANSACTION_firewallReplaceUidChain:I = 0x2

.field public static final TRANSACTION_firewallSetFirewallType:I = 0x4c

.field public static final TRANSACTION_firewallSetInterfaceRule:I = 0x4d

.field public static final TRANSACTION_firewallSetUidRule:I = 0x4e

.field public static final TRANSACTION_getFwmarkForNetwork:I = 0x60

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_getOemNetd:I = 0x5e

.field public static final TRANSACTION_getProcSysNet:I = 0x11

.field public static final TRANSACTION_idletimerAddInterface:I = 0x22

.field public static final TRANSACTION_idletimerRemoveInterface:I = 0x23

.field public static final TRANSACTION_interfaceAddAddress:I = 0xf

.field public static final TRANSACTION_interfaceClearAddrs:I = 0x54

.field public static final TRANSACTION_interfaceDelAddress:I = 0x10

.field public static final TRANSACTION_interfaceGetCfg:I = 0x51

.field public static final TRANSACTION_interfaceGetList:I = 0x50

.field public static final TRANSACTION_interfaceSetCfg:I = 0x52

.field public static final TRANSACTION_interfaceSetEnableIPv6:I = 0x55

.field public static final TRANSACTION_interfaceSetIPv6PrivacyExtensions:I = 0x53

.field public static final TRANSACTION_interfaceSetMtu:I = 0x56

.field public static final TRANSACTION_ipSecAddSecurityAssociation:I = 0x15

.field public static final TRANSACTION_ipSecAddSecurityPolicy:I = 0x19

.field public static final TRANSACTION_ipSecAddTunnelInterface:I = 0x1c

.field public static final TRANSACTION_ipSecAllocateSpi:I = 0x14

.field public static final TRANSACTION_ipSecApplyTransportModeTransform:I = 0x17

.field public static final TRANSACTION_ipSecDeleteSecurityAssociation:I = 0x16

.field public static final TRANSACTION_ipSecDeleteSecurityPolicy:I = 0x1b

.field public static final TRANSACTION_ipSecRemoveTransportModeTransform:I = 0x18

.field public static final TRANSACTION_ipSecRemoveTunnelInterface:I = 0x1e

.field public static final TRANSACTION_ipSecSetEncapSocketOwner:I = 0x13

.field public static final TRANSACTION_ipSecUpdateSecurityPolicy:I = 0x1a

.field public static final TRANSACTION_ipSecUpdateTunnelInterface:I = 0x1d

.field public static final TRANSACTION_ipfwdAddInterfaceForward:I = 0x2b

.field public static final TRANSACTION_ipfwdDisableForwarding:I = 0x2a

.field public static final TRANSACTION_ipfwdEnableForwarding:I = 0x29

.field public static final TRANSACTION_ipfwdEnabled:I = 0x27

.field public static final TRANSACTION_ipfwdGetRequesterList:I = 0x28

.field public static final TRANSACTION_ipfwdRemoveInterfaceForward:I = 0x2c

.field public static final TRANSACTION_isAlive:I = 0x1

.field public static final TRANSACTION_networkAddInterface:I = 0x7

.field public static final TRANSACTION_networkAddLegacyRoute:I = 0x40

.field public static final TRANSACTION_networkAddRoute:I = 0x3e

.field public static final TRANSACTION_networkAddRouteParcel:I = 0x61

.field public static final TRANSACTION_networkAddUidRanges:I = 0x9

.field public static final TRANSACTION_networkAddUidRangesParcel:I = 0x6a

.field public static final TRANSACTION_networkCanProtect:I = 0x4b

.field public static final TRANSACTION_networkClearDefault:I = 0x44

.field public static final TRANSACTION_networkClearPermissionForUser:I = 0x47

.field public static final TRANSACTION_networkCreate:I = 0x69

.field public static final TRANSACTION_networkCreatePhysical:I = 0x4

.field public static final TRANSACTION_networkCreateVpn:I = 0x5

.field public static final TRANSACTION_networkDestroy:I = 0x6

.field public static final TRANSACTION_networkGetDefault:I = 0x42

.field public static final TRANSACTION_networkRejectNonSecureVpn:I = 0xb

.field public static final TRANSACTION_networkRemoveInterface:I = 0x8

.field public static final TRANSACTION_networkRemoveLegacyRoute:I = 0x41

.field public static final TRANSACTION_networkRemoveRoute:I = 0x3f

.field public static final TRANSACTION_networkRemoveRouteParcel:I = 0x63

.field public static final TRANSACTION_networkRemoveUidRanges:I = 0xa

.field public static final TRANSACTION_networkRemoveUidRangesParcel:I = 0x6b

.field public static final TRANSACTION_networkSetDefault:I = 0x43

.field public static final TRANSACTION_networkSetPermissionForNetwork:I = 0x45

.field public static final TRANSACTION_networkSetPermissionForUser:I = 0x46

.field public static final TRANSACTION_networkSetProtectAllow:I = 0x49

.field public static final TRANSACTION_networkSetProtectDeny:I = 0x4a

.field public static final TRANSACTION_networkUpdateRouteParcel:I = 0x62

.field public static final TRANSACTION_registerUnsolicitedEventListener:I = 0x5a

.field public static final TRANSACTION_setIPv6AddrGenMode:I = 0x21

.field public static final TRANSACTION_setProcSysNet:I = 0x12

.field public static final TRANSACTION_setTcpRWmemorySize:I = 0x59

.field public static final TRANSACTION_socketDestroy:I = 0xc

.field public static final TRANSACTION_strictUidCleartextPenalty:I = 0x24

.field public static final TRANSACTION_tetherAddForward:I = 0x57

.field public static final TRANSACTION_tetherApplyDnsInterfaces:I = 0xd

.field public static final TRANSACTION_tetherDnsList:I = 0x3d

.field public static final TRANSACTION_tetherDnsSet:I = 0x3c

.field public static final TRANSACTION_tetherGetStats:I = 0xe

.field public static final TRANSACTION_tetherInterfaceAdd:I = 0x39

.field public static final TRANSACTION_tetherInterfaceList:I = 0x3b

.field public static final TRANSACTION_tetherInterfaceRemove:I = 0x3a

.field public static final TRANSACTION_tetherIsEnabled:I = 0x38

.field public static final TRANSACTION_tetherOffloadGetAndClearStats:I = 0x68

.field public static final TRANSACTION_tetherOffloadGetStats:I = 0x66

.field public static final TRANSACTION_tetherOffloadRuleAdd:I = 0x64

.field public static final TRANSACTION_tetherOffloadRuleRemove:I = 0x65

.field public static final TRANSACTION_tetherOffloadSetInterfaceQuota:I = 0x67

.field public static final TRANSACTION_tetherRemoveForward:I = 0x58

.field public static final TRANSACTION_tetherStart:I = 0x36

.field public static final TRANSACTION_tetherStartWithConfiguration:I = 0x5f

.field public static final TRANSACTION_tetherStop:I = 0x37

.field public static final TRANSACTION_trafficSetNetPermForUids:I = 0x48

.field public static final TRANSACTION_trafficSwapActiveStatsMap:I = 0x5d

.field public static final TRANSACTION_wakeupAddInterface:I = 0x1f

.field public static final TRANSACTION_wakeupDelInterface:I = 0x20


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "android$net$INetd"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    .line 3738
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 388
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 389
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetd;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 400
    :cond_4
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 401
    instance-of v1, v0, Landroid/net/INetd;

    if-eqz v1, :cond_13

    .line 402
    check-cast v0, Landroid/net/INetd;

    return-object v0

    .line 404
    :cond_13
    new-instance v0, Landroid/net/INetd$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    .line 412
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v13, 0x1

    if-lt v1, v13, :cond_15

    const v3, 0xffffff

    if-gt v1, v3, :cond_15

    .line 414
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    sparse-switch v1, :sswitch_data_810

    packed-switch v1, :pswitch_data_81e

    move-object v6, v14

    move-object v2, v15

    .line 1561
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 420
    :sswitch_22
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    .line 425
    :sswitch_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    .line 431
    :sswitch_31
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    .line 1554
    :pswitch_3c
    sget-object v1, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 1555
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkRemoveUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V

    .line 1556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1546
    :pswitch_4c
    sget-object v1, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 1547
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkAddUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V

    .line 1548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1538
    :pswitch_5c
    sget-object v1, Landroid/net/NativeNetworkConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NativeNetworkConfig;

    .line 1539
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkCreate(Landroid/net/NativeNetworkConfig;)V

    .line 1540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1529
    :pswitch_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1530
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherOffloadGetAndClearStats(I)Landroid/net/TetherStatsParcel;

    move-result-object v0

    .line 1531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1532
    invoke-virtual {v14, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_5fd

    .line 1519
    :pswitch_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1522
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->tetherOffloadSetInterfaceQuota(IJ)V

    .line 1523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1511
    :pswitch_8c
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->tetherOffloadGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v0

    .line 1512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1513
    invoke-virtual {v14, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_5fd

    .line 1504
    :pswitch_98
    sget-object v1, Landroid/net/TetherOffloadRuleParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetherOffloadRuleParcel;

    .line 1505
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherOffloadRuleRemove(Landroid/net/TetherOffloadRuleParcel;)V

    .line 1506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1496
    :pswitch_a8
    sget-object v1, Landroid/net/TetherOffloadRuleParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetherOffloadRuleParcel;

    .line 1497
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherOffloadRuleAdd(Landroid/net/TetherOffloadRuleParcel;)V

    .line 1498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1486
    :pswitch_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1488
    sget-object v2, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfoParcel;

    .line 1489
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkRemoveRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 1490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1476
    :pswitch_cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1478
    sget-object v2, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfoParcel;

    .line 1479
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 1480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1466
    :pswitch_e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1468
    sget-object v2, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfoParcel;

    .line 1469
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkAddRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 1470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1457
    :pswitch_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1458
    invoke-interface {v0, v1}, Landroid/net/INetd;->getFwmarkForNetwork(I)Landroid/net/MarkMaskParcel;

    move-result-object v0

    .line 1459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    invoke-virtual {v14, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_5fd

    .line 1449
    :pswitch_104
    sget-object v1, Landroid/net/TetherConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetherConfigParcel;

    .line 1450
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V

    .line 1451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1441
    :pswitch_114
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v0

    .line 1442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_5fd

    .line 1435
    :pswitch_120
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->trafficSwapActiveStatsMap()V

    .line 1436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1428
    :pswitch_128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1429
    invoke-interface {v0, v1}, Landroid/net/INetd;->firewallRemoveUidInterfaceRules([I)V

    .line 1430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1418
    :pswitch_134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1421
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V

    .line 1422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1410
    :pswitch_144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetdUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetdUnsolicitedEventListener;

    move-result-object v1

    .line 1411
    invoke-interface {v0, v1}, Landroid/net/INetd;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V

    .line 1412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1400
    :pswitch_154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1403
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1390
    :pswitch_164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1393
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1380
    :pswitch_174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1383
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1370
    :pswitch_184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1373
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->interfaceSetMtu(Ljava/lang/String;I)V

    .line 1374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1360
    :pswitch_194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1363
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V

    .line 1364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1352
    :pswitch_1a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1353
    invoke-interface {v0, v1}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V

    .line 1354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1342
    :pswitch_1b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1345
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 1346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1334
    :pswitch_1c0
    sget-object v1, Landroid/net/InterfaceConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/InterfaceConfigurationParcel;

    .line 1335
    invoke-interface {v0, v1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V

    .line 1336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1325
    :pswitch_1d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1326
    invoke-interface {v0, v1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v0

    .line 1327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    invoke-virtual {v14, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_5fd

    .line 1317
    :pswitch_1e0
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->interfaceGetList()[Ljava/lang/String;

    move-result-object v0

    .line 1318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_5fd

    .line 1308
    :pswitch_1ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1311
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->firewallEnableChildChain(IZ)V

    .line 1312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1296
    :pswitch_1fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1301
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->firewallSetUidRule(III)V

    .line 1302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1286
    :pswitch_210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1289
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->firewallSetInterfaceRule(Ljava/lang/String;I)V

    .line 1290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1278
    :pswitch_220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1279
    invoke-interface {v0, v1}, Landroid/net/INetd;->firewallSetFirewallType(I)V

    .line 1280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1269
    :pswitch_22c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1270
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkCanProtect(I)Z

    move-result v0

    .line 1271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_5fd

    .line 1261
    :pswitch_23c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1262
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkSetProtectDeny(I)V

    .line 1263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1253
    :pswitch_248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1254
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkSetProtectAllow(I)V

    .line 1255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1243
    :pswitch_254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1246
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 1247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1235
    :pswitch_264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1236
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkClearPermissionForUser([I)V

    .line 1237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1225
    :pswitch_270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1228
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V

    .line 1229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1215
    :pswitch_280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1218
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkSetPermissionForNetwork(II)V

    .line 1219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1208
    :pswitch_290
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->networkClearDefault()V

    .line 1209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1201
    :pswitch_298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1202
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkSetDefault(I)V

    .line 1203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1193
    :pswitch_2a4
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->networkGetDefault()I

    move-result v0

    .line 1194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5fd

    .line 1178
    :pswitch_2b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    .line 1187
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1162
    :pswitch_2ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    .line 1171
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1148
    :pswitch_2ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1155
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1134
    :pswitch_304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1141
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1126
    :pswitch_31c
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->tetherDnsList()[Ljava/lang/String;

    move-result-object v0

    .line 1127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_5fd

    .line 1117
    :pswitch_328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1120
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->tetherDnsSet(I[Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1109
    :pswitch_338
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->tetherInterfaceList()[Ljava/lang/String;

    move-result-object v0

    .line 1110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_5fd

    .line 1102
    :pswitch_344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1103
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V

    .line 1104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1094
    :pswitch_350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1095
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherInterfaceAdd(Ljava/lang/String;)V

    .line 1096
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1086
    :pswitch_35c
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->tetherIsEnabled()Z

    move-result v0

    .line 1087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_5fd

    .line 1080
    :pswitch_368
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->tetherStop()V

    .line 1081
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1073
    :pswitch_370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1074
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherStart([Ljava/lang/String;)V

    .line 1075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1065
    :pswitch_37c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1066
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthRemoveNiceApp(I)V

    .line 1067
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1057
    :pswitch_388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1058
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthAddNiceApp(I)V

    .line 1059
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1049
    :pswitch_394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1050
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthRemoveNaughtyApp(I)V

    .line 1051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1041
    :pswitch_3a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1042
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthAddNaughtyApp(I)V

    .line 1043
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1033
    :pswitch_3ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1034
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->bandwidthSetGlobalAlert(J)V

    .line 1035
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1025
    :pswitch_3b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1026
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V

    .line 1027
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1015
    :pswitch_3c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1018
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V

    .line 1019
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 1007
    :pswitch_3d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V

    .line 1009
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 997
    :pswitch_3e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1000
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V

    .line 1001
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 987
    :pswitch_3f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 990
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 977
    :pswitch_400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 980
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 969
    :pswitch_410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 970
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipfwdDisableForwarding(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 961
    :pswitch_41c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 962
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipfwdEnableForwarding(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 953
    :pswitch_428
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->ipfwdGetRequesterList()[Ljava/lang/String;

    move-result-object v0

    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_5fd

    .line 946
    :pswitch_434
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->ipfwdEnabled()Z

    move-result v0

    .line 947
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_5fd

    .line 939
    :pswitch_440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 940
    invoke-interface {v0, v1}, Landroid/net/INetd;->clatdStop(Ljava/lang/String;)V

    .line 941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 928
    :pswitch_44c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 931
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 932
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_5fd

    .line 918
    :pswitch_460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 921
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->strictUidCleartextPenalty(II)V

    .line 922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 906
    :pswitch_470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 908
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 911
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V

    .line 912
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 894
    :pswitch_484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 896
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 899
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V

    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 884
    :pswitch_498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 887
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 888
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 870
    :pswitch_4a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 877
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 878
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 856
    :pswitch_4c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 863
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 848
    :pswitch_4d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 849
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipSecRemoveTunnelInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 830
    :pswitch_4e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    .line 841
    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 842
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 812
    :pswitch_506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    .line 823
    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 794
    :pswitch_528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    .line 805
    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecDeleteSecurityPolicy(IIIIII)V

    .line 806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 770
    :pswitch_54a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    .line 787
    invoke-interface/range {v0 .. v9}, Landroid/net/INetd;->ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5fd

    .line 746
    :pswitch_578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    .line 763
    invoke-interface/range {v0 .. v9}, Landroid/net/INetd;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5fd

    .line 738
    :pswitch_5a5
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 739
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V

    .line 740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5fd

    .line 720
    :pswitch_5b4
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 724
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    .line 731
    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    .line 732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5fd

    .line 700
    :pswitch_5d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    .line 713
    invoke-interface/range {v0 .. v7}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_5fd
    move v1, v13

    goto/16 :goto_80e

    .line 652
    :pswitch_600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    move-object/from16 v13, v16

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move/from16 v14, v16

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, v16

    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    move-object/from16 v0, p0

    .line 693
    invoke-interface/range {v0 .. v21}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_702

    .line 637
    :pswitch_664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 644
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 645
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v6, p3

    .line 646
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_702

    :pswitch_682
    move-object v6, v14

    .line 627
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 630
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V

    .line 631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_702

    :pswitch_699
    move-object v6, v14

    move-object v2, v15

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    .line 620
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_702

    :pswitch_6bc
    move-object v6, v14

    move-object v2, v15

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 603
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/net/INetd;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_702

    :pswitch_6d9
    move-object v6, v14

    move-object v2, v15

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 589
    invoke-interface {v0, v1, v3, v2}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_702

    :pswitch_6ee
    move-object v6, v14

    move-object v2, v15

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 577
    invoke-interface {v0, v1, v3, v2}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_702
    const/4 v1, 0x1

    goto/16 :goto_80e

    :pswitch_705
    move-object v6, v14

    .line 564
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->tetherGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v0

    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    .line 566
    invoke-virtual {v6, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_80e

    :pswitch_713
    move v1, v13

    move-object v6, v14

    .line 557
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z

    move-result v0

    .line 558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_80e

    :pswitch_721
    move v1, v13

    move-object v6, v14

    move-object v2, v15

    .line 548
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 551
    invoke-interface {v0, v3, v2}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRangeParcel;[I)V

    .line 552
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_80e

    :pswitch_738
    move v1, v13

    move-object v6, v14

    move-object v2, v15

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 540
    sget-object v4, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRangeParcel;

    .line 541
    invoke-interface {v0, v3, v2}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V

    .line 542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_80e

    :pswitch_74f
    move v1, v13

    move-object v6, v14

    move-object v2, v15

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 530
    sget-object v4, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRangeParcel;

    .line 531
    invoke-interface {v0, v3, v2}, Landroid/net/INetd;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_80e

    :pswitch_766
    move v1, v13

    move-object v6, v14

    move-object v2, v15

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 520
    sget-object v4, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRangeParcel;

    .line 521
    invoke-interface {v0, v3, v2}, Landroid/net/INetd;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_80e

    :pswitch_77d
    move v1, v13

    move-object v6, v14

    move-object v2, v15

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 511
    invoke-interface {v0, v3, v2}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V

    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_80e

    :pswitch_790
    move v1, v13

    move-object v6, v14

    move-object v2, v15

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-interface {v0, v3, v2}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_80e

    :pswitch_7a3
    move v1, v13

    move-object v6, v14

    move-object v2, v15

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 491
    invoke-interface {v0, v2}, Landroid/net/INetd;->networkDestroy(I)V

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_80e

    :pswitch_7b2
    move v1, v13

    move-object v6, v14

    move-object v2, v15

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 483
    invoke-interface {v0, v3, v2}, Landroid/net/INetd;->networkCreateVpn(IZ)V

    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_80e

    :pswitch_7c4
    move v1, v13

    move-object v6, v14

    move-object v2, v15

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 473
    invoke-interface {v0, v3, v2}, Landroid/net/INetd;->networkCreatePhysical(II)V

    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_80e

    :pswitch_7d6
    move v1, v13

    move-object v6, v14

    move-object v2, v15

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 462
    invoke-interface {v0, v2}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    move-result v0

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_80e

    :pswitch_7e8
    move v1, v13

    move-object v6, v14

    move-object v2, v15

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 453
    invoke-interface {v0, v3, v4, v2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result v0

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_80e

    :pswitch_802
    move v1, v13

    move-object v6, v14

    .line 440
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->isAlive()Z

    move-result v0

    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_80e
    return v1

    nop

    :sswitch_data_810
    .sparse-switch
        0xfffffe -> :sswitch_31
        0xffffff -> :sswitch_26
        0x5f4e5446 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_81e
    .packed-switch 0x1
        :pswitch_802
        :pswitch_7e8
        :pswitch_7d6
        :pswitch_7c4
        :pswitch_7b2
        :pswitch_7a3
        :pswitch_790
        :pswitch_77d
        :pswitch_766
        :pswitch_74f
        :pswitch_738
        :pswitch_721
        :pswitch_713
        :pswitch_705
        :pswitch_6ee
        :pswitch_6d9
        :pswitch_6bc
        :pswitch_699
        :pswitch_682
        :pswitch_664
        :pswitch_600
        :pswitch_5d9
        :pswitch_5b4
        :pswitch_5a5
        :pswitch_578
        :pswitch_54a
        :pswitch_528
        :pswitch_506
        :pswitch_4e4
        :pswitch_4d8
        :pswitch_4c0
        :pswitch_4a8
        :pswitch_498
        :pswitch_484
        :pswitch_470
        :pswitch_460
        :pswitch_44c
        :pswitch_440
        :pswitch_434
        :pswitch_428
        :pswitch_41c
        :pswitch_410
        :pswitch_400
        :pswitch_3f0
        :pswitch_3e0
        :pswitch_3d4
        :pswitch_3c4
        :pswitch_3b8
        :pswitch_3ac
        :pswitch_3a0
        :pswitch_394
        :pswitch_388
        :pswitch_37c
        :pswitch_370
        :pswitch_368
        :pswitch_35c
        :pswitch_350
        :pswitch_344
        :pswitch_338
        :pswitch_328
        :pswitch_31c
        :pswitch_304
        :pswitch_2ec
        :pswitch_2ce
        :pswitch_2b0
        :pswitch_2a4
        :pswitch_298
        :pswitch_290
        :pswitch_280
        :pswitch_270
        :pswitch_264
        :pswitch_254
        :pswitch_248
        :pswitch_23c
        :pswitch_22c
        :pswitch_220
        :pswitch_210
        :pswitch_1fc
        :pswitch_1ec
        :pswitch_1e0
        :pswitch_1d0
        :pswitch_1c0
        :pswitch_1b0
        :pswitch_1a4
        :pswitch_194
        :pswitch_184
        :pswitch_174
        :pswitch_164
        :pswitch_154
        :pswitch_144
        :pswitch_134
        :pswitch_128
        :pswitch_120
        :pswitch_114
        :pswitch_104
        :pswitch_f4
        :pswitch_e0
        :pswitch_cc
        :pswitch_b8
        :pswitch_a8
        :pswitch_98
        :pswitch_8c
        :pswitch_7c
        :pswitch_6c
        :pswitch_5c
        :pswitch_4c
        :pswitch_3c
    .end packed-switch
.end method
