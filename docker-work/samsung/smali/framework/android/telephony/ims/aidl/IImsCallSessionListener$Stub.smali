.class public abstract Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "IImsCallSessionListener.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_callQualityChanged:I = 0x2c

.field static final blacklist TRANSACTION_callSessionCancelTransferFailed:I = 0x29

.field static final blacklist TRANSACTION_callSessionCancelTransferred:I = 0x28

.field static final blacklist TRANSACTION_callSessionConferenceExtendFailed:I = 0x14

.field static final blacklist TRANSACTION_callSessionConferenceExtendReceived:I = 0x15

.field static final blacklist TRANSACTION_callSessionConferenceExtended:I = 0x13

.field static final blacklist TRANSACTION_callSessionConferenceStateUpdated:I = 0x1a

.field static final blacklist TRANSACTION_callSessionDtmfReceived:I = 0x2b

.field static final blacklist TRANSACTION_callSessionHandover:I = 0x1c

.field static final blacklist TRANSACTION_callSessionHandoverFailed:I = 0x1d

.field static final blacklist TRANSACTION_callSessionHeld:I = 0x7

.field static final blacklist TRANSACTION_callSessionHoldFailed:I = 0x8

.field static final blacklist TRANSACTION_callSessionHoldReceived:I = 0x9

.field static final blacklist TRANSACTION_callSessionImsCallEvent:I = 0x2a

.field static final blacklist TRANSACTION_callSessionInitiated:I = 0x4

.field static final blacklist TRANSACTION_callSessionInitiatedFailed:I = 0x5

.field static final blacklist TRANSACTION_callSessionInitiating:I = 0x1

.field static final blacklist TRANSACTION_callSessionInitiatingFailed:I = 0x2

.field static final blacklist TRANSACTION_callSessionInviteParticipantsRequestDelivered:I = 0x16

.field static final blacklist TRANSACTION_callSessionInviteParticipantsRequestFailed:I = 0x17

.field static final blacklist TRANSACTION_callSessionMayHandover:I = 0x1e

.field static final blacklist TRANSACTION_callSessionMergeComplete:I = 0xe

.field static final blacklist TRANSACTION_callSessionMergeFailed:I = 0xf

.field static final blacklist TRANSACTION_callSessionMergeStarted:I = 0xd

.field static final blacklist TRANSACTION_callSessionMultipartyStateChanged:I = 0x20

.field static final blacklist TRANSACTION_callSessionProgressing:I = 0x3

.field static final blacklist TRANSACTION_callSessionRemoveParticipantsRequestDelivered:I = 0x18

.field static final blacklist TRANSACTION_callSessionRemoveParticipantsRequestFailed:I = 0x19

.field static final blacklist TRANSACTION_callSessionResumeFailed:I = 0xb

.field static final blacklist TRANSACTION_callSessionResumeReceived:I = 0xc

.field static final blacklist TRANSACTION_callSessionResumed:I = 0xa

.field static final blacklist TRANSACTION_callSessionRtpHeaderExtensionsReceived:I = 0x2d

.field static final blacklist TRANSACTION_callSessionRttAudioIndicatorChanged:I = 0x25

.field static final blacklist TRANSACTION_callSessionRttMessageReceived:I = 0x24

.field static final blacklist TRANSACTION_callSessionRttModifyRequestReceived:I = 0x22

.field static final blacklist TRANSACTION_callSessionRttModifyResponseReceived:I = 0x23

.field static final blacklist TRANSACTION_callSessionSuppServiceReceived:I = 0x21

.field static final blacklist TRANSACTION_callSessionTerminated:I = 0x6

.field static final blacklist TRANSACTION_callSessionTransferFailed:I = 0x27

.field static final blacklist TRANSACTION_callSessionTransferred:I = 0x26

.field static final blacklist TRANSACTION_callSessionTtyModeReceived:I = 0x1f

.field static final blacklist TRANSACTION_callSessionUpdateFailed:I = 0x11

.field static final blacklist TRANSACTION_callSessionUpdateReceived:I = 0x12

.field static final blacklist TRANSACTION_callSessionUpdated:I = 0x10

.field static final blacklist TRANSACTION_callSessionUssdMessageReceived:I = 0x1b


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 216
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 217
    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 225
    if-nez p0, :cond_4

    .line 226
    const/4 v0, 0x0

    return-object v0

    .line 228
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 229
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_14

    .line 230
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsCallSessionListener;

    return-object v1

    .line 232
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 241
    packed-switch p0, :pswitch_data_8c

    .line 425
    const/4 v0, 0x0

    return-object v0

    .line 421
    :pswitch_5
    const-string v0, "callSessionRtpHeaderExtensionsReceived"

    return-object v0

    .line 417
    :pswitch_8
    const-string v0, "callQualityChanged"

    return-object v0

    .line 413
    :pswitch_b
    const-string v0, "callSessionDtmfReceived"

    return-object v0

    .line 409
    :pswitch_e
    const-string v0, "callSessionImsCallEvent"

    return-object v0

    .line 405
    :pswitch_11
    const-string v0, "callSessionCancelTransferFailed"

    return-object v0

    .line 401
    :pswitch_14
    const-string v0, "callSessionCancelTransferred"

    return-object v0

    .line 397
    :pswitch_17
    const-string v0, "callSessionTransferFailed"

    return-object v0

    .line 393
    :pswitch_1a
    const-string v0, "callSessionTransferred"

    return-object v0

    .line 389
    :pswitch_1d
    const-string v0, "callSessionRttAudioIndicatorChanged"

    return-object v0

    .line 385
    :pswitch_20
    const-string v0, "callSessionRttMessageReceived"

    return-object v0

    .line 381
    :pswitch_23
    const-string v0, "callSessionRttModifyResponseReceived"

    return-object v0

    .line 377
    :pswitch_26
    const-string v0, "callSessionRttModifyRequestReceived"

    return-object v0

    .line 373
    :pswitch_29
    const-string v0, "callSessionSuppServiceReceived"

    return-object v0

    .line 369
    :pswitch_2c
    const-string v0, "callSessionMultipartyStateChanged"

    return-object v0

    .line 365
    :pswitch_2f
    const-string v0, "callSessionTtyModeReceived"

    return-object v0

    .line 361
    :pswitch_32
    const-string v0, "callSessionMayHandover"

    return-object v0

    .line 357
    :pswitch_35
    const-string v0, "callSessionHandoverFailed"

    return-object v0

    .line 353
    :pswitch_38
    const-string v0, "callSessionHandover"

    return-object v0

    .line 349
    :pswitch_3b
    const-string v0, "callSessionUssdMessageReceived"

    return-object v0

    .line 345
    :pswitch_3e
    const-string v0, "callSessionConferenceStateUpdated"

    return-object v0

    .line 341
    :pswitch_41
    const-string v0, "callSessionRemoveParticipantsRequestFailed"

    return-object v0

    .line 337
    :pswitch_44
    const-string v0, "callSessionRemoveParticipantsRequestDelivered"

    return-object v0

    .line 333
    :pswitch_47
    const-string v0, "callSessionInviteParticipantsRequestFailed"

    return-object v0

    .line 329
    :pswitch_4a
    const-string v0, "callSessionInviteParticipantsRequestDelivered"

    return-object v0

    .line 325
    :pswitch_4d
    const-string v0, "callSessionConferenceExtendReceived"

    return-object v0

    .line 321
    :pswitch_50
    const-string v0, "callSessionConferenceExtendFailed"

    return-object v0

    .line 317
    :pswitch_53
    const-string v0, "callSessionConferenceExtended"

    return-object v0

    .line 313
    :pswitch_56
    const-string v0, "callSessionUpdateReceived"

    return-object v0

    .line 309
    :pswitch_59
    const-string v0, "callSessionUpdateFailed"

    return-object v0

    .line 305
    :pswitch_5c
    const-string v0, "callSessionUpdated"

    return-object v0

    .line 301
    :pswitch_5f
    const-string v0, "callSessionMergeFailed"

    return-object v0

    .line 297
    :pswitch_62
    const-string v0, "callSessionMergeComplete"

    return-object v0

    .line 293
    :pswitch_65
    const-string v0, "callSessionMergeStarted"

    return-object v0

    .line 289
    :pswitch_68
    const-string v0, "callSessionResumeReceived"

    return-object v0

    .line 285
    :pswitch_6b
    const-string v0, "callSessionResumeFailed"

    return-object v0

    .line 281
    :pswitch_6e
    const-string v0, "callSessionResumed"

    return-object v0

    .line 277
    :pswitch_71
    const-string v0, "callSessionHoldReceived"

    return-object v0

    .line 273
    :pswitch_74
    const-string v0, "callSessionHoldFailed"

    return-object v0

    .line 269
    :pswitch_77
    const-string v0, "callSessionHeld"

    return-object v0

    .line 265
    :pswitch_7a
    const-string v0, "callSessionTerminated"

    return-object v0

    .line 261
    :pswitch_7d
    const-string v0, "callSessionInitiatedFailed"

    return-object v0

    .line 257
    :pswitch_80
    const-string v0, "callSessionInitiated"

    return-object v0

    .line 253
    :pswitch_83
    const-string v0, "callSessionProgressing"

    return-object v0

    .line 249
    :pswitch_86
    const-string v0, "callSessionInitiatingFailed"

    return-object v0

    .line 245
    :pswitch_89
    const-string v0, "callSessionInitiating"

    return-object v0

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 236
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1669
    const/16 v0, 0x2c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 432
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    .line 437
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 438
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    :cond_d
    packed-switch p1, :pswitch_data_358

    .line 448
    packed-switch p1, :pswitch_data_35e

    .line 865
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 444
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    return v1

    .line 857
    :pswitch_1c
    sget-object v2, Landroid/telephony/ims/RtpHeaderExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 858
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtension;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 859
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRtpHeaderExtensionsReceived(Ljava/util/List;)V

    .line 860
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    goto/16 :goto_357

    .line 848
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtension;>;"
    :pswitch_2d
    sget-object v2, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CallQuality;

    .line 849
    .local v2, "_arg0":Landroid/telephony/CallQuality;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 850
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callQualityChanged(Landroid/telephony/CallQuality;)V

    .line 851
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    goto/16 :goto_357

    .line 839
    .end local v2    # "_arg0":Landroid/telephony/CallQuality;
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    .line 840
    .local v2, "_arg0":C
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 841
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionDtmfReceived(C)V

    .line 842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    goto/16 :goto_357

    .line 828
    .end local v2    # "_arg0":C
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 830
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 831
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    goto/16 :goto_357

    .line 819
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_67
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 820
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionCancelTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    goto/16 :goto_357

    .line 812
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_7a
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionCancelTransferred()V

    .line 813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    goto/16 :goto_357

    .line 804
    :pswitch_82
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 805
    .restart local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 807
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    goto/16 :goto_357

    .line 797
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_95
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTransferred()V

    .line 798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    goto/16 :goto_357

    .line 789
    :pswitch_9d
    sget-object v2, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 790
    .local v2, "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    goto/16 :goto_357

    .line 780
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 781
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    goto/16 :goto_357

    .line 771
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 772
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttModifyResponseReceived(I)V

    .line 774
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    goto/16 :goto_357

    .line 762
    .end local v2    # "_arg0":I
    :pswitch_ce
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 763
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    goto/16 :goto_357

    .line 753
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_e1
    sget-object v2, Landroid/telephony/ims/ImsSuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 754
    .local v2, "_arg0":Landroid/telephony/ims/ImsSuppServiceNotification;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 756
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    goto/16 :goto_357

    .line 744
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsSuppServiceNotification;
    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 745
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMultipartyStateChanged(Z)V

    .line 747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    goto/16 :goto_357

    .line 735
    .end local v2    # "_arg0":Z
    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 736
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTtyModeReceived(I)V

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    goto/16 :goto_357

    .line 724
    .end local v2    # "_arg0":I
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 726
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 727
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMayHandover(II)V

    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    goto/16 :goto_357

    .line 711
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 713
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 715
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 716
    .local v4, "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    goto/16 :goto_357

    .line 698
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 700
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 702
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 703
    .restart local v4    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    goto/16 :goto_357

    .line 687
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_15b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 689
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 690
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    goto/16 :goto_357

    .line 678
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_16e
    sget-object v2, Landroid/telephony/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsConferenceState;

    .line 679
    .local v2, "_arg0":Landroid/telephony/ims/ImsConferenceState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    goto/16 :goto_357

    .line 669
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsConferenceState;
    :pswitch_181
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 670
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 671
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    goto/16 :goto_357

    .line 662
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_194
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestDelivered()V

    .line 663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    goto/16 :goto_357

    .line 654
    :pswitch_19c
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 655
    .restart local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    goto/16 :goto_357

    .line 647
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_1af
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestDelivered()V

    .line 648
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    goto/16 :goto_357

    .line 637
    :pswitch_1b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 639
    .local v2, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 640
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    goto/16 :goto_357

    .line 628
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1d2
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 629
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    goto/16 :goto_357

    .line 617
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_1e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 619
    .local v2, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 620
    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    goto/16 :goto_357

    .line 608
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_200
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 609
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    goto/16 :goto_357

    .line 599
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_213
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 600
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    goto/16 :goto_357

    .line 590
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_226
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 591
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    goto/16 :goto_357

    .line 581
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_239
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 582
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    goto/16 :goto_357

    .line 572
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_24c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 573
    .local v2, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    goto/16 :goto_357

    .line 561
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_25f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 563
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 564
    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    goto/16 :goto_357

    .line 552
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_27a
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 553
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    goto/16 :goto_357

    .line 543
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_28d
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 544
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    goto/16 :goto_357

    .line 534
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_2a0
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 535
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    goto/16 :goto_357

    .line 525
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_2b3
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 526
    .restart local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    goto/16 :goto_357

    .line 516
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_2c6
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 517
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    goto/16 :goto_357

    .line 507
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_2d9
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 508
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    goto :goto_357

    .line 498
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_2eb
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 499
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    goto :goto_357

    .line 489
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_2fd
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 490
    .restart local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    goto :goto_357

    .line 480
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_30f
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 481
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    goto :goto_357

    .line 471
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_321
    sget-object v2, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 472
    .local v2, "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    goto :goto_357

    .line 462
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_333
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 463
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    goto :goto_357

    .line 453
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_345
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 454
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    nop

    .line 868
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :goto_357
    return v1

    :pswitch_data_358
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_35e
    .packed-switch 0x1
        :pswitch_345
        :pswitch_333
        :pswitch_321
        :pswitch_30f
        :pswitch_2fd
        :pswitch_2eb
        :pswitch_2d9
        :pswitch_2c6
        :pswitch_2b3
        :pswitch_2a0
        :pswitch_28d
        :pswitch_27a
        :pswitch_25f
        :pswitch_24c
        :pswitch_239
        :pswitch_226
        :pswitch_213
        :pswitch_200
        :pswitch_1e5
        :pswitch_1d2
        :pswitch_1b7
        :pswitch_1af
        :pswitch_19c
        :pswitch_194
        :pswitch_181
        :pswitch_16e
        :pswitch_15b
        :pswitch_140
        :pswitch_125
        :pswitch_112
        :pswitch_103
        :pswitch_f4
        :pswitch_e1
        :pswitch_ce
        :pswitch_bf
        :pswitch_b0
        :pswitch_9d
        :pswitch_95
        :pswitch_82
        :pswitch_7a
        :pswitch_67
        :pswitch_50
        :pswitch_40
        :pswitch_2d
        :pswitch_1c
    .end packed-switch
.end method
