.class public Lcom/sec/ims/volte2/data/CallProfile;
.super Ljava/lang/Object;
.source "CallProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/volte2/data/CallProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIRECTION_MO:I = 0x0

.field public static final DIRECTION_MT:I = 0x1

.field public static final DIRECTION_PULLED_MO:I = 0x2

.field public static final DIRECTION_PULLED_MT:I = 0x3

.field public static final DIRECTION_UNKNOWN:I = -0x1

.field public static final GROUP_CONFERENCE:I = 0x2

.field public static final NONE_CONFERENCE:I = 0x0

.field public static final NWAY_CONFERENCE:I = 0x1


# instance fields
.field private mAdditionalSipHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertInfo:Ljava/lang/String;

.field private mAudioEarlyMediaDir:I

.field private mAudioRxTrackId:I

.field private mCLI:Ljava/lang/String;

.field private mCallType:I

.field private mCmcBoundSessionId:I

.field private mCmcCallTime:Ljava/lang/String;

.field private mCmcDeviceId:Ljava/lang/String;

.field private mCmcDtmfKey:I

.field private mCmcEdCallSlot:I

.field private mCmcRecordEvent:I

.field private mCmcType:I

.field private mComposerData:Landroid/os/Bundle;

.field private mConferenceCall:I

.field private mConferenceSupported:Ljava/lang/String;

.field private mDelayRinging:Z

.field private mDialingDevice:Ljava/lang/String;

.field private mDialingNumber:Ljava/lang/String;

.field private mDialogId:Ljava/lang/String;

.field private mDirection:I

.field private mDtmfEvent:Ljava/lang/String;

.field private mEPSFBsuccess:Z

.field private mEchoCallId:Ljava/lang/String;

.field private mEchoCellId:Ljava/lang/String;

.field private mEmergencyRat:Ljava/lang/String;

.field private mEnableScr:Z

.field private mFeatureCaps:Ljava/lang/String;

.field private mForceCSFB:Z

.field private mForegroundSessionId:I

.field private mHDIcon:I

.field private mHasCSFBError:Z

.field private mHasDiversion:Z

.field private mHasRemoteVideoCapa:Z

.field private mHistoryInfo:Ljava/lang/String;

.field private mIsCrossSimCall:Z

.field private mIsDowngradedAtEstablish:Z

.field private mIsDowngradedVideoCall:Z

.field private mIsFocus:Ljava/lang/String;

.field private mIsPullCall:Z

.field private mIsRemoteHeld:Z

.field private mIsSamsungMdmnCall:Z

.field private mIsVideoCrbt:Z

.field private mIsVideoCrbtValid:Z

.field private mLetteringText:Ljava/lang/String;

.field private mLineMsisdn:Ljava/lang/String;

.field private mLocalHoldTone:Ljava/lang/String;

.field private mMTConference:Ljava/lang/String;

.field private mMaxConferenceCallUsers:I

.field private mMediaProfile:Lcom/sec/ims/volte2/data/MediaProfile;

.field private mModifyHeader:Ljava/lang/String;

.field private mNetworkType:I

.field private mNumberPlus:Ljava/lang/String;

.field private mOrganization:Ljava/lang/String;

.field private mOriginatingUri:Lcom/sec/ims/util/ImsUri;

.field private mP2p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mPhotoRing:Ljava/lang/String;

.field private mRadioTech:I

.field private mRecordState:I

.field private mReferredBy:Ljava/lang/String;

.field private mRejectCause:I

.field private mRejectCode:I

.field private mRejectProtocol:Ljava/lang/String;

.field private mRejectText:Ljava/lang/String;

.field private mReplaceSipCallId:Ljava/lang/String;

.field private mRetryAfterTime:I

.field private mSipCallId:Ljava/lang/String;

.field private mSipInviteMsg:Ljava/lang/String;

.field private mUrn:Ljava/lang/String;

.field private mVCrtIsAlerting:Z

.field private mVerstat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1694
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile$1;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile$1;-><init>()V

    sput-object v0, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCallType:I

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDirection:I

    .line 63
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNetworkType:I

    .line 83
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceCall:I

    .line 86
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForegroundSessionId:I

    .line 88
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOriginatingUri:Lcom/sec/ims/util/ImsUri;

    .line 89
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingNumber:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingDevice:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mUrn:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCLI:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLetteringText:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAlertInfo:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhotoRing:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHistoryInfo:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDtmfEvent:Ljava/lang/String;

    .line 98
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNumberPlus:Ljava/lang/String;

    .line 100
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasRemoteVideoCapa:Z

    .line 101
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mModifyHeader:Ljava/lang/String;

    .line 102
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMTConference:Ljava/lang/String;

    .line 103
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHDIcon:I

    .line 104
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRetryAfterTime:I

    .line 105
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMaxConferenceCallUsers:I

    .line 106
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLocalHoldTone:Ljava/lang/String;

    .line 108
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMediaProfile:Lcom/sec/ims/volte2/data/MediaProfile;

    .line 110
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReferredBy:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipCallId:Ljava/lang/String;

    .line 112
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipInviteMsg:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLineMsisdn:Ljava/lang/String;

    .line 115
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialogId:Ljava/lang/String;

    .line 121
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEnableScr:Z

    .line 123
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsPullCall:Z

    .line 125
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedVideoCall:Z

    .line 126
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedAtEstablish:Z

    .line 127
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsSamsungMdmnCall:Z

    .line 129
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasCSFBError:Z

    .line 130
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEmergencyRat:Ljava/lang/String;

    .line 131
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbt:Z

    .line 132
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbtValid:Z

    .line 133
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhoneId:I

    .line 134
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRadioTech:I

    .line 135
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsCrossSimCall:Z

    .line 136
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mP2p:Ljava/util/List;

    .line 137
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcBoundSessionId:I

    .line 138
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReplaceSipCallId:Ljava/lang/String;

    .line 139
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcType:I

    .line 140
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForceCSFB:Z

    .line 142
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVerstat:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOrganization:Ljava/lang/String;

    .line 145
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDeviceId:Ljava/lang/String;

    .line 146
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAudioRxTrackId:I

    .line 147
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDtmfKey:I

    .line 148
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcRecordEvent:I

    .line 149
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mComposerData:Landroid/os/Bundle;

    .line 150
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRecordState:I

    .line 151
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcCallTime:Ljava/lang/String;

    .line 152
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mFeatureCaps:Ljava/lang/String;

    .line 153
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAudioEarlyMediaDir:I

    .line 154
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasDiversion:Z

    .line 155
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDelayRinging:Z

    .line 156
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCause:I

    .line 158
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectProtocol:Ljava/lang/String;

    .line 159
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCode:I

    .line 160
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEchoCellId:Ljava/lang/String;

    .line 161
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectText:Ljava/lang/String;

    .line 162
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEchoCallId:Ljava/lang/String;

    .line 164
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVCrtIsAlerting:Z

    .line 165
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsRemoteHeld:Z

    .line 166
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEPSFBsuccess:Z

    .line 168
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcEdCallSlot:I

    .line 179
    new-instance v0, Lcom/sec/ims/volte2/data/MediaProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMediaProfile:Lcom/sec/ims/volte2/data/MediaProfile;

    .line 180
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCallType:I

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDirection:I

    .line 63
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNetworkType:I

    .line 83
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceCall:I

    .line 86
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForegroundSessionId:I

    .line 88
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOriginatingUri:Lcom/sec/ims/util/ImsUri;

    .line 89
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingNumber:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingDevice:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mUrn:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCLI:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLetteringText:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAlertInfo:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhotoRing:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHistoryInfo:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDtmfEvent:Ljava/lang/String;

    .line 98
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNumberPlus:Ljava/lang/String;

    .line 100
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasRemoteVideoCapa:Z

    .line 101
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mModifyHeader:Ljava/lang/String;

    .line 102
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMTConference:Ljava/lang/String;

    .line 103
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHDIcon:I

    .line 104
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRetryAfterTime:I

    .line 105
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMaxConferenceCallUsers:I

    .line 106
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLocalHoldTone:Ljava/lang/String;

    .line 108
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMediaProfile:Lcom/sec/ims/volte2/data/MediaProfile;

    .line 110
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReferredBy:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipCallId:Ljava/lang/String;

    .line 112
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipInviteMsg:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLineMsisdn:Ljava/lang/String;

    .line 115
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialogId:Ljava/lang/String;

    .line 121
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEnableScr:Z

    .line 123
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsPullCall:Z

    .line 125
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedVideoCall:Z

    .line 126
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedAtEstablish:Z

    .line 127
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsSamsungMdmnCall:Z

    .line 129
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasCSFBError:Z

    .line 130
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEmergencyRat:Ljava/lang/String;

    .line 131
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbt:Z

    .line 132
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbtValid:Z

    .line 133
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhoneId:I

    .line 134
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRadioTech:I

    .line 135
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsCrossSimCall:Z

    .line 136
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mP2p:Ljava/util/List;

    .line 137
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcBoundSessionId:I

    .line 138
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReplaceSipCallId:Ljava/lang/String;

    .line 139
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcType:I

    .line 140
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForceCSFB:Z

    .line 142
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVerstat:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOrganization:Ljava/lang/String;

    .line 145
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDeviceId:Ljava/lang/String;

    .line 146
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAudioRxTrackId:I

    .line 147
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDtmfKey:I

    .line 148
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcRecordEvent:I

    .line 149
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mComposerData:Landroid/os/Bundle;

    .line 150
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRecordState:I

    .line 151
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcCallTime:Ljava/lang/String;

    .line 152
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mFeatureCaps:Ljava/lang/String;

    .line 153
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAudioEarlyMediaDir:I

    .line 154
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasDiversion:Z

    .line 155
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDelayRinging:Z

    .line 156
    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCause:I

    .line 158
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectProtocol:Ljava/lang/String;

    .line 159
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCode:I

    .line 160
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEchoCellId:Ljava/lang/String;

    .line 161
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectText:Ljava/lang/String;

    .line 162
    iput-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEchoCallId:Ljava/lang/String;

    .line 164
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVCrtIsAlerting:Z

    .line 165
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsRemoteHeld:Z

    .line 166
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEPSFBsuccess:Z

    .line 168
    iput v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcEdCallSlot:I

    .line 171
    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 172
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/volte2/data/CallProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCallType:I

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDirection:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNetworkType:I

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceCall:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForegroundSessionId:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_31

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOriginatingUri:Lcom/sec/ims/util/ImsUri;

    goto :goto_33

    .line 318
    :cond_31
    iput-object v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOriginatingUri:Lcom/sec/ims/util/ImsUri;

    .line 320
    :goto_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingNumber:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingDevice:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4c

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mUrn:Ljava/lang/String;

    goto :goto_4e

    .line 325
    :cond_4c
    iput-object v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mUrn:Ljava/lang/String;

    .line 327
    :goto_4e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCLI:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLetteringText:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAlertInfo:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhotoRing:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHistoryInfo:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDtmfEvent:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNumberPlus:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceSupported:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsFocus:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_90

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReferredBy:Ljava/lang/String;

    .line 340
    :cond_90
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipCallId:Ljava/lang/String;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_a4

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipInviteMsg:Ljava/lang/String;

    .line 344
    :cond_a4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLineMsisdn:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialogId:Ljava/lang/String;

    .line 347
    const-class v0, Lcom/sec/ims/volte2/data/MediaProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/data/MediaProfile;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMediaProfile:Lcom/sec/ims/volte2/data/MediaProfile;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_c9

    move v0, v2

    goto :goto_ca

    :cond_c9
    move v0, v3

    :goto_ca
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsPullCall:Z

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_d4

    move v0, v2

    goto :goto_d5

    :cond_d4
    move v0, v3

    :goto_d5
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedVideoCall:Z

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_df

    move v0, v2

    goto :goto_e0

    :cond_df
    move v0, v3

    :goto_e0
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedAtEstablish:Z

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_ea

    move v0, v2

    goto :goto_eb

    :cond_ea
    move v0, v3

    :goto_eb
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsSamsungMdmnCall:Z

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHDIcon:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_107

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 355
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "extra_header"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iput-object v4, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAdditionalSipHeaders:Ljava/util/HashMap;

    .line 358
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_10f

    move v0, v2

    goto :goto_110

    :cond_10f
    move v0, v3

    :goto_110
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasRemoteVideoCapa:Z

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_11a

    move v0, v2

    goto :goto_11b

    :cond_11a
    move v0, v3

    :goto_11b
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasCSFBError:Z

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_129

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEmergencyRat:Ljava/lang/String;

    .line 364
    :cond_129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_131

    move v0, v2

    goto :goto_132

    :cond_131
    move v0, v3

    :goto_132
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbt:Z

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_13c

    move v0, v2

    goto :goto_13d

    :cond_13c
    move v0, v3

    :goto_13d
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbtValid:Z

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhoneId:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRadioTech:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mP2p:Ljava/util/List;

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcBoundSessionId:I

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReplaceSipCallId:Ljava/lang/String;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcType:I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_16b

    move v0, v2

    goto :goto_16c

    :cond_16b
    move v0, v3

    :goto_16c
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForceCSFB:Z

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_17b

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVerstat:Ljava/lang/String;

    goto :goto_17d

    .line 376
    :cond_17b
    iput-object v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVerstat:Ljava/lang/String;

    .line 378
    :goto_17d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOrganization:Ljava/lang/String;

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDeviceId:Ljava/lang/String;

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDtmfKey:I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mComposerData:Landroid/os/Bundle;

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRecordState:I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcCallTime:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mFeatureCaps:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAudioEarlyMediaDir:I

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1b5

    move v0, v2

    goto :goto_1b6

    :cond_1b5
    move v0, v3

    :goto_1b6
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasDiversion:Z

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1c0

    move v0, v2

    goto :goto_1c1

    :cond_1c0
    move v0, v3

    :goto_1c1
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDelayRinging:Z

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectProtocol:Ljava/lang/String;

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCode:I

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectText:Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1dd

    move v0, v2

    goto :goto_1de

    :cond_1dd
    move v0, v3

    :goto_1de
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVCrtIsAlerting:Z

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1e7

    goto :goto_1e8

    :cond_1e7
    move v2, v3

    :goto_1e8
    iput-boolean v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsRemoteHeld:Z

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcEdCallSlot:I

    .line 396
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public getAdditionalSipHeaders()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1199
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAdditionalSipHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAlertInfo()Ljava/lang/String;
    .registers 2

    .line 636
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAlertInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioEarlyMediaDir()I
    .registers 2

    .line 1567
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAudioEarlyMediaDir:I

    return v0
.end method

.method public getAudioRxTrackId()I
    .registers 2

    .line 1441
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAudioRxTrackId:I

    return v0
.end method

.method public getCLI()Ljava/lang/String;
    .registers 2

    .line 600
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCLI:Ljava/lang/String;

    return-object v0
.end method

.method public getCallType()I
    .registers 2

    .line 474
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCallType:I

    return v0
.end method

.method public getCmcBoundSessionId()I
    .registers 2

    .line 1316
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcBoundSessionId:I

    return v0
.end method

.method public getCmcCallTime()Ljava/lang/String;
    .registers 2

    .line 1531
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcCallTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCmcDeviceId()Ljava/lang/String;
    .registers 2

    .line 1415
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getCmcDtmfKey()I
    .registers 2

    .line 1459
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDtmfKey:I

    return v0
.end method

.method public getCmcEdCallSlot()I
    .registers 2

    .line 1688
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcEdCallSlot:I

    return v0
.end method

.method public getCmcRecordEvent()I
    .registers 2

    .line 1477
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcRecordEvent:I

    return v0
.end method

.method public getCmcType()I
    .registers 2

    .line 1352
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcType:I

    return v0
.end method

.method public getComposerData()Landroid/os/Bundle;
    .registers 2

    .line 1486
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mComposerData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getConferenceSupported()Ljava/lang/String;
    .registers 2

    .line 764
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceSupported:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceType()I
    .registers 2

    .line 812
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceCall:I

    return v0
.end method

.method public getDelayRinging()Z
    .registers 2

    .line 1594
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDelayRinging:Z

    return v0
.end method

.method public getDialingDevice()Ljava/lang/String;
    .registers 2

    .line 564
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getDialingNumber()Ljava/lang/String;
    .registers 2

    .line 546
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogId()Ljava/lang/String;
    .registers 2

    .line 1055
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialogId:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()I
    .registers 2

    .line 501
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDirection:I

    return v0
.end method

.method public getDtmfEvent()Ljava/lang/String;
    .registers 2

    .line 728
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDtmfEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getEPSFBsuccess()Z
    .registers 2

    .line 1662
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEPSFBsuccess:Z

    return v0
.end method

.method public getEchoCallId()Ljava/lang/String;
    .registers 2

    .line 1658
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEchoCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getEchoCellId()Ljava/lang/String;
    .registers 2

    .line 1666
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEchoCellId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmergencyRat()Ljava/lang/String;
    .registers 2

    .line 1190
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEmergencyRat:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableScr()Z
    .registers 2

    .line 1064
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEnableScr:Z

    return v0
.end method

.method public getFeatureCaps()Ljava/lang/String;
    .registers 2

    .line 1549
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mFeatureCaps:Ljava/lang/String;

    return-object v0
.end method

.method public getForegroundSessionId()I
    .registers 2

    .line 830
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForegroundSessionId:I

    return v0
.end method

.method public getHDIcon()I
    .registers 2

    .line 902
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHDIcon:I

    return v0
.end method

.method public getHasDiversion()Z
    .registers 2

    .line 1576
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasDiversion:Z

    return v0
.end method

.method public getHistoryInfo()Ljava/lang/String;
    .registers 2

    .line 710
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHistoryInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFocus()Ljava/lang/String;
    .registers 2

    .line 782
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsFocus:Ljava/lang/String;

    return-object v0
.end method

.method public getLetteringText()Ljava/lang/String;
    .registers 2

    .line 618
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLetteringText:Ljava/lang/String;

    return-object v0
.end method

.method public getLineMsisdn()Ljava/lang/String;
    .registers 2

    .line 1028
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLineMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalHoldTone()Ljava/lang/String;
    .registers 2

    .line 956
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLocalHoldTone:Ljava/lang/String;

    return-object v0
.end method

.method public getMTConference()Ljava/lang/String;
    .registers 2

    .line 884
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMTConference:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxConferenceCallUsers()I
    .registers 2

    .line 938
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMaxConferenceCallUsers:I

    return v0
.end method

.method public getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;
    .registers 2

    .line 692
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMediaProfile:Lcom/sec/ims/volte2/data/MediaProfile;

    return-object v0
.end method

.method public getModifyHeader()Ljava/lang/String;
    .registers 2

    .line 866
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mModifyHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()I
    .registers 2

    .line 674
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNetworkType:I

    return v0
.end method

.method public getNumberPlus()Ljava/lang/String;
    .registers 2

    .line 746
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNumberPlus:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .registers 2

    .line 1423
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOrganization:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatingUri()Lcom/sec/ims/util/ImsUri;
    .registers 2

    .line 528
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOriginatingUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public getP2p()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1298
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mP2p:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneId()I
    .registers 2

    .line 1253
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhoneId:I

    return v0
.end method

.method public getPhotoRing()Ljava/lang/String;
    .registers 2

    .line 655
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhotoRing:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioTech()I
    .registers 2

    .line 1271
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRadioTech:I

    return v0
.end method

.method public getRecordState()I
    .registers 2

    .line 1513
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRecordState:I

    return v0
.end method

.method public getReferredBy()Ljava/lang/String;
    .registers 2

    .line 974
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReferredBy:Ljava/lang/String;

    return-object v0
.end method

.method public getRejectCause()I
    .registers 2

    .line 1621
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCause:I

    return v0
.end method

.method public getRejectCode()I
    .registers 2

    .line 1637
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCode:I

    return v0
.end method

.method public getRejectProtocol()Ljava/lang/String;
    .registers 2

    .line 1629
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRejectText()Ljava/lang/String;
    .registers 2

    .line 1645
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectText:Ljava/lang/String;

    return-object v0
.end method

.method public getReplaceSipCallId()Ljava/lang/String;
    .registers 2

    .line 1334
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReplaceSipCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryAfterTime()I
    .registers 2

    .line 920
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRetryAfterTime:I

    return v0
.end method

.method public getSipCallId()Ljava/lang/String;
    .registers 2

    .line 992
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getSipInviteMsg()Ljava/lang/String;
    .registers 2

    .line 1010
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipInviteMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getUrn()Ljava/lang/String;
    .registers 2

    .line 591
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mUrn:Ljava/lang/String;

    return-object v0
.end method

.method public getVCrtIsAlerting()Z
    .registers 2

    .line 1653
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVCrtIsAlerting:Z

    return v0
.end method

.method public getVerstat()Ljava/lang/String;
    .registers 2

    .line 1397
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVerstat:Ljava/lang/String;

    return-object v0
.end method

.method public hasCSFBError()Z
    .registers 2

    .line 1163
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasCSFBError:Z

    return v0
.end method

.method public hasRemoteVideoCapa()Z
    .registers 2

    .line 848
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasRemoteVideoCapa:Z

    return v0
.end method

.method public isConferenceCall()Z
    .registers 2

    .line 800
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceCall:I

    if-nez v0, :cond_6

    .line 801
    const/4 v0, 0x0

    return v0

    .line 803
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public isCrossSimCall()Z
    .registers 2

    .line 1289
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsCrossSimCall:Z

    return v0
.end method

.method public isDowngradedAtEstablish()Z
    .registers 2

    .line 1118
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedAtEstablish:Z

    return v0
.end method

.method public isDowngradedVideoCall()Z
    .registers 2

    .line 1100
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedVideoCall:Z

    return v0
.end method

.method public isForceCSFB()Z
    .registers 2

    .line 1370
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForceCSFB:Z

    return v0
.end method

.method public isMOCall()Z
    .registers 3

    .line 510
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDirection:I

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

    .line 519
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDirection:I

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

.method public isPullCall()Z
    .registers 2

    .line 1082
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsPullCall:Z

    return v0
.end method

.method public isRemoteHeld()Z
    .registers 2

    .line 1683
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsRemoteHeld:Z

    return v0
.end method

.method public isSamsungMdmnCall()Z
    .registers 2

    .line 1136
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsSamsungMdmnCall:Z

    return v0
.end method

.method public isVideoCRBT()Z
    .registers 2

    .line 1208
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbt:Z

    return v0
.end method

.method public isVideoCrbtValid()Z
    .registers 2

    .line 1226
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbtValid:Z

    return v0
.end method

.method public setAdditionalSipHeaders(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1154
    .local p1, "sipHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAdditionalSipHeaders:Ljava/util/HashMap;

    .line 1155
    return-void
.end method

.method public setAlertInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "alertInfo"    # Ljava/lang/String;

    .line 645
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAlertInfo:Ljava/lang/String;

    .line 646
    return-void
.end method

.method public setAudioEarlyMediaDir(I)V
    .registers 2
    .param p1, "audioEarlyMediaDir"    # I

    .line 1558
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAudioEarlyMediaDir:I

    .line 1559
    return-void
.end method

.method public setAudioRxTrackId(I)V
    .registers 2
    .param p1, "audioRxTrackId"    # I

    .line 1432
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAudioRxTrackId:I

    .line 1433
    return-void
.end method

.method public setCLI(Ljava/lang/String;)V
    .registers 2
    .param p1, "cli"    # Ljava/lang/String;

    .line 609
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCLI:Ljava/lang/String;

    .line 610
    return-void
.end method

.method public setCallType(I)V
    .registers 2
    .param p1, "callType"    # I

    .line 483
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCallType:I

    .line 484
    return-void
.end method

.method public setCmcBoundSessionId(I)V
    .registers 2
    .param p1, "cmcBoundSessionId"    # I

    .line 1325
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcBoundSessionId:I

    .line 1326
    return-void
.end method

.method public setCmcCallTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "cmcCallTime"    # Ljava/lang/String;

    .line 1522
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcCallTime:Ljava/lang/String;

    .line 1523
    return-void
.end method

.method public setCmcDeviceId(Ljava/lang/String;)V
    .registers 2
    .param p1, "cmcDeviceId"    # Ljava/lang/String;

    .line 1406
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDeviceId:Ljava/lang/String;

    .line 1407
    return-void
.end method

.method public setCmcDtmfKey(I)V
    .registers 2
    .param p1, "cmcDtmfKey"    # I

    .line 1450
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDtmfKey:I

    .line 1451
    return-void
.end method

.method public setCmcEdCallSlot(I)V
    .registers 2
    .param p1, "slot"    # I

    .line 1686
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcEdCallSlot:I

    return-void
.end method

.method public setCmcRecordEvent(I)V
    .registers 2
    .param p1, "cmcRecordEvent"    # I

    .line 1468
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcRecordEvent:I

    .line 1469
    return-void
.end method

.method public setCmcType(I)V
    .registers 2
    .param p1, "cmcType"    # I

    .line 1361
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcType:I

    .line 1362
    return-void
.end method

.method public setComposerData(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "composerData"    # Landroid/os/Bundle;

    .line 1495
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mComposerData:Landroid/os/Bundle;

    .line 1496
    return-void
.end method

.method public setConferenceCall(I)V
    .registers 2
    .param p1, "confType"    # I

    .line 821
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceCall:I

    .line 822
    return-void
.end method

.method public setConferenceSupported(Ljava/lang/String;)V
    .registers 2
    .param p1, "confSupp"    # Ljava/lang/String;

    .line 773
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceSupported:Ljava/lang/String;

    .line 774
    return-void
.end method

.method public setCrossSimCall(Z)V
    .registers 2
    .param p1, "isCrossSimCall"    # Z

    .line 1280
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsCrossSimCall:Z

    .line 1281
    return-void
.end method

.method public setDelayRinging(Z)V
    .registers 2
    .param p1, "delayRinging"    # Z

    .line 1603
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDelayRinging:Z

    .line 1604
    return-void
.end method

.method public setDialingDevice(Ljava/lang/String;)V
    .registers 2
    .param p1, "dialingNumber"    # Ljava/lang/String;

    .line 573
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingDevice:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public setDialingNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "dialingNumber"    # Ljava/lang/String;

    .line 555
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingNumber:Ljava/lang/String;

    .line 556
    return-void
.end method

.method public setDialogId(Ljava/lang/String;)V
    .registers 2
    .param p1, "dialogId"    # Ljava/lang/String;

    .line 1046
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialogId:Ljava/lang/String;

    .line 1047
    return-void
.end method

.method public setDirection(I)V
    .registers 2
    .param p1, "direction"    # I

    .line 492
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDirection:I

    .line 493
    return-void
.end method

.method public setDowngradedAtEstablish(Z)V
    .registers 2
    .param p1, "isDowngradedAtEstablish"    # Z

    .line 1127
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedAtEstablish:Z

    .line 1128
    return-void
.end method

.method public setDowngradedVideoCall(Z)V
    .registers 2
    .param p1, "isDowngraded"    # Z

    .line 1109
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedVideoCall:Z

    .line 1110
    return-void
.end method

.method public setDtmfEvent(Ljava/lang/String;)V
    .registers 2
    .param p1, "dtmfEvent"    # Ljava/lang/String;

    .line 737
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDtmfEvent:Ljava/lang/String;

    .line 738
    return-void
.end method

.method public setEPSFBsuccess(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 1660
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEPSFBsuccess:Z

    return-void
.end method

.method public setEchoCallId(Ljava/lang/String;)V
    .registers 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 1656
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEchoCallId:Ljava/lang/String;

    return-void
.end method

.method public setEchoCellId(Ljava/lang/String;)V
    .registers 2
    .param p1, "cellid"    # Ljava/lang/String;

    .line 1664
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEchoCellId:Ljava/lang/String;

    return-void
.end method

.method public setEmergencyRat(Ljava/lang/String;)V
    .registers 2
    .param p1, "rat"    # Ljava/lang/String;

    .line 1181
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEmergencyRat:Ljava/lang/String;

    .line 1182
    return-void
.end method

.method public setEnableScr(Z)V
    .registers 2
    .param p1, "enableScr"    # Z

    .line 1073
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEnableScr:Z

    .line 1074
    return-void
.end method

.method public setFeatureCaps(Ljava/lang/String;)V
    .registers 2
    .param p1, "featureCaps"    # Ljava/lang/String;

    .line 1540
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mFeatureCaps:Ljava/lang/String;

    .line 1541
    return-void
.end method

.method public setForceCSFB(Z)V
    .registers 2
    .param p1, "forceCSFB"    # Z

    .line 1379
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForceCSFB:Z

    .line 1380
    return-void
.end method

.method public setForegroundSessionId(I)V
    .registers 2
    .param p1, "sessionId"    # I

    .line 839
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForegroundSessionId:I

    .line 840
    return-void
.end method

.method public setHDIcon(I)V
    .registers 2
    .param p1, "hdIcon"    # I

    .line 911
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHDIcon:I

    .line 912
    return-void
.end method

.method public setHasCSFBError(Z)V
    .registers 2
    .param p1, "hasCSFBError"    # Z

    .line 1172
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasCSFBError:Z

    .line 1173
    return-void
.end method

.method public setHasDiversion(Z)V
    .registers 2
    .param p1, "hasDiversion"    # Z

    .line 1585
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasDiversion:Z

    .line 1586
    return-void
.end method

.method public setHistoryInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "historyInfo"    # Ljava/lang/String;

    .line 719
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHistoryInfo:Ljava/lang/String;

    .line 720
    return-void
.end method

.method public setIsFocus(Ljava/lang/String;)V
    .registers 2
    .param p1, "isFocus"    # Ljava/lang/String;

    .line 791
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsFocus:Ljava/lang/String;

    .line 792
    return-void
.end method

.method public setLetteringText(Ljava/lang/String;)V
    .registers 2
    .param p1, "letteringText"    # Ljava/lang/String;

    .line 627
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLetteringText:Ljava/lang/String;

    .line 628
    return-void
.end method

.method public setLineMsisdn(Ljava/lang/String;)V
    .registers 2
    .param p1, "lineMsisdn"    # Ljava/lang/String;

    .line 1037
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLineMsisdn:Ljava/lang/String;

    .line 1038
    return-void
.end method

.method public setLocalHoldTone(Ljava/lang/String;)V
    .registers 2
    .param p1, "localHoldTone"    # Ljava/lang/String;

    .line 965
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLocalHoldTone:Ljava/lang/String;

    .line 966
    return-void
.end method

.method public setMTConference(Ljava/lang/String;)V
    .registers 2
    .param p1, "mtConference"    # Ljava/lang/String;

    .line 893
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMTConference:Ljava/lang/String;

    .line 894
    return-void
.end method

.method public setMaxConferenceCallUsers(I)V
    .registers 2
    .param p1, "maxConferenceCallUsers"    # I

    .line 947
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMaxConferenceCallUsers:I

    .line 948
    return-void
.end method

.method public setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)V
    .registers 2
    .param p1, "mediaProfile"    # Lcom/sec/ims/volte2/data/MediaProfile;

    .line 701
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMediaProfile:Lcom/sec/ims/volte2/data/MediaProfile;

    .line 702
    return-void
.end method

.method public setModifyHeader(Ljava/lang/String;)V
    .registers 2
    .param p1, "modifyHeader"    # Ljava/lang/String;

    .line 875
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mModifyHeader:Ljava/lang/String;

    .line 876
    return-void
.end method

.method public setNetworkType(I)V
    .registers 2
    .param p1, "networkType"    # I

    .line 683
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNetworkType:I

    .line 684
    return-void
.end method

.method public setNumberPlus(Ljava/lang/String;)V
    .registers 2
    .param p1, "numberPlus"    # Ljava/lang/String;

    .line 755
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNumberPlus:Ljava/lang/String;

    .line 756
    return-void
.end method

.method public setOrganization(Ljava/lang/String;)V
    .registers 2
    .param p1, "organization"    # Ljava/lang/String;

    .line 1419
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOrganization:Ljava/lang/String;

    .line 1420
    return-void
.end method

.method public setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V
    .registers 2
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 537
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOriginatingUri:Lcom/sec/ims/util/ImsUri;

    .line 538
    return-void
.end method

.method public setP2p(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1307
    .local p1, "p2p":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mP2p:Ljava/util/List;

    .line 1308
    return-void
.end method

.method public setPhoneId(I)V
    .registers 2
    .param p1, "phoneId"    # I

    .line 1244
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhoneId:I

    .line 1245
    return-void
.end method

.method public setPhotoRing(Ljava/lang/String;)V
    .registers 2
    .param p1, "photoRing"    # Ljava/lang/String;

    .line 664
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhotoRing:Ljava/lang/String;

    .line 665
    return-void
.end method

.method public setPullCall(Z)V
    .registers 2
    .param p1, "isPullCall"    # Z

    .line 1091
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsPullCall:Z

    .line 1092
    return-void
.end method

.method public setRadioTech(I)V
    .registers 2
    .param p1, "radioTech"    # I

    .line 1262
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRadioTech:I

    .line 1263
    return-void
.end method

.method public setRecordState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 1504
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRecordState:I

    .line 1505
    return-void
.end method

.method public setReferredBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "referredBy"    # Ljava/lang/String;

    .line 983
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReferredBy:Ljava/lang/String;

    .line 984
    return-void
.end method

.method public setRejectCause(I)V
    .registers 2
    .param p1, "rejectCause"    # I

    .line 1612
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCause:I

    .line 1613
    return-void
.end method

.method public setRejectCode(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 1633
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCode:I

    .line 1634
    return-void
.end method

.method public setRejectProtocol(Ljava/lang/String;)V
    .registers 2
    .param p1, "rejectProtocol"    # Ljava/lang/String;

    .line 1625
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectProtocol:Ljava/lang/String;

    .line 1626
    return-void
.end method

.method public setRejectText(Ljava/lang/String;)V
    .registers 2
    .param p1, "rejectText"    # Ljava/lang/String;

    .line 1641
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectText:Ljava/lang/String;

    .line 1642
    return-void
.end method

.method public setRemoteHeld(Z)V
    .registers 2
    .param p1, "isRemoteHeld"    # Z

    .line 1674
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsRemoteHeld:Z

    .line 1675
    return-void
.end method

.method public setRemoteVideoCapa(Z)V
    .registers 2
    .param p1, "remoteVideoCapa"    # Z

    .line 857
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasRemoteVideoCapa:Z

    .line 858
    return-void
.end method

.method public setReplaceSipCallId(Ljava/lang/String;)V
    .registers 2
    .param p1, "replaceSipCallId"    # Ljava/lang/String;

    .line 1343
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReplaceSipCallId:Ljava/lang/String;

    .line 1344
    return-void
.end method

.method public setRetryAfterTime(I)V
    .registers 2
    .param p1, "retryAfterTime"    # I

    .line 929
    iput p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRetryAfterTime:I

    .line 930
    return-void
.end method

.method public setSamsungMdmnCall(Z)V
    .registers 2
    .param p1, "isSamsungMdmnCall"    # Z

    .line 1145
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsSamsungMdmnCall:Z

    .line 1146
    return-void
.end method

.method public setSipCallId(Ljava/lang/String;)V
    .registers 2
    .param p1, "sipCallId"    # Ljava/lang/String;

    .line 1001
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipCallId:Ljava/lang/String;

    .line 1002
    return-void
.end method

.method public setSipInviteMsg(Ljava/lang/String;)V
    .registers 2
    .param p1, "invite"    # Ljava/lang/String;

    .line 1019
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipInviteMsg:Ljava/lang/String;

    .line 1020
    return-void
.end method

.method public setUrn(Ljava/lang/String;)V
    .registers 2
    .param p1, "urn"    # Ljava/lang/String;

    .line 582
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mUrn:Ljava/lang/String;

    .line 583
    return-void
.end method

.method public setVCrtIsAlerting(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 1649
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVCrtIsAlerting:Z

    .line 1650
    return-void
.end method

.method public setVerstat(Ljava/lang/String;)V
    .registers 2
    .param p1, "verstat"    # Ljava/lang/String;

    .line 1388
    iput-object p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVerstat:Ljava/lang/String;

    .line 1389
    return-void
.end method

.method public setVideoCRBT(Z)V
    .registers 2
    .param p1, "isVideoCrbt"    # Z

    .line 1217
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbt:Z

    .line 1218
    return-void
.end method

.method public setVideoCrbtValid(Z)V
    .registers 2
    .param p1, "isVideoCrbtValid"    # Z

    .line 1235
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbtValid:Z

    .line 1236
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 405
    const-string v0, "callType: ["

    .line 406
    .local v0, "profile":Ljava/lang/String;
    iget v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCallType:I

    const-string v2, "UNKNOWN"

    packed-switch v1, :pswitch_data_236

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 412
    :pswitch_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "CALL_TYPE_VIDEO"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    goto :goto_43

    .line 408
    :pswitch_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "CALL_TYPE_VOICE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    nop

    .line 419
    :goto_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], direction: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    iget v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDirection:I

    packed-switch v1, :pswitch_data_23e

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_bd

    .line 431
    :pswitch_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "PULLED_MT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    goto :goto_bd

    .line 428
    :pswitch_81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "PULLED_MO"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    goto :goto_bd

    .line 425
    :pswitch_95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "MT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    goto :goto_bd

    .line 422
    :pswitch_a9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "MO"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    nop

    .line 437
    :goto_bd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], networkType: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    iget v1, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNetworkType:I

    sparse-switch v1, :sswitch_data_24a

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_137

    .line 446
    :sswitch_e7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "IMS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    goto :goto_137

    .line 443
    :sswitch_fb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    goto :goto_137

    .line 440
    :sswitch_10f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MOBILE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    goto :goto_137

    .line 449
    :sswitch_123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NONE (emergency)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    nop

    .line 455
    :goto_137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mIsVideoCrbt: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbt:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mIsVideoCrbtValid: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbtValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mP2p: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mP2p:Ljava/util/List;

    if-eqz v2, :cond_181

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_183

    :cond_181
    const-string v2, "null"

    :goto_183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mCmcBoundSessionId: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcBoundSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mRejectProtocol: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mRejectCode: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mRejectText: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mIsRemoteHeld: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsRemoteHeld:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mCmcEdCallSlot: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcEdCallSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    return-object v0

    nop

    :pswitch_data_236
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_1b
    .end packed-switch

    :pswitch_data_23e
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_95
        :pswitch_81
        :pswitch_6d
    .end packed-switch

    :sswitch_data_24a
    .sparse-switch
        -0x1 -> :sswitch_123
        0x0 -> :sswitch_10f
        0x1 -> :sswitch_fb
        0xb -> :sswitch_e7
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 200
    if-nez p1, :cond_3

    .line 201
    return-void

    .line 203
    :cond_3
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForegroundSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOriginatingUri:Lcom/sec/ims/util/ImsUri;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 210
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOriginatingUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_32

    .line 213
    :cond_2f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    :goto_32
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialingDevice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mUrn:Ljava/lang/String;

    if-eqz v0, :cond_49

    .line 218
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mUrn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4c

    .line 221
    :cond_49
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    :goto_4c
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCLI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLetteringText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAlertInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhotoRing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHistoryInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDtmfEvent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mNumberPlus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mConferenceSupported:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsFocus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReferredBy:Ljava/lang/String;

    if-eqz v0, :cond_86

    .line 234
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReferredBy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_89

    .line 237
    :cond_86
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    :goto_89
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipInviteMsg:Ljava/lang/String;

    if-eqz v0, :cond_9b

    .line 241
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mSipInviteMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9e

    .line 244
    :cond_9b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    :goto_9e
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mLineMsisdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDialogId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mMediaProfile:Lcom/sec/ims/volte2/data/MediaProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 250
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsPullCall:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedVideoCall:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsDowngradedAtEstablish:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsSamsungMdmnCall:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHDIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAdditionalSipHeaders:Ljava/util/HashMap;

    if-eqz v0, :cond_dd

    .line 256
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v0, "b":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAdditionalSipHeaders:Ljava/util/HashMap;

    const-string v4, "extra_header"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 259
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 260
    .end local v0    # "b":Landroid/os/Bundle;
    goto :goto_e0

    .line 261
    :cond_dd
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    :goto_e0
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasRemoteVideoCapa:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasCSFBError:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEmergencyRat:Ljava/lang/String;

    if-eqz v0, :cond_f7

    .line 268
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mEmergencyRat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_fa

    .line 271
    :cond_f7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    :goto_fa
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbt:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsVideoCrbtValid:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRadioTech:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mP2p:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 278
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcBoundSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mReplaceSipCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mForceCSFB:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVerstat:Ljava/lang/String;

    if-eqz v0, :cond_134

    .line 283
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVerstat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_137

    .line 286
    :cond_134
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    :goto_137
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mOrganization:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcDtmfKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mComposerData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 292
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRecordState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcCallTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mFeatureCaps:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mAudioEarlyMediaDir:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mHasDiversion:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mDelayRinging:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mRejectText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mVCrtIsAlerting:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mIsRemoteHeld:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget v0, p0, Lcom/sec/ims/volte2/data/CallProfile;->mCmcEdCallSlot:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    return-void
.end method
