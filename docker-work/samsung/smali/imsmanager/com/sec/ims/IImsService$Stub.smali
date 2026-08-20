.class public abstract Lcom/sec/ims/IImsService$Stub;
.super Landroid/os/Binder;
.source "IImsService.java"

# interfaces
.implements Lcom/sec/ims/IImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IImsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_changeAudioPath:I = 0x5a

.field static final TRANSACTION_changeAudioPathForSlot:I = 0x5b

.field static final TRANSACTION_deregisterAdhocProfile:I = 0x22

.field static final TRANSACTION_deregisterAdhocProfileByPhoneId:I = 0x23

.field static final TRANSACTION_deregisterProfile:I = 0x26

.field static final TRANSACTION_deregisterProfileByPhoneId:I = 0x27

.field static final TRANSACTION_dump:I = 0x72

.field static final TRANSACTION_enableRcs:I = 0x50

.field static final TRANSACTION_enableRcsByPhoneId:I = 0x51

.field static final TRANSACTION_enableService:I = 0x4c

.field static final TRANSACTION_enableServiceByPhoneId:I = 0x4d

.field static final TRANSACTION_enableVoLte:I = 0x4e

.field static final TRANSACTION_enableVoLteByPhoneId:I = 0x4f

.field static final TRANSACTION_finishDmConfig:I = 0x64

.field static final TRANSACTION_forcedUpdateRegistration:I = 0x2a

.field static final TRANSACTION_forcedUpdateRegistrationByPhoneId:I = 0x2b

.field static final TRANSACTION_getAvailableNetworkType:I = 0xc

.field static final TRANSACTION_getCallCount:I = 0x52

.field static final TRANSACTION_getCmcCallInfo:I = 0x5e

.field static final TRANSACTION_getConfigValues:I = 0x61

.field static final TRANSACTION_getCurrentProfile:I = 0x1d

.field static final TRANSACTION_getCurrentProfileForSlot:I = 0x1e

.field static final TRANSACTION_getEpsFbCallCount:I = 0x53

.field static final TRANSACTION_getGlobalSettingsValueToBoolean:I = 0x71

.field static final TRANSACTION_getGlobalSettingsValueToInteger:I = 0x70

.field static final TRANSACTION_getGlobalSettingsValueToString:I = 0x6f

.field static final TRANSACTION_getLastDialogEvent:I = 0x3a

.field static final TRANSACTION_getMasterStringValue:I = 0x3c

.field static final TRANSACTION_getMasterValue:I = 0x3b

.field static final TRANSACTION_getNetworkType:I = 0xb

.field static final TRANSACTION_getNrSaCallCount:I = 0x54

.field static final TRANSACTION_getPhoneCount:I = 0x3

.field static final TRANSACTION_getRcsProfileType:I = 0x1f

.field static final TRANSACTION_getRegistrationInfo:I = 0x1a

.field static final TRANSACTION_getRegistrationInfoByPhoneId:I = 0x1b

.field static final TRANSACTION_getRegistrationInfoByServiceType:I = 0x1c

.field static final TRANSACTION_getRttMode:I = 0x68

.field static final TRANSACTION_getVideocallType:I = 0x5d

.field static final TRANSACTION_hasCrossSimImsService:I = 0x7a

.field static final TRANSACTION_hasVoLteSim:I = 0x4a

.field static final TRANSACTION_hasVoLteSimByPhoneId:I = 0x4b

.field static final TRANSACTION_isCmcEmergencyCallSupported:I = 0x75

.field static final TRANSACTION_isCmcEmergencyNumber:I = 0x76

.field static final TRANSACTION_isCmcPotentialEmergencyNumber:I = 0x77

.field static final TRANSACTION_isCrossSimCallingRegistered:I = 0x79

.field static final TRANSACTION_isCrossSimCallingSupported:I = 0x7c

.field static final TRANSACTION_isCrossSimCallingSupportedByPhoneId:I = 0x7b

.field static final TRANSACTION_isCrossSimPermanentBlocked:I = 0x7e

.field static final TRANSACTION_isForbidden:I = 0x55

.field static final TRANSACTION_isForbiddenByPhoneId:I = 0x56

.field static final TRANSACTION_isImsEnabled:I = 0x3f

.field static final TRANSACTION_isImsEnabledByPhoneId:I = 0x40

.field static final TRANSACTION_isRcsEnabled:I = 0x46

.field static final TRANSACTION_isRegistered:I = 0x19

.field static final TRANSACTION_isRttCall:I = 0x65

.field static final TRANSACTION_isServiceAvailable:I = 0x48

.field static final TRANSACTION_isServiceEnabled:I = 0x47

.field static final TRANSACTION_isServiceEnabledByPhoneId:I = 0x49

.field static final TRANSACTION_isSupportVoWiFiDisable5GSA:I = 0x78

.field static final TRANSACTION_isVoLteEnabled:I = 0x41

.field static final TRANSACTION_isVoLteEnabledByPhoneId:I = 0x42

.field static final TRANSACTION_isVolteEnabledFromNetwork:I = 0x43

.field static final TRANSACTION_isVolteSupportECT:I = 0x44

.field static final TRANSACTION_isVolteSupportEctByPhoneId:I = 0x45

.field static final TRANSACTION_registerAdhocProfile:I = 0x20

.field static final TRANSACTION_registerAdhocProfileByPhoneId:I = 0x21

.field static final TRANSACTION_registerAutoConfigurationListener:I = 0x15

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerCmcRegistrationListenerForSlot:I = 0x73

.field static final TRANSACTION_registerDialogEventListener:I = 0x36

.field static final TRANSACTION_registerDialogEventListenerByToken:I = 0x38

.field static final TRANSACTION_registerDmValueListener:I = 0x5f

.field static final TRANSACTION_registerEpdgListener:I = 0x30

.field static final TRANSACTION_registerImSessionListener:I = 0xd

.field static final TRANSACTION_registerImSessionListenerByPhoneId:I = 0xe

.field static final TRANSACTION_registerImsOngoingFtListener:I = 0x11

.field static final TRANSACTION_registerImsOngoingFtListenerByPhoneId:I = 0x12

.field static final TRANSACTION_registerImsRegistrationListener:I = 0x32

.field static final TRANSACTION_registerImsRegistrationListenerForSlot:I = 0x34

.field static final TRANSACTION_registerProfile:I = 0x24

.field static final TRANSACTION_registerProfileByPhoneId:I = 0x25

.field static final TRANSACTION_registerRttEventListener:I = 0x6c

.field static final TRANSACTION_registerSimMobilityStatusListenerByPhoneId:I = 0x17

.field static final TRANSACTION_sendDeregister:I = 0x2c

.field static final TRANSACTION_sendIidToken:I = 0xa

.field static final TRANSACTION_sendMsisdnNumber:I = 0x9

.field static final TRANSACTION_sendRttMessage:I = 0x69

.field static final TRANSACTION_sendRttSessionModifyRequest:I = 0x6b

.field static final TRANSACTION_sendRttSessionModifyResponse:I = 0x6a

.field static final TRANSACTION_sendTryRegister:I = 0x28

.field static final TRANSACTION_sendTryRegisterByPhoneId:I = 0x29

.field static final TRANSACTION_sendVerificationCode:I = 0x8

.field static final TRANSACTION_setActiveImpu:I = 0x6

.field static final TRANSACTION_setActiveMsisdn:I = 0x7

.field static final TRANSACTION_setAutomaticMode:I = 0x66

.field static final TRANSACTION_setCrossSimPermanentBlocked:I = 0x7d

.field static final TRANSACTION_setEmergencyPdnInfo:I = 0x2f

.field static final TRANSACTION_setIsimLoaded:I = 0x4

.field static final TRANSACTION_setNrInterworkingMode:I = 0x7f

.field static final TRANSACTION_setProvisionedStringValue:I = 0x3e

.field static final TRANSACTION_setProvisionedValue:I = 0x3d

.field static final TRANSACTION_setRttMode:I = 0x67

.field static final TRANSACTION_setSimRefreshed:I = 0x5

.field static final TRANSACTION_setVideocallType:I = 0x5c

.field static final TRANSACTION_startDmConfig:I = 0x63

.field static final TRANSACTION_startLocalRingBackTone:I = 0x58

.field static final TRANSACTION_stopLocalRingBackTone:I = 0x59

.field static final TRANSACTION_suspendRegister:I = 0x2d

.field static final TRANSACTION_transferCall:I = 0x57

.field static final TRANSACTION_triggerAutoConfigurationForApp:I = 0x6e

.field static final TRANSACTION_unRegisterEpdgListener:I = 0x31

.field static final TRANSACTION_unregisterAutoConfigurationListener:I = 0x16

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_unregisterCmcRegistrationListenerForSlot:I = 0x74

.field static final TRANSACTION_unregisterDialogEventListener:I = 0x37

.field static final TRANSACTION_unregisterDialogEventListenerByToken:I = 0x39

.field static final TRANSACTION_unregisterDmValueListener:I = 0x60

.field static final TRANSACTION_unregisterImSessionListener:I = 0xf

.field static final TRANSACTION_unregisterImSessionListenerByPhoneId:I = 0x10

.field static final TRANSACTION_unregisterImsOngoingFtListener:I = 0x13

.field static final TRANSACTION_unregisterImsOngoingFtListenerByPhoneId:I = 0x14

.field static final TRANSACTION_unregisterImsRegistrationListener:I = 0x33

.field static final TRANSACTION_unregisterImsRegistrationListenerForSlot:I = 0x35

.field static final TRANSACTION_unregisterRttEventListener:I = 0x6d

.field static final TRANSACTION_unregisterSimMobilityStatusListenerByPhoneId:I = 0x18

.field static final TRANSACTION_updateConfigValues:I = 0x62

.field static final TRANSACTION_updateRegistration:I = 0x2e


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 484
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 485
    const-string v0, "com.sec.ims.IImsService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/IImsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 493
    if-nez p0, :cond_4

    .line 494
    const/4 v0, 0x0

    return-object v0

    .line 496
    :cond_4
    const-string v0, "com.sec.ims.IImsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 497
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/IImsService;

    if-eqz v1, :cond_14

    .line 498
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/IImsService;

    return-object v1

    .line 500
    :cond_14
    new-instance v1, Lcom/sec/ims/IImsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/IImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 504
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    const-string v0, "com.sec.ims.IImsService"

    .line 509
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 510
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    :cond_d
    packed-switch p1, :pswitch_data_9c2

    .line 520
    packed-switch p1, :pswitch_data_9c8

    .line 1830
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 516
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    return v1

    .line 1820
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1822
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1823
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1824
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->setNrInterworkingMode(II)V

    .line 1825
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1826
    goto/16 :goto_9c0

    .line 1810
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1811
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1812
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->isCrossSimPermanentBlocked(I)Z

    move-result v3

    .line 1813
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1814
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1815
    goto/16 :goto_9c0

    .line 1799
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1801
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1802
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1803
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->setCrossSimPermanentBlocked(IZ)V

    .line 1804
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1805
    goto/16 :goto_9c0

    .line 1791
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_55
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->isCrossSimCallingSupported()Z

    move-result v2

    .line 1792
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1793
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1794
    goto/16 :goto_9c0

    .line 1782
    .end local v2    # "_result":Z
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1783
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1784
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->isCrossSimCallingSupportedByPhoneId(I)Z

    move-result v3

    .line 1785
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1786
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1787
    goto/16 :goto_9c0

    .line 1772
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1773
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1774
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->hasCrossSimImsService(I)Z

    move-result v3

    .line 1775
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1777
    goto/16 :goto_9c0

    .line 1762
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1763
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1764
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->isCrossSimCallingRegistered(I)Z

    move-result v3

    .line 1765
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1766
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1767
    goto/16 :goto_9c0

    .line 1752
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1753
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1754
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->isSupportVoWiFiDisable5GSA(I)Z

    move-result v3

    .line 1755
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1757
    goto/16 :goto_9c0

    .line 1740
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1742
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1743
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1744
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->isCmcPotentialEmergencyNumber(Ljava/lang/String;I)Z

    move-result v4

    .line 1745
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1746
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1747
    goto/16 :goto_9c0

    .line 1728
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1730
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1731
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1732
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->isCmcEmergencyNumber(Ljava/lang/String;I)Z

    move-result v4

    .line 1733
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1734
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1735
    goto/16 :goto_9c0

    .line 1718
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1719
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1720
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->isCmcEmergencyCallSupported(I)Z

    move-result v3

    .line 1721
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1723
    goto/16 :goto_9c0

    .line 1707
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1709
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1710
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1711
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->unregisterCmcRegistrationListenerForSlot(Ljava/lang/String;I)V

    .line 1712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1713
    goto/16 :goto_9c0

    .line 1695
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v2

    .line 1697
    .local v2, "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1698
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1699
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object v4

    .line 1700
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1701
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1702
    goto/16 :goto_9c0

    .line 1688
    .end local v2    # "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_11c
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->dump()V

    .line 1689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1690
    goto/16 :goto_9c0

    .line 1675
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1677
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1679
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1680
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1681
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/IImsService$Stub;->getGlobalSettingsValueToBoolean(Ljava/lang/String;IZ)Z

    move-result v5

    .line 1682
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1683
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1684
    goto/16 :goto_9c0

    .line 1661
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":Z
    :pswitch_13f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1663
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1665
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1666
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1667
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/IImsService$Stub;->getGlobalSettingsValueToInteger(Ljava/lang/String;II)I

    move-result v5

    .line 1668
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1669
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1670
    goto/16 :goto_9c0

    .line 1647
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_15a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1649
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1651
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1652
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1653
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/IImsService$Stub;->getGlobalSettingsValueToString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1654
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1655
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1656
    goto/16 :goto_9c0

    .line 1638
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1639
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1640
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->triggerAutoConfigurationForApp(I)V

    .line 1641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    goto/16 :goto_9c0

    .line 1627
    .end local v2    # "_arg0":I
    :pswitch_184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1629
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1630
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1631
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->unregisterRttEventListener(ILjava/lang/String;)V

    .line 1632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    goto/16 :goto_9c0

    .line 1615
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1617
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/IRttEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IRttEventListener;

    move-result-object v3

    .line 1618
    .local v3, "_arg1":Lcom/sec/ims/IRttEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1619
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)Ljava/lang/String;

    move-result-object v4

    .line 1620
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1621
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1622
    goto/16 :goto_9c0

    .line 1604
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/sec/ims/IRttEventListener;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_1b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1606
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1607
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1608
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->sendRttSessionModifyRequest(IZ)V

    .line 1609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1610
    goto/16 :goto_9c0

    .line 1593
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_1c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1595
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1596
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1597
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->sendRttSessionModifyResponse(IZ)V

    .line 1598
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    goto/16 :goto_9c0

    .line 1584
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_1d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1585
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1586
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->sendRttMessage(Ljava/lang/String;)V

    .line 1587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1588
    goto/16 :goto_9c0

    .line 1574
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1575
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1576
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->getRttMode(I)I

    move-result v3

    .line 1577
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1579
    goto/16 :goto_9c0

    .line 1563
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1565
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1566
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1567
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->setRttMode(II)V

    .line 1568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    goto/16 :goto_9c0

    .line 1552
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_20d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1554
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1555
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1556
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->setAutomaticMode(IZ)V

    .line 1557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    goto/16 :goto_9c0

    .line 1542
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1543
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1544
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->isRttCall(I)Z

    move-result v3

    .line 1545
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1547
    goto/16 :goto_9c0

    .line 1531
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1533
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1534
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1535
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->finishDmConfig(II)V

    .line 1536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1537
    goto/16 :goto_9c0

    .line 1521
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1522
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1523
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->startDmConfig(I)I

    move-result v3

    .line 1524
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1525
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1526
    goto/16 :goto_9c0

    .line 1507
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_259
    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1509
    .local v2, "_arg0":Landroid/content/ContentValues;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1511
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1512
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1513
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/IImsService$Stub;->updateConfigValues(Landroid/content/ContentValues;II)Z

    move-result v5

    .line 1514
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1515
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1516
    goto/16 :goto_9c0

    .line 1495
    .end local v2    # "_arg0":Landroid/content/ContentValues;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_278
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1497
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1498
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1499
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v4

    .line 1500
    .local v4, "_result":Landroid/content/ContentValues;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1501
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1502
    goto/16 :goto_9c0

    .line 1486
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/ContentValues;
    :pswitch_28f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/IImsDmConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsDmConfigListener;

    move-result-object v2

    .line 1487
    .local v2, "_arg0":Lcom/sec/ims/IImsDmConfigListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1488
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->unregisterDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V

    .line 1489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1490
    goto/16 :goto_9c0

    .line 1477
    .end local v2    # "_arg0":Lcom/sec/ims/IImsDmConfigListener;
    :pswitch_2a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/IImsDmConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsDmConfigListener;

    move-result-object v2

    .line 1478
    .restart local v2    # "_arg0":Lcom/sec/ims/IImsDmConfigListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1479
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->registerDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V

    .line 1480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    goto/16 :goto_9c0

    .line 1469
    .end local v2    # "_arg0":Lcom/sec/ims/IImsDmConfigListener;
    :pswitch_2b5
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object v2

    .line 1470
    .local v2, "_result":Lcom/sec/ims/cmc/CmcCallInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1472
    goto/16 :goto_9c0

    .line 1462
    .end local v2    # "_result":Lcom/sec/ims/cmc/CmcCallInfo;
    :pswitch_2c1
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->getVideocallType()I

    move-result v2

    .line 1463
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1464
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1465
    goto/16 :goto_9c0

    .line 1453
    .end local v2    # "_result":I
    :pswitch_2cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1454
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1455
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->setVideocallType(I)Z

    move-result v3

    .line 1456
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1457
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1458
    goto/16 :goto_9c0

    .line 1442
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1444
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1445
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1446
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->changeAudioPathForSlot(II)V

    .line 1447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1448
    goto/16 :goto_9c0

    .line 1433
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1434
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1435
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->changeAudioPath(I)V

    .line 1436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    goto/16 :goto_9c0

    .line 1425
    .end local v2    # "_arg0":I
    :pswitch_302
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->stopLocalRingBackTone()I

    move-result v2

    .line 1426
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1428
    goto/16 :goto_9c0

    .line 1412
    .end local v2    # "_result":I
    :pswitch_30e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1414
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1416
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1417
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1418
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/IImsService$Stub;->startLocalRingBackTone(III)I

    move-result v5

    .line 1419
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1421
    goto/16 :goto_9c0

    .line 1401
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1403
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1404
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1405
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1407
    goto/16 :goto_9c0

    .line 1391
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_33c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1392
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1393
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->isForbiddenByPhoneId(I)Z

    move-result v3

    .line 1394
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1395
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1396
    goto/16 :goto_9c0

    .line 1383
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_34f
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->isForbidden()Z

    move-result v2

    .line 1384
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1386
    goto/16 :goto_9c0

    .line 1374
    .end local v2    # "_result":Z
    :pswitch_35b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1375
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1376
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->getNrSaCallCount(I)I

    move-result v3

    .line 1377
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1378
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1379
    goto/16 :goto_9c0

    .line 1364
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_36e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1365
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1366
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->getEpsFbCallCount(I)I

    move-result v3

    .line 1367
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1369
    goto/16 :goto_9c0

    .line 1354
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1355
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1356
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->getCallCount(I)[I

    move-result-object v3

    .line 1357
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1359
    goto/16 :goto_9c0

    .line 1343
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[I
    :pswitch_394
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1345
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1346
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1347
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->enableRcsByPhoneId(ZI)V

    .line 1348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1349
    goto/16 :goto_9c0

    .line 1334
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_3a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1335
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1336
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->enableRcs(Z)V

    .line 1337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    goto/16 :goto_9c0

    .line 1323
    .end local v2    # "_arg0":Z
    :pswitch_3b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1325
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1326
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1327
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->enableVoLteByPhoneId(ZI)V

    .line 1328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    goto/16 :goto_9c0

    .line 1314
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_3c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1315
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1316
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->enableVoLte(Z)V

    .line 1317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    goto/16 :goto_9c0

    .line 1301
    .end local v2    # "_arg0":Z
    :pswitch_3d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1303
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1305
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1306
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1307
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/IImsService$Stub;->enableServiceByPhoneId(Ljava/lang/String;ZI)V

    .line 1308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    goto/16 :goto_9c0

    .line 1290
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_3ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1292
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1293
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1294
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->enableService(Ljava/lang/String;Z)V

    .line 1295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    goto/16 :goto_9c0

    .line 1280
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_402
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1281
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1282
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->hasVoLteSimByPhoneId(I)Z

    move-result v3

    .line 1283
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1284
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1285
    goto/16 :goto_9c0

    .line 1272
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_415
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->hasVoLteSim()Z

    move-result v2

    .line 1273
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1275
    goto/16 :goto_9c0

    .line 1261
    .end local v2    # "_result":Z
    :pswitch_421
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1263
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1264
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1265
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result v4

    .line 1266
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1268
    goto/16 :goto_9c0

    .line 1247
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_438
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1249
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1251
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1252
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1253
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/IImsService$Stub;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v5

    .line 1254
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1256
    goto/16 :goto_9c0

    .line 1237
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_453
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1238
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1239
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->isServiceEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 1240
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1242
    goto/16 :goto_9c0

    .line 1229
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_466
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->isRcsEnabled()Z

    move-result v2

    .line 1230
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1232
    goto/16 :goto_9c0

    .line 1220
    .end local v2    # "_result":Z
    :pswitch_472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1221
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1222
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->isVolteSupportEctByPhoneId(I)Z

    move-result v3

    .line 1223
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1225
    goto/16 :goto_9c0

    .line 1212
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_485
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->isVolteSupportECT()Z

    move-result v2

    .line 1213
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1215
    goto/16 :goto_9c0

    .line 1203
    .end local v2    # "_result":Z
    :pswitch_491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1204
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1205
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->isVolteEnabledFromNetwork(I)Z

    move-result v3

    .line 1206
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1208
    goto/16 :goto_9c0

    .line 1193
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_4a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1194
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1195
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->isVoLteEnabledByPhoneId(I)Z

    move-result v3

    .line 1196
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1198
    goto/16 :goto_9c0

    .line 1185
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_4b7
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->isVoLteEnabled()Z

    move-result v2

    .line 1186
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1188
    goto/16 :goto_9c0

    .line 1176
    .end local v2    # "_result":Z
    :pswitch_4c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1177
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->isImsEnabledByPhoneId(I)Z

    move-result v3

    .line 1179
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1181
    goto/16 :goto_9c0

    .line 1168
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_4d6
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->isImsEnabled()Z

    move-result v2

    .line 1169
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1171
    goto/16 :goto_9c0

    .line 1158
    .end local v2    # "_result":Z
    :pswitch_4e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1160
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1161
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1162
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->setProvisionedStringValue(ILjava/lang/String;)V

    .line 1163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    goto/16 :goto_9c0

    .line 1147
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_4f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1149
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1150
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1151
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->setProvisionedValue(II)V

    .line 1152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    goto/16 :goto_9c0

    .line 1137
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1138
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1139
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->getMasterStringValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1140
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1142
    goto/16 :goto_9c0

    .line 1127
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_51b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1128
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->getMasterValue(I)I

    move-result v3

    .line 1130
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    goto/16 :goto_9c0

    .line 1117
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_52e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1118
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1119
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    move-result-object v3

    .line 1120
    .local v3, "_result":Lcom/sec/ims/DialogEvent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1122
    goto/16 :goto_9c0

    .line 1106
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/sec/ims/DialogEvent;
    :pswitch_541
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1108
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1109
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1110
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->unregisterDialogEventListenerByToken(ILjava/lang/String;)V

    .line 1111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    goto/16 :goto_9c0

    .line 1094
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1096
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/IDialogEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogEventListener;

    move-result-object v3

    .line 1097
    .local v3, "_arg1":Lcom/sec/ims/IDialogEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->registerDialogEventListenerByToken(ILcom/sec/ims/IDialogEventListener;)Ljava/lang/String;

    move-result-object v4

    .line 1099
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1101
    goto/16 :goto_9c0

    .line 1083
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/sec/ims/IDialogEventListener;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_56f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1085
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/IDialogEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogEventListener;

    move-result-object v3

    .line 1086
    .restart local v3    # "_arg1":Lcom/sec/ims/IDialogEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1087
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    .line 1088
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    goto/16 :goto_9c0

    .line 1072
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/sec/ims/IDialogEventListener;
    :pswitch_586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1074
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/IDialogEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogEventListener;

    move-result-object v3

    .line 1075
    .restart local v3    # "_arg1":Lcom/sec/ims/IDialogEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1076
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    .line 1077
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    goto/16 :goto_9c0

    .line 1061
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/sec/ims/IDialogEventListener;
    :pswitch_59d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1063
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1064
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1065
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->unregisterImsRegistrationListenerForSlot(Ljava/lang/String;I)V

    .line 1066
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    goto/16 :goto_9c0

    .line 1049
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_5b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v2

    .line 1051
    .local v2, "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1052
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->registerImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object v4

    .line 1054
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1056
    goto/16 :goto_9c0

    .line 1040
    .end local v2    # "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_5cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v2

    .line 1041
    .restart local v2    # "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1042
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 1043
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    goto/16 :goto_9c0

    .line 1031
    .end local v2    # "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    :pswitch_5de
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v2

    .line 1032
    .restart local v2    # "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    goto/16 :goto_9c0

    .line 1022
    .end local v2    # "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    :pswitch_5f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1023
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1024
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->unRegisterEpdgListener(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    goto/16 :goto_9c0

    .line 1012
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_600
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/IEpdgListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IEpdgListener;

    move-result-object v2

    .line 1013
    .local v2, "_arg0":Lcom/sec/ims/IEpdgListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1014
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;

    move-result-object v3

    .line 1015
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1017
    goto/16 :goto_9c0

    .line 997
    .end local v2    # "_arg0":Lcom/sec/ims/IEpdgListener;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_617
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 999
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 1001
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1003
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1004
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1005
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/ims/IImsService$Stub;->setEmergencyPdnInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    .line 1006
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    goto/16 :goto_9c0

    .line 985
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    :pswitch_632
    sget-object v2, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 987
    .local v2, "_arg0":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 988
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 989
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v4

    .line 990
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    goto/16 :goto_9c0

    .line 974
    .end local v2    # "_arg0":Lcom/sec/ims/settings/ImsProfile;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_64d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 976
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 977
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->suspendRegister(ZI)V

    .line 979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    goto/16 :goto_9c0

    .line 963
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_660
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 965
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 966
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->sendDeregister(II)V

    .line 968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    goto/16 :goto_9c0

    .line 952
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_673
    sget-object v2, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 954
    .local v2, "_arg0":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 955
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V

    .line 957
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    goto/16 :goto_9c0

    .line 943
    .end local v2    # "_arg0":Lcom/sec/ims/settings/ImsProfile;
    .end local v3    # "_arg1":I
    :pswitch_68a
    sget-object v2, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 944
    .restart local v2    # "_arg0":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 945
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;)V

    .line 946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    goto/16 :goto_9c0

    .line 934
    .end local v2    # "_arg0":Lcom/sec/ims/settings/ImsProfile;
    :pswitch_69d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 935
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->sendTryRegisterByPhoneId(I)V

    .line 937
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    goto/16 :goto_9c0

    .line 927
    .end local v2    # "_arg0":I
    :pswitch_6ac
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->sendTryRegister()V

    .line 928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    goto/16 :goto_9c0

    .line 914
    :pswitch_6b4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 915
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    .line 917
    .local v3, "_arg0":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 919
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 920
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/ims/IImsService$Stub;->deregisterProfileByPhoneId(Ljava/util/List;ZI)V

    .line 922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    goto/16 :goto_9c0

    .line 902
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/List;
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":I
    :pswitch_6d3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 903
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    .line 905
    .restart local v3    # "_arg0":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 906
    .restart local v4    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 907
    invoke-virtual {p0, v3, v4}, Lcom/sec/ims/IImsService$Stub;->deregisterProfile(Ljava/util/List;Z)V

    .line 908
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    goto/16 :goto_9c0

    .line 890
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/List;
    .end local v4    # "_arg1":Z
    :pswitch_6ee
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 891
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    .line 893
    .restart local v3    # "_arg0":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 894
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-virtual {p0, v3, v4}, Lcom/sec/ims/IImsService$Stub;->registerProfileByPhoneId(Ljava/util/List;I)V

    .line 896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    goto/16 :goto_9c0

    .line 880
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/List;
    .end local v4    # "_arg1":I
    :pswitch_709
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 881
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    .line 882
    .restart local v3    # "_arg0":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 883
    invoke-virtual {p0, v3}, Lcom/sec/ims/IImsService$Stub;->registerProfile(Ljava/util/List;)V

    .line 884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    goto/16 :goto_9c0

    .line 869
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/List;
    :pswitch_720
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 871
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 872
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->deregisterAdhocProfileByPhoneId(II)V

    .line 874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    goto/16 :goto_9c0

    .line 860
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_733
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 861
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->deregisterAdhocProfile(I)V

    .line 863
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    goto/16 :goto_9c0

    .line 848
    .end local v2    # "_arg0":I
    :pswitch_742
    sget-object v2, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 850
    .local v2, "_arg0":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 851
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v4

    .line 853
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    goto/16 :goto_9c0

    .line 838
    .end local v2    # "_arg0":Lcom/sec/ims/settings/ImsProfile;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_75d
    sget-object v2, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 839
    .restart local v2    # "_arg0":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->registerAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)I

    move-result v3

    .line 841
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    goto/16 :goto_9c0

    .line 828
    .end local v2    # "_arg0":Lcom/sec/ims/settings/ImsProfile;
    .end local v3    # "_result":I
    :pswitch_774
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 829
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v3

    .line 831
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 833
    goto/16 :goto_9c0

    .line 818
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_787
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 819
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 821
    .local v3, "_result":[Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 823
    goto/16 :goto_9c0

    .line 810
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Lcom/sec/ims/settings/ImsProfile;
    :pswitch_79a
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->getCurrentProfile()[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 811
    .local v2, "_result":[Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 813
    goto/16 :goto_9c0

    .line 799
    .end local v2    # "_result":[Lcom/sec/ims/settings/ImsProfile;
    :pswitch_7a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 802
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    .line 804
    .local v4, "_result":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 806
    goto/16 :goto_9c0

    .line 789
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Lcom/sec/ims/ImsRegistration;
    :pswitch_7bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 790
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 792
    .local v3, "_result":[Lcom/sec/ims/ImsRegistration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 794
    goto/16 :goto_9c0

    .line 781
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Lcom/sec/ims/ImsRegistration;
    :pswitch_7d0
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 782
    .local v2, "_result":[Lcom/sec/ims/ImsRegistration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 784
    goto/16 :goto_9c0

    .line 774
    .end local v2    # "_result":[Lcom/sec/ims/ImsRegistration;
    :pswitch_7dc
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->isRegistered()Z

    move-result v2

    .line 775
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 777
    goto/16 :goto_9c0

    .line 764
    .end local v2    # "_result":Z
    :pswitch_7e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 766
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 767
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->unregisterSimMobilityStatusListenerByPhoneId(Ljava/lang/String;I)V

    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    goto/16 :goto_9c0

    .line 752
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_7fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/ISimMobilityStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ISimMobilityStatusListener;

    move-result-object v2

    .line 754
    .local v2, "_arg0":Lcom/sec/ims/ISimMobilityStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 755
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 756
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->registerSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)Ljava/lang/String;

    move-result-object v4

    .line 757
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 759
    goto/16 :goto_9c0

    .line 741
    .end local v2    # "_arg0":Lcom/sec/ims/ISimMobilityStatusListener;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_816
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 744
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 745
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->unregisterAutoConfigurationListener(Ljava/lang/String;I)V

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    goto/16 :goto_9c0

    .line 729
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_829
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/IAutoConfigurationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IAutoConfigurationListener;

    move-result-object v2

    .line 731
    .local v2, "_arg0":Lcom/sec/ims/IAutoConfigurationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 732
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)Ljava/lang/String;

    move-result-object v4

    .line 734
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 736
    goto/16 :goto_9c0

    .line 718
    .end local v2    # "_arg0":Lcom/sec/ims/IAutoConfigurationListener;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_844
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 720
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 721
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->unregisterImsOngoingFtListenerByPhoneId(Ljava/lang/String;I)V

    .line 723
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    goto/16 :goto_9c0

    .line 709
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_857
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 710
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->unregisterImsOngoingFtListener(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    goto/16 :goto_9c0

    .line 697
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_866
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    move-result-object v2

    .line 699
    .local v2, "_arg0":Lcom/sec/ims/ft/IImsOngoingFtEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 700
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)Ljava/lang/String;

    move-result-object v4

    .line 702
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 704
    goto/16 :goto_9c0

    .line 687
    .end local v2    # "_arg0":Lcom/sec/ims/ft/IImsOngoingFtEventListener;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_881
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    move-result-object v2

    .line 688
    .restart local v2    # "_arg0":Lcom/sec/ims/ft/IImsOngoingFtEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)Ljava/lang/String;

    move-result-object v3

    .line 690
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 692
    goto/16 :goto_9c0

    .line 676
    .end local v2    # "_arg0":Lcom/sec/ims/ft/IImsOngoingFtEventListener;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_898
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 679
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->unregisterImSessionListenerByPhoneId(Ljava/lang/String;I)V

    .line 681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    goto/16 :goto_9c0

    .line 667
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_8ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 668
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->unregisterImSessionListener(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    goto/16 :goto_9c0

    .line 655
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_8ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/im/IImSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/im/IImSessionListener;

    move-result-object v2

    .line 657
    .local v2, "_arg0":Lcom/sec/ims/im/IImSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 658
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)Ljava/lang/String;

    move-result-object v4

    .line 660
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 662
    goto/16 :goto_9c0

    .line 645
    .end local v2    # "_arg0":Lcom/sec/ims/im/IImSessionListener;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_8d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/im/IImSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/im/IImSessionListener;

    move-result-object v2

    .line 646
    .restart local v2    # "_arg0":Lcom/sec/ims/im/IImSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)Ljava/lang/String;

    move-result-object v3

    .line 648
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 650
    goto/16 :goto_9c0

    .line 635
    .end local v2    # "_arg0":Lcom/sec/ims/im/IImSessionListener;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_8ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 638
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 640
    goto/16 :goto_9c0

    .line 625
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_8ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 626
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->getNetworkType(I)I

    move-result v3

    .line 628
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    goto/16 :goto_9c0

    .line 614
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_912
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 617
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->sendIidToken(Ljava/lang/String;I)V

    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    goto/16 :goto_9c0

    .line 603
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_925
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 605
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 606
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->sendMsisdnNumber(Ljava/lang/String;I)V

    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    goto/16 :goto_9c0

    .line 592
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_938
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 594
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 595
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->sendVerificationCode(Ljava/lang/String;I)V

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    goto/16 :goto_9c0

    .line 578
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_94b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 580
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 583
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/IImsService$Stub;->setActiveMsisdn(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 585
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    goto :goto_9c0

    .line 564
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_965
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 566
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 568
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 569
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/IImsService$Stub;->setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 571
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    goto :goto_9c0

    .line 557
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_97f
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->setSimRefreshed()V

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    goto :goto_9c0

    .line 551
    :pswitch_986
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->setIsimLoaded()V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    goto :goto_9c0

    .line 544
    :pswitch_98d
    invoke-virtual {p0}, Lcom/sec/ims/IImsService$Stub;->getPhoneCount()I

    move-result v2

    .line 545
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    goto :goto_9c0

    .line 536
    .end local v2    # "_result":I
    :pswitch_998
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/ImsEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ImsEventListener;

    move-result-object v2

    .line 537
    .local v2, "_arg0":Lcom/sec/ims/ImsEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, v2}, Lcom/sec/ims/IImsService$Stub;->unregisterCallback(Lcom/sec/ims/ImsEventListener;)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    goto :goto_9c0

    .line 525
    .end local v2    # "_arg0":Lcom/sec/ims/ImsEventListener;
    :pswitch_9aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/ImsEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ImsEventListener;

    move-result-object v2

    .line 527
    .restart local v2    # "_arg0":Lcom/sec/ims/ImsEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 528
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IImsService$Stub;->registerCallback(Lcom/sec/ims/ImsEventListener;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    nop

    .line 1833
    .end local v2    # "_arg0":Lcom/sec/ims/ImsEventListener;
    .end local v3    # "_arg1":Ljava/lang/String;
    :goto_9c0
    return v1

    nop

    :pswitch_data_9c2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_9c8
    .packed-switch 0x1
        :pswitch_9aa
        :pswitch_998
        :pswitch_98d
        :pswitch_986
        :pswitch_97f
        :pswitch_965
        :pswitch_94b
        :pswitch_938
        :pswitch_925
        :pswitch_912
        :pswitch_8ff
        :pswitch_8ec
        :pswitch_8d5
        :pswitch_8ba
        :pswitch_8ab
        :pswitch_898
        :pswitch_881
        :pswitch_866
        :pswitch_857
        :pswitch_844
        :pswitch_829
        :pswitch_816
        :pswitch_7fb
        :pswitch_7e8
        :pswitch_7dc
        :pswitch_7d0
        :pswitch_7bd
        :pswitch_7a6
        :pswitch_79a
        :pswitch_787
        :pswitch_774
        :pswitch_75d
        :pswitch_742
        :pswitch_733
        :pswitch_720
        :pswitch_709
        :pswitch_6ee
        :pswitch_6d3
        :pswitch_6b4
        :pswitch_6ac
        :pswitch_69d
        :pswitch_68a
        :pswitch_673
        :pswitch_660
        :pswitch_64d
        :pswitch_632
        :pswitch_617
        :pswitch_600
        :pswitch_5f1
        :pswitch_5de
        :pswitch_5cb
        :pswitch_5b0
        :pswitch_59d
        :pswitch_586
        :pswitch_56f
        :pswitch_554
        :pswitch_541
        :pswitch_52e
        :pswitch_51b
        :pswitch_508
        :pswitch_4f5
        :pswitch_4e2
        :pswitch_4d6
        :pswitch_4c3
        :pswitch_4b7
        :pswitch_4a4
        :pswitch_491
        :pswitch_485
        :pswitch_472
        :pswitch_466
        :pswitch_453
        :pswitch_438
        :pswitch_421
        :pswitch_415
        :pswitch_402
        :pswitch_3ef
        :pswitch_3d8
        :pswitch_3c9
        :pswitch_3b6
        :pswitch_3a7
        :pswitch_394
        :pswitch_381
        :pswitch_36e
        :pswitch_35b
        :pswitch_34f
        :pswitch_33c
        :pswitch_329
        :pswitch_30e
        :pswitch_302
        :pswitch_2f3
        :pswitch_2e0
        :pswitch_2cd
        :pswitch_2c1
        :pswitch_2b5
        :pswitch_2a2
        :pswitch_28f
        :pswitch_278
        :pswitch_259
        :pswitch_246
        :pswitch_233
        :pswitch_220
        :pswitch_20d
        :pswitch_1fa
        :pswitch_1e7
        :pswitch_1d8
        :pswitch_1c5
        :pswitch_1b2
        :pswitch_197
        :pswitch_184
        :pswitch_175
        :pswitch_15a
        :pswitch_13f
        :pswitch_124
        :pswitch_11c
        :pswitch_101
        :pswitch_ee
        :pswitch_db
        :pswitch_c4
        :pswitch_ad
        :pswitch_9a
        :pswitch_87
        :pswitch_74
        :pswitch_61
        :pswitch_55
        :pswitch_42
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
