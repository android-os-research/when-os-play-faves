.class public abstract Lcom/android/internal/net/IOemNetd$Stub;
.super Landroid/os/Binder;
.source "IOemNetd.java"

# interfaces
.implements Lcom/android/internal/net/IOemNetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/IOemNetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/IOemNetd$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_addApeRule:I = 0x26

.field public static final TRANSACTION_addMptcpChain:I = 0x43

.field public static final TRANSACTION_addMptcpIpAcceptRule:I = 0x49

.field public static final TRANSACTION_addMptcpLinkIface:I = 0x41

.field public static final TRANSACTION_addMptcpSocksRule:I = 0x3f

.field public static final TRANSACTION_addMptcpSocksSkipRule:I = 0x3d

.field public static final TRANSACTION_addMptcpSocksSkipRuleProto:I = 0x4b

.field public static final TRANSACTION_addMptcpSourcePortAcceptRule:I = 0x4d

.field public static final TRANSACTION_addMptcpSourceRoute:I = 0x54

.field public static final TRANSACTION_addMptcpUidSocksRule:I = 0x45

.field public static final TRANSACTION_addPortFwdRules:I = 0x2f

.field public static final TRANSACTION_addUidToMptcpChain:I = 0x47

.field public static final TRANSACTION_cleanAllBlock:I = 0x5d

.field public static final TRANSACTION_cleanBlockPorts:I = 0x60

.field public static final TRANSACTION_clearEbpfMap:I = 0x14

.field public static final TRANSACTION_delMptcpIpAcceptRule:I = 0x4a

.field public static final TRANSACTION_delMptcpSourcePortAcceptRule:I = 0x4e

.field public static final TRANSACTION_delMptcpSourceRoute:I = 0x55

.field public static final TRANSACTION_disableMptcpMode:I = 0x3c

.field public static final TRANSACTION_enableKnoxVpnFlagForTether:I = 0x16

.field public static final TRANSACTION_enableMptcpModes:I = 0x3b

.field public static final TRANSACTION_firewallBuild:I = 0x1c

.field public static final TRANSACTION_firewallSetRuleMobileData:I = 0x1e

.field public static final TRANSACTION_firewallSetRuleWifi:I = 0x1d

.field public static final TRANSACTION_getDataUsage:I = 0x2b

.field public static final TRANSACTION_getVideoStats:I = 0x6

.field public static final TRANSACTION_gmsCoreSetUidUrlMobileDataRule:I = 0x1f

.field public static final TRANSACTION_gmsCoreSetUidUrlWifiRule:I = 0x20

.field public static final TRANSACTION_hotspotOff:I = 0x2d

.field public static final TRANSACTION_hotspotOn:I = 0x2c

.field public static final TRANSACTION_isAlive:I = 0x1

.field public static final TRANSACTION_knoxVpnBlockDnsQueriesForUid:I = 0x7

.field public static final TRANSACTION_knoxVpnDestroyBlockedKnoxNetwork:I = 0xb

.field public static final TRANSACTION_knoxVpnExemptDnsQueryForUid:I = 0x9

.field public static final TRANSACTION_knoxVpnExemptUidFromKnoxVpn:I = 0xc

.field public static final TRANSACTION_knoxVpnInsertUidForDnsAuthorization:I = 0xf

.field public static final TRANSACTION_knoxVpnRemoveExemptUidFromKnoxVpn:I = 0xd

.field public static final TRANSACTION_knoxVpnRemoveExemptedDnsQueryForUid:I = 0xa

.field public static final TRANSACTION_knoxVpnRemoveUidFromDnsAuthorization:I = 0xe

.field public static final TRANSACTION_knoxVpnUnblockDnsQueriesForUid:I = 0x8

.field public static final TRANSACTION_makeBlockChildChain:I = 0x59

.field public static final TRANSACTION_makeVideoCallChain:I = 0x3

.field public static final TRANSACTION_modifyEpdg:I = 0x57

.field public static final TRANSACTION_networkAddLegacyRoute:I = 0x63

.field public static final TRANSACTION_networkAddUidRanges:I = 0x1a

.field public static final TRANSACTION_networkGuardCreateChain:I = 0x33

.field public static final TRANSACTION_networkGuardDeleteChain:I = 0x34

.field public static final TRANSACTION_networkGuardDeleteWhiteListRule:I = 0x37

.field public static final TRANSACTION_networkGuardDisable:I = 0x36

.field public static final TRANSACTION_networkGuardEnable:I = 0x35

.field public static final TRANSACTION_networkGuardSetProtocolAcceptRule:I = 0x3a

.field public static final TRANSACTION_networkGuardSetUidRangeAcceptRule:I = 0x38

.field public static final TRANSACTION_networkGuardSetUidRule:I = 0x39

.field public static final TRANSACTION_networkRemoveLegacyRoute:I = 0x64

.field public static final TRANSACTION_networkRemoveUidRanges:I = 0x1b

.field public static final TRANSACTION_pauseDevice:I = 0x2e

.field public static final TRANSACTION_prioritizeApp:I = 0x25

.field public static final TRANSACTION_registerDomainFilterEventListener:I = 0x21

.field public static final TRANSACTION_registerNetdTetherEventListener:I = 0x17

.field public static final TRANSACTION_registerOemUnsolicitedEventListener:I = 0x2

.field public static final TRANSACTION_removeMptcpChain:I = 0x44

.field public static final TRANSACTION_removeMptcpLinkIface:I = 0x42

.field public static final TRANSACTION_removeMptcpSocksRule:I = 0x40

.field public static final TRANSACTION_removeMptcpSocksSkipRule:I = 0x3e

.field public static final TRANSACTION_removeMptcpSocksSkipRuleProto:I = 0x4c

.field public static final TRANSACTION_removeMptcpUidSocksRule:I = 0x46

.field public static final TRANSACTION_removeUidFromMptcpChain:I = 0x48

.field public static final TRANSACTION_replaceApeRule:I = 0x27

.field public static final TRANSACTION_runKnoxFirewallRulesCommand:I = 0x15

.field public static final TRANSACTION_runKnoxRulesCommand:I = 0x24

.field public static final TRANSACTION_runTcpMonitorShellCommand:I = 0x31

.field public static final TRANSACTION_runVpnRulesCommand:I = 0x30

.field public static final TRANSACTION_setAllowListIPs:I = 0x5c

.field public static final TRANSACTION_setBlockAllDNSPackets:I = 0x5a

.field public static final TRANSACTION_setBlockAllPackets:I = 0x5e

.field public static final TRANSACTION_setBlockListIPs:I = 0x5b

.field public static final TRANSACTION_setBlockPorts:I = 0x5f

.field public static final TRANSACTION_setEpdgInterfaceDropRule:I = 0x58

.field public static final TRANSACTION_setKnoxGuardExemptRule:I = 0x32

.field public static final TRANSACTION_setKnoxVpn:I = 0x19

.field public static final TRANSACTION_setMptcpDestBaseMarkRule:I = 0x53

.field public static final TRANSACTION_setMptcpPrivateIpRoute:I = 0x52

.field public static final TRANSACTION_setMptcpTcpBufferSize:I = 0x4f

.field public static final TRANSACTION_setMptcpUIDRoute:I = 0x56

.field public static final TRANSACTION_setMtuValueMptcp:I = 0x50

.field public static final TRANSACTION_setNetworkInfo:I = 0x10

.field public static final TRANSACTION_setQboxUid:I = 0x2a

.field public static final TRANSACTION_spegRestrictNetworkConnection:I = 0x62

.field public static final TRANSACTION_startQbox:I = 0x28

.field public static final TRANSACTION_startVideoStats:I = 0x4

.field public static final TRANSACTION_stopQbox:I = 0x29

.field public static final TRANSACTION_stopVideoStats:I = 0x5

.field public static final TRANSACTION_tcSetTCRule:I = 0x61

.field public static final TRANSACTION_unregisterDomainFilterEventListener:I = 0x22

.field public static final TRANSACTION_unregisterNetdTetherEventListener:I = 0x18

.field public static final TRANSACTION_updateDomainFilterCache:I = 0x23

.field public static final TRANSACTION_updateInputFilterAppWideRules:I = 0x13

.field public static final TRANSACTION_updateInputFilterExemptRules:I = 0x11

.field public static final TRANSACTION_updateInputFilterUserWideRules:I = 0x12

.field public static final TRANSACTION_updateMptcpSourceRule:I = 0x51


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 377
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 378
    sget-object v0, Lcom/android/internal/net/IOemNetd;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 389
    :cond_4
    sget-object v0, Lcom/android/internal/net/IOemNetd;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 390
    instance-of v1, v0, Lcom/android/internal/net/IOemNetd;

    if-eqz v1, :cond_13

    .line 391
    check-cast v0, Lcom/android/internal/net/IOemNetd;

    return-object v0

    .line 393
    :cond_13
    new-instance v0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/net/IOemNetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    sget-object v3, Lcom/android/internal/net/IOemNetd;->DESCRIPTOR:Ljava/lang/String;

    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v4, 0xffffff

    if-gt p1, v4, :cond_d

    .line 403
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v4, 0x5f4e5446

    if-eq p1, v4, :cond_79e

    packed-switch p1, :pswitch_data_7a2

    .line 1497
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1481
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1483
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1485
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1487
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1490
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    .line 1491
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1464
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1466
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1468
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1470
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1473
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    .line 1474
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1453
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1455
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1456
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1457
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->spegRestrictNetworkConnection(IZ)V

    .line 1458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1440
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1442
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1445
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1446
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->tcSetTCRule(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1434
    :pswitch_8c
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanBlockPorts()V

    goto/16 :goto_79d

    .line 1423
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1427
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1428
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1429
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->setBlockPorts(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_79d

    .line 1417
    :pswitch_a5
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->setBlockAllPackets()V

    goto/16 :goto_79d

    .line 1412
    :pswitch_aa
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanAllBlock()V

    goto/16 :goto_79d

    .line 1405
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1407
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setAllowListIPs(Ljava/lang/String;)V

    goto/16 :goto_79d

    .line 1397
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1399
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setBlockListIPs(Ljava/lang/String;)V

    goto/16 :goto_79d

    .line 1389
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1390
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1391
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->setBlockAllDNSPackets(Z)V

    goto/16 :goto_79d

    .line 1383
    :pswitch_d3
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->makeBlockChildChain()V

    goto/16 :goto_79d

    .line 1374
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1376
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1377
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1378
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setEpdgInterfaceDropRule(Ljava/lang/String;Z)V

    goto/16 :goto_79d

    .line 1360
    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1362
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1364
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1366
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1367
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1368
    invoke-interface {p0, v1, v3, v4, v5}, Lcom/android/internal/net/IOemNetd;->modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_79d

    .line 1343
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1352
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 1353
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->setMptcpUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1330
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1334
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1335
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1336
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->delMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1317
    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1319
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1322
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1323
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1300
    :pswitch_152
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1302
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1304
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1309
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 1310
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->setMptcpDestBaseMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 1311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1287
    :pswitch_176
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1292
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1293
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->setMptcpPrivateIpRoute(ZLjava/lang/String;I)V

    .line 1294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1274
    :pswitch_18d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1279
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1280
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->updateMptcpSourceRule(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1263
    :pswitch_1a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1266
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1267
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setMtuValueMptcp(Ljava/lang/String;I)V

    .line 1268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1252
    :pswitch_1b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1255
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1256
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setMptcpTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1239
    :pswitch_1ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1245
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->delMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1226
    :pswitch_1e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1232
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1209
    :pswitch_1f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1218
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    .line 1219
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1192
    :pswitch_21c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    .line 1202
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1179
    :pswitch_240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1185
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->delMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1166
    :pswitch_257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1172
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1153
    :pswitch_26e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->removeUidFromMptcpChain(Ljava/lang/String;ILjava/lang/String;)V

    .line 1160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1140
    :pswitch_285
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1145
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1146
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addUidToMptcpChain(Ljava/lang/String;ILjava/lang/String;)V

    .line 1147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1121
    :pswitch_29c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    .line 1133
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/net/IOemNetd;->removeMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 1134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1102
    :pswitch_2c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1113
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    .line 1114
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/net/IOemNetd;->addMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 1115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1091
    :pswitch_2ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1093
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1094
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->removeMptcpChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1080
    :pswitch_301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1082
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->addMptcpChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1071
    :pswitch_314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1072
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1073
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->removeMptcpLinkIface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1062
    :pswitch_323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1063
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1064
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->addMptcpLinkIface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1045
    :pswitch_332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1047
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1049
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1051
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1054
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    .line 1055
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1056
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1028
    :pswitch_356
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1030
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1032
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1034
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1036
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1037
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    .line 1038
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1039
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1015
    :pswitch_37a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1017
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1019
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1020
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 1002
    :pswitch_391
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1006
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1007
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1008
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 995
    :pswitch_3a8
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->disableMptcpMode()V

    .line 996
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 987
    :pswitch_3b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 989
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->enableMptcpModes(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 979
    :pswitch_3bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->networkGuardSetProtocolAcceptRule(I)V

    goto/16 :goto_79d

    .line 967
    :pswitch_3cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 969
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 972
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->networkGuardSetUidRule(IZZ)V

    goto/16 :goto_79d

    .line 957
    :pswitch_3df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 959
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 960
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->networkGuardSetUidRangeAcceptRule(II)V

    goto/16 :goto_79d

    .line 951
    :pswitch_3ef
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->networkGuardDeleteWhiteListRule()V

    goto/16 :goto_79d

    .line 946
    :pswitch_3f4
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->networkGuardDisable()V

    goto/16 :goto_79d

    .line 939
    :pswitch_3f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->networkGuardEnable(Z)V

    goto/16 :goto_79d

    .line 933
    :pswitch_405
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->networkGuardDeleteChain()V

    goto/16 :goto_79d

    .line 928
    :pswitch_40a
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->networkGuardCreateChain()V

    goto/16 :goto_79d

    .line 917
    :pswitch_40f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 919
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 921
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 922
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 923
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V

    goto/16 :goto_79d

    .line 905
    :pswitch_423
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->runTcpMonitorShellCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_79d

    .line 891
    :pswitch_43a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 897
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->runVpnRulesCommand(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_79d

    .line 875
    :pswitch_455
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 877
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 879
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 884
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    .line 885
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->addPortFwdRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_79d

    .line 859
    :pswitch_476
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 861
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 863
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 865
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 866
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v2, v3

    move-object v3, v4

    move-wide v4, v5

    .line 867
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->pauseDevice(Ljava/lang/String;ZLjava/lang/String;J)I

    move-result v0

    .line 868
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_79d

    .line 849
    :pswitch_499
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->hotspotOff(Ljava/lang/String;)I

    move-result v0

    .line 852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_79d

    .line 839
    :pswitch_4ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 841
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->hotspotOn(Ljava/lang/String;)I

    move-result v0

    .line 842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_79d

    .line 827
    :pswitch_4bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 830
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 831
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->getDataUsage(Ljava/lang/String;Ljava/util/List;)[Landroid/net/MBBStatsParcel;

    move-result-object v0

    .line 832
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_79d

    .line 815
    :pswitch_4d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 819
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setQboxUid(IZ)I

    move-result v0

    .line 820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_79d

    .line 807
    :pswitch_4ed
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->stopQbox()I

    move-result v0

    .line 808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_79d

    .line 798
    :pswitch_4f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->startQbox(Ljava/lang/String;)I

    move-result v0

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_79d

    .line 784
    :pswitch_50c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 789
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->replaceApeRule(Ljava/lang/String;II)I

    move-result v0

    .line 791
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_79d

    .line 770
    :pswitch_527
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 772
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->addApeRule(ZLjava/lang/String;I)I

    move-result v0

    .line 777
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_79d

    .line 758
    :pswitch_542
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->prioritizeApp(ZI)I

    move-result v0

    .line 763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_79d

    .line 746
    :pswitch_559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->runKnoxRulesCommand(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 751
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_79d

    .line 736
    :pswitch_570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->updateDomainFilterCache(I[Ljava/lang/String;)V

    goto/16 :goto_79d

    .line 730
    :pswitch_580
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->unregisterDomainFilterEventListener()V

    goto/16 :goto_79d

    .line 723
    :pswitch_585
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/net/IDomainFilterEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IDomainFilterEventListener;

    move-result-object v1

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->registerDomainFilterEventListener(Lcom/android/internal/net/IDomainFilterEventListener;)V

    goto/16 :goto_79d

    .line 711
    :pswitch_595
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->gmsCoreSetUidUrlWifiRule(ILjava/lang/String;I)V

    goto/16 :goto_79d

    .line 699
    :pswitch_5a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->gmsCoreSetUidUrlMobileDataRule(ILjava/lang/String;I)V

    goto/16 :goto_79d

    .line 689
    :pswitch_5bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 691
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->firewallSetRuleMobileData(IZ)V

    goto/16 :goto_79d

    .line 679
    :pswitch_5cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->firewallSetRuleWifi(IZ)V

    goto/16 :goto_79d

    .line 673
    :pswitch_5dd
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->firewallBuild()V

    goto/16 :goto_79d

    .line 663
    :pswitch_5e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 665
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 667
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 652
    :pswitch_5f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 654
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_79d

    .line 642
    :pswitch_610
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 646
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->setKnoxVpn(IZ)V

    goto/16 :goto_79d

    .line 636
    :pswitch_620
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->unregisterNetdTetherEventListener()V

    goto/16 :goto_79d

    .line 629
    :pswitch_625
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/net/INetdTetherEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/INetdTetherEventListener;

    move-result-object v1

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->registerNetdTetherEventListener(Lcom/android/internal/net/INetdTetherEventListener;)V

    goto/16 :goto_79d

    .line 621
    :pswitch_635
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->enableKnoxVpnFlagForTether(Z)V

    goto/16 :goto_79d

    .line 609
    :pswitch_641
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_79d

    .line 601
    :pswitch_658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->clearEbpfMap(I)V

    goto/16 :goto_79d

    .line 589
    :pswitch_664
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->updateInputFilterAppWideRules([III)V

    goto/16 :goto_79d

    .line 577
    :pswitch_678
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->updateInputFilterUserWideRules([III)V

    goto/16 :goto_79d

    .line 567
    :pswitch_68c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->updateInputFilterExemptRules(II)V

    goto/16 :goto_79d

    .line 555
    :pswitch_69c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->setNetworkInfo(IZI)V

    goto/16 :goto_79d

    .line 547
    :pswitch_6b0
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->knoxVpnInsertUidForDnsAuthorization([I)V

    goto/16 :goto_79d

    .line 541
    :pswitch_6bc
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveUidFromDnsAuthorization()V

    goto/16 :goto_79d

    .line 532
    :pswitch_6c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 534
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptUidFromKnoxVpn(I[Landroid/net/UidRangeParcel;)V

    goto/16 :goto_79d

    .line 522
    :pswitch_6d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 524
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnExemptUidFromKnoxVpn(I[Landroid/net/UidRangeParcel;)V

    goto/16 :goto_79d

    .line 516
    :pswitch_6e9
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnDestroyBlockedKnoxNetwork()V

    goto/16 :goto_79d

    .line 507
    :pswitch_6ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 509
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptedDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    goto/16 :goto_79d

    .line 497
    :pswitch_702
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 499
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnExemptDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    goto/16 :goto_79d

    .line 487
    :pswitch_716
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 489
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnUnblockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    goto/16 :goto_79d

    .line 477
    :pswitch_72a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 479
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-interface {p0, v1, v3}, Lcom/android/internal/net/IOemNetd;->knoxVpnBlockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    goto :goto_79d

    .line 463
    :pswitch_73d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->getVideoStats(Ljava/lang/String;II)[Landroid/net/TetherStatsParcel;

    move-result-object v0

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_79d

    .line 451
    :pswitch_757
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->stopVideoStats(Ljava/lang/String;II)V

    goto :goto_79d

    .line 439
    :pswitch_76a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-interface {p0, v1, v3, v4}, Lcom/android/internal/net/IOemNetd;->startVideoStats(Ljava/lang/String;II)V

    goto :goto_79d

    .line 433
    :pswitch_77d
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->makeVideoCallChain()V

    goto :goto_79d

    .line 425
    :pswitch_781
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;

    move-result-object v1

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->registerOemUnsolicitedEventListener(Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_79d

    .line 417
    :pswitch_793
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->isAlive()Z

    move-result v0

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_79d
    return v7

    .line 409
    :cond_79e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :pswitch_data_7a2
    .packed-switch 0x1
        :pswitch_793
        :pswitch_781
        :pswitch_77d
        :pswitch_76a
        :pswitch_757
        :pswitch_73d
        :pswitch_72a
        :pswitch_716
        :pswitch_702
        :pswitch_6ee
        :pswitch_6e9
        :pswitch_6d5
        :pswitch_6c1
        :pswitch_6bc
        :pswitch_6b0
        :pswitch_69c
        :pswitch_68c
        :pswitch_678
        :pswitch_664
        :pswitch_658
        :pswitch_641
        :pswitch_635
        :pswitch_625
        :pswitch_620
        :pswitch_610
        :pswitch_5f9
        :pswitch_5e2
        :pswitch_5dd
        :pswitch_5cd
        :pswitch_5bd
        :pswitch_5a9
        :pswitch_595
        :pswitch_585
        :pswitch_580
        :pswitch_570
        :pswitch_559
        :pswitch_542
        :pswitch_527
        :pswitch_50c
        :pswitch_4f9
        :pswitch_4ed
        :pswitch_4d6
        :pswitch_4bf
        :pswitch_4ac
        :pswitch_499
        :pswitch_476
        :pswitch_455
        :pswitch_43a
        :pswitch_423
        :pswitch_40f
        :pswitch_40a
        :pswitch_405
        :pswitch_3f9
        :pswitch_3f4
        :pswitch_3ef
        :pswitch_3df
        :pswitch_3cb
        :pswitch_3bf
        :pswitch_3b0
        :pswitch_3a8
        :pswitch_391
        :pswitch_37a
        :pswitch_356
        :pswitch_332
        :pswitch_323
        :pswitch_314
        :pswitch_301
        :pswitch_2ee
        :pswitch_2c5
        :pswitch_29c
        :pswitch_285
        :pswitch_26e
        :pswitch_257
        :pswitch_240
        :pswitch_21c
        :pswitch_1f8
        :pswitch_1e1
        :pswitch_1ca
        :pswitch_1b7
        :pswitch_1a4
        :pswitch_18d
        :pswitch_176
        :pswitch_152
        :pswitch_13b
        :pswitch_124
        :pswitch_100
        :pswitch_e8
        :pswitch_d8
        :pswitch_d3
        :pswitch_c7
        :pswitch_bb
        :pswitch_af
        :pswitch_aa
        :pswitch_a5
        :pswitch_91
        :pswitch_8c
        :pswitch_75
        :pswitch_62
        :pswitch_3e
        :pswitch_1a
    .end packed-switch
.end method
