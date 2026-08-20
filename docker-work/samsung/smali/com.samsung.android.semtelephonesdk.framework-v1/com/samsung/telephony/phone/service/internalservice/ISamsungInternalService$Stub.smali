.class public abstract Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;
.super Landroid/os/Binder;
.source "ISamsungInternalService.java"

# interfaces
.implements Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_changeCallBarringPassword:I = 0x18

.field static final TRANSACTION_changeIccFdnPassword:I = 0x10

.field static final TRANSACTION_getActiveFgCallState:I = 0xa

.field static final TRANSACTION_getAllowedNetworkTypes:I = 0x35

.field static final TRANSACTION_getIccPersoSubStateAsString:I = 0x8

.field static final TRANSACTION_getIccPin2RetryCount:I = 0x5

.field static final TRANSACTION_getIccPuk2retryCount:I = 0x7

.field static final TRANSACTION_getOcsglAvailable:I = 0x2c

.field static final TRANSACTION_getRevision:I = 0x1

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x22

.field static final TRANSACTION_isCspPlmnEnabled:I = 0xb

.field static final TRANSACTION_isFdnAvailable:I = 0x9

.field static final TRANSACTION_isIccFdnEnabled:I = 0x4

.field static final TRANSACTION_isIccPin2Blocked:I = 0x6

.field static final TRANSACTION_isNetworkPolicyRestrictBackground:I = 0x3

.field static final TRANSACTION_isOCSGLAvailable:I = 0xc

.field static final TRANSACTION_notifyVoicemailNumberChanged:I = 0x2

.field static final TRANSACTION_queryAvailableCsg:I = 0x29

.field static final TRANSACTION_queryAvailableNetwork:I = 0x27

.field static final TRANSACTION_queryCallBarring:I = 0x16

.field static final TRANSACTION_queryCallForwardingOption:I = 0x1b

.field static final TRANSACTION_queryCallWaiting:I = 0x14

.field static final TRANSACTION_queryCdmaRoamingPreference:I = 0x26

.field static final TRANSACTION_queryEnhancedVoicePrivacy:I = 0x1d

.field static final TRANSACTION_queryIcBarring:I = 0x19

.field static final TRANSACTION_queryOutGoingCallerIdDisplay:I = 0x31

.field static final TRANSACTION_queryPreferredNetworkList:I = 0x1f

.field static final TRANSACTION_queryPreferredNetworkType:I = 0x21

.field static final TRANSACTION_selectCsg:I = 0x2d

.field static final TRANSACTION_setAllowedNetworkTypes:I = 0x36

.field static final TRANSACTION_setCallBarring:I = 0x17

.field static final TRANSACTION_setCallForwardingOption:I = 0x1c

.field static final TRANSACTION_setCallWaiting:I = 0x15

.field static final TRANSACTION_setCdmaRoamingPreference:I = 0x2e

.field static final TRANSACTION_setCdmaSubscription:I = 0x25

.field static final TRANSACTION_setCsgManually:I = 0x2a

.field static final TRANSACTION_setDataRoamingEnabled:I = 0xd

.field static final TRANSACTION_setEnhancedVoicePrivacy:I = 0x1e

.field static final TRANSACTION_setIcBarring:I = 0x1a

.field static final TRANSACTION_setIccEpsLoci:I = 0x13

.field static final TRANSACTION_setIccFdnEnabled:I = 0x12

.field static final TRANSACTION_setIccFplmn:I = 0xf

.field static final TRANSACTION_setIccLoci:I = 0x34

.field static final TRANSACTION_setIccPsLoci:I = 0x33

.field static final TRANSACTION_setInternalPdnEnabled:I = 0x2f

.field static final TRANSACTION_setNetworkManually:I = 0x28

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x24

.field static final TRANSACTION_setOutGoingCallerIdDisplay:I = 0x32

.field static final TRANSACTION_setPreferredNetworkList:I = 0x20

.field static final TRANSACTION_setPreferredNetworkType:I = 0x23

.field static final TRANSACTION_setRadioPower:I = 0xe

.field static final TRANSACTION_setVoiceMailNumber:I = 0x2b

.field static final TRANSACTION_supplyIccNetworkDepersonalization:I = 0x30

.field static final TRANSACTION_supplyIccPuk2:I = 0x11


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 199
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 200
    const-string v0, "com.samsung.telephony.phone.service.internalservice.ISamsungInternalService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 208
    if-nez p0, :cond_4

    .line 209
    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_4
    const-string v0, "com.samsung.telephony.phone.service.internalservice.ISamsungInternalService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 212
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    if-eqz v1, :cond_14

    .line 213
    move-object v1, v0

    check-cast v1, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    return-object v1

    .line 215
    :cond_14
    new-instance v1, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 219
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.samsung.telephony.phone.service.internalservice.ISamsungInternalService"

    .line 224
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_15

    const v0, 0xffffff

    if-gt v9, v0, :cond_15

    .line 225
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    :cond_15
    packed-switch v9, :pswitch_data_574

    .line 235
    packed-switch v9, :pswitch_data_57a

    .line 896
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 231
    :pswitch_20
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    return v13

    .line 884
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 886
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 888
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    .line 889
    .local v2, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setAllowedNetworkTypes(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    goto/16 :goto_572

    .line 874
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 875
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getAllowedNetworkTypes(I)I

    move-result v1

    .line 877
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    goto/16 :goto_572

    .line 861
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 863
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 865
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    .line 866
    .restart local v2    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIccLoci(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 868
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    goto/16 :goto_572

    .line 850
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 852
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 853
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIccPsLoci(I[B)V

    .line 855
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    goto/16 :goto_572

    .line 837
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    :pswitch_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 839
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 841
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    .line 842
    .restart local v2    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setOutGoingCallerIdDisplay(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 844
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    goto/16 :goto_572

    .line 826
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_9b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 828
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    .line 829
    .local v1, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryOutGoingCallerIdDisplay(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    goto/16 :goto_572

    .line 811
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 813
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 817
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    .line 818
    .local v3, "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 819
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->supplyIccNetworkDepersonalization(ILjava/lang/String;ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 820
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    goto/16 :goto_572

    .line 800
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 802
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 803
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 804
    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setInternalPdnEnabled(IZ)V

    .line 805
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    goto/16 :goto_572

    .line 787
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 789
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 791
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    .line 792
    .local v2, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCdmaRoamingPreference(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    goto/16 :goto_572

    .line 776
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 778
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v1

    .line 779
    .local v1, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->selectCsg(ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    goto/16 :goto_572

    .line 766
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 767
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getOcsglAvailable(I)Z

    move-result v1

    .line 769
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 771
    goto/16 :goto_572

    .line 751
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 753
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    .line 758
    .restart local v3    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 760
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    goto/16 :goto_572

    .line 735
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 737
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 738
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    .line 740
    .local v2, "_arg1":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 742
    .local v3, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v4

    .line 743
    .local v4, "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {v8, v0, v2, v3, v4}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCsgManually(ILjava/util/List;ZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 745
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    goto/16 :goto_572

    .line 724
    .end local v0    # "_arg0":I
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "_arg1":Ljava/util/List;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_16f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 726
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    .line 727
    .local v1, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryAvailableCsg(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    goto/16 :goto_572

    .line 708
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 710
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 711
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    .line 713
    .restart local v2    # "_arg1":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 715
    .restart local v3    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v4

    .line 716
    .restart local v4    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-virtual {v8, v0, v2, v3, v4}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setNetworkManually(ILjava/util/List;ZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    goto/16 :goto_572

    .line 697
    .end local v0    # "_arg0":I
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "_arg1":Ljava/util/List;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_1ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 699
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    .line 700
    .local v1, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryAvailableNetwork(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    goto/16 :goto_572

    .line 686
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_1c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 688
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    .line 689
    .restart local v1    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryCdmaRoamingPreference(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    goto/16 :goto_572

    .line 673
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_1db
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 675
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 677
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v2

    .line 678
    .local v2, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 679
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCdmaSubscription(IILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    goto/16 :goto_572

    .line 662
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_1f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 664
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v1

    .line 665
    .local v1, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setNetworkSelectionModeAutomatic(ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    goto/16 :goto_572

    .line 649
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_20d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 651
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 653
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    .line 654
    .local v2, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setPreferredNetworkType(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    goto/16 :goto_572

    .line 636
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 638
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 640
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v2

    .line 641
    .local v2, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->invokeOemRilRequestRaw(I[BLcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 643
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    goto/16 :goto_572

    .line 625
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 627
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    .line 628
    .local v1, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryPreferredNetworkType(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    goto/16 :goto_572

    .line 611
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_25a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 613
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 614
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    .line 616
    .local v2, "_arg1":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    .line 617
    .local v3, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {v8, v0, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setPreferredNetworkList(ILjava/util/List;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    goto/16 :goto_572

    .line 600
    .end local v0    # "_arg0":I
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "_arg1":Ljava/util/List;
    .end local v3    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_27d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 602
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    .line 603
    .local v1, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryPreferredNetworkList(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 605
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    goto/16 :goto_572

    .line 587
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 589
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 591
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    .line 592
    .local v2, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setEnhancedVoicePrivacy(IZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    goto/16 :goto_572

    .line 576
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_2af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 578
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    .line 579
    .local v1, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryEnhancedVoicePrivacy(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    goto/16 :goto_572

    .line 555
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_2c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 557
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 559
    .local v15, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 561
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 563
    .local v17, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 565
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 567
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v20

    .line 568
    .local v20, "_arg6":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCallForwardingOption(IZIZLjava/lang/String;ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    goto/16 :goto_572

    .line 540
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":Z
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Z
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_2ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 542
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 544
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 546
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v3

    .line 547
    .local v3, "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryCallForwardingOption(IZILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 549
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    goto/16 :goto_572

    .line 527
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_31e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 529
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Bundle;

    .line 531
    .local v1, "_arg1":[Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v2

    .line 532
    .local v2, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIcBarring(I[Landroid/os/Bundle;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    goto/16 :goto_572

    .line 516
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/os/Bundle;
    .end local v2    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_33d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 518
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    .line 519
    .local v1, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryIcBarring(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    goto/16 :goto_572

    .line 501
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 503
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v3

    .line 508
    .restart local v3    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    goto/16 :goto_572

    .line 482
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 484
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 486
    .local v14, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 488
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 490
    .local v16, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 492
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v18

    .line 493
    .local v18, "_arg5":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    move-object/from16 v0, p0

    move v1, v7

    move v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCallBarring(IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    goto/16 :goto_572

    .line 467
    .end local v7    # "_arg0":I
    .end local v14    # "_arg1":Z
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_3a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 469
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 471
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 473
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v3

    .line 474
    .restart local v3    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryCallBarring(IZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    goto/16 :goto_572

    .line 454
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_3c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 456
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 458
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    .line 459
    .local v2, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCallWaiting(IZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    goto/16 :goto_572

    .line 443
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_3df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 445
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v1

    .line 446
    .local v1, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryCallWaiting(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    goto/16 :goto_572

    .line 430
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_3f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 432
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 434
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    .line 435
    .restart local v2    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIccEpsLoci(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    goto/16 :goto_572

    .line 415
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 417
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 419
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    .line 422
    .local v3, "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIccFdnEnabled(IZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    goto/16 :goto_572

    .line 400
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 402
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 406
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    .line 407
    .restart local v3    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->supplyIccPuk2(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    goto/16 :goto_572

    .line 385
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_44f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 387
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 389
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 391
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    .line 392
    .restart local v3    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->changeIccFdnPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    goto/16 :goto_572

    .line 372
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_46e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 374
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 376
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    .line 377
    .local v2, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIccFplmn(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    goto/16 :goto_572

    .line 361
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 363
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 364
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setRadioPower(IZ)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    goto/16 :goto_572

    .line 350
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_49c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 352
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 353
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {v8, v0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setDataRoamingEnabled(IZ)V

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    goto/16 :goto_572

    .line 340
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_4af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 341
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isOCSGLAvailable(I)Z

    move-result v1

    .line 343
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 345
    goto/16 :goto_572

    .line 330
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 331
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isCspPlmnEnabled(I)Z

    move-result v1

    .line 333
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 335
    goto/16 :goto_572

    .line 322
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4d5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getActiveFgCallState()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    goto/16 :goto_572

    .line 313
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_4e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 314
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isFdnAvailable(I)Z

    move-result v1

    .line 316
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 318
    goto/16 :goto_572

    .line 303
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getIccPersoSubStateAsString(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    goto :goto_572

    .line 293
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 294
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getIccPuk2retryCount(I)I

    move-result v1

    .line 296
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    goto :goto_572

    .line 283
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 284
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isIccPin2Blocked(I)Z

    move-result v1

    .line 286
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 288
    goto :goto_572

    .line 273
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_52a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getIccPin2RetryCount(I)I

    move-result v1

    .line 276
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    goto :goto_572

    .line 263
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_53c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 264
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isIccFdnEnabled(I)Z

    move-result v1

    .line 266
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 268
    goto :goto_572

    .line 255
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_54e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isNetworkPolicyRestrictBackground()Z

    move-result v0

    .line 256
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 258
    goto :goto_572

    .line 247
    .end local v0    # "_result":Z
    :pswitch_559
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 248
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {v8, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->notifyVoicemailNumberChanged(I)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    goto :goto_572

    .line 239
    .end local v0    # "_arg0":I
    :pswitch_567
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getRevision()I

    move-result v0

    .line 240
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    nop

    .line 899
    .end local v0    # "_result":I
    :goto_572
    return v13

    nop

    :pswitch_data_574
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_57a
    .packed-switch 0x1
        :pswitch_567
        :pswitch_559
        :pswitch_54e
        :pswitch_53c
        :pswitch_52a
        :pswitch_518
        :pswitch_506
        :pswitch_4f4
        :pswitch_4e1
        :pswitch_4d5
        :pswitch_4c2
        :pswitch_4af
        :pswitch_49c
        :pswitch_489
        :pswitch_46e
        :pswitch_44f
        :pswitch_430
        :pswitch_411
        :pswitch_3f6
        :pswitch_3df
        :pswitch_3c4
        :pswitch_3a5
        :pswitch_373
        :pswitch_354
        :pswitch_33d
        :pswitch_31e
        :pswitch_2ff
        :pswitch_2c6
        :pswitch_2af
        :pswitch_294
        :pswitch_27d
        :pswitch_25a
        :pswitch_243
        :pswitch_228
        :pswitch_20d
        :pswitch_1f6
        :pswitch_1db
        :pswitch_1c4
        :pswitch_1ad
        :pswitch_186
        :pswitch_16f
        :pswitch_148
        :pswitch_129
        :pswitch_116
        :pswitch_ff
        :pswitch_e4
        :pswitch_d1
        :pswitch_b2
        :pswitch_9b
        :pswitch_80
        :pswitch_6d
        :pswitch_52
        :pswitch_3f
        :pswitch_24
    .end packed-switch
.end method
