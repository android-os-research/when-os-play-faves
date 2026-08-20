.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface$Stub;
.super Landroid/os/Binder;
.source "ISupplicantStaIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addDppPeerUri:I = 0x1

.field static final TRANSACTION_addExtRadioWork:I = 0x2

.field static final TRANSACTION_addNetwork:I = 0x3

.field static final TRANSACTION_addRxFilter:I = 0x4

.field static final TRANSACTION_cancelWps:I = 0x5

.field static final TRANSACTION_disconnect:I = 0x6

.field static final TRANSACTION_enableAutoReconnect:I = 0x7

.field static final TRANSACTION_filsHlpAddRequest:I = 0x8

.field static final TRANSACTION_filsHlpFlushRequest:I = 0x9

.field static final TRANSACTION_generateDppBootstrapInfoForResponder:I = 0xa

.field static final TRANSACTION_generateSelfDppConfiguration:I = 0xb

.field static final TRANSACTION_getConnectionCapabilities:I = 0xc

.field static final TRANSACTION_getConnectionMloLinksInfo:I = 0xd

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getKeyMgmtCapabilities:I = 0xe

.field static final TRANSACTION_getMacAddress:I = 0xf

.field static final TRANSACTION_getName:I = 0x10

.field static final TRANSACTION_getNetwork:I = 0x11

.field static final TRANSACTION_getType:I = 0x12

.field static final TRANSACTION_getWpaDriverCapabilities:I = 0x13

.field static final TRANSACTION_initiateAnqpQuery:I = 0x14

.field static final TRANSACTION_initiateHs20IconQuery:I = 0x15

.field static final TRANSACTION_initiateTdlsDiscover:I = 0x16

.field static final TRANSACTION_initiateTdlsSetup:I = 0x17

.field static final TRANSACTION_initiateTdlsTeardown:I = 0x18

.field static final TRANSACTION_initiateVenueUrlAnqpQuery:I = 0x19

.field static final TRANSACTION_listNetworks:I = 0x1a

.field static final TRANSACTION_reassociate:I = 0x1b

.field static final TRANSACTION_reconnect:I = 0x1c

.field static final TRANSACTION_registerCallback:I = 0x1d

.field static final TRANSACTION_removeAllQosPolicies:I = 0x20

.field static final TRANSACTION_removeDppUri:I = 0x21

.field static final TRANSACTION_removeExtRadioWork:I = 0x22

.field static final TRANSACTION_removeNetwork:I = 0x23

.field static final TRANSACTION_removeRxFilter:I = 0x24

.field static final TRANSACTION_sendQosPolicyResponse:I = 0x1f

.field static final TRANSACTION_setBtCoexistenceMode:I = 0x25

.field static final TRANSACTION_setBtCoexistenceScanModeEnabled:I = 0x26

.field static final TRANSACTION_setCountryCode:I = 0x27

.field static final TRANSACTION_setExternalSim:I = 0x28

.field static final TRANSACTION_setMboCellularDataStatus:I = 0x29

.field static final TRANSACTION_setPowerSave:I = 0x2a

.field static final TRANSACTION_setQosPolicyFeatureEnabled:I = 0x1e

.field static final TRANSACTION_setSuspendModeEnabled:I = 0x2b

.field static final TRANSACTION_setWpsConfigMethods:I = 0x2c

.field static final TRANSACTION_setWpsDeviceName:I = 0x2d

.field static final TRANSACTION_setWpsDeviceType:I = 0x2e

.field static final TRANSACTION_setWpsManufacturer:I = 0x2f

.field static final TRANSACTION_setWpsModelName:I = 0x30

.field static final TRANSACTION_setWpsModelNumber:I = 0x31

.field static final TRANSACTION_setWpsSerialNumber:I = 0x32

.field static final TRANSACTION_startDppConfiguratorInitiator:I = 0x33

.field static final TRANSACTION_startDppEnrolleeInitiator:I = 0x34

.field static final TRANSACTION_startDppEnrolleeResponder:I = 0x35

.field static final TRANSACTION_startRxFilter:I = 0x36

.field static final TRANSACTION_startWpsPbc:I = 0x37

.field static final TRANSACTION_startWpsPinDisplay:I = 0x38

.field static final TRANSACTION_startWpsPinKeypad:I = 0x39

.field static final TRANSACTION_startWpsRegistrar:I = 0x3a

.field static final TRANSACTION_stopDppInitiator:I = 0x3b

.field static final TRANSACTION_stopDppResponder:I = 0x3c

.field static final TRANSACTION_stopRxFilter:I = 0x3d


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 234
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 235
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface$Stub;->markVintfStability()V

    .line 236
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 247
    :cond_4
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 248
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;

    if-eqz v1, :cond_13

    .line 249
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;

    return-object v0

    .line 251
    :cond_13
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 261
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_352

    packed-switch p1, :pswitch_data_360

    .line 794
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 267
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 272
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 278
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 788
    :pswitch_32
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->stopRxFilter()V

    .line 789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 781
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 782
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->stopDppResponder(I)V

    .line 783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 774
    :pswitch_46
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->stopDppInitiator()V

    .line 775
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 765
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 767
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 768
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->startWpsRegistrar([BLjava/lang/String;)V

    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 757
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 758
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->startWpsPinKeypad(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 748
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 749
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->startWpsPinDisplay([B)Ljava/lang/String;

    move-result-object p0

    .line 750
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_350

    .line 740
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 741
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->startWpsPbc([B)V

    .line 742
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 733
    :pswitch_86
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->startRxFilter()V

    .line 734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 726
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 727
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->startDppEnrolleeResponder(I)V

    .line 728
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 716
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 719
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->startDppEnrolleeInitiator(II)V

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 693
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    move-object v2, p0

    .line 708
    invoke-interface/range {v2 .. v10}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->startDppConfiguratorInitiator(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[B)[B

    move-result-object p0

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_350

    .line 685
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 686
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setWpsSerialNumber(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 677
    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 678
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setWpsModelNumber(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 669
    :pswitch_ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 670
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setWpsModelName(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 661
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 662
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setWpsManufacturer(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 653
    :pswitch_107
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 654
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setWpsDeviceType([B)V

    .line 655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 645
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 646
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setWpsDeviceName(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 637
    :pswitch_11f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 638
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setWpsConfigMethods(I)V

    .line 639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 629
    :pswitch_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 630
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setSuspendModeEnabled(Z)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 621
    :pswitch_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 622
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setPowerSave(Z)V

    .line 623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 613
    :pswitch_143
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 614
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setMboCellularDataStatus(Z)V

    .line 615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 605
    :pswitch_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 606
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setExternalSim(Z)V

    .line 607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 597
    :pswitch_15b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 598
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setCountryCode([B)V

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 589
    :pswitch_167
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 590
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setBtCoexistenceScanModeEnabled(Z)V

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 581
    :pswitch_173
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 582
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setBtCoexistenceMode(B)V

    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 573
    :pswitch_17f
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 574
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->removeRxFilter(B)V

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 565
    :pswitch_18b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 566
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->removeNetwork(I)V

    .line 567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 557
    :pswitch_197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 558
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->removeExtRadioWork(I)V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 549
    :pswitch_1a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 550
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->removeDppUri(I)V

    .line 551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 542
    :pswitch_1af
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->removeAllQosPolicies()V

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 531
    :pswitch_1b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 535
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;

    .line 536
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->sendQosPolicyResponse(IZ[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;)V

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 523
    :pswitch_1cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 524
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setQosPolicyFeatureEnabled(Z)V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 515
    :pswitch_1db
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;

    move-result-object p1

    .line 516
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;)V

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 508
    :pswitch_1eb
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->reconnect()V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 502
    :pswitch_1f3
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->reassociate()V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 495
    :pswitch_1fb
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->listNetworks()[I

    move-result-object p0

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_350

    .line 488
    :pswitch_207
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 489
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->initiateVenueUrlAnqpQuery([B)V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 480
    :pswitch_213
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 481
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->initiateTdlsTeardown([B)V

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 472
    :pswitch_21f
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 473
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->initiateTdlsSetup([B)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 464
    :pswitch_22b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 465
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->initiateTdlsDiscover([B)V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 454
    :pswitch_237
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 457
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->initiateHs20IconQuery([BLjava/lang/String;)V

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 442
    :pswitch_247
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    .line 447
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->initiateAnqpQuery([B[I[I)V

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 434
    :pswitch_25b
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getWpaDriverCapabilities()I

    move-result p0

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_350

    .line 427
    :pswitch_267
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getType()I

    move-result p0

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_350

    .line 419
    :pswitch_273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 420
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getNetwork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;

    move-result-object p0

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_350

    .line 411
    :pswitch_283
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getName()Ljava/lang/String;

    move-result-object p0

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_350

    .line 404
    :pswitch_28f
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getMacAddress()[B

    move-result-object p0

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_350

    .line 397
    :pswitch_29b
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getKeyMgmtCapabilities()I

    move-result p0

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_350

    .line 390
    :pswitch_2a7
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getConnectionMloLinksInfo()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/MloLinksInfo;

    move-result-object p0

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_350

    .line 383
    :pswitch_2b3
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getConnectionCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ConnectionCapabilities;

    move-result-object p0

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_350

    .line 374
    :pswitch_2bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 377
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->generateSelfDppConfiguration(Ljava/lang/String;[B)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_350

    .line 361
    :pswitch_2cf
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 366
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->generateDppBootstrapInfoForResponder([BLjava/lang/String;I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppResponderBootstrapInfo;

    move-result-object p0

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_350

    .line 354
    :pswitch_2e6
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->filsHlpFlushRequest()V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_350

    .line 345
    :pswitch_2ed
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 348
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->filsHlpAddRequest([B[B)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_350

    .line 337
    :pswitch_2fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 338
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->enableAutoReconnect(Z)V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_350

    .line 330
    :pswitch_307
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->disconnect()V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_350

    .line 324
    :pswitch_30e
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->cancelWps()V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_350

    .line 317
    :pswitch_315
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 318
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->addRxFilter(B)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_350

    .line 309
    :pswitch_320
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->addNetwork()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;

    move-result-object p0

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_350

    .line 297
    :pswitch_32b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 302
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->addExtRadioWork(Ljava/lang/String;II)I

    move-result p0

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_350

    .line 288
    :pswitch_342
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->addDppPeerUri(Ljava/lang/String;)I

    move-result p0

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_350
    return v1

    nop

    :sswitch_data_352
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_360
    .packed-switch 0x1
        :pswitch_342
        :pswitch_32b
        :pswitch_320
        :pswitch_315
        :pswitch_30e
        :pswitch_307
        :pswitch_2fc
        :pswitch_2ed
        :pswitch_2e6
        :pswitch_2cf
        :pswitch_2bf
        :pswitch_2b3
        :pswitch_2a7
        :pswitch_29b
        :pswitch_28f
        :pswitch_283
        :pswitch_273
        :pswitch_267
        :pswitch_25b
        :pswitch_247
        :pswitch_237
        :pswitch_22b
        :pswitch_21f
        :pswitch_213
        :pswitch_207
        :pswitch_1fb
        :pswitch_1f3
        :pswitch_1eb
        :pswitch_1db
        :pswitch_1cf
        :pswitch_1b7
        :pswitch_1af
        :pswitch_1a3
        :pswitch_197
        :pswitch_18b
        :pswitch_17f
        :pswitch_173
        :pswitch_167
        :pswitch_15b
        :pswitch_14f
        :pswitch_143
        :pswitch_137
        :pswitch_12b
        :pswitch_11f
        :pswitch_113
        :pswitch_107
        :pswitch_fb
        :pswitch_ef
        :pswitch_e3
        :pswitch_d7
        :pswitch_aa
        :pswitch_9a
        :pswitch_8e
        :pswitch_86
        :pswitch_7a
        :pswitch_6a
        :pswitch_5e
        :pswitch_4e
        :pswitch_46
        :pswitch_3a
        :pswitch_32
    .end packed-switch
.end method
