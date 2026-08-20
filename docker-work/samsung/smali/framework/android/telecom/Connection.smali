.class public abstract Landroid/telecom/Connection;
.super Landroid/telecom/Conferenceable;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$FailureSignalingConnection;,
        Landroid/telecom/Connection$CallFilteringCompletionInfo;,
        Landroid/telecom/Connection$VideoProvider;,
        Landroid/telecom/Connection$RttModifyStatus;,
        Landroid/telecom/Connection$RttTextStream;,
        Landroid/telecom/Connection$Listener;,
        Landroid/telecom/Connection$AudioCodec;,
        Landroid/telecom/Connection$VerificationStatus;,
        Landroid/telecom/Connection$ConnectionState;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CODEC_AMR:I = 0x1

.field public static final whitelist AUDIO_CODEC_AMR_WB:I = 0x2

.field public static final whitelist AUDIO_CODEC_EVRC:I = 0x4

.field public static final whitelist AUDIO_CODEC_EVRC_B:I = 0x5

.field public static final whitelist AUDIO_CODEC_EVRC_NW:I = 0x7

.field public static final whitelist AUDIO_CODEC_EVRC_WB:I = 0x6

.field public static final whitelist AUDIO_CODEC_EVS_FB:I = 0x14

.field public static final whitelist AUDIO_CODEC_EVS_NB:I = 0x11

.field public static final whitelist AUDIO_CODEC_EVS_SWB:I = 0x13

.field public static final whitelist AUDIO_CODEC_EVS_WB:I = 0x12

.field public static final whitelist AUDIO_CODEC_G711A:I = 0xd

.field public static final whitelist AUDIO_CODEC_G711AB:I = 0xf

.field public static final whitelist AUDIO_CODEC_G711U:I = 0xb

.field public static final whitelist AUDIO_CODEC_G722:I = 0xe

.field public static final whitelist AUDIO_CODEC_G723:I = 0xc

.field public static final whitelist AUDIO_CODEC_G729:I = 0x10

.field public static final whitelist AUDIO_CODEC_GSM_EFR:I = 0x8

.field public static final whitelist AUDIO_CODEC_GSM_FR:I = 0x9

.field public static final whitelist AUDIO_CODEC_GSM_HR:I = 0xa

.field public static final whitelist AUDIO_CODEC_NONE:I = 0x0

.field public static final whitelist AUDIO_CODEC_QCELP13K:I = 0x3

.field public static final whitelist CAPABILITY_ADD_PARTICIPANT:I = 0x4000000

.field public static final whitelist CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO:I = 0x800000

.field public static final whitelist CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final whitelist CAPABILITY_CAN_PULL_CALL:I = 0x1000000

.field public static final whitelist CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION:I = 0x400000

.field public static final whitelist CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

.field public static final whitelist CAPABILITY_CONFERENCE_HAS_NO_CHILDREN:I = 0x200000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final whitelist CAPABILITY_HOLD:I = 0x1

.field public static final whitelist CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final whitelist CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final whitelist CAPABILITY_MUTE:I = 0x40

.field public static final whitelist CAPABILITY_REMOTE_PARTY_SUPPORTS_RTT:I = 0x20000000

.field public static final whitelist CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final whitelist CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final whitelist CAPABILITY_SPEED_UP_MT_AUDIO:I = 0x40000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL:I = 0x300

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_RX:I = 0x100

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_TX:I = 0x200

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL:I = 0xc00

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_RX:I = 0x400

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_TX:I = 0x800

.field public static final whitelist CAPABILITY_SUPPORT_DEFLECT:I = 0x2000000

.field public static final whitelist CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final whitelist CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final blacklist CAPABILITY_TRANSFER:I = 0x8000000

.field public static final blacklist CAPABILITY_TRANSFER_CONSULTATIVE:I = 0x10000000

.field public static final greylist-max-o CAPABILITY_UNUSED:I = 0x10

.field public static final greylist-max-o CAPABILITY_UNUSED_2:I = 0x4000

.field public static final greylist-max-o CAPABILITY_UNUSED_3:I = 0x8000

.field public static final greylist-max-o CAPABILITY_UNUSED_4:I = 0x10000

.field public static final greylist-max-o CAPABILITY_UNUSED_5:I = 0x20000

.field public static final whitelist EVENT_CALL_HOLD_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_HOLD_FAILED"

.field public static final whitelist EVENT_CALL_MERGE_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_MERGE_FAILED"

.field public static final whitelist EVENT_CALL_PULL_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_PULL_FAILED"

.field public static final blacklist EVENT_CALL_QUALITY_REPORT:Ljava/lang/String; = "android.telecom.event.CALL_QUALITY_REPORT"

.field public static final whitelist EVENT_CALL_REMOTELY_HELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_HELD"

.field public static final whitelist EVENT_CALL_REMOTELY_UNHELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_UNHELD"

.field public static final whitelist EVENT_CALL_SWITCH_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_SWITCH_FAILED"

.field public static final whitelist EVENT_DEVICE_TO_DEVICE_MESSAGE:Ljava/lang/String; = "android.telecom.event.DEVICE_TO_DEVICE_MESSAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EVENT_HANDOVER_COMPLETE:Ljava/lang/String; = "android.telecom.event.HANDOVER_COMPLETE"

.field public static final greylist-max-o EVENT_HANDOVER_FAILED:Ljava/lang/String; = "android.telecom.event.HANDOVER_FAILED"

.field public static final whitelist EVENT_MERGE_COMPLETE:Ljava/lang/String; = "android.telecom.event.MERGE_COMPLETE"

.field public static final whitelist EVENT_MERGE_START:Ljava/lang/String; = "android.telecom.event.MERGE_START"

.field public static final whitelist EVENT_ON_HOLD_TONE_END:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_END"

.field public static final whitelist EVENT_ON_HOLD_TONE_START:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_START"

.field public static final whitelist EVENT_RTT_AUDIO_INDICATION_CHANGED:Ljava/lang/String; = "android.telecom.event.RTT_AUDIO_INDICATION_CHANGED"

.field public static final blacklist EXTRA_ADD_TO_CONFERENCE_ID:Ljava/lang/String; = "android.telecom.extra.ADD_TO_CONFERENCE_ID"

.field public static final whitelist EXTRA_ANSWERING_DROPS_FG_CALL:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL"

.field public static final whitelist EXTRA_ANSWERING_DROPS_FG_CALL_APP_NAME:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL_APP_NAME"

.field public static final whitelist EXTRA_AUDIO_CODEC:Ljava/lang/String; = "android.telecom.extra.AUDIO_CODEC"

.field public static final whitelist EXTRA_AUDIO_CODEC_BANDWIDTH_KHZ:Ljava/lang/String; = "android.telecom.extra.AUDIO_CODEC_BANDWIDTH_KHZ"

.field public static final whitelist EXTRA_AUDIO_CODEC_BITRATE_KBPS:Ljava/lang/String; = "android.telecom.extra.AUDIO_CODEC_BITRATE_KBPS"

.field public static final blacklist EXTRA_CALLER_NUMBER_VERIFICATION_STATUS:Ljava/lang/String; = "android.telecom.extra.CALLER_NUMBER_VERIFICATION_STATUS"

.field public static final blacklist EXTRA_CALL_QUALITY_REPORT:Ljava/lang/String; = "android.telecom.extra.CALL_QUALITY_REPORT"

.field public static final whitelist EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final whitelist EXTRA_CHILD_ADDRESS:Ljava/lang/String; = "android.telecom.extra.CHILD_ADDRESS"

.field public static final whitelist EXTRA_DEVICE_TO_DEVICE_MESSAGE_TYPE:Ljava/lang/String; = "android.telecom.extra.DEVICE_TO_DEVICE_MESSAGE_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DEVICE_TO_DEVICE_MESSAGE_VALUE:Ljava/lang/String; = "android.telecom.extra.DEVICE_TO_DEVICE_MESSAGE_VALUE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DISABLE_ADD_CALL:Ljava/lang/String; = "android.telecom.extra.DISABLE_ADD_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_IS_DEVICE_TO_DEVICE_COMMUNICATION_AVAILABLE:Ljava/lang/String; = "android.telecom.extra.IS_DEVICE_TO_DEVICE_COMMUNICATION_AVAILABLE"

.field public static final whitelist EXTRA_IS_RTT_AUDIO_PRESENT:Ljava/lang/String; = "android.telecom.extra.IS_RTT_AUDIO_PRESENT"

.field public static final whitelist EXTRA_LAST_FORWARDED_NUMBER:Ljava/lang/String; = "android.telecom.extra.LAST_FORWARDED_NUMBER"

.field public static final whitelist EXTRA_LAST_KNOWN_CELL_IDENTITY:Ljava/lang/String; = "android.telecom.extra.LAST_KNOWN_CELL_IDENTITY"

.field public static final greylist-max-o EXTRA_ORIGINAL_CONNECTION_ID:Ljava/lang/String; = "android.telecom.extra.ORIGINAL_CONNECTION_ID"

.field public static final blacklist EXTRA_REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME:Ljava/lang/String; = "android.telecom.extra.REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME"

.field public static final blacklist EXTRA_REMOTE_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

.field public static final whitelist EXTRA_SIP_INVITE:Ljava/lang/String; = "android.telecom.extra.SIP_INVITE"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "Telecom-Connection"

.field private static final greylist-max-o PII_DEBUG:Z

.field public static final whitelist PROPERTY_ASSISTED_DIALING:I = 0x200

.field public static final whitelist PROPERTY_CROSS_SIM:I = 0x2000

.field public static final whitelist PROPERTY_EMERGENCY_CALLBACK_MODE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_GENERIC_CONFERENCE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_HAS_CDMA_VOICE_PRIVACY:I = 0x20

.field public static final whitelist PROPERTY_HIGH_DEF_AUDIO:I = 0x4

.field public static final whitelist PROPERTY_IS_ADHOC_CONFERENCE:I = 0x1000

.field public static final whitelist PROPERTY_IS_DOWNGRADED_CONFERENCE:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_IS_EXTERNAL_CALL:I = 0x10

.field public static final whitelist PROPERTY_IS_RTT:I = 0x100

.field public static final whitelist PROPERTY_NETWORK_IDENTIFIED_EMERGENCY_CALL:I = 0x400

.field public static final whitelist PROPERTY_REMOTELY_HOSTED:I = 0x800
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_SELF_MANAGED:I = 0x80

.field public static final whitelist PROPERTY_WIFI:I = 0x8

.field public static final whitelist SEM_EVENT_CALL_CMC_SECONDARY_DEVICE_PULL:Ljava/lang/String; = "com.samsung.telecom.event.CALL_SECONDARY_DEVICE_PULL"

.field public static final whitelist STATE_ACTIVE:I = 0x4

.field public static final whitelist STATE_DIALING:I = 0x3

.field public static final whitelist STATE_DISCONNECTED:I = 0x6

.field public static final whitelist STATE_HOLDING:I = 0x5

.field public static final whitelist STATE_INITIALIZING:I = 0x0

.field public static final whitelist STATE_NEW:I = 0x1

.field public static final whitelist STATE_PULLING_CALL:I = 0x7

.field public static final whitelist STATE_RINGING:I = 0x2

.field public static final whitelist VERIFICATION_STATUS_FAILED:I = 0x2

.field public static final whitelist VERIFICATION_STATUS_NOT_VERIFIED:I = 0x0

.field public static final whitelist VERIFICATION_STATUS_PASSED:I = 0x1


# instance fields
.field private greylist-max-o mAddress:Landroid/net/Uri;

.field private greylist-max-o mAddressPresentation:I

.field private greylist-max-o mAudioModeIsVoip:Z

.field private greylist-max-o mCallAudioState:Landroid/telecom/CallAudioState;

.field private blacklist mCallDirection:I

.field private greylist-max-o mCallerDisplayName:Ljava/lang/String;

.field private greylist-max-o mCallerDisplayNamePresentation:I

.field private blacklist mCallerNumberVerificationStatus:I

.field private greylist-max-o mConference:Landroid/telecom/Conference;

.field private final greylist-max-o mConferenceDeathListener:Landroid/telecom/Conference$Listener;

.field private final greylist-max-o mConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mConnectElapsedTimeMillis:J

.field private greylist-max-o mConnectTimeMillis:J

.field private greylist-max-o mConnectionCapabilities:I

.field private final greylist-max-o mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private greylist-max-o mConnectionProperties:I

.field private greylist-max-o mConnectionService:Landroid/telecom/ConnectionService;

.field private greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mExtrasLock:Ljava/lang/Object;

.field private final greylist-max-o mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private greylist-max-o mPreviousExtraKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRingbackRequested:Z

.field private greylist-max-o mState:I

.field private greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private greylist-max-o mSupportedAudioRoutes:I

.field private greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private final greylist-max-o mUnmodifiableConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private greylist-max-o mVideoState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConferenceables(Landroid/telecom/Connection;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfireOnConferenceableConnectionsChanged(Landroid/telecom/Connection;)V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1067
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 2315
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    .line 2239
    new-instance v0, Landroid/telecom/Connection$1;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$1;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    .line 2248
    new-instance v0, Landroid/telecom/Connection$2;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$2;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    .line 2262
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    .line 2264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    .line 2265
    nop

    .line 2266
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    .line 2272
    iput v3, p0, Landroid/telecom/Connection;->mState:I

    .line 2278
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 2281
    const/16 v0, 0xf

    iput v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    .line 2284
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    .line 2285
    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    .line 2292
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    .line 2297
    const/4 v0, -0x1

    iput v0, p0, Landroid/telecom/Connection;->mCallDirection:I

    .line 2315
    return-void
.end method

.method public static whitelist capabilitiesToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "capabilities"    # I

    .line 1076
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o capabilitiesToStringInternal(IZ)Ljava/lang/String;
    .registers 5
    .param p0, "capabilities"    # I
    .param p1, "isLong"    # Z

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1093
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    if-eqz p1, :cond_11

    .line 1095
    const-string v1, "Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    :cond_11
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 1099
    if-eqz p1, :cond_1b

    const-string v1, " CAPABILITY_HOLD"

    goto :goto_1d

    :cond_1b
    const-string v1, " hld"

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    :cond_20
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    .line 1102
    if-eqz p1, :cond_2a

    const-string v1, " CAPABILITY_SUPPORT_HOLD"

    goto :goto_2c

    :cond_2a
    const-string v1, " sup_hld"

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    :cond_2f
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3e

    .line 1105
    if-eqz p1, :cond_39

    const-string v1, " CAPABILITY_MERGE_CONFERENCE"

    goto :goto_3b

    :cond_39
    const-string v1, " mrg_cnf"

    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    :cond_3e
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4e

    .line 1108
    if-eqz p1, :cond_49

    const-string v1, " CAPABILITY_SWAP_CONFERENCE"

    goto :goto_4b

    :cond_49
    const-string v1, " swp_cnf"

    :goto_4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    :cond_4e
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5e

    .line 1111
    if-eqz p1, :cond_59

    const-string v1, " CAPABILITY_RESPOND_VIA_TEXT"

    goto :goto_5b

    :cond_59
    const-string v1, " txt"

    :goto_5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    :cond_5e
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6e

    .line 1114
    if-eqz p1, :cond_69

    const-string v1, " CAPABILITY_MUTE"

    goto :goto_6b

    :cond_69
    const-string v1, " mut"

    :goto_6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    :cond_6e
    and-int/lit16 v1, p0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7e

    .line 1117
    if-eqz p1, :cond_79

    const-string v1, " CAPABILITY_MANAGE_CONFERENCE"

    goto :goto_7b

    :cond_79
    const-string v1, " mng_cnf"

    :goto_7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    :cond_7e
    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8e

    .line 1120
    if-eqz p1, :cond_89

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    goto :goto_8b

    :cond_89
    const-string v1, " VTlrx"

    :goto_8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    :cond_8e
    and-int/lit16 v1, p0, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_9e

    .line 1123
    if-eqz p1, :cond_99

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    goto :goto_9b

    :cond_99
    const-string v1, " VTltx"

    :goto_9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    :cond_9e
    and-int/lit16 v1, p0, 0x300

    const/16 v2, 0x300

    if-ne v1, v2, :cond_ae

    .line 1127
    if-eqz p1, :cond_a9

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    goto :goto_ab

    :cond_a9
    const-string v1, " VTlbi"

    :goto_ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    :cond_ae
    and-int/lit16 v1, p0, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_be

    .line 1130
    if-eqz p1, :cond_b9

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    goto :goto_bb

    :cond_b9
    const-string v1, " VTrrx"

    :goto_bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    :cond_be
    and-int/lit16 v1, p0, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_ce

    .line 1133
    if-eqz p1, :cond_c9

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    goto :goto_cb

    :cond_c9
    const-string v1, " VTrtx"

    :goto_cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    :cond_ce
    and-int/lit16 v1, p0, 0xc00

    const/16 v2, 0xc00

    if-ne v1, v2, :cond_de

    .line 1137
    if-eqz p1, :cond_d9

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    goto :goto_db

    :cond_d9
    const-string v1, " VTrbi"

    :goto_db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    :cond_de
    const/high16 v1, 0x800000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_ee

    .line 1141
    if-eqz p1, :cond_e9

    const-string v1, " CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO"

    goto :goto_eb

    :cond_e9
    const-string v1, " !v2a"

    :goto_eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    :cond_ee
    const/high16 v1, 0x40000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_fe

    .line 1144
    if-eqz p1, :cond_f9

    const-string v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    goto :goto_fb

    :cond_f9
    const-string v1, " spd_aud"

    :goto_fb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    :cond_fe
    const/high16 v1, 0x80000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_10e

    .line 1147
    if-eqz p1, :cond_109

    const-string v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    goto :goto_10b

    :cond_109
    const-string v1, " a2v"

    :goto_10b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    :cond_10e
    const/high16 v1, 0x100000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_11e

    .line 1150
    if-eqz p1, :cond_119

    const-string v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    goto :goto_11b

    :cond_119
    const-string v1, " paus_VT"

    :goto_11b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    :cond_11e
    const/high16 v1, 0x200000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_12e

    .line 1154
    if-eqz p1, :cond_129

    const-string v1, " CAPABILITY_SINGLE_PARTY_CONFERENCE"

    goto :goto_12b

    :cond_129
    const-string v1, " 1p_cnf"

    :goto_12b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    :cond_12e
    const/high16 v1, 0x400000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_13e

    .line 1158
    if-eqz p1, :cond_139

    const-string v1, " CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION"

    goto :goto_13b

    :cond_139
    const-string v1, " rsp_by_con"

    :goto_13b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    :cond_13e
    const/high16 v1, 0x1000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_14e

    .line 1161
    if-eqz p1, :cond_149

    const-string v1, " CAPABILITY_CAN_PULL_CALL"

    goto :goto_14b

    :cond_149
    const-string v1, " pull"

    :goto_14b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    :cond_14e
    const/high16 v1, 0x2000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_15e

    .line 1164
    if-eqz p1, :cond_159

    const-string v1, " CAPABILITY_SUPPORT_DEFLECT"

    goto :goto_15b

    :cond_159
    const-string v1, " sup_def"

    :goto_15b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    :cond_15e
    const/high16 v1, 0x4000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_16e

    .line 1167
    if-eqz p1, :cond_169

    const-string v1, " CAPABILITY_ADD_PARTICIPANT"

    goto :goto_16b

    :cond_169
    const-string v1, " add_participant"

    :goto_16b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    :cond_16e
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    const/high16 v2, 0x8000000

    if-ne v1, v2, :cond_17f

    .line 1170
    if-eqz p1, :cond_17a

    const-string v1, " CAPABILITY_TRANSFER"

    goto :goto_17c

    :cond_17a
    const-string v1, " sup_trans"

    :goto_17c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    :cond_17f
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    const/high16 v2, 0x10000000

    if-ne v1, v2, :cond_190

    .line 1174
    if-eqz p1, :cond_18b

    const-string v1, " CAPABILITY_TRANSFER_CONSULTATIVE"

    goto :goto_18d

    :cond_18b
    const-string v1, " sup_cTrans"

    :goto_18d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    :cond_190
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    const/high16 v2, 0x20000000

    if-ne v1, v2, :cond_1a1

    .line 1178
    if-eqz p1, :cond_19c

    const-string v1, " CAPABILITY_REMOTE_PARTY_SUPPORTS_RTT"

    goto :goto_19e

    :cond_19c
    const-string v1, " sup_rtt"

    :goto_19e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    :cond_1a1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o capabilitiesToStringShort(I)Ljava/lang/String;
    .registers 2
    .param p0, "capabilities"    # I

    .line 1088
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final greylist-max-o clearConferenceableList()V
    .registers 5

    .line 3890
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conferenceable;

    .line 3891
    .local v1, "c":Landroid/telecom/Conferenceable;
    instance-of v2, v1, Landroid/telecom/Connection;

    if-eqz v2, :cond_1f

    .line 3892
    move-object v2, v1

    check-cast v2, Landroid/telecom/Connection;

    .line 3893
    .local v2, "connection":Landroid/telecom/Connection;
    iget-object v3, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .end local v2    # "connection":Landroid/telecom/Connection;
    goto :goto_2c

    .line 3894
    :cond_1f
    instance-of v2, v1, Landroid/telecom/Conference;

    if-eqz v2, :cond_2c

    .line 3895
    move-object v2, v1

    check-cast v2, Landroid/telecom/Conference;

    .line 3896
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v3, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_2d

    .line 3894
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_2c
    :goto_2c
    nop

    .line 3898
    .end local v1    # "c":Landroid/telecom/Conferenceable;
    :goto_2d
    goto :goto_6

    .line 3899
    :cond_2e
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3900
    return-void
.end method

.method public static whitelist createCanceledConnection()Landroid/telecom/Connection;
    .registers 3

    .line 3874
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-direct {v0, v1}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method public static whitelist createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;
    .registers 2
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 3850
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method private final greylist-max-o fireConferenceChanged()V
    .registers 4

    .line 3884
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3885
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    .line 3886
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 3887
    :cond_18
    return-void
.end method

.method private final greylist-max-o fireOnConferenceableConnectionsChanged()V
    .registers 4

    .line 3878
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3879
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    .line 3880
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 3881
    :cond_1a
    return-void
.end method

.method public static whitelist propertiesToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "properties"    # I

    .line 1191
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o propertiesToStringInternal(IZ)Ljava/lang/String;
    .registers 5
    .param p0, "properties"    # I
    .param p1, "isLong"    # Z

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1207
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    if-eqz p1, :cond_11

    .line 1209
    const-string v1, "Properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    :cond_11
    and-int/lit16 v1, p0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_21

    .line 1213
    if-eqz p1, :cond_1c

    const-string v1, " PROPERTY_SELF_MANAGED"

    goto :goto_1e

    :cond_1c
    const-string v1, " self_mng"

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    :cond_21
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_30

    .line 1217
    if-eqz p1, :cond_2b

    const-string v1, " PROPERTY_EMERGENCY_CALLBACK_MODE"

    goto :goto_2d

    :cond_2b
    const-string v1, " ecbm"

    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    :cond_30
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3f

    .line 1221
    if-eqz p1, :cond_3a

    const-string v1, " PROPERTY_HIGH_DEF_AUDIO"

    goto :goto_3c

    :cond_3a
    const-string v1, " HD"

    :goto_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    :cond_3f
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4f

    .line 1225
    if-eqz p1, :cond_4a

    const-string v1, " PROPERTY_WIFI"

    goto :goto_4c

    :cond_4a
    const-string v1, " wifi"

    :goto_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    :cond_4f
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5e

    .line 1229
    if-eqz p1, :cond_59

    const-string v1, " PROPERTY_GENERIC_CONFERENCE"

    goto :goto_5b

    :cond_59
    const-string v1, " gen_conf"

    :goto_5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    :cond_5e
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6e

    .line 1233
    if-eqz p1, :cond_69

    const-string v1, " PROPERTY_IS_EXTERNAL_CALL"

    goto :goto_6b

    :cond_69
    const-string v1, " xtrnl"

    :goto_6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    :cond_6e
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7e

    .line 1237
    if-eqz p1, :cond_79

    const-string v1, " PROPERTY_HAS_CDMA_VOICE_PRIVACY"

    goto :goto_7b

    :cond_79
    const-string v1, " priv"

    :goto_7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    :cond_7e
    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8e

    .line 1241
    if-eqz p1, :cond_89

    const-string v1, " PROPERTY_IS_RTT"

    goto :goto_8b

    :cond_89
    const-string v1, " rtt"

    :goto_8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    :cond_8e
    and-int/lit16 v1, p0, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_9e

    .line 1246
    if-eqz p1, :cond_99

    const-string v1, " PROPERTY_NETWORK_IDENTIFIED_EMERGENCY_CALL"

    goto :goto_9b

    :cond_99
    const-string v1, " ecall"

    :goto_9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    :cond_9e
    and-int/lit16 v1, p0, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_ae

    .line 1250
    if-eqz p1, :cond_a9

    const-string v1, " PROPERTY_REMOTELY_HOSTED"

    goto :goto_ab

    :cond_a9
    const-string v1, " remote_hst"

    :goto_ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    :cond_ae
    and-int/lit16 v1, p0, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_be

    .line 1254
    if-eqz p1, :cond_b9

    const-string v1, " PROPERTY_IS_ADHOC_CONFERENCE"

    goto :goto_bb

    :cond_b9
    const-string v1, " adhoc_conf"

    :goto_bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    :cond_be
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_ce

    .line 1258
    if-eqz p1, :cond_c9

    const-string v1, " PROPERTY_IS_DOWNGRADED_CONFERENCE"

    goto :goto_cb

    :cond_c9
    const-string v1, " dngrd_conf"

    :goto_cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    :cond_ce
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o propertiesToStringShort(I)Ljava/lang/String;
    .registers 2
    .param p0, "properties"    # I

    .line 1202
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o setState(I)V
    .registers 3
    .param p1, "state"    # I

    .line 3796
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telecom/Connection;->setState(IZ)V

    .line 3797
    return-void
.end method

.method private blacklist setState(IZ)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "forcedUpdate"    # Z

    .line 3800
    const/4 v0, 0x0

    if-eqz p2, :cond_b

    .line 3801
    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "setState(forced)"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3804
    :cond_b
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3805
    iget v1, p0, Landroid/telecom/Connection;->mState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1d

    if-eq v1, p1, :cond_1d

    .line 3806
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Connection already DISCONNECTED; cannot transition out of this state."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3807
    return-void

    .line 3813
    :cond_1d
    if-ne v1, p1, :cond_21

    if-eqz p2, :cond_4b

    .line 3815
    :cond_21
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string/jumbo v0, "setState: %s"

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3816
    iput p1, p0, Landroid/telecom/Connection;->mState:I

    .line 3817
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    .line 3818
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3819
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStateChanged(Landroid/telecom/Connection;I)V

    .line 3820
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_3b

    .line 3822
    :cond_4b
    return-void
.end method

.method public static whitelist stateToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "state"    # I

    .line 2573
    packed-switch p0, :pswitch_data_30

    .line 2591
    const-class v0, Landroid/telecom/Connection;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unknown state %d"

    invoke-static {v0, v2, v1}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2592
    const-string v0, "UNKNOWN"

    return-object v0

    .line 2583
    :pswitch_17
    const-string v0, "PULLING_CALL"

    return-object v0

    .line 2589
    :pswitch_1a
    const-string v0, "DISCONNECTED"

    return-object v0

    .line 2587
    :pswitch_1d
    const-string v0, "HOLDING"

    return-object v0

    .line 2585
    :pswitch_20
    const-string v0, "ACTIVE"

    return-object v0

    .line 2581
    :pswitch_23
    const-string v0, "DIALING"

    return-object v0

    .line 2579
    :pswitch_26
    const-string v0, "RINGING"

    return-object v0

    .line 2577
    :pswitch_29
    const-string v0, "NEW"

    return-object v0

    .line 2575
    :pswitch_2c
    const-string v0, "INITIALIZING"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method static greylist-max-o toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "number"    # Ljava/lang/String;

    .line 3771
    if-nez p0, :cond_5

    .line 3772
    const-string v0, ""

    return-object v0

    .line 3775
    :cond_5
    sget-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    if-eqz v0, :cond_a

    .line 3777
    return-object p0

    .line 3782
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3783
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 3784
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3785
    .local v2, "c":C
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_27

    goto :goto_2d

    .line 3788
    :cond_27
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 3786
    :cond_2d
    :goto_2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3783
    .end local v2    # "c":C
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 3791
    .end local v1    # "i":I
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method final greylist-max-o addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .registers 3
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .line 2512
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2513
    return-object p0
.end method

.method public greylist-max-o checkImmutable()V
    .registers 1

    .line 3860
    return-void
.end method

.method public final whitelist destroy()V
    .registers 3

    .line 2879
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2880
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onDestroyed(Landroid/telecom/Connection;)V

    .line 2881
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 2882
    :cond_16
    return-void
.end method

.method public final whitelist getAddress()Landroid/net/Uri;
    .registers 2

    .line 2336
    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public final whitelist getAddressPresentation()I
    .registers 2

    .line 2344
    iget v0, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    return v0
.end method

.method public final whitelist getAudioModeIsVoip()Z
    .registers 2

    .line 2427
    iget-boolean v0, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    return v0
.end method

.method public final whitelist getAudioState()Landroid/telecom/AudioState;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2392
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    if-nez v0, :cond_6

    .line 2393
    const/4 v0, 0x0

    return-object v0

    .line 2395
    :cond_6
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final whitelist getCallAudioState()Landroid/telecom/CallAudioState;
    .registers 2

    .line 2404
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final blacklist getCallDirection()I
    .registers 2

    .line 4021
    iget v0, p0, Landroid/telecom/Connection;->mCallDirection:I

    return v0
.end method

.method public final whitelist getCallerDisplayName()Ljava/lang/String;
    .registers 2

    .line 2351
    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getCallerDisplayNamePresentation()I
    .registers 2

    .line 2359
    iget v0, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final whitelist getCallerNumberVerificationStatus()I
    .registers 2

    .line 4044
    iget v0, p0, Landroid/telecom/Connection;->mCallerNumberVerificationStatus:I

    return v0
.end method

.method public final whitelist getConference()Landroid/telecom/Conference;
    .registers 2

    .line 2412
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method public final whitelist getConferenceables()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation

    .line 3014
    iget-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    return-object v0
.end method

.method public final whitelist getConnectTimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2445
    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final whitelist getConnectionCapabilities()I
    .registers 2

    .line 2600
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    return v0
.end method

.method public final whitelist getConnectionProperties()I
    .registers 2

    .line 2607
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    return v0
.end method

.method public final whitelist getConnectionStartElapsedRealtimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2469
    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    return-wide v0
.end method

.method public final whitelist getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .line 2535
    iget-object v0, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final whitelist getExtras()Landroid/os/Bundle;
    .registers 5

    .line 2494
    const/4 v0, 0x0

    .line 2495
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2496
    :try_start_4
    iget-object v2, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_10

    .line 2497
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v2

    .line 2499
    :cond_10
    monitor-exit v1

    .line 2500
    return-object v0

    .line 2499
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v2
.end method

.method public whitelist getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3970
    iget-object v0, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public final whitelist getState()I
    .registers 2

    .line 2366
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    return v0
.end method

.method public final whitelist getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    .line 2476
    iget-object v0, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final greylist-max-o getSupportedAudioRoutes()I
    .registers 2

    .line 2616
    iget v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    return v0
.end method

.method public final whitelist getTelecomCallId()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2329
    iget-object v0, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .registers 2

    .line 2757
    iget-object v0, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public final whitelist getVideoState()I
    .registers 2

    .line 2379
    iget v0, p0, Landroid/telecom/Connection;->mVideoState:I

    return v0
.end method

.method final greylist-max-o handleExtrasChanged(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 3909
    const/4 v0, 0x0

    .line 3910
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3911
    :try_start_4
    iput-object p1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    .line 3912
    if-eqz p1, :cond_10

    .line 3913
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v2

    .line 3915
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 3916
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 3917
    return-void

    .line 3915
    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v2
.end method

.method public whitelist handleRttUpgradeResponse(Landroid/telecom/Connection$RttTextStream;)V
    .registers 2
    .param p1, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 3636
    return-void
.end method

.method public final whitelist isRingbackRequested()Z
    .registers 2

    .line 2420
    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    return v0
.end method

.method synthetic blacklist lambda$sendRemoteRttRequest$3$android-telecom-Connection(Landroid/telecom/Connection$Listener;)V
    .registers 2
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .line 3252
    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRemoteRttRequest(Landroid/telecom/Connection;)V

    return-void
.end method

.method synthetic blacklist lambda$sendRttInitiationFailure$1$android-telecom-Connection(ILandroid/telecom/Connection$Listener;)V
    .registers 3
    .param p1, "reason"    # I
    .param p2, "l"    # Landroid/telecom/Connection$Listener;

    .line 3236
    invoke-virtual {p2, p0, p1}, Landroid/telecom/Connection$Listener;->onRttInitiationFailure(Landroid/telecom/Connection;I)V

    return-void
.end method

.method synthetic blacklist lambda$sendRttInitiationSuccess$0$android-telecom-Connection(Landroid/telecom/Connection$Listener;)V
    .registers 2
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .line 3225
    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRttInitiationSuccess(Landroid/telecom/Connection;)V

    return-void
.end method

.method synthetic blacklist lambda$sendRttSessionRemotelyTerminated$2$android-telecom-Connection(Landroid/telecom/Connection$Listener;)V
    .registers 2
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .line 3244
    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRttSessionRemotelyTerminated(Landroid/telecom/Connection;)V

    return-void
.end method

.method public final whitelist notifyConferenceMergeFailed()V
    .registers 3

    .line 3924
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3925
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onConferenceMergeFailed(Landroid/telecom/Connection;)V

    .line 3926
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 3927
    :cond_16
    return-void
.end method

.method public greylist-max-o notifyPhoneAccountChanged(Landroid/telecom/PhoneAccountHandle;)V
    .registers 4
    .param p1, "pHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 3936
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3937
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPhoneAccountChanged(Landroid/telecom/Connection;Landroid/telecom/PhoneAccountHandle;)V

    .line 3938
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 3939
    :cond_16
    return-void
.end method

.method public whitelist onAbort()V
    .registers 1

    .line 3342
    return-void
.end method

.method public whitelist onAddConferenceParticipants(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 3337
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    return-void
.end method

.method public whitelist onAnswer()V
    .registers 2

    .line 3394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAnswer(I)V

    .line 3395
    return-void
.end method

.method public whitelist onAnswer(I)V
    .registers 2
    .param p1, "videoState"    # I

    .line 3373
    return-void
.end method

.method public whitelist onAudioStateChanged(Landroid/telecom/AudioState;)V
    .registers 2
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3264
    return-void
.end method

.method public whitelist onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .registers 2
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .line 3271
    return-void
.end method

.method public whitelist onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3513
    return-void
.end method

.method public whitelist onCallFilteringCompleted(Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    .registers 2
    .param p1, "callFilteringCompletionInfo"    # Landroid/telecom/Connection$CallFilteringCompletionInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3767
    return-void
.end method

.method public whitelist onDeflect(Landroid/net/Uri;)V
    .registers 2
    .param p1, "address"    # Landroid/net/Uri;

    .line 3401
    return-void
.end method

.method public whitelist onDisconnect()V
    .registers 1

    .line 3316
    return-void
.end method

.method public greylist-max-o onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .registers 2
    .param p1, "endpoint"    # Landroid/net/Uri;

    .line 3325
    return-void
.end method

.method public whitelist onExtrasChanged(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 3534
    return-void
.end method

.method public whitelist onHandoverComplete()V
    .registers 1

    .line 3522
    return-void
.end method

.method public whitelist onHold()V
    .registers 1

    .line 3347
    return-void
.end method

.method public whitelist onPlayDtmfTone(C)V
    .registers 2
    .param p1, "c"    # C

    .line 3306
    return-void
.end method

.method public whitelist onPostDialContinue(Z)V
    .registers 2
    .param p1, "proceed"    # Z

    .line 3482
    return-void
.end method

.method public whitelist onPullExternalCall()V
    .registers 1

    .line 3495
    return-void
.end method

.method public whitelist onReject()V
    .registers 1

    .line 3421
    return-void
.end method

.method public whitelist onReject(I)V
    .registers 2
    .param p1, "rejectReason"    # I

    .line 3432
    return-void
.end method

.method public whitelist onReject(Ljava/lang/String;)V
    .registers 2
    .param p1, "replyMessage"    # Ljava/lang/String;

    .line 3438
    return-void
.end method

.method public whitelist onSeparate()V
    .registers 1

    .line 3330
    return-void
.end method

.method public whitelist onShowIncomingCallUi()V
    .registers 1

    .line 3610
    return-void
.end method

.method public whitelist onSilence()V
    .registers 1

    .line 3477
    return-void
.end method

.method public whitelist onStartRtt(Landroid/telecom/Connection$RttTextStream;)V
    .registers 2
    .param p1, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 3620
    return-void
.end method

.method public whitelist onStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 3299
    return-void
.end method

.method public whitelist onStopDtmfTone()V
    .registers 1

    .line 3311
    return-void
.end method

.method public whitelist onStopRtt()V
    .registers 1

    .line 3626
    return-void
.end method

.method public whitelist onTrackedByNonUiService(Z)V
    .registers 2
    .param p1, "isTracked"    # Z

    .line 3291
    return-void
.end method

.method public blacklist onTransfer(Landroid/net/Uri;Z)V
    .registers 3
    .param p1, "number"    # Landroid/net/Uri;
    .param p2, "isConfirmationRequired"    # Z

    .line 3451
    return-void
.end method

.method public blacklist onTransfer(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "otherConnection"    # Landroid/telecom/Connection;

    .line 3458
    return-void
.end method

.method public whitelist onUnhold()V
    .registers 1

    .line 3352
    return-void
.end method

.method public whitelist onUsingAlternativeUi(Z)V
    .registers 2
    .param p1, "isUsingAlternativeUi"    # Z

    .line 3282
    return-void
.end method

.method public final whitelist putExtras(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 3130
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3131
    if-nez p1, :cond_6

    .line 3132
    return-void

    .line 3137
    :cond_6
    iget-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3138
    :try_start_9
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_14

    .line 3139
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    .line 3141
    :cond_14
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3142
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3143
    .local v1, "listenerExtras":Landroid/os/Bundle;
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_3d

    .line 3144
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection$Listener;

    .line 3147
    .local v2, "l":Landroid/telecom/Connection$Listener;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p0, v3}, Landroid/telecom/Connection$Listener;->onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V

    .line 3148
    .end local v2    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_27

    .line 3149
    :cond_3c
    return-void

    .line 3143
    .end local v1    # "listenerExtras":Landroid/os/Bundle;
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method final greylist-max-o removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .registers 3
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .line 2525
    if-eqz p1, :cond_7

    .line 2526
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2528
    :cond_7
    return-object p0
.end method

.method public final whitelist removeExtras(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3157
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3158
    :try_start_3
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1d

    .line 3159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3160
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3161
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_b

    .line 3163
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_39

    .line 3164
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3165
    .local v0, "unmodifiableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection$Listener;

    .line 3166
    .local v2, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v2, p0, v0}, Landroid/telecom/Connection$Listener;->onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V

    .line 3167
    .end local v2    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_28

    .line 3168
    :cond_38
    return-void

    .line 3163
    .end local v0    # "unmodifiableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public final varargs whitelist removeExtras([Ljava/lang/String;)V
    .registers 3
    .param p1, "keys"    # [Ljava/lang/String;

    .line 3176
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    .line 3177
    return-void
.end method

.method public whitelist requestBluetoothAudio(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 3213
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3214
    .local v1, "l":Landroid/telecom/Connection$Listener;
    const/4 v2, 0x2

    .line 3215
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 3214
    invoke-virtual {v1, p0, v2, v3}, Landroid/telecom/Connection$Listener;->onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V

    .line 3216
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 3217
    :cond_1b
    return-void
.end method

.method public final greylist-max-o resetConference()V
    .registers 3

    .line 3068
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-eqz v0, :cond_12

    .line 3069
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Conference reset"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3070
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 3071
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 3073
    :cond_12
    return-void
.end method

.method public final whitelist resetConnectionTime()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3005
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3006
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onConnectionTimeReset(Landroid/telecom/Connection;)V

    .line 3007
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 3008
    :cond_16
    return-void
.end method

.method public whitelist sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 4011
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 4012
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4013
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 4014
    :cond_16
    return-void
.end method

.method public final whitelist sendRemoteRttRequest()V
    .registers 3

    .line 3252
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/telecom/Connection$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3253
    return-void
.end method

.method public final whitelist sendRttInitiationFailure(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 3236
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/telecom/Connection$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/Connection;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3237
    return-void
.end method

.method public final whitelist sendRttInitiationSuccess()V
    .registers 3

    .line 3225
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/telecom/Connection$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3226
    return-void
.end method

.method public final whitelist sendRttSessionRemotelyTerminated()V
    .registers 3

    .line 3244
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/telecom/Connection$$ExternalSyntheticLambda3;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3245
    return-void
.end method

.method public final whitelist setActive()V
    .registers 2

    .line 2675
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2676
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setRingbackRequested(Z)V

    .line 2677
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2678
    return-void
.end method

.method public final whitelist setAddress(Landroid/net/Uri;I)V
    .registers 5
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    .line 2627
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "setAddress %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2628
    iput-object p1, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    .line 2629
    iput p2, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    .line 2630
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2631
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V

    .line 2632
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_16

    .line 2633
    :cond_26
    return-void
.end method

.method public final whitelist setAudioModeIsVoip(Z)V
    .registers 4
    .param p1, "isVoip"    # Z

    .line 2890
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2891
    iput-boolean p1, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    .line 2892
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2893
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V

    .line 2894
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_b

    .line 2895
    :cond_1b
    return-void
.end method

.method public final whitelist setAudioRoute(I)V
    .registers 5
    .param p1, "route"    # I

    .line 3193
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3194
    .local v1, "l":Landroid/telecom/Connection$Listener;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Landroid/telecom/Connection$Listener;->onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V

    .line 3195
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_6

    .line 3196
    :cond_17
    return-void
.end method

.method final greylist-max-o setCallAudioState(Landroid/telecom/CallAudioState;)V
    .registers 4
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .line 2561
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2562
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "setAudioState %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2563
    iput-object p1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 2564
    invoke-virtual {p0}, Landroid/telecom/Connection;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 2565
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 2566
    return-void
.end method

.method public whitelist setCallDirection(I)V
    .registers 2
    .param p1, "callDirection"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4035
    iput p1, p0, Landroid/telecom/Connection;->mCallDirection:I

    .line 4036
    return-void
.end method

.method public final whitelist setCallerDisplayName(Ljava/lang/String;I)V
    .registers 5
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    .line 2643
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2644
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "setCallerDisplayName %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2645
    iput-object p1, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    .line 2646
    iput p2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    .line 2647
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2648
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V

    .line 2649
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_19

    .line 2650
    :cond_29
    return-void
.end method

.method public final whitelist setCallerNumberVerificationStatus(I)V
    .registers 2
    .param p1, "callerNumberVerificationStatus"    # I

    .line 4057
    iput p1, p0, Landroid/telecom/Connection;->mCallerNumberVerificationStatus:I

    .line 4058
    return-void
.end method

.method public final greylist-max-o setConference(Landroid/telecom/Conference;)Z
    .registers 3
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 3051
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3053
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-nez v0, :cond_18

    .line 3054
    iput-object p1, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 3055
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/telecom/ConnectionService;->containsConference(Landroid/telecom/Conference;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3056
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 3058
    :cond_16
    const/4 v0, 0x1

    return v0

    .line 3060
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist setConferenceableConnections(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .line 2959
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2960
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 2961
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 2964
    .local v1, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 2965
    iget-object v2, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 2966
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2968
    .end local v1    # "c":Landroid/telecom/Connection;
    :cond_28
    goto :goto_a

    .line 2969
    :cond_29
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 2970
    return-void
.end method

.method public final whitelist setConferenceables(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .line 2979
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 2980
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conferenceable;

    .line 2983
    .local v1, "c":Landroid/telecom/Conferenceable;
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 2984
    instance-of v2, v1, Landroid/telecom/Connection;

    if-eqz v2, :cond_28

    .line 2985
    move-object v2, v1

    check-cast v2, Landroid/telecom/Connection;

    .line 2986
    .local v2, "connection":Landroid/telecom/Connection;
    iget-object v3, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .end local v2    # "connection":Landroid/telecom/Connection;
    goto :goto_35

    .line 2987
    :cond_28
    instance-of v2, v1, Landroid/telecom/Conference;

    if-eqz v2, :cond_35

    .line 2988
    move-object v2, v1

    check-cast v2, Landroid/telecom/Conference;

    .line 2989
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v3, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_36

    .line 2987
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_35
    :goto_35
    nop

    .line 2991
    :goto_36
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2993
    .end local v1    # "c":Landroid/telecom/Conferenceable;
    :cond_3b
    goto :goto_7

    .line 2994
    :cond_3c
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 2995
    return-void
.end method

.method public final whitelist setConnectTimeMillis(J)V
    .registers 3
    .param p1, "connectTimeMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2914
    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    .line 2915
    return-void
.end method

.method public final whitelist setConnectionCapabilities(I)V
    .registers 5
    .param p1, "connectionCapabilities"    # I

    .line 2829
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2830
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    if-eq v0, p1, :cond_21

    .line 2831
    iput p1, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 2832
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2833
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V

    .line 2834
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_f

    .line 2836
    :cond_21
    return-void
.end method

.method public final whitelist setConnectionProperties(I)V
    .registers 5
    .param p1, "connectionProperties"    # I

    .line 2844
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2845
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    if-eq v0, p1, :cond_21

    .line 2846
    iput p1, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    .line 2847
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2848
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V

    .line 2849
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_f

    .line 2851
    :cond_21
    return-void
.end method

.method public final greylist-max-o setConnectionService(Landroid/telecom/ConnectionService;)V
    .registers 5
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    .line 3021
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3022
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_15

    .line 3023
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Trying to set ConnectionService on a connection which is already associated with another ConnectionService."

    invoke-static {p0, v0, v2, v1}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    .line 3026
    :cond_15
    iput-object p1, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    .line 3028
    :goto_17
    return-void
.end method

.method public final whitelist setConnectionStartElapsedRealtimeMillis(J)V
    .registers 3
    .param p1, "connectElapsedTimeMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2937
    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    .line 2938
    return-void
.end method

.method public final whitelist setDialing()V
    .registers 2

    .line 2708
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2709
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2710
    return-void
.end method

.method public final blacklist setDialingForcedUpdate()V
    .registers 3

    .line 2718
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2719
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/telecom/Connection;->setState(IZ)V

    .line 2720
    return-void
.end method

.method public final whitelist setDisconnected(Landroid/telecom/DisconnectCause;)V
    .registers 4
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 2767
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2768
    iput-object p1, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 2769
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2770
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Disconnected with cause %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2771
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2772
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V

    .line 2773
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_1a

    .line 2774
    :cond_2a
    return-void
.end method

.method public final whitelist setExtras(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 3090
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3093
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    .line 3097
    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-eqz v0, :cond_36

    .line 3098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3099
    .local v0, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3100
    .local v2, "oldKey":Ljava/lang/String;
    if-eqz p1, :cond_29

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 3101
    :cond_29
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3103
    .end local v2    # "oldKey":Ljava/lang/String;
    :cond_2c
    goto :goto_15

    .line 3104
    :cond_2d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 3105
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    .line 3111
    .end local v0    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_36
    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-nez v0, :cond_41

    .line 3112
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    .line 3114
    :cond_41
    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3115
    if-eqz p1, :cond_51

    .line 3116
    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3118
    :cond_51
    return-void
.end method

.method public final whitelist setInitialized()V
    .registers 2

    .line 2700
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2701
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2702
    return-void
.end method

.method public final whitelist setInitializing()V
    .registers 2

    .line 2692
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2693
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2694
    return-void
.end method

.method public final whitelist setNextPostDialChar(C)V
    .registers 4
    .param p1, "nextChar"    # C

    .line 2801
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2802
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2803
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialChar(Landroid/telecom/Connection;C)V

    .line 2804
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_9

    .line 2805
    :cond_19
    return-void
.end method

.method public final whitelist setOnHold()V
    .registers 2

    .line 2737
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2738
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2739
    return-void
.end method

.method public whitelist setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)V
    .registers 3
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3952
    iget-object v0, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eq v0, p1, :cond_9

    .line 3953
    iput-object p1, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 3954
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->notifyPhoneAccountChanged(Landroid/telecom/PhoneAccountHandle;)V

    .line 3956
    :cond_9
    return-void
.end method

.method public final whitelist setPostDialWait(Ljava/lang/String;)V
    .registers 4
    .param p1, "remaining"    # Ljava/lang/String;

    .line 2787
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2788
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2789
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V

    .line 2790
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_9

    .line 2791
    :cond_19
    return-void
.end method

.method public final whitelist setPulling()V
    .registers 2

    .line 2729
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2730
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2731
    return-void
.end method

.method public final whitelist setRingbackRequested(Z)V
    .registers 4
    .param p1, "ringback"    # Z

    .line 2814
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2815
    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    if-eq v0, p1, :cond_1f

    .line 2816
    iput-boolean p1, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 2817
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2818
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onRingbackRequested(Landroid/telecom/Connection;Z)V

    .line 2819
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_f

    .line 2821
    :cond_1f
    return-void
.end method

.method public final whitelist setRinging()V
    .registers 2

    .line 2684
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2685
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2686
    return-void
.end method

.method public final whitelist setStatusHints(Landroid/telecom/StatusHints;)V
    .registers 4
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .line 2946
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2947
    iput-object p1, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 2948
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2949
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V

    .line 2950
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_b

    .line 2951
    :cond_1b
    return-void
.end method

.method public final greylist-max-o setSupportedAudioRoutes(I)V
    .registers 5
    .param p1, "supportedAudioRoutes"    # I

    .line 2861
    and-int/lit8 v0, p1, 0x9

    if-eqz v0, :cond_23

    .line 2867
    iget v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    if-eq v0, p1, :cond_22

    .line 2868
    iput p1, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    .line 2869
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2870
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onSupportedAudioRoutesChanged(Landroid/telecom/Connection;I)V

    .line 2871
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_10

    .line 2873
    :cond_22
    return-void

    .line 2863
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "supported audio routes must include either speaker or earpiece"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTelecomCallId(Ljava/lang/String;)V
    .registers 2
    .param p1, "callId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2551
    iput-object p1, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    .line 2552
    return-void
.end method

.method public final whitelist setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .registers 4
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 2746
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoProvider - videoProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-Connection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    iput-object p1, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 2751
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2752
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    .line 2753
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_30

    .line 2754
    :cond_40
    return-void
.end method

.method public final whitelist setVideoState(I)V
    .registers 5
    .param p1, "videoState"    # I

    .line 2662
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2663
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "setVideoState %d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2664
    iput p1, p0, Landroid/telecom/Connection;->mVideoState:I

    .line 2665
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2666
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mVideoState:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onVideoStateChanged(Landroid/telecom/Connection;I)V

    .line 2667
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_1b

    .line 2668
    :cond_2d
    return-void
.end method

.method public final greylist-max-o unsetConnectionService(Landroid/telecom/ConnectionService;)V
    .registers 5
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    .line 3034
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eq v0, p1, :cond_12

    .line 3035
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Trying to remove ConnectionService from a Connection that does not belong to the ConnectionService."

    invoke-static {p0, v0, v2, v1}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 3038
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    .line 3040
    :goto_15
    return-void
.end method
