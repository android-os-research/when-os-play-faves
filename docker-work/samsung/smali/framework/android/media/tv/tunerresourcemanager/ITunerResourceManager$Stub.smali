.class public abstract Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;
.super Landroid/os/Binder;
.source "ITunerResourceManager.java"

# interfaces
.implements Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquireLock:I = 0x1d

.field static final blacklist TRANSACTION_clearResourceMap:I = 0x1b

.field static final blacklist TRANSACTION_getClientPriority:I = 0x1f

.field static final blacklist TRANSACTION_getConfigPriority:I = 0x20

.field static final blacklist TRANSACTION_getMaxNumberOfFrontends:I = 0xb

.field static final blacklist TRANSACTION_hasUnusedFrontend:I = 0x4

.field static final blacklist TRANSACTION_isHigherPriority:I = 0x19

.field static final blacklist TRANSACTION_isLowestPriority:I = 0x5

.field static final blacklist TRANSACTION_registerClientProfile:I = 0x1

.field static final blacklist TRANSACTION_releaseCasSession:I = 0x16

.field static final blacklist TRANSACTION_releaseCiCam:I = 0x17

.field static final blacklist TRANSACTION_releaseDemux:I = 0x14

.field static final blacklist TRANSACTION_releaseDescrambler:I = 0x15

.field static final blacklist TRANSACTION_releaseFrontend:I = 0x13

.field static final blacklist TRANSACTION_releaseLnb:I = 0x18

.field static final blacklist TRANSACTION_releaseLock:I = 0x1e

.field static final blacklist TRANSACTION_requestCasSession:I = 0x10

.field static final blacklist TRANSACTION_requestCiCam:I = 0x11

.field static final blacklist TRANSACTION_requestDemux:I = 0xe

.field static final blacklist TRANSACTION_requestDescrambler:I = 0xf

.field static final blacklist TRANSACTION_requestFrontend:I = 0x9

.field static final blacklist TRANSACTION_requestLnb:I = 0x12

.field static final blacklist TRANSACTION_restoreResourceMap:I = 0x1c

.field static final blacklist TRANSACTION_setFrontendInfoList:I = 0x6

.field static final blacklist TRANSACTION_setLnbInfoList:I = 0x8

.field static final blacklist TRANSACTION_setMaxNumberOfFrontends:I = 0xa

.field static final blacklist TRANSACTION_shareFrontend:I = 0xc

.field static final blacklist TRANSACTION_storeResourceMap:I = 0x1a

.field static final blacklist TRANSACTION_transferOwner:I = 0xd

.field static final blacklist TRANSACTION_unregisterClientProfile:I = 0x2

.field static final blacklist TRANSACTION_updateCasInfo:I = 0x7

.field static final blacklist TRANSACTION_updateClientPriority:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 543
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 544
    sget-object v0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 552
    if-nez p0, :cond_4

    .line 553
    const/4 v0, 0x0

    return-object v0

    .line 555
    :cond_4
    sget-object v0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 556
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    if-eqz v1, :cond_14

    .line 557
    move-object v1, v0

    check-cast v1, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    return-object v1

    .line 559
    :cond_14
    new-instance v1, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 563
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 567
    sget-object v0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 568
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 569
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    :cond_d
    packed-switch p1, :pswitch_data_310

    .line 579
    packed-switch p1, :pswitch_data_316

    .line 982
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 575
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 576
    return v1

    .line 971
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 973
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 974
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->getConfigPriority(IZ)I

    move-result v4

    .line 976
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    goto/16 :goto_30e

    .line 959
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 961
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 962
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->getClientPriority(II)I

    move-result v4

    .line 964
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 966
    goto/16 :goto_30e

    .line 949
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 950
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 951
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseLock(I)Z

    move-result v3

    .line 952
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 954
    goto/16 :goto_30e

    .line 937
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 939
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 940
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->acquireLock(IJ)Z

    move-result v5

    .line 942
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 944
    goto/16 :goto_30e

    .line 928
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 929
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 930
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->restoreResourceMap(I)V

    .line 931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    goto/16 :goto_30e

    .line 919
    .end local v2    # "_arg0":I
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 920
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->clearResourceMap(I)V

    .line 922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    goto/16 :goto_30e

    .line 910
    .end local v2    # "_arg0":I
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 911
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->storeResourceMap(I)V

    .line 913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    goto/16 :goto_30e

    .line 898
    .end local v2    # "_arg0":I
    :pswitch_a1
    sget-object v2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    .line 900
    .local v2, "_arg0":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    sget-object v3, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    .line 901
    .local v3, "_arg1":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 902
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z

    move-result v4

    .line 903
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 905
    goto/16 :goto_30e

    .line 887
    .end local v2    # "_arg0":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .end local v3    # "_arg1":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .end local v4    # "_result":Z
    :pswitch_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 889
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 890
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseLnb(II)V

    .line 892
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    goto/16 :goto_30e

    .line 876
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 878
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 879
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 880
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseCiCam(II)V

    .line 881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    goto/16 :goto_30e

    .line 865
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 867
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 868
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseCasSession(II)V

    .line 870
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    goto/16 :goto_30e

    .line 854
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 856
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 857
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseDescrambler(II)V

    .line 859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    goto/16 :goto_30e

    .line 843
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 845
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 846
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseDemux(II)V

    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    goto/16 :goto_30e

    .line 832
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_11f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 834
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 835
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseFrontend(II)V

    .line 837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    goto/16 :goto_30e

    .line 814
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_132
    sget-object v2, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;

    .line 816
    .local v2, "_arg0":Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 817
    .local v3, "_arg1_length":I
    if-gez v3, :cond_142

    .line 818
    const/4 v4, 0x0

    .local v4, "_arg1":[I
    goto :goto_144

    .line 820
    .end local v4    # "_arg1":[I
    :cond_142
    new-array v4, v3, [I

    .line 822
    .restart local v4    # "_arg1":[I
    :goto_144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {p0, v2, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z

    move-result v5

    .line 824
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 826
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 827
    goto/16 :goto_30e

    .line 796
    .end local v2    # "_arg0":Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;
    .end local v3    # "_arg1_length":I
    .end local v4    # "_arg1":[I
    .end local v5    # "_result":Z
    :pswitch_156
    sget-object v2, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;

    .line 798
    .local v2, "_arg0":Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 799
    .restart local v3    # "_arg1_length":I
    if-gez v3, :cond_166

    .line 800
    const/4 v4, 0x0

    .restart local v4    # "_arg1":[I
    goto :goto_168

    .line 802
    .end local v4    # "_arg1":[I
    :cond_166
    new-array v4, v3, [I

    .line 804
    .restart local v4    # "_arg1":[I
    :goto_168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 805
    invoke-virtual {p0, v2, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[I)Z

    move-result v5

    .line 806
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 808
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 809
    goto/16 :goto_30e

    .line 778
    .end local v2    # "_arg0":Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;
    .end local v3    # "_arg1_length":I
    .end local v4    # "_arg1":[I
    .end local v5    # "_result":Z
    :pswitch_17a
    sget-object v2, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;

    .line 780
    .local v2, "_arg0":Landroid/media/tv/tunerresourcemanager/CasSessionRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 781
    .restart local v3    # "_arg1_length":I
    if-gez v3, :cond_18a

    .line 782
    const/4 v4, 0x0

    .restart local v4    # "_arg1":[I
    goto :goto_18c

    .line 784
    .end local v4    # "_arg1":[I
    :cond_18a
    new-array v4, v3, [I

    .line 786
    .restart local v4    # "_arg1":[I
    :goto_18c
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, v2, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z

    move-result v5

    .line 788
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 790
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 791
    goto/16 :goto_30e

    .line 760
    .end local v2    # "_arg0":Landroid/media/tv/tunerresourcemanager/CasSessionRequest;
    .end local v3    # "_arg1_length":I
    .end local v4    # "_arg1":[I
    .end local v5    # "_result":Z
    :pswitch_19e
    sget-object v2, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;

    .line 762
    .local v2, "_arg0":Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 763
    .restart local v3    # "_arg1_length":I
    if-gez v3, :cond_1ae

    .line 764
    const/4 v4, 0x0

    .restart local v4    # "_arg1":[I
    goto :goto_1b0

    .line 766
    .end local v4    # "_arg1":[I
    :cond_1ae
    new-array v4, v3, [I

    .line 768
    .restart local v4    # "_arg1":[I
    :goto_1b0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {p0, v2, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z

    move-result v5

    .line 770
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 772
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 773
    goto/16 :goto_30e

    .line 742
    .end local v2    # "_arg0":Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    .end local v3    # "_arg1_length":I
    .end local v4    # "_arg1":[I
    .end local v5    # "_result":Z
    :pswitch_1c2
    sget-object v2, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;

    .line 744
    .local v2, "_arg0":Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 745
    .restart local v3    # "_arg1_length":I
    if-gez v3, :cond_1d2

    .line 746
    const/4 v4, 0x0

    .restart local v4    # "_arg1":[I
    goto :goto_1d4

    .line 748
    .end local v4    # "_arg1":[I
    :cond_1d2
    new-array v4, v3, [I

    .line 750
    .restart local v4    # "_arg1":[I
    :goto_1d4
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    invoke-virtual {p0, v2, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z

    move-result v5

    .line 752
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 754
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 755
    goto/16 :goto_30e

    .line 728
    .end local v2    # "_arg0":Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;
    .end local v3    # "_arg1_length":I
    .end local v4    # "_arg1":[I
    .end local v5    # "_result":Z
    :pswitch_1e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 730
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 732
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 733
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->transferOwner(III)Z

    move-result v5

    .line 735
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 737
    goto/16 :goto_30e

    .line 717
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 719
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 720
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->shareFrontend(II)V

    .line 722
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    goto/16 :goto_30e

    .line 707
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 708
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 709
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->getMaxNumberOfFrontends(I)I

    move-result v3

    .line 710
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    goto/16 :goto_30e

    .line 695
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 697
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 698
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 699
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->setMaxNumberOfFrontends(II)Z

    move-result v4

    .line 700
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 702
    goto/16 :goto_30e

    .line 677
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_23e
    sget-object v2, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;

    .line 679
    .local v2, "_arg0":Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 680
    .local v3, "_arg1_length":I
    if-gez v3, :cond_24e

    .line 681
    const/4 v4, 0x0

    .local v4, "_arg1":[I
    goto :goto_250

    .line 683
    .end local v4    # "_arg1":[I
    :cond_24e
    new-array v4, v3, [I

    .line 685
    .restart local v4    # "_arg1":[I
    :goto_250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {p0, v2, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z

    move-result v5

    .line 687
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 689
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 690
    goto/16 :goto_30e

    .line 668
    .end local v2    # "_arg0":Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    .end local v3    # "_arg1_length":I
    .end local v4    # "_arg1":[I
    .end local v5    # "_result":Z
    :pswitch_262
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 669
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->setLnbInfoList([I)V

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    goto/16 :goto_30e

    .line 657
    .end local v2    # "_arg0":[I
    :pswitch_271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 659
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 660
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->updateCasInfo(II)V

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    goto/16 :goto_30e

    .line 648
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_284
    sget-object v2, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;

    .line 649
    .local v2, "_arg0":[Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 650
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V

    .line 651
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    goto/16 :goto_30e

    .line 636
    .end local v2    # "_arg0":[Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;
    :pswitch_297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 638
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 639
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->isLowestPriority(II)Z

    move-result v4

    .line 641
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 643
    goto :goto_30e

    .line 626
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_2ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 627
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->hasUnusedFrontend(I)Z

    move-result v3

    .line 629
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 631
    goto :goto_30e

    .line 612
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 614
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 616
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 617
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->updateClientPriority(III)Z

    move-result v5

    .line 619
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 621
    goto :goto_30e

    .line 603
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_2d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 604
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->unregisterClientProfile(I)V

    .line 606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    goto :goto_30e

    .line 584
    .end local v2    # "_arg0":I
    :pswitch_2e7
    sget-object v2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    .line 586
    .local v2, "_arg0":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    move-result-object v3

    .line 588
    .local v3, "_arg1":Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 589
    .local v4, "_arg2_length":I
    if-gez v4, :cond_2ff

    .line 590
    const/4 v5, 0x0

    .local v5, "_arg2":[I
    goto :goto_301

    .line 592
    .end local v5    # "_arg2":[I
    :cond_2ff
    new-array v5, v4, [I

    .line 594
    .restart local v5    # "_arg2":[I
    :goto_301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {p0, v2, v3, v5}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 598
    nop

    .line 985
    .end local v2    # "_arg0":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .end local v3    # "_arg1":Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
    .end local v4    # "_arg2_length":I
    .end local v5    # "_arg2":[I
    :goto_30e
    return v1

    nop

    :pswitch_data_310
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_316
    .packed-switch 0x1
        :pswitch_2e7
        :pswitch_2d9
        :pswitch_2bf
        :pswitch_2ad
        :pswitch_297
        :pswitch_284
        :pswitch_271
        :pswitch_262
        :pswitch_23e
        :pswitch_227
        :pswitch_214
        :pswitch_201
        :pswitch_1e6
        :pswitch_1c2
        :pswitch_19e
        :pswitch_17a
        :pswitch_156
        :pswitch_132
        :pswitch_11f
        :pswitch_10c
        :pswitch_f9
        :pswitch_e6
        :pswitch_d3
        :pswitch_c0
        :pswitch_a1
        :pswitch_92
        :pswitch_83
        :pswitch_74
        :pswitch_5d
        :pswitch_4a
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
