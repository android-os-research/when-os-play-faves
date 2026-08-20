.class public abstract Lcom/android/internal/telephony/uicc/IccRecords;
.super Landroid/os/Handler;
.source "IccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;,
        Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;,
        Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;,
        Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;
    }
.end annotation


# static fields
.field public static final blacklist CALL_FORWARDING_STATUS_DISABLED:I = 0x0

.field public static final blacklist CALL_FORWARDING_STATUS_ENABLED:I = 0x1

.field public static final blacklist CALL_FORWARDING_STATUS_UNKNOWN:I = -0x1

.field public static final blacklist CARRIAGE_RETURN:C = '\r'

.field public static final blacklist CARRIER_NAME_DISPLAY_CONDITION_BITMASK_PLMN:I = 0x1

.field public static final blacklist CARRIER_NAME_DISPLAY_CONDITION_BITMASK_SPN:I = 0x2

.field protected static final blacklist DBG:Z = true

.field public static final blacklist DEFAULT_CARRIER_NAME_DISPLAY_CONDITION:I = 0x0

.field public static final blacklist DEFAULT_VOICE_MESSAGE_COUNT:I = -0x2

.field protected static final blacklist EVENT_APP_DETECTED:I = 0x104

.field protected static final blacklist EVENT_APP_LOCKED:I = 0x102

.field protected static final blacklist EVENT_APP_NETWORK_LOCKED:I = 0x103

.field protected static final blacklist EVENT_APP_READY:I = 0x101

.field public static final blacklist EVENT_CFI:I = 0x1

.field public static final blacklist EVENT_GET_ICC_RECORD_DONE:I = 0x64

.field protected static final blacklist EVENT_GET_SMS_RECORD_SIZE_DONE:I = 0x1c

.field public static final blacklist EVENT_MWI:I = 0x0

.field public static final blacklist EVENT_REFRESH:I = 0x1f

.field public static final blacklist EVENT_SPN:I = 0x2

.field protected static final blacklist HANDLER_ACTION_BASE:I = 0x12e500

.field protected static final blacklist HANDLER_ACTION_NONE:I = 0x12e500

.field protected static final blacklist HANDLER_ACTION_SEND_RESPONSE:I = 0x12e501

.field public static final blacklist INVALID_CARRIER_NAME_DISPLAY_CONDITION_BITMASK:I = -0x1

.field protected static final blacklist LOCKED_RECORDS_REQ_REASON_LOCKED:I = 0x1

.field protected static final blacklist LOCKED_RECORDS_REQ_REASON_NETWORK_LOCKED:I = 0x2

.field protected static final blacklist LOCKED_RECORDS_REQ_REASON_NETWORK_SUBSET_LOCKED:I = 0x3

.field protected static final blacklist LOCKED_RECORDS_REQ_REASON_NONE:I = 0x0

.field protected static final blacklist LOCKED_RECORDS_REQ_REASON_PERSO_LOCKED:I = 0x5

.field protected static final blacklist LOCKED_RECORDS_REQ_REASON_REGIONAL_LOCKED:I = 0x6

.field protected static final blacklist LOCKED_RECORDS_REQ_REASON_SERVICE_PROVIDER_LOCKED:I = 0x4

.field private static final blacklist MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

.field public static final blacklist NEW_LINE:C = '\n'

.field public static final blacklist PLMN_MAX_LENGTH:I = 0x6

.field public static final blacklist PLMN_MIN_LENGTH:I = 0x5

.field protected static final blacklist SYSTEM_EVENT_BASE:I = 0x100

.field protected static final blacklist UNINITIALIZED:I = -0x1

.field protected static final blacklist UNKNOWN:I = 0x0

.field public static final blacklist UNKNOWN_VOICE_MESSAGE_COUNT:I = -0x1

.field protected static final blacklist VDBG:Z

.field protected static blacklist sNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected blacklist mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field protected blacklist mCarrierNameDisplayCondition:I

.field blacklist mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

.field protected blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected blacklist mContext:Landroid/content/Context;

.field protected blacklist mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected blacklist mEfPsismsc:[B

.field protected blacklist mEhplmns:[Ljava/lang/String;

.field public blacklist mEuimid:Ljava/lang/String;

.field protected blacklist mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field protected blacklist mFplmns:[Ljava/lang/String;

.field protected blacklist mFullIccId:Ljava/lang/String;

.field protected blacklist mGid1:Ljava/lang/String;

.field protected blacklist mGid2:Ljava/lang/String;

.field protected blacklist mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

.field public blacklist mIccId:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field protected blacklist mIccType:I

.field protected blacklist mImsi:Ljava/lang/String;

.field protected blacklist mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mIsAvailableFDN:Z

.field protected blacklist mIsAvailablePSISMSC:Z

.field protected blacklist mIsAvailableSDN:Z

.field public blacklist mIsEnabledPNN:Z

.field public blacklist mIsPNNExist:Z

.field protected blacklist mIsVoiceMailFixed:Z

.field protected blacklist mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected blacklist mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mLockedRecordsReqReason:I

.field protected blacklist mMailboxIndex:I

.field protected blacklist mMncLength:I

.field protected blacklist mMsisdn:Ljava/lang/String;

.field protected blacklist mMsisdnTag:Ljava/lang/String;

.field protected blacklist mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mNetworkSelectionModeAutomaticRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mNetworkSubsetLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mNewMsisdn:Ljava/lang/String;

.field protected blacklist mNewMsisdnTag:Ljava/lang/String;

.field protected blacklist mNewSmsRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mNewVoiceMailNum:Ljava/lang/String;

.field protected blacklist mNewVoiceMailTag:Ljava/lang/String;

.field protected blacklist mOpl:[Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;

.field protected blacklist mOplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

.field protected blacklist mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field protected final blacklist mPendingTransactions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroid/os/Message;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected blacklist mPersoLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mPlmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

.field protected blacklist mPnnHomeName:Ljava/lang/String;

.field protected blacklist mPnns:[Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

.field protected blacklist mPrefLang:Ljava/lang/String;

.field protected blacklist mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mRecordsOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mRecordsRequested:Z

.field protected blacklist mRecordsToLoad:I

.field protected blacklist mRegionalLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

.field protected blacklist mServiceProviderLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSmsCountOnIcc:I

.field protected blacklist mSpdi:[Ljava/lang/String;

.field protected blacklist mSpn:Ljava/lang/String;

.field protected blacklist mSpnUpdatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mTaiEps:Ljava/lang/String;

.field protected blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected blacklist mUseCarrierVoicemail:Z

.field protected blacklist mVoiceMailNum:Ljava/lang/String;

.field protected blacklist mVoiceMailNumByCarrierId:Ljava/lang/String;

.field protected blacklist mVoiceMailNumByNwId:Ljava/lang/String;

.field protected blacklist mVoiceMailTag:Ljava/lang/String;

.field protected blacklist mVoiceMailTagByCarrierId:Ljava/lang/String;

.field protected blacklist mVoiceMailTagByNwId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 153

    .line 70
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    const-string v1, "302370"

    const-string v2, "302720"

    const-string v3, "310260"

    const-string v4, "405025"

    const-string v5, "405026"

    const-string v6, "405027"

    const-string v7, "405028"

    const-string v8, "405029"

    const-string v9, "405030"

    const-string v10, "405031"

    const-string v11, "405032"

    const-string v12, "405033"

    const-string v13, "405034"

    const-string v14, "405035"

    const-string v15, "405036"

    const-string v16, "405037"

    const-string v17, "405038"

    const-string v18, "405039"

    const-string v19, "405040"

    const-string v20, "405041"

    const-string v21, "405042"

    const-string v22, "405043"

    const-string v23, "405044"

    const-string v24, "405045"

    const-string v25, "405046"

    const-string v26, "405047"

    const-string v27, "405750"

    const-string v28, "405751"

    const-string v29, "405752"

    const-string v30, "405753"

    const-string v31, "405754"

    const-string v32, "405755"

    const-string v33, "405756"

    const-string v34, "405799"

    const-string v35, "405800"

    const-string v36, "405801"

    const-string v37, "405802"

    const-string v38, "405803"

    const-string v39, "405804"

    const-string v40, "405805"

    const-string v41, "405806"

    const-string v42, "405807"

    const-string v43, "405808"

    const-string v44, "405809"

    const-string v45, "405810"

    const-string v46, "405811"

    const-string v47, "405812"

    const-string v48, "405813"

    const-string v49, "405814"

    const-string v50, "405815"

    const-string v51, "405816"

    const-string v52, "405817"

    const-string v53, "405818"

    const-string v54, "405819"

    const-string v55, "405820"

    const-string v56, "405821"

    const-string v57, "405822"

    const-string v58, "405823"

    const-string v59, "405824"

    const-string v60, "405825"

    const-string v61, "405826"

    const-string v62, "405827"

    const-string v63, "405828"

    const-string v64, "405829"

    const-string v65, "405830"

    const-string v66, "405831"

    const-string v67, "405832"

    const-string v68, "405833"

    const-string v69, "405834"

    const-string v70, "405835"

    const-string v71, "405836"

    const-string v72, "405837"

    const-string v73, "405838"

    const-string v74, "405839"

    const-string v75, "405840"

    const-string v76, "405841"

    const-string v77, "405842"

    const-string v78, "405843"

    const-string v79, "405844"

    const-string v80, "405845"

    const-string v81, "405846"

    const-string v82, "405847"

    const-string v83, "405848"

    const-string v84, "405849"

    const-string v85, "405850"

    const-string v86, "405851"

    const-string v87, "405852"

    const-string v88, "405853"

    const-string v89, "405854"

    const-string v90, "405855"

    const-string v91, "405856"

    const-string v92, "405857"

    const-string v93, "405858"

    const-string v94, "405859"

    const-string v95, "405860"

    const-string v96, "405861"

    const-string v97, "405862"

    const-string v98, "405863"

    const-string v99, "405864"

    const-string v100, "405865"

    const-string v101, "405866"

    const-string v102, "405867"

    const-string v103, "405868"

    const-string v104, "405869"

    const-string v105, "405870"

    const-string v106, "405871"

    const-string v107, "405872"

    const-string v108, "405873"

    const-string v109, "405874"

    const-string v110, "405875"

    const-string v111, "405876"

    const-string v112, "405877"

    const-string v113, "405878"

    const-string v114, "405879"

    const-string v115, "405880"

    const-string v116, "405881"

    const-string v117, "405882"

    const-string v118, "405883"

    const-string v119, "405884"

    const-string v120, "405885"

    const-string v121, "405886"

    const-string v122, "405908"

    const-string v123, "405909"

    const-string v124, "405910"

    const-string v125, "405911"

    const-string v126, "405912"

    const-string v127, "405913"

    const-string v128, "405914"

    const-string v129, "405915"

    const-string v130, "405916"

    const-string v131, "405917"

    const-string v132, "405918"

    const-string v133, "405919"

    const-string v134, "405920"

    const-string v135, "405921"

    const-string v136, "405922"

    const-string v137, "405923"

    const-string v138, "405924"

    const-string v139, "405925"

    const-string v140, "405926"

    const-string v141, "405927"

    const-string v142, "405928"

    const-string v143, "405929"

    const-string v144, "405930"

    const-string v145, "405931"

    const-string v146, "405932"

    const-string v147, "502142"

    const-string v148, "502143"

    const-string v149, "502145"

    const-string v150, "502146"

    const-string v151, "502147"

    const-string v152, "502148"

    .line 78
    filled-new-array/range {v1 .. v152}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/IccRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .line 244
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccRecords;->sNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 8

    .line 376
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 115
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 117
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSubsetLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 118
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mServiceProviderLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 119
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPersoLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 120
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRegionalLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 122
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 123
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 124
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 125
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 126
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpnUpdatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 127
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 151
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 152
    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdn:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewMsisdnTag:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    .line 166
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    const/4 v2, -0x1

    .line 169
    iput v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    .line 170
    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    .line 172
    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmsCountOnIcc:I

    .line 211
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsAvailablePSISMSC:Z

    .line 217
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mEfPsismsc:[B

    .line 219
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsEnabledPNN:Z

    .line 220
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsPNNExist:Z

    const/4 v2, 0x1

    .line 222
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsAvailableSDN:Z

    .line 223
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsAvailableFDN:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mUseCarrierVoicemail:Z

    .line 229
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTaiEps:Ljava/lang/String;

    .line 245
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPendingTransactions:Ljava/util/HashMap;

    .line 377
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    .line 378
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 380
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSemCommandsInterfaces()[Lcom/android/internal/telephony/SemCommandsInterface;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p3

    aget-object p2, p2, p3

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 382
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 383
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 384
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 387
    new-instance p1, Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    .line 388
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0x1f

    invoke-interface {p1, p0, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 390
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIccType:I

    .line 393
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p2, 0x101

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 394
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p2, 0x104

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForDetected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 395
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p2, 0x102

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 396
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p2, 0x103

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 399
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p2, 0x105

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForNetworkSubsetLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 400
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p2, 0x106

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForServicePoviderLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 401
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p2, 0x107

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 402
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 p2, 0x108

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForNetworkRegionalLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string p1, "mdc.singlesku"

    .line 404
    invoke-static {p1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "true"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13a

    const-string p1, "mdc.unified"

    .line 405
    invoke-static {p1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13a

    move v1, v2

    :cond_13a
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mUseCarrierVoicemail:Z

    return-void
.end method

.method public static blacklist convertSpnDisplayConditionToBitmask(I)I
    .registers 3

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_d

    or-int/lit8 v1, v1, 0x2

    :cond_d
    return v1
.end method

.method protected static blacklist findBestLanguage([B[Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_36

    if-nez p1, :cond_6

    goto :goto_36

    :cond_6
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    add-int/lit8 v3, v2, 0x1

    .line 1315
    array-length v4, p0

    if-ge v3, v4, :cond_36

    .line 1316
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, p0, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move v5, v1

    .line 1317
    :goto_16
    array-length v6, p1

    if-ge v5, v6, :cond_33

    .line 1318
    aget-object v6, p1, v5

    if-eqz v6, :cond_30

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v4, :cond_30

    aget-object v6, p1, v5

    .line 1319
    invoke-virtual {v6, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    return-object v3

    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_33
    add-int/lit8 v2, v2, 0x2

    goto :goto_8

    :cond_36
    :goto_36
    return-object v0
.end method

.method public static blacklist getNetworkNameForPlmnFromPnnOpl([Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;[Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_48

    if-eqz p0, :cond_48

    if-eqz p2, :cond_48

    .line 1773
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_48

    .line 1774
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_16

    goto :goto_48

    .line 1778
    :cond_16
    array-length v1, p1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_48

    aget-object v3, p1, v2

    .line 1779
    invoke-virtual {v3, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;->getPnnIdx(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_45

    .line 1781
    array-length p1, p0

    if-ge v3, p1, :cond_2e

    aget-object p0, p0, v3

    if-eqz p0, :cond_2e

    .line 1782
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1784
    :cond_2e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid PNN record for Record"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IccRecords"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_48
    :goto_48
    return-object v0
.end method

.method private blacklist isNewLine(C)Z
    .registers 2

    const/16 p0, 0xa

    if-eq p1, p0, :cond_a

    const/16 p0, 0xd

    if-eq p1, p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist trimNewLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_32

    .line 1014
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_32

    .line 1017
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 1018
    array-length v0, p1

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1c

    .line 1020
    aget-char v2, p1, v1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->isNewLine(C)Z

    move-result v2

    if-eqz v2, :cond_1c

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1c
    :goto_1c
    if-le v0, v1, :cond_2b

    add-int/lit8 v2, v0, -0x1

    .line 1023
    aget-char v2, p1, v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->isNewLine(C)Z

    move-result v2

    if-eqz v2, :cond_2b

    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 1026
    :cond_2b
    new-instance p0, Ljava/lang/String;

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_32
    :goto_32
    return-object p1
.end method


# virtual methods
.method public blacklist checkVzwSimInserted()Z
    .registers 4

    .line 1918
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_41

    const-string v1, "311480"

    .line 1919
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const-string v2, "311270"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const-string v2, "310000"

    .line 1920
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const-string v2, "312770"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_40

    .line 1922
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const-string v2, "20404"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid1:Ljava/lang/String;

    const-string v0, "bae0000000000000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    :cond_40
    :goto_40
    return v1

    :cond_41
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist chekcMWISavailable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist dispose()V
    .registers 3

    const-string v0, "dispose"

    .line 423
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForDetected(Landroid/os/Handler;)V

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForNetworkLocked(Landroid/os/Handler;)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForNetworkSubsetLocked(Landroid/os/Handler;)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForServicePoviderLocked(Landroid/os/Handler;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForPersoLocked(Landroid/os/Handler;)V

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForNetworkRegionalLocked(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 441
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 442
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 443
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_48

    .line 445
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 447
    :cond_48
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1658
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "IccRecords: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1659
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mDestroyed="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1660
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mCi="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1661
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mFh="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1662
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mParentApp="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1663
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " recordsLoadedRegistrants: size="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p3}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move p3, p1

    .line 1664
    :goto_88
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    const-string v1, "]="

    if-ge p3, v0, :cond_bb

    .line 1665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  recordsLoadedRegistrants["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1666
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1665
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_88

    .line 1668
    :cond_bb
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mLockedRecordsLoadedRegistrants: size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1669
    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1668
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1670
    :goto_d6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_107

    .line 1671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLockedRecordsLoadedRegistrants["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1672
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1671
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_d6

    .line 1674
    :cond_107
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mNetworkLockedRecordsLoadedRegistrants: size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1675
    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1674
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1676
    :goto_122
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_153

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNetworkLockedRecordsLoadedRegistrants["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1680
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1678
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_122

    .line 1683
    :cond_153
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mRegionalLockedRecordsLoadedRegistrants: size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRegionalLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1684
    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1683
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1685
    :goto_16e
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRegionalLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_19f

    .line 1686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRegionalLockedRecordsLoadedRegistrants["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRegionalLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1687
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1686
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_16e

    .line 1689
    :cond_19f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mNetworkSubsetLockedRecordsLoadedRegistrants: size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSubsetLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1690
    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1689
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1691
    :goto_1ba
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSubsetLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_1eb

    .line 1692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNetworkSubsetLockedRecordsLoadedRegistrants["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSubsetLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1693
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1692
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1ba

    .line 1695
    :cond_1eb
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mServiceProviderLockedRecordsLoadedRegistrants : size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mServiceProviderLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1696
    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1695
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1697
    :goto_206
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mServiceProviderLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_237

    .line 1698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceProviderLockedRecordsLoadedRegistrants ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mServiceProviderLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1699
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1698
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_206

    .line 1701
    :cond_237
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mPersoLockedRecordsLoadedRegistrants : size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPersoLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1702
    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1701
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1703
    :goto_252
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPersoLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_283

    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPersoLockedRecordsLoadedRegistrants ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPersoLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1705
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1704
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_252

    .line 1708
    :cond_283
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mImsiReadyRegistrants: size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1709
    :goto_29e
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_2cf

    .line 1710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mImsiReadyRegistrants["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1711
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1710
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_29e

    .line 1713
    :cond_2cf
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mRecordsEventsRegistrants: size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1714
    :goto_2ea
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_31b

    .line 1715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRecordsEventsRegistrants["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1716
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1715
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2ea

    .line 1718
    :cond_31b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mNewSmsRegistrants: size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1719
    :goto_336
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-ge p3, v0, :cond_367

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNewSmsRegistrants["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1721
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1720
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_336

    .line 1723
    :cond_367
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mNetworkSelectionModeAutomaticRegistrants: size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1724
    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1723
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1725
    :goto_381
    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p3}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result p3

    if-ge p1, p3, :cond_3b2

    .line 1726
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mNetworkSelectionModeAutomaticRegistrants["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 1727
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1726
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_381

    .line 1729
    :cond_3b2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mRecordsRequested="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1730
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mLockedRecordsReqReason="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mRecordsToLoad="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1732
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mRdnCache="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1734
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1735
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " iccid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1738
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mMsisdn="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->givePrintableMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1739
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mMsisdnTag="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1741
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mVoiceMailNum="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1742
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mVoiceMailTag="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1743
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mNewVoiceMailNum="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1744
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mNewVoiceMailTag="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1745
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mIsVoiceMailFixed="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1753
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mMncLength="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1754
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mMailboxIndex="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1755
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mSpn="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1756
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result p1

    if-eqz p1, :cond_530

    .line 1757
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mFakeSpn="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeSpn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1759
    :cond_530
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .registers 1

    .line 465
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    return-object p0
.end method

.method public blacklist getCarrierNameDisplayCondition()I
    .registers 1

    .line 1374
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierNameDisplayCondition:I

    return p0
.end method

.method public blacklist getEhplmns()[Ljava/lang/String;
    .registers 1

    .line 1495
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mEhplmns:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getEuimid()Ljava/lang/String;
    .registers 1

    .line 1981
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mEuimid:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getFDNavailable()Z
    .registers 1

    .line 1976
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsAvailableFDN:Z

    return p0
.end method

.method public blacklist getFullIccId()Ljava/lang/String;
    .registers 1

    .line 529
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getGid1()Ljava/lang/String;
    .registers 2

    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 909
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeGid1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 914
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid1:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getGid2()Ljava/lang/String;
    .registers 2

    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 923
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeGid2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 928
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mGid2:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getHomePlmns()[Ljava/lang/String;
    .registers 7

    .line 1399
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 1402
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEhplmns()[Ljava/lang/String;

    move-result-object v2

    .line 1405
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderDisplayInformation()[Ljava/lang/String;

    move-result-object p0

    .line 1408
    invoke-static {v2}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1a

    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v4

    .line 1412
    :cond_1a
    invoke-static {p0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    const/4 v3, 0x2

    new-array v3, v3, [[Ljava/lang/String;

    aput-object v2, v3, v4

    aput-object p0, v3, v5

    .line 1413
    invoke-static {v0, v3}, Lcom/android/internal/telephony/util/ArrayUtils;->concatElements(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, [Ljava/lang/String;

    .line 1416
    :cond_2e
    invoke-static {v0, v2, v1}, Lcom/android/internal/telephony/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getHomeplmnActRecords()[Lcom/android/internal/telephony/uicc/PlmnActRecord;
    .registers 1

    .line 885
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    return-object p0
.end method

.method public blacklist getIMSI()Ljava/lang/String;
    .registers 2

    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 781
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeIMSI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 786
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIccId()Ljava/lang/String;
    .registers 2

    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeIccid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 521
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIccId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 1545
    sget-boolean v0, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    if-eqz v0, :cond_9

    const-string v0, "getIccSimChallengeResponse:"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1548
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1549
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v2, 0x0

    if-eqz v0, :cond_af

    if-nez v1, :cond_14

    goto/16 :goto_af

    .line 1555
    :cond_14
    new-instance v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;-><init>(Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse-IA;)V

    .line 1557
    monitor-enter v3

    .line 1558
    :try_start_1a
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x5a

    const/4 v5, 0x0

    .line 1559
    invoke-virtual {p0, v4, v5, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1558
    invoke-interface {v0, p1, p2, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1561
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_ac

    :cond_2c
    const-wide/16 v0, 0x1f40

    add-long v4, p1, v0

    .line 1565
    :try_start_30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_46

    .line 1566
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_3e} :catch_3f
    .catchall {:try_start_30 .. :try_end_3e} :catchall_ac

    goto :goto_46

    :catch_3f
    :try_start_3f
    const-string v4, "IccRecords"

    const-string v5, "getIccSimChallengeResponse: InterruptedException."

    .line 1568
    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    :cond_46
    :goto_46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    cmp-long v4, v4, v0

    if-gez v4, :cond_57

    iget-object v4, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->authRsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    if-nez v4, :cond_57

    iget-object v4, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2c

    .line 1573
    :cond_57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    cmp-long p1, v4, v0

    if-ltz p1, :cond_6f

    iget-object p1, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->authRsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    if-nez p1, :cond_6f

    iget-object p1, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_6f

    const-string p1, "getIccSimChallengeResponse timeout!"

    .line 1575
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 1576
    monitor-exit v3

    return-object v2

    .line 1579
    :cond_6f
    iget-object p1, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_8b

    .line 1580
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getIccSimChallengeResponse exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 1583
    monitor-exit v3

    return-object v2

    .line 1586
    :cond_8b
    iget-object p1, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->authRsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    if-nez p1, :cond_96

    const-string p1, "getIccSimChallengeResponse: No authentication response"

    .line 1587
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 1588
    monitor-exit v3

    return-object v2

    .line 1590
    :cond_96
    monitor-exit v3
    :try_end_97
    .catchall {:try_start_3f .. :try_end_97} :catchall_ac

    .line 1591
    sget-boolean p1, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    if-eqz p1, :cond_a0

    const-string p1, "getIccSimChallengeResponse: return rsp.authRsp"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1593
    :cond_a0
    iget-object p0, v3, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->authRsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz p0, :cond_ab

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    :cond_ab
    return-object v2

    :catchall_ac
    move-exception p0

    .line 1590
    :try_start_ad
    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw p0

    :cond_af
    :goto_af
    const-string p1, "getIccSimChallengeResponse: Fail, ci or parentApp is null"

    .line 1551
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    return-object v2
.end method

.method public blacklist getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method protected blacklist getLockedRecordsLoaded()Z
    .registers 3

    .line 1119
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    const/4 v1, 0x1

    if-nez v0, :cond_a

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    if-ne p0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public blacklist getMsisdnAlphaTag()Ljava/lang/String;
    .registers 1

    .line 963
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getMsisdnNumber()Ljava/lang/String;
    .registers 1

    .line 900
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNAI()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method protected blacklist getNetworkLockedRecordsLoaded()Z
    .registers 2

    .line 1124
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    if-nez v0, :cond_b

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method protected blacklist getNetworkSubsetLockedRecordsLoaded()Z
    .registers 2

    .line 1134
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    if-nez v0, :cond_b

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public blacklist getOperatorNumeric()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getOpl()[Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;
    .registers 1

    .line 950
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mOpl:[Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;

    return-object p0
.end method

.method public blacklist getPSISMSCavailable()Z
    .registers 1

    .line 1930
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsAvailablePSISMSC:Z

    return p0
.end method

.method protected blacklist getPersoLockedRecordsLoaded()Z
    .registers 2

    .line 1138
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    if-nez v0, :cond_b

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public blacklist getPlmnsFromHplmnActRecord()[Ljava/lang/String;
    .registers 5

    .line 1502
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1503
    :cond_6
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1504
    :goto_a
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    array-length v3, v2

    if-ge v1, v3, :cond_18

    .line 1505
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    return-object v0
.end method

.method public blacklist getPnnHomeName()Ljava/lang/String;
    .registers 2

    .line 936
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 937
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakePnnHomeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 942
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPnnHomeName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPnns()[Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;
    .registers 1

    .line 946
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPnns:[Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

    return-object p0
.end method

.method public blacklist getPsismsc()[B
    .registers 1

    .line 1950
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mEfPsismsc:[B

    return-object p0
.end method

.method public blacklist getRecordsLoaded()Z
    .registers 2

    .line 1115
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    if-nez v0, :cond_a

    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method protected blacklist getRegionalLockedRecordsLoaded()Z
    .registers 2

    .line 1142
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    if-nez v0, :cond_b

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public blacklist getSMSS()V
    .registers 2

    const-string v0, "getSMSS call in IccRecords"

    .line 1939
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getSdnAvailable()Z
    .registers 1

    .line 1972
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsAvailableSDN:Z

    return p0
.end method

.method public blacklist getServiceProviderDisplayInformation()[Ljava/lang/String;
    .registers 1

    .line 1386
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpdi:[Ljava/lang/String;

    return-object p0
.end method

.method protected blacklist getServiceProviderLockedRecordsLoaded()Z
    .registers 2

    .line 1130
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    if-nez v0, :cond_b

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public blacklist getServiceProviderName()Ljava/lang/String;
    .registers 2

    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 977
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeSpn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 982
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getServiceProviderNameWithBrandOverride()Ljava/lang/String;
    .registers 3

    .line 993
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    .line 995
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    return-object v0

    .line 999
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSimLanguage()Ljava/lang/String;
    .registers 1

    .line 1290
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSmsCapacityOnIcc()I
    .registers 3

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSmsCapacityOnIcc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmsCountOnIcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1639
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmsCountOnIcc:I

    return p0
.end method

.method protected blacklist getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1527
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p0

    invoke-static {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTaiEps()Ljava/lang/String;
    .registers 1

    .line 1042
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTaiEps:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getVideoCallForwardingFlag()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getVoiceCallForwardingFlag()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 1

    .line 1074
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getVoiceMailAlphaTagFromConfig()Ljava/lang/String;
    .registers 2

    .line 2003
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mUseCarrierVoicemail:Z

    if-nez v0, :cond_7

    .line 2004
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTagByNwId:Ljava/lang/String;

    return-object p0

    .line 2006
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTagByCarrierId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getVoiceMailNumber()Ljava/lang/String;
    .registers 1

    .line 967
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getVoiceMailNumberFromConfig()Ljava/lang/String;
    .registers 2

    .line 1995
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mUseCarrierVoicemail:Z

    if-nez v0, :cond_7

    .line 1996
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNumByNwId:Ljava/lang/String;

    return-object p0

    .line 1998
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNumByCarrierId:Ljava/lang/String;

    return-object p0
.end method

.method public abstract blacklist getVoiceMessageCount()I
.end method

.method public blacklist givePrintableMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_2c

    .line 1646
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x5

    if-le p0, v0, :cond_2d

    sget-boolean p0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-nez p0, :cond_2d

    .line 1647
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :cond_2d
    :goto_2d
    return-object p1
.end method

.method protected abstract blacklist handleFileUpdate(I)V
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 1152
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_166

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_138

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_b8

    const/16 v1, 0x64

    if-eq v0, v1, :cond_59

    packed-switch v0, :pswitch_data_1e2

    .line 1282
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1dc

    :pswitch_1d
    const/4 p1, 0x6

    .line 1189
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 1190
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onLocked()V

    goto/16 :goto_1dc

    :pswitch_25
    const/4 p1, 0x5

    .line 1184
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 1185
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onLocked()V

    goto/16 :goto_1dc

    :pswitch_2d
    const/4 p1, 0x4

    .line 1179
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 1180
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onLocked()V

    goto/16 :goto_1dc

    :pswitch_35
    const/4 p1, 0x3

    .line 1174
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 1175
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onLocked()V

    goto/16 :goto_1dc

    .line 1159
    :pswitch_3d
    iput v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 1160
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onDetected()V

    goto/16 :goto_1dc

    .line 1169
    :pswitch_44
    iput v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 1170
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onLocked()V

    goto/16 :goto_1dc

    .line 1164
    :pswitch_4b
    iput v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 1165
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onLocked()V

    goto/16 :goto_1dc

    .line 1154
    :pswitch_52
    iput v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    .line 1155
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onReady()V

    goto/16 :goto_1dc

    .line 1195
    :cond_59
    :try_start_59
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1196
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;

    .line 1197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;->getEfName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LOADED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1199
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_94

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Record Load Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    goto :goto_af

    .line 1202
    :cond_94
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;->onRecordLoaded(Landroid/os/AsyncResult;)V
    :try_end_97
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_97} :catch_9a
    .catchall {:try_start_59 .. :try_end_97} :catchall_98

    goto :goto_af

    :catchall_98
    move-exception p1

    goto :goto_b4

    :catch_9a
    move-exception p1

    .line 1206
    :try_start_9b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception parsing SIM record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_9b .. :try_end_af} :catchall_98

    .line 1209
    :goto_af
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    goto/16 :goto_1dc

    :goto_b4
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    .line 1210
    throw p1

    .line 1224
    :cond_b8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1225
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;

    const-string v1, "EVENT_AKA_AUTHENTICATE_DONE"

    .line 1226
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1228
    monitor-enter v0

    .line 1230
    :try_start_c6
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_e6

    instance-of v2, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_e6

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1231
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->MAC_ADDRESS_FAIL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_e6

    .line 1234
    new-instance p0, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 p1, 0x98

    const/16 v1, 0x62

    const-string v2, "6D47493D"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(IILjava/lang/String;)V

    iput-object p0, v0, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->authRsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    goto :goto_12f

    .line 1236
    :cond_e6
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez p1, :cond_f9

    .line 1237
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "Null SIM authentication response"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->exception:Ljava/lang/Throwable;

    const-string p1, "EVENT_AKA_AUTHENTICATE_DONE: null response"

    .line 1239
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_f8
    .catchall {:try_start_c6 .. :try_end_f8} :catchall_135

    goto :goto_12f

    .line 1242
    :cond_f9
    :try_start_f9
    check-cast p1, Lcom/android/internal/telephony/uicc/IccIoResult;

    iput-object p1, v0, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->authRsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1243
    sget-boolean p1, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    if-eqz p1, :cond_12f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ICC SIM AKA: authRsp = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->authRsp:Lcom/android/internal/telephony/uicc/IccIoResult;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V
    :try_end_117
    .catch Ljava/lang/ClassCastException; {:try_start_f9 .. :try_end_117} :catch_118
    .catchall {:try_start_f9 .. :try_end_117} :catchall_135

    goto :goto_12f

    :catch_118
    move-exception p1

    .line 1245
    :try_start_119
    iput-object p1, v0, Lcom/android/internal/telephony/uicc/IccRecords$AuthAsyncResponse;->exception:Ljava/lang/Throwable;

    .line 1246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse ICC SIM AKA contents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 1249
    :cond_12f
    :goto_12f
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1250
    monitor-exit v0

    goto/16 :goto_1dc

    :catchall_135
    move-exception p0

    monitor-exit v0
    :try_end_137
    .catchall {:try_start_119 .. :try_end_137} :catchall_135

    throw p0

    .line 1214
    :cond_138
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    const-string v0, "Card REFRESH occurred: "

    .line 1215
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1216
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_14e

    .line 1217
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_1dc

    .line 1219
    :cond_14e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Icc refresh Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1dc

    .line 1255
    :cond_166
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1257
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_188

    .line 1258
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in EVENT_GET_SMS_RECORD_SIZE_DONE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    goto :goto_1dc

    .line 1263
    :cond_188
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1268
    :try_start_18c
    aget v0, p1, v3

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmsCountOnIcc:I

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_GET_SMS_RECORD_SIZE_DONE Size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V
    :try_end_1ba
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_18c .. :try_end_1ba} :catch_1bd
    .catchall {:try_start_18c .. :try_end_1ba} :catchall_1bb

    goto :goto_1d9

    :catchall_1bb
    move-exception p1

    goto :goto_1dd

    :catch_1bd
    move-exception p1

    const/4 v0, -0x1

    .line 1273
    :try_start_1bf
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSmsCountOnIcc:I

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArrayIndexOutOfBoundsException in EVENT_GET_SMS_RECORD_SIZE_DONE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1274
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_1d9
    .catchall {:try_start_1bf .. :try_end_1d9} :catchall_1bb

    .line 1277
    :goto_1d9
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    :goto_1dc
    return-void

    :goto_1dd
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    .line 1278
    throw p1

    nop

    :pswitch_data_1e2
    .packed-switch 0x101
        :pswitch_52
        :pswitch_4b
        :pswitch_44
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
        :pswitch_25
        :pswitch_1d
    .end packed-switch
.end method

.method protected blacklist handleRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .registers 4

    if-nez p1, :cond_8

    const-string p1, "handleRefresh received without input"

    .line 1333
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    return-void

    .line 1337
    :cond_8
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1338
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    .line 1343
    :cond_1f
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-eqz v0, :cond_29

    const-string p1, "handleRefresh with unknown operation"

    .line 1350
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    goto :goto_33

    :cond_29
    const-string v0, "handleRefresh with SIM_FILE_UPDATED"

    .line 1345
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1346
    iget p1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleFileUpdate(I)V

    :goto_33
    return-void
.end method

.method public blacklist isCspPlmnEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isLoaded()Z
    .registers 1

    .line 1464
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public blacklist isProvisioned()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected abstract blacklist log(Ljava/lang/String;)V
.end method

.method protected abstract blacklist loge(Ljava/lang/String;)V
.end method

.method protected abstract blacklist onAllRecordsLoaded()V
.end method

.method protected blacklist onDetected()V
    .registers 2

    const/4 v0, 0x0

    .line 453
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 454
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected blacklist onLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    .line 460
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected abstract blacklist onReady()V
.end method

.method protected abstract blacklist onRecordLoaded()V
.end method

.method public abstract blacklist onRefresh(Z[I)V
.end method

.method protected blacklist onSimPhonebookRefresh()V
    .registers 3

    const-string v0, "onSimPhonebookRefresh"

    .line 1100
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 1103
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/SemCommandsInterface;->notifySimPbReady()V

    .line 1105
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    const-string v0, "com.samsung.intent.action.PB2_SYNC"

    goto :goto_1d

    :cond_1b
    const-string v0, "com.samsung.intent.action.PB_SYNC"

    .line 1108
    :goto_1d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 1109
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1110
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public blacklist registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 705
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 709
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 710
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 713
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object p1

    sget-object p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne p1, p2, :cond_2e

    .line 714
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 715
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_2e
    return-void
.end method

.method public blacklist registerForLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 574
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 575
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getLockedRecordsLoaded()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 578
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_22
    return-void
.end method

.method public blacklist registerForNetworkLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 597
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 598
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 600
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNetworkLockedRecordsLoaded()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 601
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_22
    return-void
.end method

.method public blacklist registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 765
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 766
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForNetworkSubsetLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 620
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 621
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSubsetLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 623
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNetworkSubsetLockedRecordsLoaded()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 624
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_22
    return-void
.end method

.method public blacklist registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 755
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 756
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForPersoLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 688
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 689
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPersoLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 691
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getPersoLockedRecordsLoaded()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 692
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_22
    return-void
.end method

.method public blacklist registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 741
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 742
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    const/4 p0, 0x0

    .line 746
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyResult(Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 747
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 537
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 538
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 540
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 541
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_22
    return-void
.end method

.method public blacklist registerForRecordsOverride(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 558
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 559
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 561
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 562
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_22
    return-void
.end method

.method public blacklist registerForRegionalLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 643
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 644
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRegionalLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 645
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRegionalLockedRecordsLoaded()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 646
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_22
    return-void
.end method

.method public blacklist registerForServiceProviderLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 665
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 666
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mServiceProviderLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 668
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderLockedRecordsLoaded()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 669
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_22
    return-void
.end method

.method public blacklist registerForSpnUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 725
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 729
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 730
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpnUpdatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 732
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_24

    .line 733
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_24
    return-void
.end method

.method public blacklist retrievePendingTransaction(Ljava/lang/Integer;)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/os/Message;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPendingTransactions:Ljava/util/HashMap;

    monitor-enter v0

    .line 504
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 505
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public blacklist setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->override(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p3

    invoke-virtual {p2, p3, p7}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 414
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p3

    invoke-virtual {p2, p3, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 415
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist setImsi(Ljava/lang/String;)V
    .registers 5

    .line 795
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    .line 796
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "Invalid IMSI padding digits received."

    .line 797
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 800
    :cond_11
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    .line 802
    :cond_1c
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz p1, :cond_2f

    const-string v1, "[0-9]+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2f

    const-string p1, "Invalid non-numeric IMSI digits received."

    .line 803
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 804
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    .line 810
    :cond_2f
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const/4 v1, 0x6

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_44

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0xf

    if-le p1, v2, :cond_5c

    .line 811
    :cond_44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid IMSI "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 812
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    .line 815
    :cond_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMSI: mMncLength="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 817
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz p1, :cond_a6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_a6

    .line 818
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMSI: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 822
    :cond_a6
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->updateOperatorPlmn()V

    .line 824
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6

    const-string p1, "setMsisdn() should not be invoked on base IccRecords"

    .line 955
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 957
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 p2, 0x6a

    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    .line 958
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object p1

    iput-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 959
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setSMSS()V
    .registers 2

    const-string v0, "setSMSS call in IccRecords"

    .line 1935
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist setServiceProviderName(Ljava/lang/String;)V
    .registers 3

    .line 1003
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    if-eqz p1, :cond_f

    .line 1004
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    .line 1006
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->trimNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    .line 1008
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpnUpdatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_1d
    return-void
.end method

.method protected blacklist setSimLanguage([B[B)V
    .registers 6

    .line 1294
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    .line 1296
    :try_start_a
    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->findBestLanguage([B[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_10} :catch_11

    goto :goto_29

    .line 1298
    :catch_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse EF-LI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 1301
    :goto_29
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;

    if-nez v1, :cond_4c

    .line 1303
    :try_start_2d
    invoke-static {p2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->findBestLanguage([B[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPrefLang:Ljava/lang/String;
    :try_end_33
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2d .. :try_end_33} :catch_34

    goto :goto_4c

    .line 1305
    :catch_34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to parse EF-PL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public blacklist setVideoCallForwardingFlag(IZLjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public blacklist setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public abstract blacklist setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist setVoiceMessageWaiting(II)V
.end method

.method public blacklist storePendingTransaction(Landroid/os/Message;)I
    .registers 3

    const/4 v0, 0x0

    .line 476
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->storePendingTransaction(Landroid/os/Message;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist storePendingTransaction(Landroid/os/Message;Ljava/lang/Object;)I
    .registers 5

    .line 488
    sget-object v0, Lcom/android/internal/telephony/uicc/IccRecords;->sNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 489
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 490
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPendingTransactions:Ljava/util/HashMap;

    monitor-enter p1

    .line 491
    :try_start_e
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPendingTransactions:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    monitor-exit p1

    return v0

    :catchall_19
    move-exception p0

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 325
    sget-boolean v0, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    if-nez v0, :cond_7

    const-string p0, "xxx"

    return-object p0

    .line 329
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFullIccId:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDestroyed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mCi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mFh="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mParentApp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " recordsToLoad="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsToLoad:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " adnCache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " recordsRequested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsRequested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " lockedRecordsReqReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsReqReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " iccid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_96

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFakeIccid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeIccid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_97

    :cond_96
    move-object v1, v3

    :goto_97
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " msisdnTag="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMsisdnTag:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " voiceMailNum="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 343
    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " voiceMailTag="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mVoiceMailTag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailNum:Ljava/lang/String;

    .line 345
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " newVoiceMailTag="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewVoiceMailTag:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isVoiceMailFixed="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIsVoiceMailFixed:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mImsi="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz v1, :cond_107

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_109

    :cond_107
    const-string v0, "null"

    :goto_109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mFakeImsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12d

    :cond_12c
    move-object v0, v3

    :goto_12d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mncLength="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mailboxIndex="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMailboxIndex:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " spn="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mFakeSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCarrierTestOverride:Lcom/android/internal/telephony/uicc/CarrierTestOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->getFakeSpn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_16d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist unregisterForImsiReady(Landroid/os/Handler;)V
    .registers 2

    .line 721
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForLockedRecordsLoaded(Landroid/os/Handler;)V
    .registers 2

    .line 586
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNetworkLockedRecordsLoaded(Landroid/os/Handler;)V
    .registers 2

    .line 609
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V
    .registers 2

    .line 769
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNetworkSubsetLockedRecordsLoaded(Landroid/os/Handler;)V
    .registers 2

    .line 632
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSubsetLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNewSms(Landroid/os/Handler;)V
    .registers 2

    .line 760
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForPersoLockedRecordsLoaded(Landroid/os/Handler;)V
    .registers 2

    .line 700
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mPersoLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRecordsEvents(Landroid/os/Handler;)V
    .registers 2

    .line 751
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .registers 2

    .line 546
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRecordsOverride(Landroid/os/Handler;)V
    .registers 2

    .line 550
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRegionalLockedRecordsLoaded(Landroid/os/Handler;)V
    .registers 2

    .line 654
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRegionalLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForServiceProviderLockedRecordsLoaded(Landroid/os/Handler;)V
    .registers 2

    .line 677
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mServiceProviderLockedRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSpnUpdate(Landroid/os/Handler;)V
    .registers 2

    .line 737
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpnUpdatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method protected blacklist updateOperatorPlmn()V
    .registers 9

    .line 829
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10f

    .line 833
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    const/4 v4, 0x2

    if-ne v1, v4, :cond_44

    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x6

    if-lt v1, v4, :cond_44

    .line 834
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 835
    sget-object v4, Lcom/android/internal/telephony/uicc/IccRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    array-length v5, v4

    move v6, v3

    :goto_1e
    if-ge v6, v5, :cond_44

    aget-object v7, v4, v6

    .line 836
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 837
    iput v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    .line 838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI: setting1 mMncLength="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    goto :goto_44

    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 845
    :cond_44
    :goto_44
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    if-nez v1, :cond_83

    .line 847
    :try_start_48
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 848
    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting2 mMncLength="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_6c} :catch_6d

    goto :goto_83

    .line 851
    :catch_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Corrupt IMSI! setting3 mMncLength="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V

    .line 855
    :cond_83
    :goto_83
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    if-eqz v1, :cond_10f

    const/4 v4, -0x1

    if-eq v1, v4, :cond_10f

    .line 856
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    add-int/2addr v4, v2

    if-lt v1, v4, :cond_10f

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update mccmnc="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    add-int/2addr v5, v2

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 862
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 863
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 864
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    const-string v5, "ril.simoperator"

    const-string v6, "ETC"

    .line 863
    invoke-static {v1, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 865
    iget v5, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mIccType:I

    if-eq v5, v2, :cond_cf

    const/4 v6, 0x4

    if-ne v5, v6, :cond_e1

    :cond_cf
    const-string v5, "CTC"

    .line 866
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_df

    const-string v5, "CTG"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    :cond_df
    move v1, v3

    goto :goto_e2

    :cond_e1
    const/4 v1, 0x1

    :goto_e2
    if-eqz v1, :cond_10a

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 873
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    add-int/2addr p0, v2

    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_10f

    :cond_10a
    const-string v0, "update mccmnc skip"

    .line 875
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    :cond_10f
    :goto_10f
    return-void
.end method
