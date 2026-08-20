.class public abstract Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;
.super Landroid/os/Binder;
.source "ISemInputDeviceManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_clearHwParam:I = 0x27

.field static final TRANSACTION_enableMotion:I = 0x8

.field static final TRANSACTION_getAodActiveArea:I = 0x2d

.field static final TRANSACTION_getFodInfo:I = 0x2b

.field static final TRANSACTION_getFodPosition:I = 0x2c

.field static final TRANSACTION_getHwParam:I = 0x2f

.field static final TRANSACTION_getKeyPressStateAll:I = 0x1

.field static final TRANSACTION_getLpDump:I = 0x2e

.field static final TRANSACTION_getMotionControl:I = 0xb

.field static final TRANSACTION_getProxPowerOff:I = 0x2a

.field static final TRANSACTION_getScrubPosition:I = 0x29

.field static final TRANSACTION_getSpenPosition:I = 0x38

.field static final TRANSACTION_getSupportDevice:I = 0xd

.field static final TRANSACTION_getTspSupportFeature:I = 0x28

.field static final TRANSACTION_isEnableMotion:I = 0x9

.field static final TRANSACTION_isKeyPressedByKeycode:I = 0x2

.field static final TRANSACTION_isSupportMotion:I = 0x7

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_registerListener:I = 0x5

.field static final TRANSACTION_runEmergency:I = 0xe

.field static final TRANSACTION_runEmergencyCurrentTsp:I = 0xf

.field static final TRANSACTION_sendRawdataTsp:I = 0xc

.field static final TRANSACTION_setAodEnable:I = 0x1a

.field static final TRANSACTION_setAodRect:I = 0x19

.field static final TRANSACTION_setBrushEnable:I = 0x18

.field static final TRANSACTION_setCoverMode:I = 0x14

.field static final TRANSACTION_setEarDetectEnable:I = 0x20

.field static final TRANSACTION_setFodEnable:I = 0x1b

.field static final TRANSACTION_setFodIconVisible:I = 0x1c

.field static final TRANSACTION_setFodLpMode:I = 0x1e

.field static final TRANSACTION_setFodRect:I = 0x1d

.field static final TRANSACTION_setFpIntControl:I = 0x22

.field static final TRANSACTION_setGripData:I = 0x11

.field static final TRANSACTION_setLowSensitivityModeEnable:I = 0x25

.field static final TRANSACTION_setMotionControl:I = 0xa

.field static final TRANSACTION_setNoteMode:I = 0x13

.field static final TRANSACTION_setPocketModeEnable:I = 0x24

.field static final TRANSACTION_setProxPowerOff:I = 0x26

.field static final TRANSACTION_setSingletapEnable:I = 0x1f

.field static final TRANSACTION_setSipMode:I = 0x12

.field static final TRANSACTION_setSpayEnable:I = 0x16

.field static final TRANSACTION_setSpenAodEnable:I = 0x31

.field static final TRANSACTION_setSpenBleChargeMode:I = 0x34

.field static final TRANSACTION_setSpenCoverType:I = 0x32

.field static final TRANSACTION_setSpenEnabled:I = 0x30

.field static final TRANSACTION_setSpenLowCurrentMode:I = 0x36

.field static final TRANSACTION_setSpenPdctLowSensitivityEnable:I = 0x35

.field static final TRANSACTION_setSpenPower:I = 0x33

.field static final TRANSACTION_setSpenPowerSavingMode:I = 0x37

.field static final TRANSACTION_setStylusEnable:I = 0x17

.field static final TRANSACTION_setSyncChanged:I = 0x23

.field static final TRANSACTION_setTemperature:I = 0x15

.field static final TRANSACTION_setTouchableArea:I = 0x21

.field static final TRANSACTION_setTspEnabled:I = 0x10

.field static final TRANSACTION_unregisterCallback:I = 0x4

.field static final TRANSACTION_unregisterListener:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 252
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 253
    const-string v0, "com.samsung.android.hardware.secinputdev.ISemInputDeviceManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 261
    if-nez p0, :cond_4

    .line 262
    const/4 v0, 0x0

    return-object v0

    .line 264
    :cond_4
    const-string v0, "com.samsung.android.hardware.secinputdev.ISemInputDeviceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 265
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    if-eqz v1, :cond_14

    .line 266
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    return-object v1

    .line 268
    :cond_14
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 272
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    const-string v0, "com.samsung.android.hardware.secinputdev.ISemInputDeviceManager"

    .line 277
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 278
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    :cond_d
    packed-switch p1, :pswitch_data_4a2

    .line 288
    packed-switch p1, :pswitch_data_4a8

    .line 898
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 284
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    return v1

    .line 891
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getSpenPosition()Ljava/lang/String;

    move-result-object v2

    .line 892
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 894
    goto/16 :goto_4a0

    .line 882
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 883
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenPowerSavingMode(I)I

    move-result v3

    .line 885
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    goto/16 :goto_4a0

    .line 872
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 873
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenLowCurrentMode(I)I

    move-result v3

    .line 875
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    goto/16 :goto_4a0

    .line 862
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 863
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 864
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenPdctLowSensitivityEnable(I)I

    move-result v3

    .line 865
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    goto/16 :goto_4a0

    .line 852
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 853
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenBleChargeMode(I)I

    move-result v3

    .line 855
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    goto/16 :goto_4a0

    .line 842
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 843
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenPower(I)I

    move-result v3

    .line 845
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    goto/16 :goto_4a0

    .line 832
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 833
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenCoverType(I)I

    move-result v3

    .line 835
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    goto/16 :goto_4a0

    .line 822
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 823
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenAodEnable(I)I

    move-result v3

    .line 825
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    goto/16 :goto_4a0

    .line 808
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 810
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 812
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 813
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenEnabled(IIZ)I

    move-result v5

    .line 815
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    goto/16 :goto_4a0

    .line 798
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 799
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getHwParam(I)Ljava/lang/String;

    move-result-object v3

    .line 801
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 803
    goto/16 :goto_4a0

    .line 788
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 789
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getLpDump(I)Ljava/lang/String;

    move-result-object v3

    .line 791
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 793
    goto/16 :goto_4a0

    .line 778
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 779
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getAodActiveArea(I)Ljava/lang/String;

    move-result-object v3

    .line 781
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 783
    goto/16 :goto_4a0

    .line 768
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 769
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getFodPosition(I)Ljava/lang/String;

    move-result-object v3

    .line 771
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 773
    goto/16 :goto_4a0

    .line 758
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 759
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getFodInfo(I)Ljava/lang/String;

    move-result-object v3

    .line 761
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 763
    goto/16 :goto_4a0

    .line 748
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 749
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getProxPowerOff(I)Ljava/lang/String;

    move-result-object v3

    .line 751
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 753
    goto/16 :goto_4a0

    .line 738
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 739
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getScrubPosition(I)Ljava/lang/String;

    move-result-object v3

    .line 741
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 743
    goto/16 :goto_4a0

    .line 728
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 729
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getTspSupportFeature(I)I

    move-result v3

    .line 731
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    goto/16 :goto_4a0

    .line 718
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 719
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 720
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->clearHwParam(I)I

    move-result v3

    .line 721
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    goto/16 :goto_4a0

    .line 706
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 708
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 709
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setProxPowerOff(II)I

    move-result v4

    .line 711
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    goto/16 :goto_4a0

    .line 696
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_18a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 697
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setLowSensitivityModeEnable(I)I

    move-result v3

    .line 699
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    goto/16 :goto_4a0

    .line 686
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_19d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 687
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 688
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setPocketModeEnable(I)I

    move-result v3

    .line 689
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    goto/16 :goto_4a0

    .line 676
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 677
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSyncChanged(I)I

    move-result v3

    .line 679
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    goto/16 :goto_4a0

    .line 666
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 667
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setFpIntControl(I)I

    move-result v3

    .line 669
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    goto/16 :goto_4a0

    .line 656
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 657
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setTouchableArea(I)I

    move-result v3

    .line 659
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    goto/16 :goto_4a0

    .line 646
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 647
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 648
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setEarDetectEnable(I)I

    move-result v3

    .line 649
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    goto/16 :goto_4a0

    .line 636
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 637
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSingletapEnable(I)I

    move-result v3

    .line 639
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    goto/16 :goto_4a0

    .line 626
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_20f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 627
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setFodLpMode(I)I

    move-result v3

    .line 629
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    goto/16 :goto_4a0

    .line 610
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 612
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 614
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 616
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 617
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setFodRect(IIII)I

    move-result v6

    .line 619
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    goto/16 :goto_4a0

    .line 600
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 601
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setFodIconVisible(I)I

    move-result v3

    .line 603
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    goto/16 :goto_4a0

    .line 586
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 588
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 590
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 591
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setFodEnable(III)I

    move-result v5

    .line 593
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    goto/16 :goto_4a0

    .line 576
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_26f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 577
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setAodEnable(I)I

    move-result v3

    .line 579
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    goto/16 :goto_4a0

    .line 560
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 562
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 564
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 566
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 567
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setAodRect(IIII)I

    move-result v6

    .line 569
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    goto/16 :goto_4a0

    .line 550
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_2a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 551
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setBrushEnable(I)I

    move-result v3

    .line 553
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    goto/16 :goto_4a0

    .line 540
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 541
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setStylusEnable(I)I

    move-result v3

    .line 543
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    goto/16 :goto_4a0

    .line 530
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 531
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpayEnable(I)I

    move-result v3

    .line 533
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    goto/16 :goto_4a0

    .line 520
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 521
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setTemperature(I)I

    move-result v3

    .line 523
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    goto/16 :goto_4a0

    .line 508
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 510
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 511
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setCoverMode(II)I

    move-result v4

    .line 513
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    goto/16 :goto_4a0

    .line 498
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 499
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setNoteMode(I)I

    move-result v3

    .line 501
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    goto/16 :goto_4a0

    .line 488
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 489
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSipMode(I)I

    move-result v3

    .line 491
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    goto/16 :goto_4a0

    .line 478
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_32a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setGripData(Ljava/lang/String;)I

    move-result v3

    .line 481
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    goto/16 :goto_4a0

    .line 464
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_33d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 466
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 468
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 469
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setTspEnabled(IIZ)I

    move-result v5

    .line 471
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    goto/16 :goto_4a0

    .line 454
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_358
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->runEmergencyCurrentTsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    goto/16 :goto_4a0

    .line 442
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_36b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 444
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->runEmergency(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 447
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    goto/16 :goto_4a0

    .line 432
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 433
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getSupportDevice(I)I

    move-result v3

    .line 435
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    goto/16 :goto_4a0

    .line 420
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 422
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 423
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->sendRawdataTsp(I[I)I

    move-result v4

    .line 425
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    goto/16 :goto_4a0

    .line 408
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":I
    :pswitch_3ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getMotionControl(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 413
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    goto/16 :goto_4a0

    .line 394
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_3c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 396
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 398
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setMotionControl(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 401
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    goto/16 :goto_4a0

    .line 382
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_3de
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 387
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    goto/16 :goto_4a0

    .line 368
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_3f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 370
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 372
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->enableMotion(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v5

    .line 375
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    goto/16 :goto_4a0

    .line 358
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_410
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 359
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->isSupportMotion(Ljava/lang/String;)Z

    move-result v3

    .line 361
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 363
    goto/16 :goto_4a0

    .line 344
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_423
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 346
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 348
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 349
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v5

    .line 351
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 353
    goto :goto_4a0

    .line 330
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_43d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 332
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 335
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v5

    .line 337
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 339
    goto :goto_4a0

    .line 320
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_457
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    move-result-object v2

    .line 321
    .local v2, "_arg0":Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->unregisterCallback(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;)Z

    move-result v3

    .line 323
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 325
    goto :goto_4a0

    .line 310
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    .end local v3    # "_result":Z
    :pswitch_46d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    move-result-object v2

    .line 311
    .restart local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->registerCallback(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;)Z

    move-result v3

    .line 313
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 315
    goto :goto_4a0

    .line 300
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    .end local v3    # "_result":Z
    :pswitch_483
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->isKeyPressedByKeycode(I)Z

    move-result v3

    .line 303
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 305
    goto :goto_4a0

    .line 292
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_495
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getKeyPressStateAll()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    nop

    .line 901
    .end local v2    # "_result":Ljava/lang/String;
    :goto_4a0
    return v1

    nop

    :pswitch_data_4a2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4a8
    .packed-switch 0x1
        :pswitch_495
        :pswitch_483
        :pswitch_46d
        :pswitch_457
        :pswitch_43d
        :pswitch_423
        :pswitch_410
        :pswitch_3f5
        :pswitch_3de
        :pswitch_3c3
        :pswitch_3ac
        :pswitch_395
        :pswitch_382
        :pswitch_36b
        :pswitch_358
        :pswitch_33d
        :pswitch_32a
        :pswitch_317
        :pswitch_304
        :pswitch_2ed
        :pswitch_2da
        :pswitch_2c7
        :pswitch_2b4
        :pswitch_2a1
        :pswitch_282
        :pswitch_26f
        :pswitch_254
        :pswitch_241
        :pswitch_222
        :pswitch_20f
        :pswitch_1fc
        :pswitch_1e9
        :pswitch_1d6
        :pswitch_1c3
        :pswitch_1b0
        :pswitch_19d
        :pswitch_18a
        :pswitch_173
        :pswitch_160
        :pswitch_14d
        :pswitch_13a
        :pswitch_127
        :pswitch_114
        :pswitch_101
        :pswitch_ee
        :pswitch_db
        :pswitch_c8
        :pswitch_ad
        :pswitch_9a
        :pswitch_87
        :pswitch_74
        :pswitch_61
        :pswitch_4e
        :pswitch_3b
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
