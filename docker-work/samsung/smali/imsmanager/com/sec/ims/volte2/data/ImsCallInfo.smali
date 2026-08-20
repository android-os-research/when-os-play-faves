.class public Lcom/sec/ims/volte2/data/ImsCallInfo;
.super Ljava/lang/Object;
.source "ImsCallInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/data/ImsCallInfo$Radio;,
        Lcom/sec/ims/volte2/data/ImsCallInfo$Direction;,
        Lcom/sec/ims/volte2/data/ImsCallInfo$Qci;,
        Lcom/sec/ims/volte2/data/ImsCallInfo$BearerState;,
        Lcom/sec/ims/volte2/data/ImsCallInfo$CallType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/volte2/data/ImsCallInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallId:I

.field private mCallType:I

.field private mCmcCallTime:Ljava/lang/String;

.field private mCmcDeviceId:Ljava/lang/String;

.field private mDirection:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mIsConferenceCall:Z

.field private mIsDowngradedAtEstablish:Z

.field private mIsDowngradedVideoCall:Z

.field private mIsSamsungMdmnCall:Z

.field private mNumberPlus:Ljava/lang/String;

.field private mPeerUri:Ljava/lang/String;

.field private mVideoBearerState:I

.field private mVideoNGbrBearerState:I

.field private mVoiceBearerState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 284
    new-instance v0, Lcom/sec/ims/volte2/data/ImsCallInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/ImsCallInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZZIIIILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 16
    .param p1, "callId"    # I
    .param p2, "callType"    # I
    .param p3, "isDowngradedVideocall"    # Z
    .param p4, "isDowngradedAtEstablish"    # Z
    .param p5, "voiceBearerState"    # I
    .param p6, "videoBearerState"    # I
    .param p7, "videoNGbrBearerState"    # I
    .param p8, "errorCode"    # I
    .param p9, "errorMessage"    # Ljava/lang/String;
    .param p10, "peerUri"    # Ljava/lang/String;
    .param p11, "direction"    # I
    .param p12, "isConferenceCall"    # Z

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    .line 63
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    .line 64
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    .line 65
    const/4 v2, 0x3

    iput v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    .line 66
    iput v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    .line 67
    iput v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    .line 68
    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    .line 69
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    .line 71
    iput v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    .line 72
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    .line 73
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    .line 74
    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mNumberPlus:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcCallTime:Ljava/lang/String;

    .line 84
    iput p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    .line 85
    iput p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    .line 86
    iput-boolean p3, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    .line 87
    iput-boolean p4, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    .line 88
    iput p5, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    .line 89
    iput p6, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    .line 90
    iput p7, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    .line 91
    iput p8, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    .line 92
    iput-object p9, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    .line 93
    iput-object p10, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    .line 94
    iput p11, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    .line 95
    iput-boolean p12, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    .line 63
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    .line 64
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    .line 65
    const/4 v2, 0x3

    iput v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    .line 66
    iput v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    .line 67
    iput v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    .line 68
    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    .line 69
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    .line 71
    iput v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    .line 72
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    .line 73
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    .line 74
    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mNumberPlus:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcCallTime:Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/volte2/data/ImsCallInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_21

    move v0, v2

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_56

    move v0, v2

    goto :goto_57

    :cond_56
    move v0, v1

    :goto_57
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_60

    move v1, v2

    :cond_60
    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    .line 139
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getCallId()I
    .registers 2

    .line 215
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    return v0
.end method

.method public getCallType()I
    .registers 2

    .line 211
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    return v0
.end method

.method public getCmcCallTime()Ljava/lang/String;
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcCallTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCmcDeviceId()Ljava/lang/String;
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDedicatedBearerState(I)I
    .registers 3
    .param p1, "qci"    # I

    .line 189
    const/4 v0, 0x3

    .line 190
    .local v0, "state":I
    sparse-switch p1, :sswitch_data_10

    goto :goto_e

    .line 201
    :sswitch_5
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    .line 202
    goto :goto_e

    .line 196
    :sswitch_8
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    .line 197
    goto :goto_e

    .line 192
    :sswitch_b
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    .line 193
    nop

    .line 207
    :goto_e
    return v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_8
        0x7 -> :sswitch_5
        0x8 -> :sswitch_5
    .end sparse-switch
.end method

.method public getDirection()I
    .registers 2

    .line 239
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    return v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 227
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerUri()Ljava/lang/String;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    return-object v0
.end method

.method public isConferenceCall()Z
    .registers 2

    .line 253
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    return v0
.end method

.method public isDowngradedAtEstablish()Z
    .registers 2

    .line 223
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    return v0
.end method

.method public isDowngradedVideoCall()Z
    .registers 2

    .line 219
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    return v0
.end method

.method public isMOCall()Z
    .registers 3

    .line 243
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    if-eqz v0, :cond_a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method

.method public isMTCall()Z
    .registers 4

    .line 248
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method public isSamsungMdmnCall()Z
    .registers 2

    .line 257
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    return v0
.end method

.method public setCmcCallTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "cmcCallTime"    # Ljava/lang/String;

    .line 281
    iput-object p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcCallTime:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setCmcDeviceId(Ljava/lang/String;)V
    .registers 2
    .param p1, "cmcDeviceId"    # Ljava/lang/String;

    .line 273
    iput-object p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setNumberPlus(Ljava/lang/String;)V
    .registers 2
    .param p1, "numberPlus"    # Ljava/lang/String;

    .line 265
    iput-object p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mNumberPlus:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setSamsungMdmnCall(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 261
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    .line 262
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callId: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], callType: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "callInfo":Ljava/lang/String;
    iget v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    const-string v2, "UNKNOWN"

    packed-switch v1, :pswitch_data_13e

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5c

    .line 150
    :pswitch_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "CALL_TYPE_VIDEO"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    goto :goto_5c

    .line 146
    :pswitch_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "CALL_TYPE_VOICE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    nop

    .line 157
    :goto_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], Direction: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    iget v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    packed-switch v1, :pswitch_data_146

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d6

    .line 170
    :pswitch_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PULLED_MT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    goto :goto_d6

    .line 167
    :pswitch_9a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PULLED_MO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    goto :goto_d6

    .line 164
    :pswitch_ae
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    goto :goto_d6

    .line 161
    :pswitch_c2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    nop

    .line 177
    :goto_d6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], isDowngradedVideoCall : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], isDowngradedAtEstablish : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], VoiceBearerState : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], VideoBearerState : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], VideoNGbrBearerState : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], isConferenceCall : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mIsSamsungMdmnCall : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    return-object v0

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_48
        :pswitch_34
    .end packed-switch

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_c2
        :pswitch_ae
        :pswitch_9a
        :pswitch_86
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 105
    if-nez p1, :cond_3

    .line 106
    return-void

    .line 108
    :cond_3
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return-void
.end method
