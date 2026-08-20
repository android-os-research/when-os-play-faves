.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface$Stub;
.super Landroid/os/Binder;
.source "ISupplicantP2pIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addBonjourService:I = 0x1

.field static final TRANSACTION_addGroup:I = 0x2

.field static final TRANSACTION_addGroupWithConfig:I = 0x3

.field static final TRANSACTION_addNetwork:I = 0x4

.field static final TRANSACTION_addUpnpService:I = 0x5

.field static final TRANSACTION_cancelConnect:I = 0x6

.field static final TRANSACTION_cancelServiceDiscovery:I = 0x7

.field static final TRANSACTION_cancelWps:I = 0x8

.field static final TRANSACTION_configureExtListen:I = 0x9

.field static final TRANSACTION_connect:I = 0xa

.field static final TRANSACTION_createNfcHandoverRequestMessage:I = 0xb

.field static final TRANSACTION_createNfcHandoverSelectMessage:I = 0xc

.field static final TRANSACTION_enableWfd:I = 0xd

.field static final TRANSACTION_find:I = 0xe

.field static final TRANSACTION_findOnSocialChannels:I = 0x3c

.field static final TRANSACTION_findOnSpecificFrequency:I = 0x3d

.field static final TRANSACTION_flush:I = 0xf

.field static final TRANSACTION_flushServices:I = 0x10

.field static final TRANSACTION_getDeviceAddress:I = 0x11

.field static final TRANSACTION_getEdmg:I = 0x12

.field static final TRANSACTION_getGroupCapability:I = 0x13

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getName:I = 0x14

.field static final TRANSACTION_getNetwork:I = 0x15

.field static final TRANSACTION_getSsid:I = 0x16

.field static final TRANSACTION_getType:I = 0x17

.field static final TRANSACTION_invite:I = 0x18

.field static final TRANSACTION_listNetworks:I = 0x19

.field static final TRANSACTION_provisionDiscovery:I = 0x1a

.field static final TRANSACTION_registerCallback:I = 0x1b

.field static final TRANSACTION_reinvoke:I = 0x1c

.field static final TRANSACTION_reject:I = 0x1d

.field static final TRANSACTION_removeBonjourService:I = 0x1e

.field static final TRANSACTION_removeClient:I = 0x30

.field static final TRANSACTION_removeGroup:I = 0x1f

.field static final TRANSACTION_removeNetwork:I = 0x20

.field static final TRANSACTION_removeUpnpService:I = 0x21

.field static final TRANSACTION_reportNfcHandoverInitiation:I = 0x22

.field static final TRANSACTION_reportNfcHandoverResponse:I = 0x23

.field static final TRANSACTION_requestServiceDiscovery:I = 0x24

.field static final TRANSACTION_saveConfig:I = 0x25

.field static final TRANSACTION_setDisallowedFrequencies:I = 0x26

.field static final TRANSACTION_setEdmg:I = 0x27

.field static final TRANSACTION_setGroupIdle:I = 0x28

.field static final TRANSACTION_setListenChannel:I = 0x29

.field static final TRANSACTION_setMacRandomization:I = 0x2a

.field static final TRANSACTION_setMiracastMode:I = 0x2b

.field static final TRANSACTION_setPowerSave:I = 0x2c

.field static final TRANSACTION_setSsidPostfix:I = 0x2d

.field static final TRANSACTION_setVendorElements:I = 0x3e

.field static final TRANSACTION_setWfdDeviceInfo:I = 0x2e

.field static final TRANSACTION_setWfdR2DeviceInfo:I = 0x2f

.field static final TRANSACTION_setWpsConfigMethods:I = 0x31

.field static final TRANSACTION_setWpsDeviceName:I = 0x32

.field static final TRANSACTION_setWpsDeviceType:I = 0x33

.field static final TRANSACTION_setWpsManufacturer:I = 0x34

.field static final TRANSACTION_setWpsModelName:I = 0x35

.field static final TRANSACTION_setWpsModelNumber:I = 0x36

.field static final TRANSACTION_setWpsSerialNumber:I = 0x37

.field static final TRANSACTION_startWpsPbc:I = 0x38

.field static final TRANSACTION_startWpsPinDisplay:I = 0x39

.field static final TRANSACTION_startWpsPinKeypad:I = 0x3a

.field static final TRANSACTION_stopFind:I = 0x3b


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 236
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 237
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface$Stub;->markVintfStability()V

    .line 238
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 249
    :cond_4
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 250
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    if-eqz v1, :cond_13

    .line 251
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    return-object v0

    .line 253
    :cond_13
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 261
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 263
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_394

    packed-switch p1, :pswitch_data_3a2

    .line 831
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 269
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 274
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 280
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 822
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 825
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setVendorElements(I[B)V

    .line 826
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 812
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 815
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->findOnSpecificFrequency(II)V

    .line 816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 804
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 805
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->findOnSocialChannels(I)V

    .line 806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 797
    :pswitch_5e
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->stopFind()V

    .line 798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 788
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 791
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 777
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 780
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->startWpsPinDisplay(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    .line 781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_393

    .line 767
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 769
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 770
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->startWpsPbc(Ljava/lang/String;[B)V

    .line 771
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 759
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 760
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWpsSerialNumber(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 751
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 752
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWpsModelNumber(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 743
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 744
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWpsModelName(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 735
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 736
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWpsManufacturer(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 727
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 728
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWpsDeviceType([B)V

    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 719
    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 720
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWpsDeviceName(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 711
    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 712
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWpsConfigMethods(I)V

    .line 713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 701
    :pswitch_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p2

    .line 704
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->removeClient([BZ)V

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 693
    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 694
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWfdR2DeviceInfo([B)V

    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 685
    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 686
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setWfdDeviceInfo([B)V

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 677
    :pswitch_116
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 678
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setSsidPostfix([B)V

    .line 679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 667
    :pswitch_122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p2

    .line 670
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setPowerSave(Ljava/lang/String;Z)V

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 659
    :pswitch_132
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 660
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setMiracastMode(B)V

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 651
    :pswitch_13e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 652
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setMacRandomization(Z)V

    .line 653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 641
    :pswitch_14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 644
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setListenChannel(II)V

    .line 645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 631
    :pswitch_15a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 634
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setGroupIdle(Ljava/lang/String;I)V

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 623
    :pswitch_16a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 624
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setEdmg(Z)V

    .line 625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 615
    :pswitch_176
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/FreqRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/FreqRange;

    .line 616
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->setDisallowedFrequencies([Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/FreqRange;)V

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 608
    :pswitch_186
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->saveConfig()V

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 598
    :pswitch_18e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 601
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->requestServiceDiscovery([B[B)J

    move-result-wide p0

    .line 602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_393

    .line 590
    :pswitch_1a2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 591
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->reportNfcHandoverResponse([B)V

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 582
    :pswitch_1ae
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 583
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->reportNfcHandoverInitiation([B)V

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 572
    :pswitch_1ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 575
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->removeUpnpService(ILjava/lang/String;)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 564
    :pswitch_1ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 565
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->removeNetwork(I)V

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 556
    :pswitch_1d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 557
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->removeGroup(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 548
    :pswitch_1e2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 549
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->removeBonjourService([B)V

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 540
    :pswitch_1ee
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 541
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->reject([B)V

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 530
    :pswitch_1fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 533
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->reinvoke(I[B)V

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 522
    :pswitch_20a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;

    move-result-object p1

    .line 523
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;)V

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 512
    :pswitch_21a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 515
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->provisionDiscovery([BI)V

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 504
    :pswitch_22a
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->listNetworks()[I

    move-result-object p0

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_393

    .line 493
    :pswitch_236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 498
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->invite(Ljava/lang/String;[B[B)V

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 485
    :pswitch_24a
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getType()I

    move-result p0

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_393

    .line 477
    :pswitch_256
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 478
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getSsid([B)[B

    move-result-object p0

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_393

    .line 468
    :pswitch_266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 469
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getNetwork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;

    move-result-object p0

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_393

    .line 460
    :pswitch_276
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getName()Ljava/lang/String;

    move-result-object p0

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_393

    .line 452
    :pswitch_282
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 453
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getGroupCapability([B)I

    move-result p0

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_393

    .line 444
    :pswitch_292
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getEdmg()Z

    move-result p0

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_393

    .line 437
    :pswitch_29e
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->getDeviceAddress()[B

    move-result-object p0

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_393

    .line 431
    :pswitch_2aa
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->flushServices()V

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 425
    :pswitch_2b2
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->flush()V

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 418
    :pswitch_2ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 419
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->find(I)V

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 410
    :pswitch_2c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 411
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->enableWfd(Z)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 402
    :pswitch_2d2
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->createNfcHandoverSelectMessage()[B

    move-result-object p0

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_393

    .line 395
    :pswitch_2de
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->createNfcHandoverRequestMessage()[B

    move-result-object p0

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_393

    .line 377
    :pswitch_2ea
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v2, p0

    .line 388
    invoke-interface/range {v2 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->connect([BILjava/lang/String;ZZI)Ljava/lang/String;

    move-result-object p0

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_393

    .line 367
    :pswitch_30f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 370
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->configureExtListen(II)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_393

    .line 359
    :pswitch_31f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->cancelWps(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_393

    .line 351
    :pswitch_32a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 352
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->cancelServiceDiscovery(J)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_393

    .line 344
    :pswitch_335
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->cancelConnect()V

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_393

    .line 335
    :pswitch_33c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 338
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->addUpnpService(ILjava/lang/String;)V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_393

    .line 327
    :pswitch_34b
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->addNetwork()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;

    move-result-object p0

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_393

    .line 310
    :pswitch_356
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    move-object v2, p0

    .line 321
    invoke-interface/range {v2 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->addGroupWithConfig([BLjava/lang/String;ZI[BZ)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_393

    .line 300
    :pswitch_376
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 303
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->addGroup(ZI)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_393

    .line 290
    :pswitch_385
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 293
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;->addBonjourService([B[B)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_393
    return v1

    :sswitch_data_394
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_3a2
    .packed-switch 0x1
        :pswitch_385
        :pswitch_376
        :pswitch_356
        :pswitch_34b
        :pswitch_33c
        :pswitch_335
        :pswitch_32a
        :pswitch_31f
        :pswitch_30f
        :pswitch_2ea
        :pswitch_2de
        :pswitch_2d2
        :pswitch_2c6
        :pswitch_2ba
        :pswitch_2b2
        :pswitch_2aa
        :pswitch_29e
        :pswitch_292
        :pswitch_282
        :pswitch_276
        :pswitch_266
        :pswitch_256
        :pswitch_24a
        :pswitch_236
        :pswitch_22a
        :pswitch_21a
        :pswitch_20a
        :pswitch_1fa
        :pswitch_1ee
        :pswitch_1e2
        :pswitch_1d6
        :pswitch_1ca
        :pswitch_1ba
        :pswitch_1ae
        :pswitch_1a2
        :pswitch_18e
        :pswitch_186
        :pswitch_176
        :pswitch_16a
        :pswitch_15a
        :pswitch_14a
        :pswitch_13e
        :pswitch_132
        :pswitch_122
        :pswitch_116
        :pswitch_10a
        :pswitch_fe
        :pswitch_ee
        :pswitch_e2
        :pswitch_d6
        :pswitch_ca
        :pswitch_be
        :pswitch_b2
        :pswitch_a6
        :pswitch_9a
        :pswitch_8a
        :pswitch_76
        :pswitch_66
        :pswitch_5e
        :pswitch_52
        :pswitch_42
        :pswitch_32
    .end packed-switch
.end method
