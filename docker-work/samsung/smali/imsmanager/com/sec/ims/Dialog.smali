.class public Lcom/sec/ims/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CALL_STATE_ACTIVE:I = 0x1

.field public static final CALL_STATE_HOLD:I = 0x2

.field public static final CALL_STATE_INVALID:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALOG_STATE_CONFIRMED:I = 0x2

.field public static final DIALOG_STATE_REJECTED:I = 0x4

.field public static final DIALOG_STATE_TERMINATED:I = 0x3

.field public static final DIALOG_STATE_TRYING:I = 0x1

.field public static final DIALOG_STATE_UNKNOWN:I = 0x0

.field public static final DIRECTION_INITIATOR:I = 0x0

.field public static final DIRECTION_RECIPIENT:I = 0x1

.field public static final MEDIA_DIRECTION_INACTIVE:I = 0x0

.field public static final MEDIA_DIRECTION_RECVONLY:I = 0x2

.field public static final MEDIA_DIRECTION_SENDONLY:I = 0x1

.field public static final MEDIA_DIRECTION_SENDRECV:I = 0x3

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_DIALING:I = 0x4

.field public static final STATE_DISCONNECTED:I = 0x2

.field public static final STATE_REJECTED:I = 0x3

.field public static final STATE_RINGING:I


# instance fields
.field private mAudioDirection:I

.field private mCallSlot:I

.field private mCallState:I

.field private mCallType:I

.field private mDeviceId:Ljava/lang/String;

.field private mDialogId:Ljava/lang/String;

.field private mDirection:I

.field private mIsExclusive:Z

.field private mIsPullAvailable:Z

.field private mIsVideoPortZero:Z

.field private mLocalDispName:Ljava/lang/String;

.field private mLocalUri:Ljava/lang/String;

.field private mMdmnExtNumber:Ljava/lang/String;

.field private mRemoteDispName:Ljava/lang/String;

.field private mRemoteUri:Ljava/lang/String;

.field private mSessionDescription:Ljava/lang/String;

.field private mSipCallId:Ljava/lang/String;

.field private mSipLocalTag:Ljava/lang/String;

.field private mSipRemoteTag:Ljava/lang/String;

.field private mState:I

.field private mVideoDirection:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 296
    new-instance v0, Lcom/sec/ims/Dialog$1;

    invoke-direct {v0}, Lcom/sec/ims/Dialog$1;-><init>()V

    sput-object v0, Lcom/sec/ims/Dialog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mDialogId:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mDeviceId:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mSipCallId:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mSipLocalTag:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mSipRemoteTag:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mLocalUri:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mRemoteUri:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mLocalDispName:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mRemoteDispName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mMdmnExtNumber:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mSessionDescription:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/Dialog;->mState:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/Dialog;->mDirection:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/Dialog;->mCallType:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/Dialog;->mCallState:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/Dialog;->mCallSlot:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/Dialog;->mAudioDirection:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/Dialog;->mVideoDirection:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_79

    move v0, v2

    goto :goto_7a

    :cond_79
    move v0, v1

    :goto_7a
    iput-boolean v0, p0, Lcom/sec/ims/Dialog;->mIsExclusive:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_84

    move v0, v2

    goto :goto_85

    :cond_84
    move v0, v1

    :goto_85
    iput-boolean v0, p0, Lcom/sec/ims/Dialog;->mIsPullAvailable:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_8e

    move v1, v2

    :cond_8e
    iput-boolean v1, p0, Lcom/sec/ims/Dialog;->mIsVideoPortZero:Z

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/Dialog-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/Dialog;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)V
    .registers 36
    .param p1, "dialogId"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "sipCallId"    # Ljava/lang/String;
    .param p4, "sipLocalTag"    # Ljava/lang/String;
    .param p5, "sipRemoteTag"    # Ljava/lang/String;
    .param p6, "localUri"    # Ljava/lang/String;
    .param p7, "remoteUri"    # Ljava/lang/String;
    .param p8, "localDispName"    # Ljava/lang/String;
    .param p9, "remoteDispName"    # Ljava/lang/String;
    .param p10, "sessionDescription"    # Ljava/lang/String;
    .param p11, "state"    # I
    .param p12, "direction"    # I
    .param p13, "callType"    # I
    .param p14, "callState"    # I
    .param p15, "callSlot"    # I
    .param p16, "audioDirection"    # I
    .param p17, "videoDirection"    # I
    .param p18, "isExclusive"    # Z
    .param p19, "isVideoPortZero"    # Z

    .line 65
    move-object/from16 v0, p0

    move/from16 v1, p18

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/sec/ims/Dialog;->mDialogId:Ljava/lang/String;

    .line 67
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/sec/ims/Dialog;->mDeviceId:Ljava/lang/String;

    .line 68
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/sec/ims/Dialog;->mSipCallId:Ljava/lang/String;

    .line 69
    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/sec/ims/Dialog;->mSipLocalTag:Ljava/lang/String;

    .line 70
    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/sec/ims/Dialog;->mSipRemoteTag:Ljava/lang/String;

    .line 71
    move-object/from16 v7, p6

    iput-object v7, v0, Lcom/sec/ims/Dialog;->mLocalUri:Ljava/lang/String;

    .line 72
    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/sec/ims/Dialog;->mRemoteUri:Ljava/lang/String;

    .line 73
    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/sec/ims/Dialog;->mLocalDispName:Ljava/lang/String;

    .line 74
    move-object/from16 v10, p9

    iput-object v10, v0, Lcom/sec/ims/Dialog;->mRemoteDispName:Ljava/lang/String;

    .line 75
    move-object/from16 v11, p10

    iput-object v11, v0, Lcom/sec/ims/Dialog;->mSessionDescription:Ljava/lang/String;

    .line 77
    move/from16 v12, p11

    iput v12, v0, Lcom/sec/ims/Dialog;->mState:I

    .line 78
    move/from16 v13, p12

    iput v13, v0, Lcom/sec/ims/Dialog;->mDirection:I

    .line 79
    move/from16 v14, p13

    iput v14, v0, Lcom/sec/ims/Dialog;->mCallType:I

    .line 80
    move/from16 v15, p14

    iput v15, v0, Lcom/sec/ims/Dialog;->mCallState:I

    .line 81
    move/from16 v2, p15

    iput v2, v0, Lcom/sec/ims/Dialog;->mCallSlot:I

    .line 82
    move/from16 v2, p16

    iput v2, v0, Lcom/sec/ims/Dialog;->mAudioDirection:I

    .line 83
    move/from16 v2, p17

    iput v2, v0, Lcom/sec/ims/Dialog;->mVideoDirection:I

    .line 85
    iput-boolean v1, v0, Lcom/sec/ims/Dialog;->mIsExclusive:Z

    .line 86
    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, v0, Lcom/sec/ims/Dialog;->mIsPullAvailable:Z

    .line 87
    move/from16 v2, p19

    iput-boolean v2, v0, Lcom/sec/ims/Dialog;->mIsVideoPortZero:Z

    .line 88
    const-string v1, ""

    iput-object v1, v0, Lcom/sec/ims/Dialog;->mMdmnExtNumber:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private convertDirection(I)Ljava/lang/String;
    .registers 3
    .param p1, "direction"    # I

    .line 340
    const-string v0, "initiator"

    packed-switch p1, :pswitch_data_a

    .line 346
    return-object v0

    .line 344
    :pswitch_6
    const-string v0, "recipient"

    return-object v0

    .line 342
    :pswitch_9
    return-object v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private convertMediaDirection(I)Ljava/lang/String;
    .registers 3
    .param p1, "mediaDir"    # I

    .line 351
    const-string v0, "inactive"

    packed-switch p1, :pswitch_data_10

    .line 361
    return-object v0

    .line 359
    :pswitch_6
    const-string v0, "sendrecv"

    return-object v0

    .line 357
    :pswitch_9
    const-string v0, "recvonly"

    return-object v0

    .line 355
    :pswitch_c
    const-string v0, "sendonly"

    return-object v0

    .line 353
    :pswitch_f
    return-object v0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private convertState(I)Ljava/lang/String;
    .registers 3
    .param p1, "state"    # I

    .line 323
    const-string v0, "terminated"

    packed-switch p1, :pswitch_data_12

    .line 335
    return-object v0

    .line 333
    :pswitch_6
    const-string v0, "rejected"

    return-object v0

    .line 331
    :pswitch_9
    return-object v0

    .line 329
    :pswitch_a
    const-string v0, "confirmed"

    return-object v0

    .line 327
    :pswitch_d
    const-string v0, "trying"

    return-object v0

    .line 325
    :pswitch_10
    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private getMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "uriStr"    # Ljava/lang/String;

    .line 246
    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 248
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    if-nez v0, :cond_9

    .line 249
    const-string v1, ""

    return-object v1

    .line 252
    :cond_9
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "msisdn":Ljava/lang/String;
    if-nez v1, :cond_13

    .line 254
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v1

    .line 257
    :cond_13
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioDirection()I
    .registers 2

    .line 202
    iget v0, p0, Lcom/sec/ims/Dialog;->mAudioDirection:I

    return v0
.end method

.method public getCallSlot()I
    .registers 2

    .line 198
    iget v0, p0, Lcom/sec/ims/Dialog;->mCallSlot:I

    return v0
.end method

.method public getCallState()I
    .registers 2

    .line 194
    iget v0, p0, Lcom/sec/ims/Dialog;->mCallState:I

    return v0
.end method

.method public getCallType()I
    .registers 2

    .line 190
    iget v0, p0, Lcom/sec/ims/Dialog;->mCallType:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogId()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mDialogId:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()I
    .registers 2

    .line 186
    iget v0, p0, Lcom/sec/ims/Dialog;->mDirection:I

    return v0
.end method

.method public getLocalDispName()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mLocalDispName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalNumber()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mLocalUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/ims/Dialog;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalUri()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mLocalUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMdmnExtNumber()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mMdmnExtNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteDispName()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mRemoteDispName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteNumber()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mRemoteUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/ims/Dialog;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteUri()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mRemoteUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionDescription()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mSessionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSipCallId()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mSipCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getSipLocalTag()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mSipLocalTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSipRemoteTag()Ljava/lang/String;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mSipRemoteTag:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 178
    iget v0, p0, Lcom/sec/ims/Dialog;->mState:I

    return v0
.end method

.method public getTelephonyState()I
    .registers 3

    .line 236
    iget v0, p0, Lcom/sec/ims/Dialog;->mState:I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 237
    return v1

    .line 238
    :cond_6
    if-eq v0, v1, :cond_e

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    goto :goto_e

    .line 242
    :cond_c
    const/4 v0, 0x0

    return v0

    .line 239
    :cond_e
    :goto_e
    const/4 v0, 0x2

    return v0
.end method

.method public getVideoDirection()I
    .registers 2

    .line 206
    iget v0, p0, Lcom/sec/ims/Dialog;->mVideoDirection:I

    return v0
.end method

.method public isExclusive()Z
    .registers 2

    .line 209
    iget-boolean v0, p0, Lcom/sec/ims/Dialog;->mIsExclusive:Z

    return v0
.end method

.method public isHeld()Z
    .registers 3

    .line 228
    iget v0, p0, Lcom/sec/ims/Dialog;->mCallState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isPullAvailable()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Lcom/sec/ims/Dialog;->mIsPullAvailable:Z

    return v0
.end method

.method public isVideoPortZero()Z
    .registers 2

    .line 232
    iget-boolean v0, p0, Lcom/sec/ims/Dialog;->mIsVideoPortZero:Z

    return v0
.end method

.method public setCallType(I)V
    .registers 2
    .param p1, "callType"    # I

    .line 224
    iput p1, p0, Lcom/sec/ims/Dialog;->mCallType:I

    .line 225
    return-void
.end method

.method public setIsExclusive(Z)V
    .registers 2
    .param p1, "isExclusive"    # Z

    .line 212
    iput-boolean p1, p0, Lcom/sec/ims/Dialog;->mIsExclusive:Z

    .line 213
    return-void
.end method

.method public setIsPullAvailable(Z)V
    .registers 2
    .param p1, "isPullAvailable"    # Z

    .line 220
    iput-boolean p1, p0, Lcom/sec/ims/Dialog;->mIsPullAvailable:Z

    .line 221
    return-void
.end method

.method public setMdmnExtNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lcom/sec/ims/Dialog;->mMdmnExtNumber:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setSessionDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "sessionDescription"    # Ljava/lang/String;

    .line 174
    iput-object p1, p0, Lcom/sec/ims/Dialog;->mSessionDescription:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 182
    iput p1, p0, Lcom/sec/ims/Dialog;->mState:I

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dialog [mDialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mDialogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSipCallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mSipCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSipLocalTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mSipLocalTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSipRemoteTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mSipRemoteTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocalUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mLocalUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRemoteUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mRemoteUri:Ljava/lang/String;

    .line 312
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocalDispName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mLocalDispName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRemoteDispName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mRemoteDispName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/Dialog;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/Dialog;->mDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/Dialog;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/Dialog;->mCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/Dialog;->mCallSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAudioDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/Dialog;->mAudioDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVideoDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/Dialog;->mVideoDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsExclusive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/ims/Dialog;->mIsExclusive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsPullAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/ims/Dialog;->mIsPullAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsVideoPortZero="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/ims/Dialog;->mIsVideoPortZero:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSessionDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mSessionDescription:Ljava/lang/String;

    .line 318
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMdmnExtNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mMdmnExtNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    return-object v0
.end method

.method public toXmlString()Ljava/lang/String;
    .registers 14

    .line 368
    const-string v0, ""

    .line 369
    .local v0, "localIdentityStr":Ljava/lang/String;
    const-string v1, ""

    .line 370
    .local v1, "remoteIdentityStr":Ljava/lang/String;
    const-string v2, ""

    .line 371
    .local v2, "audioMediaStr":Ljava/lang/String;
    const-string v3, ""

    .line 372
    .local v3, "videoMediaStr":Ljava/lang/String;
    const-string v4, ""

    .line 373
    .local v4, "audioMedia":Ljava/lang/String;
    const-string v5, ""

    .line 374
    .local v5, "videoMedia":Ljava/lang/String;
    const-string v6, "no"

    .line 376
    .local v6, "renderStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/ims/Dialog;->mLocalDispName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "\t\t\t<identity>"

    const-string v9, "\">"

    const-string v10, "\t\t\t<identity display-name=\""

    const-string v11, "</identity>\n"

    if-eqz v7, :cond_36

    .line 377
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v12, p0, Lcom/sec/ims/Dialog;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_57

    .line 379
    :cond_36
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v12, p0, Lcom/sec/ims/Dialog;->mLocalDispName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v12, p0, Lcom/sec/ims/Dialog;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_57
    iget-object v7, p0, Lcom/sec/ims/Dialog;->mRemoteDispName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 383
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/ims/Dialog;->mRemoteUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_98

    .line 385
    :cond_77
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/ims/Dialog;->mRemoteDispName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/ims/Dialog;->mRemoteUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    :goto_98
    iget v7, p0, Lcom/sec/ims/Dialog;->mAudioDirection:I

    const-string v8, "</mediaDirection>\n"

    if-lez v7, :cond_bb

    .line 389
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t\t\t\t<mediaType>audio</mediaType>\n\t\t\t\t<mediaDirection>"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/sec/ims/Dialog;->mAudioDirection:I

    .line 390
    invoke-direct {p0, v9}, Lcom/sec/ims/Dialog;->convertMediaDirection(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    :cond_bb
    iget v7, p0, Lcom/sec/ims/Dialog;->mAudioDirection:I

    const-string v9, "\t\t\t</mediaAttributes>\n"

    const-string v10, "\t\t\t<mediaAttributes>\n"

    if-lez v7, :cond_d8

    .line 394
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 397
    :cond_d8
    iget v7, p0, Lcom/sec/ims/Dialog;->mVideoDirection:I

    if-lez v7, :cond_f9

    .line 398
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t\t\t\t<mediaType>video</mediaType>\n\t\t\t\t<mediaDirection>"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v11, p0, Lcom/sec/ims/Dialog;->mVideoDirection:I

    .line 399
    invoke-direct {p0, v11}, Lcom/sec/ims/Dialog;->convertMediaDirection(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    :cond_f9
    iget v7, p0, Lcom/sec/ims/Dialog;->mVideoDirection:I

    if-lez v7, :cond_112

    .line 403
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 406
    :cond_112
    iget v7, p0, Lcom/sec/ims/Dialog;->mCallState:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_119

    .line 407
    const-string v6, "yes"

    .line 410
    :cond_119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t<dialog id=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/ims/Dialog;->mSipCallId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\"\n\t\tcall-id=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/ims/Dialog;->mSipCallId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\"\n\t\tlocal-tag=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/ims/Dialog;->mSipLocalTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" remote-tag=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/ims/Dialog;->mSipRemoteTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" direction=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/ims/Dialog;->mDirection:I

    .line 414
    invoke-direct {p0, v8}, Lcom/sec/ims/Dialog;->convertDirection(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">\n\t\t<sa:exclusive>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/sec/ims/Dialog;->mIsExclusive:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</sa:exclusive>\n\t\t<state>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/ims/Dialog;->mState:I

    .line 416
    invoke-direct {p0, v8}, Lcom/sec/ims/Dialog;->convertState(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</state>\n\t\t<local>\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\t\t\t<target uri=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/ims/Dialog;->mLocalUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">\n\t\t\t\t<param pname=\"+sip.rendering\" pval=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\"/>\n\t\t\t</target>\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\t\t</local>\n\t\t<remote>\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\t\t</remote>\n\t\t<calltype>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/ims/Dialog;->mCallType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</calltype>\n\t\t<callslot>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/ims/Dialog;->mCallSlot:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</callslot>\n\t\t<session-description>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/ims/Dialog;->mSessionDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</session-description>\n\t</dialog>\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 432
    .local v7, "xml":Ljava/lang/String;
    return-object v7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 267
    if-nez p1, :cond_3

    .line 268
    return-void

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mDialogId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mSipCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mSipLocalTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mSipRemoteTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mLocalUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mRemoteUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mLocalDispName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mRemoteDispName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mMdmnExtNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mSessionDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget v0, p0, Lcom/sec/ims/Dialog;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget v0, p0, Lcom/sec/ims/Dialog;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v0, p0, Lcom/sec/ims/Dialog;->mCallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget v0, p0, Lcom/sec/ims/Dialog;->mCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget v0, p0, Lcom/sec/ims/Dialog;->mCallSlot:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget v0, p0, Lcom/sec/ims/Dialog;->mAudioDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget v0, p0, Lcom/sec/ims/Dialog;->mVideoDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-boolean v0, p0, Lcom/sec/ims/Dialog;->mIsExclusive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-boolean v0, p0, Lcom/sec/ims/Dialog;->mIsPullAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-boolean v0, p0, Lcom/sec/ims/Dialog;->mIsVideoPortZero:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    return-void
.end method
