.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub;
.super Landroid/os/Binder;
.source "ISupplicantStaNetwork.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_disable:I = 0x1

.field static final TRANSACTION_enable:I = 0x2

.field static final TRANSACTION_enableSaePkOnlyMode:I = 0x3

.field static final TRANSACTION_enableSuiteBEapOpenSslCiphers:I = 0x4

.field static final TRANSACTION_enableTlsSuiteBEapPhase1Param:I = 0x5

.field static final TRANSACTION_getAuthAlg:I = 0x6

.field static final TRANSACTION_getBssid:I = 0x7

.field static final TRANSACTION_getEapAltSubjectMatch:I = 0x8

.field static final TRANSACTION_getEapAnonymousIdentity:I = 0x9

.field static final TRANSACTION_getEapCACert:I = 0xa

.field static final TRANSACTION_getEapCAPath:I = 0xb

.field static final TRANSACTION_getEapClientCert:I = 0xc

.field static final TRANSACTION_getEapDomainSuffixMatch:I = 0xd

.field static final TRANSACTION_getEapEngine:I = 0xe

.field static final TRANSACTION_getEapEngineId:I = 0xf

.field static final TRANSACTION_getEapIdentity:I = 0x10

.field static final TRANSACTION_getEapMethod:I = 0x11

.field static final TRANSACTION_getEapPassword:I = 0x12

.field static final TRANSACTION_getEapPhase2Method:I = 0x13

.field static final TRANSACTION_getEapPrivateKeyId:I = 0x14

.field static final TRANSACTION_getEapSubjectMatch:I = 0x15

.field static final TRANSACTION_getEdmg:I = 0x16

.field static final TRANSACTION_getGroupCipher:I = 0x17

.field static final TRANSACTION_getGroupMgmtCipher:I = 0x18

.field static final TRANSACTION_getId:I = 0x19

.field static final TRANSACTION_getIdStr:I = 0x1a

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceName:I = 0x1b

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getKeyMgmt:I = 0x1c

.field static final TRANSACTION_getOcsp:I = 0x1d

.field static final TRANSACTION_getPairwiseCipher:I = 0x1e

.field static final TRANSACTION_getProto:I = 0x1f

.field static final TRANSACTION_getPsk:I = 0x20

.field static final TRANSACTION_getPskPassphrase:I = 0x21

.field static final TRANSACTION_getRequirePmf:I = 0x22

.field static final TRANSACTION_getSaePassword:I = 0x23

.field static final TRANSACTION_getSaePasswordId:I = 0x24

.field static final TRANSACTION_getScanSsid:I = 0x25

.field static final TRANSACTION_getSsid:I = 0x26

.field static final TRANSACTION_getType:I = 0x27

.field static final TRANSACTION_getWapiCertSuite:I = 0x28

.field static final TRANSACTION_getWepKey:I = 0x29

.field static final TRANSACTION_getWepTxKeyIdx:I = 0x2a

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x2b

.field static final TRANSACTION_registerCallback:I = 0x2c

.field static final TRANSACTION_select:I = 0x2d

.field static final TRANSACTION_sendNetworkEapIdentityResponse:I = 0x2e

.field static final TRANSACTION_sendNetworkEapSimGsmAuthFailure:I = 0x2f

.field static final TRANSACTION_sendNetworkEapSimGsmAuthResponse:I = 0x30

.field static final TRANSACTION_sendNetworkEapSimUmtsAuthFailure:I = 0x31

.field static final TRANSACTION_sendNetworkEapSimUmtsAuthResponse:I = 0x32

.field static final TRANSACTION_sendNetworkEapSimUmtsAutsResponse:I = 0x33

.field static final TRANSACTION_setAuthAlg:I = 0x34

.field static final TRANSACTION_setBssid:I = 0x35

.field static final TRANSACTION_setDppKeys:I = 0x36

.field static final TRANSACTION_setEapAltSubjectMatch:I = 0x37

.field static final TRANSACTION_setEapAnonymousIdentity:I = 0x38

.field static final TRANSACTION_setEapCACert:I = 0x39

.field static final TRANSACTION_setEapCAPath:I = 0x3a

.field static final TRANSACTION_setEapClientCert:I = 0x3b

.field static final TRANSACTION_setEapDomainSuffixMatch:I = 0x3c

.field static final TRANSACTION_setEapEncryptedImsiIdentity:I = 0x3d

.field static final TRANSACTION_setEapEngine:I = 0x3e

.field static final TRANSACTION_setEapEngineID:I = 0x3f

.field static final TRANSACTION_setEapErp:I = 0x40

.field static final TRANSACTION_setEapIdentity:I = 0x41

.field static final TRANSACTION_setEapMethod:I = 0x42

.field static final TRANSACTION_setEapPassword:I = 0x43

.field static final TRANSACTION_setEapPhase2Method:I = 0x44

.field static final TRANSACTION_setEapPrivateKeyId:I = 0x45

.field static final TRANSACTION_setEapSubjectMatch:I = 0x46

.field static final TRANSACTION_setEdmg:I = 0x47

.field static final TRANSACTION_setGroupCipher:I = 0x48

.field static final TRANSACTION_setGroupMgmtCipher:I = 0x49

.field static final TRANSACTION_setIdStr:I = 0x4a

.field static final TRANSACTION_setKeyMgmt:I = 0x4b

.field static final TRANSACTION_setOcsp:I = 0x4c

.field static final TRANSACTION_setPairwiseCipher:I = 0x4d

.field static final TRANSACTION_setPmkCache:I = 0x4e

.field static final TRANSACTION_setProactiveKeyCaching:I = 0x4f

.field static final TRANSACTION_setProto:I = 0x50

.field static final TRANSACTION_setPsk:I = 0x51

.field static final TRANSACTION_setPskPassphrase:I = 0x52

.field static final TRANSACTION_setRequirePmf:I = 0x53

.field static final TRANSACTION_setRoamingConsortiumSelection:I = 0x5d

.field static final TRANSACTION_setSaeH2eMode:I = 0x54

.field static final TRANSACTION_setSaePassword:I = 0x55

.field static final TRANSACTION_setSaePasswordId:I = 0x56

.field static final TRANSACTION_setScanSsid:I = 0x57

.field static final TRANSACTION_setSsid:I = 0x58

.field static final TRANSACTION_setUpdateIdentifier:I = 0x59

.field static final TRANSACTION_setWapiCertSuite:I = 0x5a

.field static final TRANSACTION_setWepKey:I = 0x5b

.field static final TRANSACTION_setWepTxKeyIdx:I = 0x5c


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 353
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 354
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub;->markVintfStability()V

    .line 355
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 366
    :cond_4
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 367
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;

    if-eqz v1, :cond_13

    .line 368
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;

    return-object v0

    .line 370
    :cond_13
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 380
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_48c

    packed-switch p1, :pswitch_data_49a

    .line 1108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 386
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 391
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 397
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1101
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 1102
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setRoamingConsortiumSelection([B)V

    .line 1103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 1093
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1094
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setWepTxKeyIdx(I)V

    .line 1095
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 1083
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 1086
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setWepKey(I[B)V

    .line 1087
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 1075
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1076
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setWapiCertSuite(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 1067
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1068
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setUpdateIdentifier(I)V

    .line 1069
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 1059
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 1060
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setSsid([B)V

    .line 1061
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 1051
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1052
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setScanSsid(Z)V

    .line 1053
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 1043
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1044
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setSaePasswordId(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 1035
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1036
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setSaePassword(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 1027
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1028
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setSaeH2eMode(B)V

    .line 1029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 1019
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1020
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setRequirePmf(Z)V

    .line 1021
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 1011
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1012
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setPskPassphrase(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 1003
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 1004
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setPsk([B)V

    .line 1005
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 995
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 996
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setProto(I)V

    .line 997
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 987
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 988
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setProactiveKeyCaching(Z)V

    .line 989
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 979
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 980
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setPmkCache([B)V

    .line 981
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 971
    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 972
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setPairwiseCipher(I)V

    .line 973
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 963
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 964
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setOcsp(I)V

    .line 965
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 955
    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 956
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setKeyMgmt(I)V

    .line 957
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 947
    :pswitch_11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 948
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setIdStr(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 939
    :pswitch_126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 940
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setGroupMgmtCipher(I)V

    .line 941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 931
    :pswitch_132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 932
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setGroupCipher(I)V

    .line 933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 923
    :pswitch_13e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 924
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEdmg(Z)V

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 915
    :pswitch_14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 916
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapSubjectMatch(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 907
    :pswitch_156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 908
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapPrivateKeyId(Ljava/lang/String;)V

    .line 909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 899
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 900
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapPhase2Method(I)V

    .line 901
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 891
    :pswitch_16e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 892
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapPassword([B)V

    .line 893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 883
    :pswitch_17a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 884
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapMethod(I)V

    .line 885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 875
    :pswitch_186
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 876
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapIdentity([B)V

    .line 877
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 867
    :pswitch_192
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 868
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapErp(Z)V

    .line 869
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 859
    :pswitch_19e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 860
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapEngineID(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 851
    :pswitch_1aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 852
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapEngine(Z)V

    .line 853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 843
    :pswitch_1b6
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 844
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapEncryptedImsiIdentity([B)V

    .line 845
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 835
    :pswitch_1c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 836
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapDomainSuffixMatch(Ljava/lang/String;)V

    .line 837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 827
    :pswitch_1ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 828
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapClientCert(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 819
    :pswitch_1da
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 820
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapCAPath(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 811
    :pswitch_1e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 812
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapCACert(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 803
    :pswitch_1f2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 804
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapAnonymousIdentity([B)V

    .line 805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 795
    :pswitch_1fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 796
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setEapAltSubjectMatch(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 787
    :pswitch_20a
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConnectionKeys;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConnectionKeys;

    .line 788
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setDppKeys(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConnectionKeys;)V

    .line 789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 779
    :pswitch_21a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 780
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setBssid([B)V

    .line 781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 771
    :pswitch_226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 772
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->setAuthAlg(I)V

    .line 773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 763
    :pswitch_232
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 764
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAutsResponse([B)V

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 755
    :pswitch_23e
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;

    .line 756
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAuthResponse(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;)V

    .line 757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 748
    :pswitch_24e
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAuthFailure()V

    .line 749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 741
    :pswitch_256
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimGsmAuthParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimGsmAuthParams;

    .line 742
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->sendNetworkEapSimGsmAuthResponse([Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimGsmAuthParams;)V

    .line 743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 734
    :pswitch_266
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->sendNetworkEapSimGsmAuthFailure()V

    .line 735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 725
    :pswitch_26e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 728
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->sendNetworkEapIdentityResponse([B[B)V

    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 718
    :pswitch_27e
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->select()V

    .line 719
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 711
    :pswitch_286
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;

    move-result-object p1

    .line 712
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;)V

    .line 713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_48a

    .line 703
    :pswitch_296
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getWpsNfcConfigurationToken()[B

    move-result-object p0

    .line 704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_48a

    .line 696
    :pswitch_2a2
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getWepTxKeyIdx()I

    move-result p0

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_48a

    .line 688
    :pswitch_2ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 689
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getWepKey(I)[B

    move-result-object p0

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_48a

    .line 680
    :pswitch_2be
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getWapiCertSuite()Ljava/lang/String;

    move-result-object p0

    .line 681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_48a

    .line 673
    :pswitch_2ca
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getType()I

    move-result p0

    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_48a

    .line 666
    :pswitch_2d6
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getSsid()[B

    move-result-object p0

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_48a

    .line 659
    :pswitch_2e2
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getScanSsid()Z

    move-result p0

    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_48a

    .line 652
    :pswitch_2ee
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getSaePasswordId()Ljava/lang/String;

    move-result-object p0

    .line 653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_48a

    .line 645
    :pswitch_2fa
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getSaePassword()Ljava/lang/String;

    move-result-object p0

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_48a

    .line 638
    :pswitch_306
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getRequirePmf()Z

    move-result p0

    .line 639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_48a

    .line 631
    :pswitch_312
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getPskPassphrase()Ljava/lang/String;

    move-result-object p0

    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_48a

    .line 624
    :pswitch_31e
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getPsk()[B

    move-result-object p0

    .line 625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_48a

    .line 617
    :pswitch_32a
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getProto()I

    move-result p0

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_48a

    .line 610
    :pswitch_336
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getPairwiseCipher()I

    move-result p0

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_48a

    .line 603
    :pswitch_342
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getOcsp()I

    move-result p0

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_48a

    .line 596
    :pswitch_34e
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getKeyMgmt()I

    move-result p0

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_48a

    .line 589
    :pswitch_35a
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_48a

    .line 582
    :pswitch_366
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getIdStr()Ljava/lang/String;

    move-result-object p0

    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_48a

    .line 575
    :pswitch_372
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getId()I

    move-result p0

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_48a

    .line 568
    :pswitch_37e
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getGroupMgmtCipher()I

    move-result p0

    .line 569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_48a

    .line 561
    :pswitch_38a
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getGroupCipher()I

    move-result p0

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_48a

    .line 554
    :pswitch_396
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEdmg()Z

    move-result p0

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_48a

    .line 547
    :pswitch_3a2
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapSubjectMatch()Ljava/lang/String;

    move-result-object p0

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_48a

    .line 540
    :pswitch_3ae
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapPrivateKeyId()Ljava/lang/String;

    move-result-object p0

    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_48a

    .line 533
    :pswitch_3ba
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapPhase2Method()I

    move-result p0

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_48a

    .line 526
    :pswitch_3c6
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapPassword()[B

    move-result-object p0

    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_48a

    .line 519
    :pswitch_3d2
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapMethod()I

    move-result p0

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_48a

    .line 512
    :pswitch_3de
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapIdentity()[B

    move-result-object p0

    .line 513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_48a

    .line 505
    :pswitch_3ea
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapEngineId()Ljava/lang/String;

    move-result-object p0

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_48a

    .line 498
    :pswitch_3f6
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapEngine()Z

    move-result p0

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_48a

    .line 491
    :pswitch_402
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapDomainSuffixMatch()Ljava/lang/String;

    move-result-object p0

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_48a

    .line 484
    :pswitch_40e
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapClientCert()Ljava/lang/String;

    move-result-object p0

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_48a

    .line 477
    :pswitch_41a
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapCAPath()Ljava/lang/String;

    move-result-object p0

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_48a

    .line 470
    :pswitch_425
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapCACert()Ljava/lang/String;

    move-result-object p0

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_48a

    .line 463
    :pswitch_430
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapAnonymousIdentity()[B

    move-result-object p0

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_48a

    .line 456
    :pswitch_43b
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getEapAltSubjectMatch()Ljava/lang/String;

    move-result-object p0

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_48a

    .line 449
    :pswitch_446
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getBssid()[B

    move-result-object p0

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_48a

    .line 442
    :pswitch_451
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->getAuthAlg()I

    move-result p0

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_48a

    .line 435
    :pswitch_45c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 436
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->enableTlsSuiteBEapPhase1Param(Z)V

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_48a

    .line 428
    :pswitch_467
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->enableSuiteBEapOpenSslCiphers()V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_48a

    .line 421
    :pswitch_46e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 422
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->enableSaePkOnlyMode(Z)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_48a

    .line 413
    :pswitch_479
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 414
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->enable(Z)V

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_48a

    .line 406
    :pswitch_484
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->disable()V

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_48a
    return v1

    nop

    :sswitch_data_48c
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_49a
    .packed-switch 0x1
        :pswitch_484
        :pswitch_479
        :pswitch_46e
        :pswitch_467
        :pswitch_45c
        :pswitch_451
        :pswitch_446
        :pswitch_43b
        :pswitch_430
        :pswitch_425
        :pswitch_41a
        :pswitch_40e
        :pswitch_402
        :pswitch_3f6
        :pswitch_3ea
        :pswitch_3de
        :pswitch_3d2
        :pswitch_3c6
        :pswitch_3ba
        :pswitch_3ae
        :pswitch_3a2
        :pswitch_396
        :pswitch_38a
        :pswitch_37e
        :pswitch_372
        :pswitch_366
        :pswitch_35a
        :pswitch_34e
        :pswitch_342
        :pswitch_336
        :pswitch_32a
        :pswitch_31e
        :pswitch_312
        :pswitch_306
        :pswitch_2fa
        :pswitch_2ee
        :pswitch_2e2
        :pswitch_2d6
        :pswitch_2ca
        :pswitch_2be
        :pswitch_2ae
        :pswitch_2a2
        :pswitch_296
        :pswitch_286
        :pswitch_27e
        :pswitch_26e
        :pswitch_266
        :pswitch_256
        :pswitch_24e
        :pswitch_23e
        :pswitch_232
        :pswitch_226
        :pswitch_21a
        :pswitch_20a
        :pswitch_1fe
        :pswitch_1f2
        :pswitch_1e6
        :pswitch_1da
        :pswitch_1ce
        :pswitch_1c2
        :pswitch_1b6
        :pswitch_1aa
        :pswitch_19e
        :pswitch_192
        :pswitch_186
        :pswitch_17a
        :pswitch_16e
        :pswitch_162
        :pswitch_156
        :pswitch_14a
        :pswitch_13e
        :pswitch_132
        :pswitch_126
        :pswitch_11a
        :pswitch_10e
        :pswitch_102
        :pswitch_f6
        :pswitch_ea
        :pswitch_de
        :pswitch_d2
        :pswitch_c6
        :pswitch_ba
        :pswitch_ae
        :pswitch_a2
        :pswitch_96
        :pswitch_8a
        :pswitch_7e
        :pswitch_72
        :pswitch_66
        :pswitch_5a
        :pswitch_4a
        :pswitch_3e
        :pswitch_32
    .end packed-switch
.end method
