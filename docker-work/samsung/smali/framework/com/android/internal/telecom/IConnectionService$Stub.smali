.class public abstract Lcom/android/internal/telecom/IConnectionService$Stub;
.super Landroid/os/Binder;
.source "IConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionService"

.field static final greylist-max-o TRANSACTION_abort:I = 0x9

.field static final blacklist TRANSACTION_addConferenceParticipants:I = 0x1d

.field static final greylist-max-o TRANSACTION_addConnectionServiceAdapter:I = 0x1

.field static final greylist-max-o TRANSACTION_answer:I = 0xb

.field static final greylist-max-o TRANSACTION_answerVideo:I = 0xa

.field static final greylist-max-o TRANSACTION_conference:I = 0x19

.field static final greylist-max-o TRANSACTION_connectionServiceFocusGained:I = 0x27

.field static final greylist-max-o TRANSACTION_connectionServiceFocusLost:I = 0x26

.field static final blacklist TRANSACTION_consultativeTransfer:I = 0x11

.field static final blacklist TRANSACTION_createConference:I = 0x6

.field static final blacklist TRANSACTION_createConferenceComplete:I = 0x7

.field static final blacklist TRANSACTION_createConferenceFailed:I = 0x8

.field static final greylist-max-o TRANSACTION_createConnection:I = 0x3

.field static final greylist-max-o TRANSACTION_createConnectionComplete:I = 0x4

.field static final greylist-max-o TRANSACTION_createConnectionFailed:I = 0x5

.field static final greylist-max-o TRANSACTION_deflect:I = 0xc

.field static final greylist-max-o TRANSACTION_disconnect:I = 0x12

.field static final greylist-max-o TRANSACTION_handoverComplete:I = 0x29

.field static final greylist-max-o TRANSACTION_handoverFailed:I = 0x28

.field static final greylist-max-o TRANSACTION_hold:I = 0x14

.field static final greylist-max-o TRANSACTION_mergeConference:I = 0x1b

.field static final greylist-max-o TRANSACTION_onCallAudioStateChanged:I = 0x16

.field static final blacklist TRANSACTION_onCallFilteringCompleted:I = 0x21

.field static final greylist-max-o TRANSACTION_onExtrasChanged:I = 0x22

.field static final greylist-max-o TRANSACTION_onPostDialContinue:I = 0x1e

.field static final blacklist TRANSACTION_onTrackedByNonUiService:I = 0x2b

.field static final blacklist TRANSACTION_onUsingAlternativeUi:I = 0x2a

.field static final greylist-max-o TRANSACTION_playDtmfTone:I = 0x17

.field static final greylist-max-o TRANSACTION_pullExternalCall:I = 0x1f

.field static final greylist-max-o TRANSACTION_reject:I = 0xd

.field static final greylist-max-o TRANSACTION_rejectWithMessage:I = 0xf

.field static final blacklist TRANSACTION_rejectWithReason:I = 0xe

.field static final greylist-max-o TRANSACTION_removeConnectionServiceAdapter:I = 0x2

.field static final greylist-max-o TRANSACTION_respondToRttUpgradeRequest:I = 0x25

.field static final greylist-max-o TRANSACTION_sendCallEvent:I = 0x20

.field static final greylist-max-o TRANSACTION_silence:I = 0x13

.field static final greylist-max-o TRANSACTION_splitFromConference:I = 0x1a

.field static final greylist-max-o TRANSACTION_startRtt:I = 0x23

.field static final greylist-max-o TRANSACTION_stopDtmfTone:I = 0x18

.field static final greylist-max-o TRANSACTION_stopRtt:I = 0x24

.field static final greylist-max-o TRANSACTION_swapConference:I = 0x1c

.field static final blacklist TRANSACTION_transfer:I = 0x10

.field static final greylist-max-o TRANSACTION_unhold:I = 0x15


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 156
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 157
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 165
    if-nez p0, :cond_4

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_4
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 169
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionService;

    if-eqz v1, :cond_14

    .line 170
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IConnectionService;

    return-object v1

    .line 172
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 181
    packed-switch p0, :pswitch_data_a0

    .line 357
    const/4 v0, 0x0

    return-object v0

    .line 353
    :pswitch_5
    const-string/jumbo v0, "onTrackedByNonUiService"

    return-object v0

    .line 349
    :pswitch_9
    const-string/jumbo v0, "onUsingAlternativeUi"

    return-object v0

    .line 345
    :pswitch_d
    const-string/jumbo v0, "handoverComplete"

    return-object v0

    .line 341
    :pswitch_11
    const-string/jumbo v0, "handoverFailed"

    return-object v0

    .line 337
    :pswitch_15
    const-string v0, "connectionServiceFocusGained"

    return-object v0

    .line 333
    :pswitch_18
    const-string v0, "connectionServiceFocusLost"

    return-object v0

    .line 329
    :pswitch_1b
    const-string/jumbo v0, "respondToRttUpgradeRequest"

    return-object v0

    .line 325
    :pswitch_1f
    const-string/jumbo v0, "stopRtt"

    return-object v0

    .line 321
    :pswitch_23
    const-string/jumbo v0, "startRtt"

    return-object v0

    .line 317
    :pswitch_27
    const-string/jumbo v0, "onExtrasChanged"

    return-object v0

    .line 313
    :pswitch_2b
    const-string/jumbo v0, "onCallFilteringCompleted"

    return-object v0

    .line 309
    :pswitch_2f
    const-string/jumbo v0, "sendCallEvent"

    return-object v0

    .line 305
    :pswitch_33
    const-string/jumbo v0, "pullExternalCall"

    return-object v0

    .line 301
    :pswitch_37
    const-string/jumbo v0, "onPostDialContinue"

    return-object v0

    .line 297
    :pswitch_3b
    const-string v0, "addConferenceParticipants"

    return-object v0

    .line 293
    :pswitch_3e
    const-string/jumbo v0, "swapConference"

    return-object v0

    .line 289
    :pswitch_42
    const-string/jumbo v0, "mergeConference"

    return-object v0

    .line 285
    :pswitch_46
    const-string/jumbo v0, "splitFromConference"

    return-object v0

    .line 281
    :pswitch_4a
    const-string v0, "conference"

    return-object v0

    .line 277
    :pswitch_4d
    const-string/jumbo v0, "stopDtmfTone"

    return-object v0

    .line 273
    :pswitch_51
    const-string/jumbo v0, "playDtmfTone"

    return-object v0

    .line 269
    :pswitch_55
    const-string/jumbo v0, "onCallAudioStateChanged"

    return-object v0

    .line 265
    :pswitch_59
    const-string/jumbo v0, "unhold"

    return-object v0

    .line 261
    :pswitch_5d
    const-string/jumbo v0, "hold"

    return-object v0

    .line 257
    :pswitch_61
    const-string/jumbo v0, "silence"

    return-object v0

    .line 253
    :pswitch_65
    const-string v0, "disconnect"

    return-object v0

    .line 249
    :pswitch_68
    const-string v0, "consultativeTransfer"

    return-object v0

    .line 245
    :pswitch_6b
    const-string/jumbo v0, "transfer"

    return-object v0

    .line 241
    :pswitch_6f
    const-string/jumbo v0, "rejectWithMessage"

    return-object v0

    .line 237
    :pswitch_73
    const-string/jumbo v0, "rejectWithReason"

    return-object v0

    .line 233
    :pswitch_77
    const-string/jumbo v0, "reject"

    return-object v0

    .line 229
    :pswitch_7b
    const-string v0, "deflect"

    return-object v0

    .line 225
    :pswitch_7e
    const-string v0, "answer"

    return-object v0

    .line 221
    :pswitch_81
    const-string v0, "answerVideo"

    return-object v0

    .line 217
    :pswitch_84
    const-string v0, "abort"

    return-object v0

    .line 213
    :pswitch_87
    const-string v0, "createConferenceFailed"

    return-object v0

    .line 209
    :pswitch_8a
    const-string v0, "createConferenceComplete"

    return-object v0

    .line 205
    :pswitch_8d
    const-string v0, "createConference"

    return-object v0

    .line 201
    :pswitch_90
    const-string v0, "createConnectionFailed"

    return-object v0

    .line 197
    :pswitch_93
    const-string v0, "createConnectionComplete"

    return-object v0

    .line 193
    :pswitch_96
    const-string v0, "createConnection"

    return-object v0

    .line 189
    :pswitch_99
    const-string/jumbo v0, "removeConnectionServiceAdapter"

    return-object v0

    .line 185
    :pswitch_9d
    const-string v0, "addConnectionServiceAdapter"

    return-object v0

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 176
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1549
    const/16 v0, 0x2a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 364
    invoke-static {p1}, Lcom/android/internal/telecom/IConnectionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "com.android.internal.telecom.IConnectionService"

    .line 369
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_13

    const v0, 0xffffff

    if-gt v8, v0, :cond_13

    .line 370
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    :cond_13
    packed-switch v8, :pswitch_data_49c

    .line 380
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_4a2

    .line 886
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 376
    :pswitch_20
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    return v11

    .line 875
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 879
    .local v1, "_arg1":Z
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 880
    .local v2, "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 881
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->onTrackedByNonUiService(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 882
    goto/16 :goto_49b

    .line 863
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 865
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 867
    .restart local v1    # "_arg1":Z
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 868
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->onUsingAlternativeUi(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 870
    goto/16 :goto_49b

    .line 853
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 855
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 856
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->handoverComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 858
    goto/16 :goto_49b

    .line 839
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 841
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/ConnectionRequest;

    .line 843
    .local v1, "_arg1":Landroid/telecom/ConnectionRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 845
    .local v2, "_arg2":I
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 846
    .local v3, "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->handoverFailed(Ljava/lang/String;Landroid/telecom/ConnectionRequest;ILandroid/telecom/Logging/Session$Info;)V

    .line 848
    goto/16 :goto_49b

    .line 831
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/ConnectionRequest;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_8a
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session$Info;

    .line 832
    .local v0, "_arg0":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    invoke-virtual {v7, v0}, Lcom/android/internal/telecom/IConnectionService$Stub;->connectionServiceFocusGained(Landroid/telecom/Logging/Session$Info;)V

    .line 834
    goto/16 :goto_49b

    .line 823
    .end local v0    # "_arg0":Landroid/telecom/Logging/Session$Info;
    :pswitch_9a
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session$Info;

    .line 824
    .restart local v0    # "_arg0":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 825
    invoke-virtual {v7, v0}, Lcom/android/internal/telecom/IConnectionService$Stub;->connectionServiceFocusLost(Landroid/telecom/Logging/Session$Info;)V

    .line 826
    goto/16 :goto_49b

    .line 809
    .end local v0    # "_arg0":Landroid/telecom/Logging/Session$Info;
    :pswitch_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 813
    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 815
    .local v2, "_arg2":Landroid/os/ParcelFileDescriptor;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 816
    .restart local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 817
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->respondToRttUpgradeRequest(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    .line 818
    goto/16 :goto_49b

    .line 799
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 801
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 802
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopRtt(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 804
    goto/16 :goto_49b

    .line 785
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 787
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 789
    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 791
    .restart local v2    # "_arg2":Landroid/os/ParcelFileDescriptor;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 792
    .restart local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->startRtt(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    .line 794
    goto/16 :goto_49b

    .line 773
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 775
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 777
    .local v1, "_arg1":Landroid/os/Bundle;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 778
    .local v2, "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 780
    goto/16 :goto_49b

    .line 761
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 763
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Connection$CallFilteringCompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$CallFilteringCompletionInfo;

    .line 765
    .local v1, "_arg1":Landroid/telecom/Connection$CallFilteringCompletionInfo;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 766
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 767
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->onCallFilteringCompleted(Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;Landroid/telecom/Logging/Session$Info;)V

    .line 768
    goto/16 :goto_49b

    .line 747
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Connection$CallFilteringCompletionInfo;
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_13e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 749
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 753
    .local v2, "_arg2":Landroid/os/Bundle;
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 754
    .restart local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 756
    goto/16 :goto_49b

    .line 737
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_15e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 739
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 740
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 741
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->pullExternalCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 742
    goto/16 :goto_49b

    .line 725
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 727
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 729
    .local v1, "_arg1":Z
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 730
    .local v2, "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 731
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->onPostDialContinue(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 732
    goto/16 :goto_49b

    .line 713
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_18a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 715
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 717
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 718
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V

    .line 720
    goto/16 :goto_49b

    .line 703
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_1a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 705
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 706
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->swapConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 708
    goto/16 :goto_49b

    .line 693
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_1b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 695
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 696
    .restart local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 697
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->mergeConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 698
    goto/16 :goto_49b

    .line 683
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_1cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 685
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 686
    .restart local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->splitFromConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 688
    goto/16 :goto_49b

    .line 671
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_1e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 673
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 676
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->conference(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 678
    goto/16 :goto_49b

    .line 661
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_1f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 663
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 664
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 665
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopDtmfTone(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 666
    goto/16 :goto_49b

    .line 649
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_20c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 651
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    .line 653
    .local v1, "_arg1":C
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 654
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->playDtmfTone(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V

    .line 656
    goto/16 :goto_49b

    .line 637
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":C
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 639
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallAudioState;

    .line 641
    .local v1, "_arg1":Landroid/telecom/CallAudioState;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 642
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;Landroid/telecom/Logging/Session$Info;)V

    .line 644
    goto/16 :goto_49b

    .line 627
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/CallAudioState;
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 630
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->unhold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 632
    goto/16 :goto_49b

    .line 617
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 619
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 620
    .restart local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->hold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 622
    goto/16 :goto_49b

    .line 607
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 609
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 610
    .restart local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->silence(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 612
    goto/16 :goto_49b

    .line 597
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_27d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 599
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 600
    .restart local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->disconnect(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 602
    goto/16 :goto_49b

    .line 585
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 587
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 590
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->consultativeTransfer(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 592
    goto/16 :goto_49b

    .line 571
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_2a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 573
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 575
    .local v1, "_arg1":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 577
    .local v2, "_arg2":Z
    sget-object v3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session$Info;

    .line 578
    .restart local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->transfer(Ljava/lang/String;Landroid/net/Uri;ZLandroid/telecom/Logging/Session$Info;)V

    .line 580
    goto/16 :goto_49b

    .line 559
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :pswitch_2c9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 561
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 564
    .local v2, "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->rejectWithMessage(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 566
    goto/16 :goto_49b

    .line 547
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_2e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 549
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 551
    .local v1, "_arg1":I
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 552
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->rejectWithReason(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 554
    goto/16 :goto_49b

    .line 537
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_2f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 539
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 540
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 541
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->reject(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 542
    goto/16 :goto_49b

    .line 525
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_30d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 527
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 529
    .local v1, "_arg1":Landroid/net/Uri;
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 530
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->deflect(Ljava/lang/String;Landroid/net/Uri;Landroid/telecom/Logging/Session$Info;)V

    .line 532
    goto/16 :goto_49b

    .line 515
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 518
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->answer(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 520
    goto/16 :goto_49b

    .line 503
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_33d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 505
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 507
    .local v1, "_arg1":I
    sget-object v2, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/Session$Info;

    .line 508
    .restart local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->answerVideo(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 510
    goto/16 :goto_49b

    .line 493
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :pswitch_355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 495
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 496
    .local v1, "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 497
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->abort(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 498
    goto/16 :goto_49b

    .line 477
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_369
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 479
    .local v6, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 481
    .local v13, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/telecom/ConnectionRequest;

    .line 483
    .local v14, "_arg2":Landroid/telecom/ConnectionRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 485
    .local v15, "_arg3":Z
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/telecom/Logging/Session$Info;

    .line 486
    .local v16, "_arg4":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConferenceFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZLandroid/telecom/Logging/Session$Info;)V

    .line 488
    goto/16 :goto_49b

    .line 467
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Landroid/telecom/ConnectionRequest;
    .end local v15    # "_arg3":Z
    .end local v16    # "_arg4":Landroid/telecom/Logging/Session$Info;
    :pswitch_39d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 469
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 470
    .restart local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConferenceComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 472
    goto/16 :goto_49b

    .line 449
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_3b1
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/telecom/PhoneAccountHandle;

    .line 451
    .local v13, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 453
    .local v14, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/telecom/ConnectionRequest;

    .line 455
    .local v15, "_arg2":Landroid/telecom/ConnectionRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 457
    .local v16, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 459
    .local v17, "_arg4":Z
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/telecom/Logging/Session$Info;

    .line 460
    .local v18, "_arg5":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V

    .line 462
    goto/16 :goto_49b

    .line 433
    .end local v13    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Landroid/telecom/ConnectionRequest;
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":Landroid/telecom/Logging/Session$Info;
    :pswitch_3ec
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 435
    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 437
    .local v13, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/telecom/ConnectionRequest;

    .line 439
    .local v14, "_arg2":Landroid/telecom/ConnectionRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 441
    .local v15, "_arg3":Z
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/telecom/Logging/Session$Info;

    .line 442
    .local v16, "_arg4":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZLandroid/telecom/Logging/Session$Info;)V

    .line 444
    goto/16 :goto_49b

    .line 423
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Landroid/telecom/ConnectionRequest;
    .end local v15    # "_arg3":Z
    .end local v16    # "_arg4":Landroid/telecom/Logging/Session$Info;
    :pswitch_420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 425
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 426
    .restart local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnectionComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 428
    goto :goto_49b

    .line 405
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_433
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/telecom/PhoneAccountHandle;

    .line 407
    .local v13, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 409
    .local v14, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/telecom/ConnectionRequest;

    .line 411
    .local v15, "_arg2":Landroid/telecom/ConnectionRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 413
    .local v16, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 415
    .restart local v17    # "_arg4":Z
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/telecom/Logging/Session$Info;

    .line 416
    .restart local v18    # "_arg5":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V

    .line 418
    goto :goto_49b

    .line 395
    .end local v13    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Landroid/telecom/ConnectionRequest;
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":Landroid/telecom/Logging/Session$Info;
    :pswitch_46d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    .line 397
    .local v0, "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 398
    .restart local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    .line 400
    goto :goto_49b

    .line 385
    .end local v0    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :pswitch_484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    .line 387
    .restart local v0    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    sget-object v1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session$Info;

    .line 388
    .restart local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    .line 390
    nop

    .line 889
    .end local v0    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v1    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :goto_49b
    return v11

    :pswitch_data_49c
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_4a2
    .packed-switch 0x1
        :pswitch_484
        :pswitch_46d
        :pswitch_433
        :pswitch_420
        :pswitch_3ec
        :pswitch_3b1
        :pswitch_39d
        :pswitch_369
        :pswitch_355
        :pswitch_33d
        :pswitch_329
        :pswitch_30d
        :pswitch_2f9
        :pswitch_2e1
        :pswitch_2c9
        :pswitch_2a9
        :pswitch_291
        :pswitch_27d
        :pswitch_269
        :pswitch_255
        :pswitch_241
        :pswitch_225
        :pswitch_20c
        :pswitch_1f8
        :pswitch_1e0
        :pswitch_1cc
        :pswitch_1b8
        :pswitch_1a4
        :pswitch_18a
        :pswitch_172
        :pswitch_15e
        :pswitch_13e
        :pswitch_122
        :pswitch_106
        :pswitch_e2
        :pswitch_ce
        :pswitch_aa
        :pswitch_9a
        :pswitch_8a
        :pswitch_6a
        :pswitch_56
        :pswitch_3e
        :pswitch_26
    .end packed-switch
.end method
