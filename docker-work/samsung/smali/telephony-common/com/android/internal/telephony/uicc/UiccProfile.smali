.class public Lcom/android/internal/telephony/uicc/UiccProfile;
.super Lcom/android/internal/telephony/IccCard;
.source "UiccProfile.java"


# static fields
.field protected static final blacklist DBG:Z = true

.field public static final blacklist EVENT_APP_READY:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field protected static final blacklist LOG_TAG:Ljava/lang/String; = "UiccProfile"


# instance fields
.field private blacklist LOG_TAG_ID:Ljava/lang/String;

.field private blacklist dialog:Landroid/app/AlertDialog;

.field private blacklist isAlreadyOvercounted:Z

.field public blacklist mAlreadyReadEcc:Z

.field private final blacklist mCarrierConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

.field private blacklist mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private blacklist mCdmaSubscriptionAppIndex:I

.field private blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mContext:Landroid/content/Context;

.field public blacklist mCurrentAppType:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private blacklist mDesiredSimPersoLocked:Z

.field private blacklist mDisposed:Z

.field private blacklist mEFLockRemote:I

.field private blacklist mEFLockStatus:I

.field private blacklist mEFLockUser:I

.field private blacklist mEmergencyNumber:Ljava/lang/String;

.field private blacklist mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private blacklist mFPLMN:Ljava/lang/String;

.field private blacklist mGsmUmtsSubscriptionAppIndex:I

.field public final blacklist mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private blacklist mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private blacklist mImsSubscriptionAppIndex:I

.field private blacklist mInvalidSimNotiDisplayed:Z

.field private blacklist mIsPermDisabledBroadcasted:Z

.field private blacklist mLastReportedNumOfUiccApplications:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNetworkLockDialogDisplayed:Z

.field private blacklist mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mNetworkSubsetLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mNvConfig:Z

.field private blacklist mOPLMNwAct:Ljava/lang/String;

.field private blacklist mOnRefreshFcn:Z

.field private blacklist mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mPLMNwAct:Ljava/lang/String;

.field private blacklist mPersoLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mPersoSimLock:Z

.field private final blacklist mPhoneId:I

.field private final blacklist mPinStorage:Lcom/android/internal/telephony/uicc/PinStorage;

.field private final blacklist mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

.field private blacklist mProvisionCompleteContentObserverRegistered:Z

.field private blacklist mRadioTech:I

.field private blacklist mReginalLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field blacklist mResultSIMLOCKINFO:Lcom/android/internal/telephony/uicc/SimLockInfoResult;

.field private blacklist mSalesCode:Ljava/lang/String;

.field protected blacklist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

.field private blacklist mServicePoviderLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mSsuNetworkLockDialogDisplayed:Z

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mTestOverrideCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

.field private blacklist mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private blacklist mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private final blacklist mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private blacklist mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field private blacklist mUpdateUnkown:Z

.field private final blacklist mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mUserUnlockReceiverRegistered:Z

.field private blacklist mVzwSsuSimNotiDisplayed:Z

.field private blacklist setRemoteLockStat:I

.field private blacklist setRemoteLockValue:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDesiredSimPersoLocked(Lcom/android/internal/telephony/uicc/UiccProfile;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDesiredSimPersoLocked:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisposed(Lcom/android/internal/telephony/uicc/UiccProfile;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDisposed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEmergencyNumber(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mEmergencyNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFPLMN(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mFPLMN:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkSubsetLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkSubsetLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOPLMNwAct(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOPLMNwAct:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPLMNwAct(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPLMNwAct:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPersoLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPersoLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPersoSimLock(Lcom/android/internal/telephony/uicc/UiccProfile;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPersoSimLock:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UiccProfile;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPinStorage(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/PinStorage;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPinStorage:Lcom/android/internal/telephony/uicc/PinStorage;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSalesCode(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSalesCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServicePoviderLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mServicePoviderLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUiccApplication(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDesiredSimPersoLocked(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDesiredSimPersoLocked:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEmergencyNumber(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mEmergencyNumber:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFPLMN(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mFPLMN:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOPLMNwAct(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOPLMNwAct:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPLMNwAct(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPLMNwAct:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPersoSimLock(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPersoSimLock:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProvisionCompleteContentObserverRegistered(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserverRegistered:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSsuNetworkLockDialogDisplayed(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSsuNetworkLockDialogDisplayed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTestOverrideCarrierPrivilegeRules(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTestOverrideCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUserUnlockReceiverRegistered(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUserUnlockReceiverRegistered:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCarrierNameOverride(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->handleCarrierNameOverride()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSimCountryIsoOverride(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->handleSimCountryIsoOverride()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misSupportSsu(Lcom/android/internal/telephony/uicc/UiccProfile;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportSsu()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogWithLocalLog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->logWithLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmakeVzwSsuNetworkLockDialog(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->makeVzwSsuNetworkLockDialog()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCarrierPrivilegesLoadedMessage(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->onCarrierPrivilegesLoadedMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monQueryFacilitySimPerso(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/AsyncResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->onQueryFacilitySimPerso(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mread2GEccList(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/AsyncResult;)Ljava/lang/StringBuffer;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->read2GEccList(Landroid/os/AsyncResult;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mread3GEccList(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/AsyncResult;)Ljava/lang/StringBuffer;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->read3GEccList(Landroid/os/AsyncResult;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetExternalState(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshowCarrierAppNotificationsIfPossible(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->showCarrierAppNotificationsIfPossible()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smeventToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->eventToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)V
    .registers 14

    .line 804
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;-><init>()V

    const-string v0, "UiccProfile"

    .line 137
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->LOG_TAG_ID:Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 151
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x0

    .line 159
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDisposed:Z

    .line 164
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 229
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIsPermDisabledBroadcasted:Z

    const-string v2, ""

    .line 232
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mEmergencyNumber:Ljava/lang/String;

    .line 233
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mAlreadyReadEcc:Z

    .line 238
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 240
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mServicePoviderLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 241
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkSubsetLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 242
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPersoLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 243
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mReginalLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/4 v2, 0x1

    .line 246
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    .line 248
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mRadioTech:I

    const/4 v3, 0x0

    .line 249
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 250
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 251
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 260
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockDialogDisplayed:Z

    .line 261
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSsuNetworkLockDialogDisplayed:Z

    .line 262
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mInvalidSimNotiDisplayed:Z

    .line 263
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mVzwSsuSimNotiDisplayed:Z

    .line 264
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUpdateUnkown:Z

    .line 266
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->isAlreadyOvercounted:Z

    .line 268
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->dialog:Landroid/app/AlertDialog;

    .line 285
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mEFLockUser:I

    .line 286
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mEFLockRemote:I

    const/4 v4, -0x1

    .line 287
    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mEFLockStatus:I

    .line 289
    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->setRemoteLockValue:I

    .line 290
    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->setRemoteLockStat:I

    .line 292
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSalesCode:Ljava/lang/String;

    .line 308
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPersoSimLock:Z

    .line 309
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDesiredSimPersoLocked:Z

    .line 311
    new-instance v4, Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    invoke-direct {v4, v1, v1, v1, v1}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    .line 315
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPLMNwAct:Ljava/lang/String;

    .line 316
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mFPLMN:Ljava/lang/String;

    .line 317
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOPLMNwAct:Ljava/lang/String;

    .line 318
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNvConfig:Z

    .line 322
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOnRefreshFcn:Z

    .line 330
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccProfile$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/uicc/UiccProfile$1;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    .line 343
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccProfile$2;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/uicc/UiccProfile$2;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 355
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccProfile$3;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/uicc/UiccProfile$3;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 391
    new-instance v5, Lcom/android/internal/telephony/uicc/UiccProfile$4;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/uicc/UiccProfile$4;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    .line 806
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->LOG_TAG_ID:Ljava/lang/String;

    const-string v0, "Creating profile"

    .line 808
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 809
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    .line 810
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 811
    iput p4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 814
    invoke-static {p4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p4

    if-eqz p4, :cond_d1

    .line 816
    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p4

    if-ne p4, v2, :cond_ce

    move v1, v2

    :cond_ce
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setCurrentAppType(Z)V

    .line 819
    :cond_d1
    instance-of p4, p5, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz p4, :cond_db

    .line 821
    check-cast p5, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    const/4 p4, 0x6

    invoke-virtual {p5, v5, p4, v3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->registerForEidReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 823
    :cond_db
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/internal/telephony/uicc/UiccController;->getPinStorage()Lcom/android/internal/telephony/uicc/PinStorage;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPinStorage:Lcom/android/internal/telephony/uicc/PinStorage;

    .line 825
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 826
    invoke-interface {p2, v5, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 828
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 p3, 0x64

    invoke-interface {p2, v5, p3, v3}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForSap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 830
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->resetProperties()V

    .line 832
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 833
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.samsung.intent.action.START_ICC_NETWORK_DEPERSO"

    .line 835
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 837
    invoke-virtual {p1, v4, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist areAllApplicationsReady()Z
    .registers 7

    .line 2084
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_21

    aget-object v4, v0, v3

    if-eqz v4, :cond_1e

    .line 2085
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isReady()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 2086
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isAppIgnored()Z

    move-result v4

    if-nez v4, :cond_1e

    return v2

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2095
    :cond_21
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_26

    const/4 v2, 0x1

    :cond_26
    return v2
.end method

.method private blacklist areAllRecordsLoaded()Z
    .registers 7

    .line 2099
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_27

    aget-object v4, v0, v3

    if-eqz v4, :cond_24

    .line 2100
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isAppIgnored()Z

    move-result v5

    if-nez v5, :cond_24

    .line 2101
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 2102
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->isLoaded()Z

    move-result v4

    if-nez v4, :cond_24

    :cond_23
    return v2

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2111
    :cond_27
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_2c

    const/4 v2, 0x1

    :cond_2c
    return v2
.end method

.method private blacklist bcdToString([BII)Ljava/lang/String;
    .registers 7

    .line 2830
    new-instance p0, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, p3, 0x2

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    :goto_8
    add-int v1, p2, p3

    if-ge v0, v1, :cond_2d

    .line 2835
    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0xf

    const/16 v2, 0x9

    if-le v1, v2, :cond_15

    goto :goto_2d

    :cond_15
    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 2837
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2839
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    if-le v1, v2, :cond_24

    goto :goto_2d

    :cond_24
    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 2841
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2844
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist checkAndUpdateIfAnyAppToBeIgnored()V
    .registers 9

    .line 2065
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    .line 2066
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_f
    if-ge v5, v3, :cond_2e

    aget-object v6, v2, v5

    if-eqz v6, :cond_2b

    .line 2067
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isReady()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 2068
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput-boolean v1, v0, v6

    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 2072
    :cond_2e
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v2

    :goto_31
    if-ge v4, v3, :cond_55

    aget-object v5, v2, v4

    if-eqz v5, :cond_52

    .line 2073
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isReady()Z

    move-result v6

    if-nez v6, :cond_52

    .line 2076
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-boolean v6, v0, v6

    if-eqz v6, :cond_52

    .line 2077
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setAppIgnoreState(Z)V

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_55
    return-void
.end method

.method private blacklist checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I
    .registers 8

    .line 2115
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v1, "App index "

    const/4 v2, -0x1

    if-eqz v0, :cond_44

    array-length v3, v0

    if-lt p1, v3, :cond_b

    goto :goto_44

    :cond_b
    if-gez p1, :cond_e

    return v2

    .line 2125
    :cond_e
    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    if-eq v0, p2, :cond_43

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    .line 2126
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    if-eq v0, p3, :cond_43

    .line 2127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid since it\'s not "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and not "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return v2

    :cond_43
    return p1

    .line 2116
    :cond_44
    :goto_44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid since there are no applications"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return v2
.end method

.method private blacklist createAndUpdateCatServiceLocked()V
    .registers 4

    .line 1998
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    if-lez v1, :cond_23

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_23

    .line 2000
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-nez v0, :cond_1b

    .line 2001
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v0, v1, p0, v2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_2d

    .line 2003
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/telephony/cat/CatService;->update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;)V

    goto :goto_2d

    .line 2006
    :cond_23
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_2a

    .line 2007
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    :cond_2a
    const/4 v0, 0x0

    .line 2009
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    :goto_2d
    return-void
.end method

.method private static blacklist eventToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_48

    .line 2673
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1a
    const-string p0, "SUPPLY_ICC_PIN_DONE"

    return-object p0

    :pswitch_1d
    const-string p0, "CARRIER_PRIVILEGES_TEST_OVERRIDE_SET"

    return-object p0

    :pswitch_20
    const-string p0, "CARRIER_CONFIG_CHANGED"

    return-object p0

    :pswitch_23
    const-string p0, "CARRIER_PRIVILEGES_LOADED"

    return-object p0

    :pswitch_26
    const-string p0, "SIM_IO_DONE"

    return-object p0

    :pswitch_29
    const-string p0, "TRANSMIT_APDU_BASIC_CHANNEL_DONE"

    return-object p0

    :pswitch_2c
    const-string p0, "TRANSMIT_APDU_LOGICAL_CHANNEL_DONE"

    return-object p0

    :pswitch_2f
    const-string p0, "CLOSE_LOGICAL_CHANNEL_DONE"

    return-object p0

    :pswitch_32
    const-string p0, "OPEN_LOGICAL_CHANNEL_DONE"

    return-object p0

    :pswitch_35
    const-string p0, "EID_READY"

    return-object p0

    :pswitch_38
    const-string p0, "NETWORK_LOCKED"

    return-object p0

    :pswitch_3b
    const-string p0, "RECORDS_LOADED"

    return-object p0

    :pswitch_3e
    const-string p0, "APP_READY"

    return-object p0

    :pswitch_41
    const-string p0, "ICC_LOCKED"

    return-object p0

    :pswitch_44
    const-string p0, "RADIO_OFF_OR_UNAVAILABLE"

    return-object p0

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_3
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private blacklist getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    .registers 3

    .line 2587
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2588
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTestOverrideCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz v1, :cond_9

    .line 2589
    monitor-exit v0

    return-object v1

    .line 2591
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 2592
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private blacklist getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .registers 2

    .line 1517
    sget-object p0, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const-string p1, "NETWORK"

    packed-switch p0, :pswitch_data_24

    const/4 p0, 0x0

    return-object p0

    :pswitch_f
    const-string p0, "CARD_RESTRICTED"

    return-object p0

    :pswitch_12
    const-string p0, "CARD_IO_ERROR"

    return-object p0

    :pswitch_15
    return-object p1

    :pswitch_16
    const-string p0, "PERSO"

    return-object p0

    :pswitch_19
    const-string p0, "PERM_DISABLED"

    return-object p0

    :pswitch_1c
    return-object p1

    :pswitch_1d
    const-string p0, "PUK"

    return-object p0

    :pswitch_20
    const-string p0, "PIN"

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method private blacklist getIccUsimPersoStatus()V
    .registers 5

    const-string v0, "getIccUsimPersoStatus"

    .line 2949
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    const-string v0, "ro.boot.hardware"

    const-string v1, ""

    .line 2950
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "qcom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x2

    .line 2951
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-string v2, "0000"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->invokeSimPerso(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_34

    :cond_24
    const/4 v0, 0x7

    .line 2958
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6f

    .line 2960
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-string v3, "PH-SIM"

    .line 2958
    invoke-interface {v2, v3, v1, v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    :goto_34
    return-void
.end method

.method private blacklist getUninstalledCarrierPackages()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2249
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 2250
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carrier_app_whitelist"

    .line 2249
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2252
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2253
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 2255
    :cond_17
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->parseToCertificateToPackageMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 2256
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2257
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 2259
    :cond_26
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v1

    if-nez v1, :cond_31

    .line 2261
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 2263
    :cond_31
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 2264
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getAccessRules()Ljava/util/List;

    move-result-object v1

    .line 2265
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccAccessRule;

    .line 2266
    invoke-virtual {v3}, Landroid/telephony/UiccAccessRule;->getCertificateHexString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 2267
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2268
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->isPackageBundled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 2269
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_6a
    return-object v2
.end method

.method private blacklist handleCarrierNameOverride()V
    .registers 9

    .line 952
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_14

    const-string v0, "do not update carrier name if euicc and unknown state"

    .line 953
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void

    .line 957
    :cond_14
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 958
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_38

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId not valid for Phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void

    .line 964
    :cond_38
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v3, "carrier_config"

    .line 965
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    if-nez v2, :cond_4a

    const-string v0, "Failed to load a Carrier Config"

    .line 967
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void

    .line 971
    :cond_4a
    invoke-virtual {v2, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "carrier_name_override_bool"

    const/4 v4, 0x0

    .line 972
    invoke-virtual {v2, v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "carrier_name_string"

    .line 974
    invoke-virtual {v2, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    .line 977
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v3, :cond_93

    .line 983
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_70

    goto :goto_93

    .line 986
    :cond_70
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 989
    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 991
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPlmn()Ljava/lang/String;

    move-result-object v3

    .line 992
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8b

    const/4 v4, 0x4

    move-object v2, v3

    goto :goto_94

    .line 996
    :cond_8b
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCarrierName()Ljava/lang/String;

    move-result-object v2

    goto :goto_94

    :cond_90
    move-object v2, v5

    move v4, v7

    goto :goto_94

    :cond_93
    :goto_93
    const/4 v4, 0x3

    .line 1002
    :goto_94
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a6

    .line 1003
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v3, v5, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 1004
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1007
    :cond_a6
    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateCarrierNameForSubscription(Lcom/android/internal/telephony/SubscriptionController;II)V

    return-void
.end method

.method private blacklist handleSimCountryIsoOverride()V
    .registers 5

    .line 1022
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 1023
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_24

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId not valid for Phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void

    .line 1029
    :cond_24
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v3, "carrier_config"

    .line 1030
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    if-nez v2, :cond_36

    const-string v0, "Failed to load a Carrier Config"

    .line 1032
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void

    .line 1036
    :cond_36
    invoke-virtual {v2, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "sim_country_iso_override_string"

    .line 1037
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1038
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5c

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 1039
    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 1040
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v3, p0, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 1041
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->setCountryIso(Ljava/lang/String;I)I

    :cond_5c
    return-void
.end method

.method private blacklist invokeSimPerso(ILjava/lang/String;Landroid/os/Message;)V
    .registers 10

    const-string v0, "finally Exception"

    .line 3052
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3053
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3056
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    .line 3058
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invokeSimPerso  Lock Mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " // data :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    const/4 v4, 0x4

    .line 3061
    :try_start_2f
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x1

    .line 3062
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3063
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3064
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3065
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3066
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_42} :catch_59
    .catchall {:try_start_2f .. :try_end_42} :catchall_57

    .line 3072
    :try_start_42
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_49

    .line 3074
    :catch_46
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 3078
    :goto_49
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 3079
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    :catchall_57
    move-exception p1

    goto :goto_66

    :catch_59
    :try_start_59
    const-string p1, "IOException in invokeSimPerso!!!"

    .line 3068
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_57

    .line 3072
    :try_start_5e
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_65

    .line 3074
    :catch_62
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    :goto_65
    return-void

    .line 3072
    :goto_66
    :try_start_66
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_6d

    .line 3074
    :catch_6a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 3076
    :goto_6d
    throw p1
.end method

.method private blacklist isAlreadyIncludedEccNum(Ljava/lang/String;)Z
    .registers 6

    .line 2770
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mEmergencyNumber:Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1a

    aget-object v3, p0, v2

    .line 2771
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1a
    return v1
.end method

.method private blacklist isNightMode(Landroid/content/Context;)Z
    .registers 3

    const/4 p0, 0x0

    .line 3337
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "display_night_theme"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_b} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_f

    if-eqz p1, :cond_e

    const/4 p0, 0x1

    :cond_e
    return p0

    :catch_f
    move-exception p1

    .line 3341
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    :catch_14
    move-exception p1

    .line 3339
    invoke-virtual {p1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_18
    return p0
.end method

.method private blacklist isNwLockByManufactureOperator()Z
    .registers 2

    .line 3550
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_e

    .line 3551
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_USIM_MANUFACTURE_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method static blacklist isPackageBundled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "UiccProfile"

    .line 2162
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x20000000

    .line 2167
    :try_start_8
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 2169
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is installed."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1f} :catch_21

    const/4 p0, 0x1

    return p0

    .line 2174
    :catch_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not installed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isProvisioned()Z
    .registers 3

    .line 2230
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 2231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x1

    .line 2230
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private blacklist isSupportSsu()Z
    .registers 3

    const-string v0, "ssu.support"

    .line 3558
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "isSupport Ssu"

    .line 3559
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isSupportUiccCarrierPrivilegeRules()Z
    .registers 6

    .line 1978
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v1, "SKT"

    const-string v2, "KTT"

    const-string v3, "LGT"

    const-string v4, "KOO"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 1979
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v2, "ril.simoperator"

    const-string v3, "ETC"

    invoke-static {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SKCTN"

    .line 1981
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "SKCTD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_2f
    const-string v0, "Do not init CarrierPrivilegeRules for specific SKT usim"

    .line 1982
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return v1

    .line 1987
    :cond_35
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v2, "persist.sys.softsim.status"

    const-string v3, "default"

    invoke-static {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "activating"

    .line 1988
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "activated"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    goto :goto_52

    :cond_50
    const/4 p0, 0x1

    return p0

    :cond_52
    :goto_52
    const-string v0, "Do not init CarrierPrivilegeRules for soft SIM"

    .line 1989
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z
    .registers 7

    .line 2043
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2045
    instance-of v1, v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    .line 2046
    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    iget v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    if-ne v0, v3, :cond_19

    const-string v0, "check nv mode"

    .line 2047
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    move v0, v3

    goto :goto_1a

    :cond_19
    move v0, v2

    .line 2054
    :goto_1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v1, v4, :cond_46

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v1, v4, :cond_46

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 2055
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccController;->isCdmaSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_45

    if-nez v0, :cond_45

    .line 2056
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq p0, v0, :cond_46

    .line 2057
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p0, p1, :cond_45

    goto :goto_46

    :cond_45
    return v2

    :cond_46
    :goto_46
    return v3
.end method

.method private blacklist isUserUnlocked()Z
    .registers 2

    .line 2236
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 2679
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->LOG_TAG_ID:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logWithLocalLog(Ljava/lang/String;)V
    .registers 4

    const-string v0, "UiccProfile"

    .line 2688
    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccProfile["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccController;->addLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 2683
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->LOG_TAG_ID:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist makeInvalidSIMNotification(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 9

    const/4 v0, 0x1

    .line 3476
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mInvalidSimNotiDisplayed:Z

    .line 3479
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3481
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v3, "VZW"

    if-ne p1, v2, :cond_2a

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 3482
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const v2, 0x1040623

    .line 3483
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x1040834

    .line 3484
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    :cond_2a
    const v2, 0x1040622

    .line 3486
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3487
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v4, :cond_50

    const v4, 0x10408b5

    .line 3488
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3489
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSalesCode:Ljava/lang/String;

    const-string v6, "DCM"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    const v4, 0x10408b4

    .line 3490
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    :cond_4e
    move-object v1, v4

    goto :goto_69

    .line 3492
    :cond_50
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v4, :cond_5c

    const v4, 0x1040833

    .line 3493
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    .line 3494
    :cond_5c
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->REGIONAL_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v4, :cond_68

    const v4, 0x1040b6e

    .line 3495
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    :cond_68
    const/4 v1, 0x0

    .line 3499
    :goto_69
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 3500
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3501
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v5, 0x1080c1f

    .line 3502
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 3503
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const-wide/16 v5, 0x0

    .line 3504
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 3505
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3506
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const-string v0, "sim"

    .line 3507
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 3509
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_bb

    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 3510
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bb

    .line 3511
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.action.START_ICC_NETWORK_DEPERSO"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3512
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 3513
    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 3516
    :cond_bb
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string p1, "notification"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 p1, 0x111

    .line 3517
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private blacklist makeNetworkLockDialog()V
    .registers 5

    .line 3347
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockDialogDisplayed:Z

    if-eqz v0, :cond_a

    const-string v0, "mNetworkLockDialogDisplayed is true"

    .line 3348
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void

    .line 3352
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportSsu()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "ssu.support is 1"

    .line 3353
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void

    :cond_16
    const/4 v0, 0x1

    .line 3357
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockDialogDisplayed:Z

    .line 3359
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 3360
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 3361
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->isNightMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x4

    goto :goto_2a

    :cond_29
    const/4 v3, 0x5

    :goto_2a
    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x10402e8

    .line 3362
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x10402e7

    .line 3363
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 3364
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 3365
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3366
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->dialog:Landroid/app/AlertDialog;

    .line 3368
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 3370
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x10

    .line 3371
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 3372
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3373
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private blacklist makeVzwSsuNetworkLockDialog()V
    .registers 10

    .line 3377
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSsuNetworkLockDialogDisplayed:Z

    if-eqz v0, :cond_a

    const-string v0, "mSsuNetworkLockDialogDisplayed is true"

    .line 3378
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v0, 0x1

    .line 3382
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSsuNetworkLockDialogDisplayed:Z

    .line 3385
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccProfile$5;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccProfile$5;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    .line 3409
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 3410
    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v4, "ril.hasSimAbsent"

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eqz v3, :cond_68

    .line 3411
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 3412
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->isNightMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_36

    goto :goto_37

    :cond_36
    move v4, v5

    :goto_37
    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/high16 v3, 0x1040000

    .line 3413
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x1040d79

    .line 3414
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040da1

    .line 3415
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040da0

    .line 3416
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3417
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3418
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->dialog:Landroid/app/AlertDialog;

    goto :goto_a9

    .line 3420
    :cond_68
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 3421
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/UiccProfile;->isNightMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_73

    goto :goto_74

    :cond_73
    move v4, v5

    :goto_74
    invoke-direct {v3, v7, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x104000a

    .line 3422
    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1040da2

    .line 3423
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1040d9f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "(800) 922-0204"

    aput-object v5, v4, v6

    const-string v5, "(888) 294-6804"

    aput-object v5, v4, v0

    .line 3424
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3425
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3426
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->dialog:Landroid/app/AlertDialog;

    .line 3429
    :goto_a9
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 3431
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x10

    .line 3432
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 3433
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3434
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const-string v0, "makeVzwSsuNetworkLockDialog: dialog.show()"

    .line 3435
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist makeVzwSsuNetworkLockNotification()V
    .registers 8

    .line 3439
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mVzwSsuSimNotiDisplayed:Z

    if-eqz v0, :cond_a

    const-string v0, "mVzwSsuSimNotiDisplayed is true"

    .line 3440
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v0, 0x1

    .line 3444
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mVzwSsuSimNotiDisplayed:Z

    .line 3447
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "makeVzwSsuNetworkLockNotification()"

    .line 3448
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 3450
    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v3, "ril.hasSimAbsent"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3a

    const v2, 0x1040da1

    .line 3451
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x1040da0

    .line 3452
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_53

    :cond_3a
    const v2, 0x1040da2

    .line 3454
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x1040d9f

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "(800) 922-0204"

    aput-object v6, v5, v3

    const-string v6, "(888) 294-6804"

    aput-object v6, v5, v0

    .line 3455
    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3458
    :goto_53
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 3459
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3460
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v1, 0x1080c1f

    .line 3461
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const-wide/16 v5, 0x0

    .line 3462
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 3463
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3464
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const-string v0, "sim"

    .line 3465
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 3467
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.START_ICC_NETWORK_DEPERSO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3468
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const/high16 v2, 0x4000000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3469
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 3471
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v0, 0x112

    .line 3472
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private blacklist onCarrierPrivilegesLoadedMessage()V
    .registers 8

    .line 2189
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2190
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2191
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 2190
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;ILandroid/content/Context;)V

    .line 2193
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v1, "usagestats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    if-eqz v0, :cond_2a

    .line 2196
    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManager;->onCarrierPrivilegedAppsChanged()V

    .line 2199
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->hideAllNotifications(Landroid/content/Context;)V

    .line 2200
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->unregisterPackageInstallReceiver(Landroid/content/Context;)V

    .line 2202
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2203
    :try_start_37
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isProvisioned()Z

    move-result v1

    .line 2204
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isUserUnlocked()Z

    move-result v2

    if-eqz v1, :cond_5b

    if-eqz v2, :cond_5b

    .line 2208
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getUninstalledCarrierPackages()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2209
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->promptInstallCarrierApp(Ljava/lang/String;)V

    goto :goto_4b

    :cond_5b
    const/4 v3, 0x1

    if-nez v1, :cond_72

    const-string v1, "device_provisioned"

    .line 2213
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2214
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2218
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserverRegistered:Z

    :cond_72
    if-nez v2, :cond_84

    .line 2221
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2223
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUserUnlockReceiverRegistered:Z

    .line 2226
    :cond_84
    monitor-exit v0

    return-void

    :catchall_86
    move-exception p0

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_37 .. :try_end_88} :catchall_86

    throw p0
.end method

.method private blacklist onQueryFacilitySimPerso(Landroid/os/AsyncResult;)V
    .registers 4

    .line 3087
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1b

    .line 3088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in querying facility lock:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void

    .line 3092
    :cond_1b
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 3093
    array-length v0, p1

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    .line 3094
    aget p1, p1, v0

    if-eqz p1, :cond_28

    const/4 v0, 0x1

    :cond_28
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPersoSimLock:Z

    .line 3095
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Query facility Usim Perso : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPersoSimLock:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    goto :goto_46

    :cond_41
    const-string p1, "[IccCard] Bogus facility Usim Perso response"

    .line 3097
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    :goto_46
    return-void
.end method

.method public static blacklist parseToCertificateToPackageMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\\s*;\\s*"

    .line 2285
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2287
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2288
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 2291
    :cond_15
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2292
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\\s*:\\s*"

    .line 2293
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2295
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_46

    const/4 v2, 0x0

    .line 2296
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_46
    const-string v1, "UiccProfile"

    const-string v2, "Incorrect length of key-value pair in carrier app allow list map.  Length should be exactly 2"

    .line 2299
    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_4e
    return-object v0
.end method

.method private blacklist promptInstallCarrierApp(Ljava/lang/String;)V
    .registers 3

    .line 2181
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 2182
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2183
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist queryRequestSetOtaReg(I)V
    .registers 7

    const-string v0, "finally Exception"

    .line 3025
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3026
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3028
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryRequestSetOtaReg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    const/4 v3, 0x5

    const/16 v4, 0x16

    .line 3032
    :try_start_23
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x11

    .line 3033
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3034
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    int-to-byte p1, p1

    .line 3035
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_32} :catch_4a
    .catchall {:try_start_23 .. :try_end_32} :catchall_48

    .line 3041
    :try_start_32
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_39

    .line 3043
    :catch_36
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 3047
    :goto_39
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 3048
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    :catchall_48
    move-exception p1

    goto :goto_57

    :catch_4a
    :try_start_4a
    const-string p1, "IOException in queryRequestSetOtaReg!!!"

    .line 3037
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_48

    .line 3041
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_56

    .line 3043
    :catch_53
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    :goto_56
    return-void

    .line 3041
    :goto_57
    :try_start_57
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_5e

    .line 3043
    :catch_5b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 3045
    :goto_5e
    throw p1
.end method

.method private blacklist read2GEccList(Landroid/os/AsyncResult;)Ljava/lang/StringBuffer;
    .registers 9

    .line 2779
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mEmergencyNumber:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2781
    :try_start_7
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 2782
    array-length v1, p1

    const/4 v2, 0x3

    div-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_4f

    mul-int/lit8 v4, v3, 0x3

    .line 2785
    invoke-direct {p0, p1, v4, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->bcdToString([BII)Ljava/lang/String;

    move-result-object v4

    .line 2786
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_37

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->isAlreadyIncludedEccNum(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 2787
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    const/16 v5, 0x2c

    .line 2788
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2790
    :cond_34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_3a

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :catch_3a
    move-exception p1

    .line 2794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process 2G ECC failed -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 2797
    :cond_4f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "read2GEccList: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist read3GEccList(Landroid/os/AsyncResult;)Ljava/lang/StringBuffer;
    .registers 10

    .line 2802
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2804
    :try_start_7
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 2806
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_61

    .line 2807
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    const/4 v6, 0x3

    .line 2809
    invoke-direct {p0, v5, v3, v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->bcdToString([BII)Ljava/lang/String;

    move-result-object v6

    .line 2810
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_49

    .line 2811
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_33

    const/16 v7, 0x2c

    .line 2812
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2814
    :cond_33
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v6, 0x2f

    .line 2817
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2818
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_49} :catch_4c

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :catch_4c
    move-exception p1

    .line 2822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process 3G ECC failed -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 2825
    :cond_61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "read3GEccList: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist registerAllAppEvents()V
    .registers 8

    .line 1382
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_20

    aget-object v3, v0, v2

    if-eqz v3, :cond_1d

    .line 1385
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1386
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 1389
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_20
    return-void
.end method

.method private blacklist registerCurrAppEvents()V
    .registers 5

    .line 1415
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_37

    .line 1416
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1417
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1419
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkSubsetLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1420
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForServiceProviderLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1421
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForPersoLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1422
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRegionalLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_37
    return-void
.end method

.method private blacklist removeInvalidSIMNotification()V
    .registers 7

    .line 3521
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mVzwSsuSimNotiDisplayed:Z

    const-string v1, "notification"

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    .line 3522
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mVzwSsuSimNotiDisplayed:Z

    .line 3523
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v3, 0x112

    .line 3524
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3527
    :cond_16
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mInvalidSimNotiDisplayed:Z

    if-nez v0, :cond_20

    const-string v0, "mInvalidSimNotiDisplayed is false"

    .line 3528
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void

    .line 3532
    :cond_20
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isOneTray()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_5c

    .line 3534
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    if-ne v0, v3, :cond_2d

    move v0, v2

    goto :goto_2e

    :cond_2d
    move v0, v3

    :goto_2e
    const-string v4, "gsm.sim.state"

    const-string v5, "ABSENT"

    .line 3535
    invoke-static {v0, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "PERM_DISABLED"

    .line 3536
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    const-string v4, "NETWORK_LOCKED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    const-string v4, "NETWORK_SUBSET_LOCKED"

    .line 3537
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    const-string v4, "SIM_SERVICE_PROVIDER_LOCKED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_56
    const-string v0, "The other slot is in PERSO or PERM state so don\'t need to remove InvalidSIMNotification"

    .line 3538
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    move v3, v2

    :cond_5c
    if-eqz v3, :cond_6d

    .line 3543
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mInvalidSimNotiDisplayed:Z

    .line 3544
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v0, 0x111

    .line 3545
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_6d
    return-void
.end method

.method private blacklist sanitizeApplicationIndexesLocked()V
    .registers 4

    .line 2024
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 2025
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    .line 2027
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 2028
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    .line 2030
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v2, 0x0

    .line 2031
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    return-void
.end method

.method private blacklist sendIntentPermBlocked()V
    .registers 6

    .line 3239
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIsPermDisabledBroadcasted:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 3243
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIsPermDisabledBroadcasted:Z

    const-string v1, "PUK permenant blocked"

    .line 3244
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 3247
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_PermanentSIMBlock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3248
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.RIL_PERM_BLOCKED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3249
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.app.RilErrorNotifier"

    const-string v4, "com.sec.app.RilErrorNotifier.PhoneErrorReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3251
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3254
    :cond_31
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v3, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 3255
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccPersoRetryCount()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_49

    .line 3256
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPersoSimLock:Z

    goto :goto_4c

    :cond_49
    const/4 v0, 0x0

    .line 3258
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPersoSimLock:Z

    :cond_4c
    :goto_4c
    return-void
.end method

.method private blacklist sendPersoBlockedIntent()V
    .registers 5

    const-string v0, "Perso blocked"

    .line 3568
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 3569
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->isAlreadyOvercounted:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    const-string v0, "sending broadcast"

    .line 3571
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 3572
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.RIL_PERSO_BLOCKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3573
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.app.RilErrorNotifier"

    const-string v3, "com.sec.app.RilErrorNotifier.PhoneErrorReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3575
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 3576
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->isAlreadyOvercounted:Z

    return-void
.end method

.method private blacklist setCurrentAppType(Z)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_5

    goto :goto_8

    :cond_5
    move v3, v1

    move v1, v0

    move v0, v3

    .line 936
    :goto_8
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 937
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 938
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_1b

    .line 941
    :cond_18
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    goto :goto_1d

    .line 939
    :cond_1b
    :goto_1b
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    .line 943
    :goto_1d
    monitor-exit p1

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_1f

    throw p0
.end method

.method private blacklist setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 3

    const/4 v0, 0x0

    .line 1496
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    return-void
.end method

.method private blacklist setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    .registers 5

    .line 1441
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1442
    :try_start_3
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1443
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setExternalState: mPhoneId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is invalid; Return!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 1444
    monitor-exit v0

    return-void

    :cond_28
    if-nez p2, :cond_44

    .line 1447
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, p2, :cond_44

    .line 1448
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalState: !override and newstate unchanged from "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1449
    monitor-exit v0

    return-void

    .line 1451
    :cond_44
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1452
    sget-object p2, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, p2, :cond_d6

    .line 1454
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p1, :cond_100

    .line 1455
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    .line 1456
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalState: operator="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPhoneId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1458
    iget p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result p2

    if-nez p2, :cond_bd

    const-string p2, "LRA"

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 1459
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_bd

    iget p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 1460
    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result p2

    if-eqz p2, :cond_90

    goto :goto_bd

    .line 1463
    :cond_90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b7

    .line 1464
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {p2, v1, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    const/4 p2, 0x0

    const/4 v1, 0x3

    .line 1465
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b1

    .line 1467
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 1468
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1467
    invoke-virtual {p2, v1, p1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto :goto_c2

    :cond_b1
    const-string p1, "setExternalState: state LOADED; Country code is null"

    .line 1470
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    goto :goto_c2

    :cond_b7
    const-string p1, "setExternalState: state LOADED; Operator name is null"

    .line 1473
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    goto :goto_c2

    :cond_bd
    :goto_bd
    const-string p1, "setExternalState: state LOADED; Ignore for SPR CHAMELEON and LRA"

    .line 1461
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 1476
    :goto_c2
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string p2, "KTT"

    const-string v1, "SKT"

    filled-new-array {p2, v1}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_100

    .line 1477
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->reloadPLMNs()V

    goto :goto_100

    .line 1482
    :cond_d6
    sget-object p2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, p2, :cond_100

    sget-object p2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, p2, :cond_100

    sget-object p2, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, p2, :cond_100

    sget-object p2, Lcom/android/internal/telephony/IccCardConstants$State;->DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, p2, :cond_100

    .line 1484
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get Ecc list mExternalState is :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1485
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getEccListFromSim(I)V

    .line 1488
    :cond_100
    :goto_100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setExternalState: set mPhoneId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mExternalState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1490
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1491
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 1490
    invoke-static {p1, p2, v1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->updateInternalIccState(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;I)V

    .line 1492
    monitor-exit v0

    return-void

    :catchall_12f
    move-exception p0

    monitor-exit v0
    :try_end_131
    .catchall {:try_start_3 .. :try_end_131} :catchall_12f

    throw p0
.end method

.method private blacklist showCarrierAppNotificationsIfPossible()V
    .registers 4

    .line 2240
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2241
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getUninstalledCarrierPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2242
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 2243
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->registerPackageInstallReceiver(Landroid/content/Context;)V

    goto :goto_14

    :cond_2b
    return-void
.end method

.method private blacklist unregisterAllAppEvents()V
    .registers 6

    .line 1399
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    if-eqz v3, :cond_1a

    .line 1401
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 1402
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 1404
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1d
    return-void
.end method

.method private blacklist unregisterCurrAppEvents()V
    .registers 3

    .line 1428
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_2c

    .line 1429
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForLockedRecordsLoaded(Landroid/os/Handler;)V

    .line 1430
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkLockedRecordsLoaded(Landroid/os/Handler;)V

    .line 1432
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkSubsetLockedRecordsLoaded(Landroid/os/Handler;)V

    .line 1433
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForServiceProviderLockedRecordsLoaded(Landroid/os/Handler;)V

    .line 1434
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForPersoLockedRecordsLoaded(Landroid/os/Handler;)V

    .line 1435
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRegionalLockedRecordsLoaded(Landroid/os/Handler;)V

    :cond_2c
    return-void
.end method

.method private blacklist updateCarrierNameForSubscription(Lcom/android/internal/telephony/SubscriptionController;II)V
    .registers 7

    .line 1048
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1049
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    .line 1048
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_13

    return-void

    .line 1055
    :cond_13
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1056
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v1

    .line 1058
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim name["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p1, v1, p2, p3}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNameUsingSrc(Ljava/lang/String;II)I

    :cond_4a
    return-void
.end method

.method private blacklist updateIccAvailability(Z)V
    .registers 10

    .line 1068
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1071
    :try_start_4
    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 1073
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v5, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1074
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccUsimPersoStatus()V

    .line 1076
    :cond_1b
    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_48

    .line 1077
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 1078
    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v6, "ril.simoperator"

    const-string v7, "ETC"

    invoke-static {v5, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_48

    const-string v6, "CTC"

    .line 1079
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_45

    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_48

    .line 1080
    :cond_45
    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    move-object v2, v3

    .line 1087
    :cond_48
    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    if-ne v3, v4, :cond_6e

    const/4 v3, 0x1

    .line 1088
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    if-eqz v2, :cond_6b

    .line 1089
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v5, v6, :cond_6e

    if-eqz v4, :cond_6e

    .line 1090
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    if-eq v5, v6, :cond_6e

    .line 1091
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v5, v6, :cond_6e

    .line 1092
    :cond_6b
    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    move-object v2, v4

    :cond_6e
    if-eqz v2, :cond_74

    .line 1099
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    :cond_74
    if-eqz p1, :cond_7c

    .line 1103
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterAllAppEvents()V

    .line 1104
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->registerAllAppEvents()V

    .line 1107
    :cond_7c
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-ne p1, v1, :cond_84

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq p1, v2, :cond_93

    :cond_84
    const-string p1, "Icc changed. Reregistering."

    .line 1108
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1109
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterCurrAppEvents()V

    .line 1110
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1111
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1112
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->registerCurrAppEvents()V

    .line 1114
    :cond_93
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    .line 1117
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateSimLockInfo()V

    .line 1119
    monitor-exit v0

    return-void

    :catchall_9b
    move-exception p0

    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_4 .. :try_end_9d} :catchall_9b

    throw p0
.end method

.method private blacklist updateSimLockInfo()V
    .registers 8

    .line 3265
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccPin1RetryCount()I

    move-result v1

    .line 3266
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccPin2RetryCount()I

    move-result v3

    .line 3267
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccPuk1RetryCount()I

    move-result v2

    .line 3268
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccPuk2retryCount()I

    move-result v4

    .line 3270
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    .line 3271
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccPinBlocked()Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v5, 0x2

    goto :goto_1b

    :cond_1a
    const/4 v5, 0x1

    .line 3272
    :goto_1b
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccPin2Blocked()Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x4

    goto :goto_24

    :cond_23
    const/4 p0, 0x3

    :goto_24
    move v6, p0

    .line 3270
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->setLockInfoResult(IIIIII)V

    return-void
.end method


# virtual methods
.method public blacklist areCarrierPrivilegeRulesLoaded()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2553
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 2555
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->areCarrierPriviligeRulesLoaded()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public blacklist changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 1861
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1862
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_b

    .line 1863
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1f

    :cond_b
    if-eqz p3, :cond_1f

    .line 1865
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ICC card is absent."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1866
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1867
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1868
    monitor-exit v0

    return-void

    .line 1870
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public blacklist changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 1847
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1848
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_b

    .line 1849
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1f

    :cond_b
    if-eqz p3, :cond_1f

    .line 1851
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ICC card is absent."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1852
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1853
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1854
    monitor-exit v0

    return-void

    .line 1856
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public blacklist changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7

    .line 2991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeIccSimPersoPassword  old : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " // new : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 2992
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v2, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "ro.boot.hardware"

    const-string v1, ""

    .line 2993
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "%-8s%-8s"

    .line 2994
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    .line 2995
    invoke-direct {p0, p2, p1, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->invokeSimPerso(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_6f

    .line 2997
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x71

    .line 2998
    invoke-virtual {p0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2997
    invoke-interface {v0, p1, p2, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->changeIccSimPerso(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_6f

    :cond_5c
    const-string p1, "CSCFEATURE_RIL_USIMPERSONALIZATIONKOR NOT defined"

    .line 3001
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 3002
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Not Supported"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p0, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3003
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :goto_6f
    return-void
.end method

.method public blacklist dispose()V
    .registers 8

    const-string v0, "Disposing profile"

    .line 844
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 846
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 847
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v2

    goto :goto_14

    :cond_13
    move-object v2, v1

    :goto_14
    if-eqz v2, :cond_21

    .line 848
    instance-of v3, v2, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    if-eqz v3, :cond_21

    .line 849
    check-cast v2, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->handleSimEcc(ILjava/lang/String;)V

    goto :goto_28

    :cond_21
    if-nez v0, :cond_28

    const-string v0, "currentPhone is null"

    .line 851
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 855
    :cond_28
    :goto_28
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->removeInvalidSIMNotification()V

    const/4 v0, 0x0

    .line 856
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockDialogDisplayed:Z

    .line 857
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSsuNetworkLockDialogDisplayed:Z

    .line 859
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->dialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_39

    .line 860
    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 861
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->dialog:Landroid/app/AlertDialog;

    .line 867
    :cond_39
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    instance-of v3, v2, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz v3, :cond_46

    .line 868
    check-cast v2, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->unregisterForEidReady(Landroid/os/Handler;)V

    .line 870
    :cond_46
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 871
    :try_start_49
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterAllAppEvents()V

    .line 872
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterCurrAppEvents()V

    .line 874
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserverRegistered:Z

    if-eqz v3, :cond_60

    .line 875
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    .line 876
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 877
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserverRegistered:Z

    .line 880
    :cond_60
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUserUnlockReceiverRegistered:Z

    if-eqz v3, :cond_6d

    .line 881
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 882
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUserUnlockReceiverRegistered:Z

    .line 885
    :cond_6d
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->hideAllNotifications(Landroid/content/Context;)V

    .line 886
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->unregisterPackageInstallReceiver(Landroid/content/Context;)V

    .line 888
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 890
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/SemCommandsInterface;->unregisterForSap(Landroid/os/Handler;)V

    .line 892
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 894
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v3, :cond_93

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 895
    :cond_93
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v4, v3

    move v5, v0

    :goto_97
    if-ge v5, v4, :cond_a3

    aget-object v6, v3, v5

    if-eqz v6, :cond_a0

    .line 897
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    :cond_a0
    add-int/lit8 v5, v5, 0x1

    goto :goto_97

    .line 900
    :cond_a3
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 901
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 902
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mRadioTech:I

    .line 903
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x1

    .line 906
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDisposed:Z

    .line 907
    monitor-exit v2

    return-void

    :catchall_bb
    move-exception p0

    monitor-exit v2
    :try_end_bd
    .catchall {:try_start_49 .. :try_end_bd} :catchall_bb

    throw p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    const-string v0, "UiccProfile:"

    .line 3597
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCatService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 3600
    :goto_33
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    const-string v3, "]="

    if-ge v1, v2, :cond_66

    .line 3601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mOperatorBrandOverrideRegistrants["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 3602
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3601
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 3604
    :cond_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUniversalPinState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mGsmUmtsSubscriptionAppIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCdmaSubscriptionAppIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mImsSubscriptionAppIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccApplications: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v0

    .line 3609
    :goto_d6
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v4, v2

    if-ge v1, v4, :cond_12a

    .line 3610
    aget-object v2, v2, v1

    const-string v4, "  mUiccApplications["

    if-nez v2, :cond_fb

    .line 3611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_127

    .line 3613
    :cond_fb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v1

    .line 3614
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3613
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_127
    add-int/lit8 v1, v1, 0x1

    goto :goto_d6

    .line 3617
    :cond_12a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3619
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v1

    move v4, v0

    :goto_131
    if-ge v4, v2, :cond_140

    aget-object v5, v1, v4

    if-eqz v5, :cond_13d

    .line 3621
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3622
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_13d
    add-int/lit8 v4, v4, 0x1

    goto :goto_131

    .line 3626
    :cond_140
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v1

    move v4, v0

    :goto_144
    if-ge v4, v2, :cond_159

    aget-object v5, v1, v4

    if-eqz v5, :cond_156

    .line 3628
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    if-eqz v5, :cond_156

    .line 3630
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3631
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_156
    add-int/lit8 v4, v4, 0x1

    goto :goto_144

    .line 3636
    :cond_159
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v1, :cond_163

    const-string v1, " mCarrierPrivilegeRules: null"

    .line 3637
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17e

    .line 3639
    :cond_163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCarrierPrivilegeRules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3640
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3642
    :goto_17e
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTestOverrideCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz v1, :cond_19d

    .line 3643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mTestOverrideCarrierPrivilegeRules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTestOverrideCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3645
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTestOverrideCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3647
    :cond_19d
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3649
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mNetworkLockedRegistrants: size="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p3}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3650
    :goto_1ba
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result p1

    if-ge v0, p1, :cond_1eb

    .line 3651
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mNetworkLockedRegistrants["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 3652
    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3651
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1ba

    .line 3654
    :cond_1eb
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mCurrentAppType="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3655
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mUiccCard="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3656
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mUiccApplication="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3657
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mIccRecords="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3658
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mExternalState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3659
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    const-string v0, "UiccProfile finalized"

    .line 2015
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 5

    .line 2340
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq p1, v2, :cond_15

    const/4 v2, 0x2

    if-eq p1, v2, :cond_12

    const/4 v2, 0x3

    if-eq p1, v2, :cond_f

    goto :goto_17

    .line 2350
    :cond_f
    :try_start_f
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    goto :goto_17

    .line 2347
    :cond_12
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    goto :goto_17

    .line 2344
    :cond_15
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    :goto_17
    if-ltz v1, :cond_22

    .line 2353
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length p1, p0

    if-ge v1, p1, :cond_22

    .line 2354
    aget-object p0, p0, v1

    monitor-exit v0

    return-object p0

    :cond_22
    const/4 p0, 0x0

    .line 2356
    monitor-exit v0

    return-object p0

    :catchall_25
    move-exception p0

    .line 2357
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_25

    throw p0
.end method

.method public blacklist getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 6

    .line 2383
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2384
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v2

    if-ge v1, v3, :cond_20

    .line 2385
    aget-object v2, v2, v1

    if-eqz v2, :cond_1d

    .line 2386
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_1d

    .line 2387
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object p0, p0, v1

    monitor-exit v0

    return-object p0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_20
    const/4 p0, 0x0

    .line 2390
    monitor-exit v0

    return-object p0

    :catchall_23
    move-exception p0

    .line 2391
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public blacklist getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 4

    .line 2367
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_e

    .line 2368
    :try_start_5
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, p0

    if-ge p1, v1, :cond_e

    .line 2369
    aget-object p0, p0, p1

    monitor-exit v0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    .line 2371
    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 2372
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public blacklist getAtr(Landroid/os/Message;)V
    .registers 4

    .line 2764
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->getAtr(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getCarrierPrivilegeAccessRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation

    .line 2578
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object p0

    if-nez p0, :cond_9

    .line 2580
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 2582
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getAccessRules()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getCatService()Lcom/android/internal/telephony/cat/CatService;
    .registers 4

    .line 2716
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-nez v0, :cond_10

    .line 2717
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v0, v1, p0, v2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 2719
    :cond_10
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    return-object p0
.end method

.method public blacklist getCertsFromCarrierPrivilegeAccessRules()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2566
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 2568
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getAccessRules()Ljava/util/List;

    move-result-object p0

    .line 2569
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccAccessRule;

    .line 2570
    invoke-virtual {v1}, Landroid/telephony/UiccAccessRule;->getCertificateHexString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 2573
    :cond_27
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 v0, 0x0

    :cond_2e
    return-object v0
.end method

.method blacklist getEccListFromSim(I)V
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    .line 3276
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mAlreadyReadEcc:Z

    if-eqz v1, :cond_1e

    .line 3277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ecclist already have been read"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mEmergencyNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void

    .line 3281
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEccListFromSim, family = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    if-ne p1, v0, :cond_37

    const/16 v1, 0x6fb7

    goto :goto_39

    :cond_37
    const/16 v1, 0x6f47

    :goto_39
    if-ne p1, v0, :cond_3e

    const/16 v0, 0xc8

    goto :goto_40

    :cond_3e
    const/16 v0, 0xc9

    .line 3287
    :goto_40
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_4c

    .line 3289
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    goto :goto_4d

    :cond_4c
    move-object v3, v2

    :goto_4d
    if-nez v3, :cond_68

    const-string p1, "fail to get icc file handler"

    .line 3293
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 3294
    new-instance p1, Landroid/os/AsyncResult;

    new-instance v1, Lcom/android/internal/telephony/uicc/IccException;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccException;-><init>()V

    invoke-direct {p1, v2, v2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3295
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 3299
    :cond_68
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object p1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v2, :cond_7a

    .line 3300
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v3, v1, p0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_83

    .line 3302
    :cond_7a
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v3, v1, p0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    :goto_83
    return-void
.end method

.method public blacklist getEuimid()Ljava/lang/String;
    .registers 3

    .line 3316
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    .line 3317
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz p0, :cond_1c

    .line 3319
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEuimid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getFPLMN()Ljava/lang/String;
    .registers 3

    .line 3205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFPLMN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mFPLMN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 3206
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mFPLMN:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getFeliCaUimLockStatus(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getIccFdnAvailable()Z
    .registers 2

    .line 1789
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1790
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnAvailable()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 1791
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public blacklist getIccFdnEnabled()Z
    .registers 2

    .line 1782
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1783
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnEnabled()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 1784
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public blacklist getIccId()Ljava/lang/String;
    .registers 5

    .line 2640
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_1e

    aget-object v2, p0, v1

    if-eqz v2, :cond_1b

    .line 2642
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 2643
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 2644
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getIccLockEnabled()Z
    .registers 2

    .line 1774
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1776
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 1777
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public blacklist getIccPersoRetryCount()I
    .registers 1

    .line 3108
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPersoRetryCount()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public blacklist getIccPin1RetryCount()I
    .registers 1

    .line 2729
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin1RetryCount()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public blacklist getIccPin2Blocked()Z
    .registers 1

    .line 1797
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin2Blocked()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public blacklist getIccPin2RetryCount()I
    .registers 1

    .line 2735
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin2RetryCount()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public blacklist getIccPinBlocked()Z
    .registers 1

    .line 2753
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPinBlocked()Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 2754
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist getIccPuk1RetryCount()I
    .registers 1

    .line 2741
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk1RetryCount()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public blacklist getIccPuk2Blocked()Z
    .registers 1

    .line 1803
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk2Blocked()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public blacklist getIccPuk2retryCount()I
    .registers 1

    .line 2747
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk2RetryCount()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public blacklist getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .registers 2

    .line 1544
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1545
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 1546
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public blacklist getIccRecordsLoaded()Z
    .registers 2

    .line 1504
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1505
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_d

    .line 1506
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_d
    const/4 p0, 0x0

    .line 1508
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 1509
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public blacklist getIccUsimPersoEnabled()Z
    .registers 3

    .line 3103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccUsimPersoEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPersoSimLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 3104
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPersoSimLock:Z

    return p0
.end method

.method public blacklist getNumApplications()I
    .registers 1

    .line 2538
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLastReportedNumOfUiccApplications:I

    return p0
.end method

.method public blacklist getOPLMNwAct()Ljava/lang/String;
    .registers 3

    .line 3229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOPLMNwAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOPLMNwAct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 3230
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOPLMNwAct:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getOperatorBrandOverride()Ljava/lang/String;
    .registers 5

    .line 2627
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 2628
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return-object v2

    .line 2631
    :cond_c
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator_branding_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPLMNwAcT()Ljava/lang/String;
    .registers 3

    .line 3190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPLMNwAcT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPLMNwAct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 3191
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPLMNwAct:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .registers 2

    .line 3327
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3328
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_d

    .line 3329
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 3331
    :cond_d
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 3332
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public blacklist getPhoneId()I
    .registers 1

    .line 2545
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    return p0
.end method

.method public blacklist getRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .registers 2

    .line 3307
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 3311
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getServiceProviderName()Ljava/lang/String;
    .registers 2

    .line 1875
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1876
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_d

    .line 1877
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    .line 1879
    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 1880
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public blacklist getSimLockInfo(IILandroid/os/Message;)V
    .registers 4

    .line 3582
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/SemCommandsInterface;->getSIMLockInfo(IILandroid/os/Message;)V

    return-void
.end method

.method public blacklist getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;
    .registers 1

    .line 3114
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    return-object p0
.end method

.method public blacklist getState()Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 2

    .line 1537
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1538
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 1539
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public blacklist getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .registers 2

    .line 2328
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2329
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 2330
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public blacklist hasIccCard()Z
    .registers 3

    .line 1886
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const-string v0, "hasIccCard: UiccProfile is not null but UiccCard is null or card state is ABSENT"

    .line 1890
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist iccCloseLogicalChannel(ILandroid/os/Message;)V
    .registers 5

    .line 2485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iccCloseLogicalChannel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->logWithLocalLog(Ljava/lang/String;)V

    .line 2486
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 2487
    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2486
    invoke-interface {v0, p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 22

    move-object v0, p0

    move-object/from16 v1, p7

    const/4 v2, 0x1

    .line 2514
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 2516
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    .line 2517
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    move/from16 v4, p2

    move v5, p1

    move-object/from16 v6, p6

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 2516
    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3b

    :cond_29
    if-eqz v1, :cond_3b

    .line 2519
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "3GPP application is null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2520
    invoke-static/range {p7 .. p7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2521
    invoke-virtual/range {p7 .. p7}, Landroid/os/Message;->sendToTarget()V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public blacklist iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 8

    .line 2471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iccOpenLogicalChannel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_10

    move-object v2, p1

    goto :goto_12

    :cond_10
    const-string v2, "*****"

    :goto_12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UiccProfile"

    .line 2472
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " by pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2474
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiccProfile["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccController;->addLocalLog(Ljava/lang/String;)V

    .line 2477
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    .line 2478
    invoke-virtual {p0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2477
    invoke-interface {v0, p1, p2, p0}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 16

    .line 2504
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    .line 2505
    invoke-virtual {p0, v1, p7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 2504
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 18

    move-object v0, p0

    .line 2495
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    move-object/from16 v3, p8

    .line 2496
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move-object v0, v1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 2495
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .registers 7

    .line 2314
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 2315
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v4, v3

    if-ge v2, v4, :cond_1a

    .line 2316
    aget-object v3, v3, v2

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    if-ne v3, p1, :cond_17

    .line 2317
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2320
    :cond_1a
    monitor-exit v0

    return v1

    :catchall_1c
    move-exception p0

    .line 2321
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public blacklist isEmptyProfile()Z
    .registers 1

    .line 1814
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLastReportedNumOfUiccApplications:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public blacklist refresh()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2698
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 1554
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1555
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1557
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1559
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p1

    sget-object p2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, p2, :cond_1d

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p1

    sget-object p2, Lcom/android/internal/telephony/IccCardConstants$State;->REGIONAL_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, p2, :cond_3e

    .line 1561
    :cond_1d
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p1, :cond_39

    .line 1562
    new-instance p1, Landroid/os/AsyncResult;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1563
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1562
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_3e

    :cond_39
    const-string p1, "registerForNetworkLocked: not notifying registrants, mUiccApplication == null"

    .line 1567
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1571
    :cond_3e
    :goto_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public blacklist registerForNetworkSubsetLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 1610
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1611
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1613
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkSubsetLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1615
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, p1, :cond_18

    .line 1616
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 1618
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public blacklist registerForOpertorBrandOverride(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 2144
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2145
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2146
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 2147
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public blacklist registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 1654
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1655
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1657
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPersoLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1659
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, p1, :cond_18

    .line 1660
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 1662
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public blacklist registerForRegionalLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 1587
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1588
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1590
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mReginalLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1592
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->REGIONAL_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, p1, :cond_18

    .line 1593
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 1595
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public blacklist registerForServicePoviderLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 1632
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1633
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1635
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mServicePoviderLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1637
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, p1, :cond_18

    .line 1638
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 1640
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public blacklist reloadPLMNs()V
    .registers 5

    .line 3175
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    const-string v1, "reloadPLMNs "

    .line 3176
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    if-nez v0, :cond_13

    const-string v0, "Failed to get IccFileHandler"

    .line 3179
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void

    :cond_13
    const/16 v1, 0x6f60

    .line 3183
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    const/16 v1, 0x6f7b    # 3.9992E-41f

    .line 3184
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    const/16 v1, 0x6f61

    .line 3185
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist resetAppTypeSim()Z
    .registers 6

    .line 2453
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2454
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getNumApplications()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_25

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v4, :cond_25

    .line 2455
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 2456
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x0

    aput-object v1, p0, v3

    .line 2457
    monitor-exit v0

    return v2

    .line 2459
    :cond_25
    monitor-exit v0

    return v3

    :catchall_27
    move-exception p0

    .line 2460
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public blacklist resetAppWithAid(Ljava/lang/String;Z)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2407
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 2410
    :goto_7
    :try_start_7
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v2, v6, :cond_48

    .line 2411
    aget-object v5, v5, v2

    if-eqz v5, :cond_45

    .line 2412
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_26

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 2416
    :cond_26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v2

    .line 2417
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v5, :cond_39

    move v4, v8

    .line 2422
    :cond_39
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 2423
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object v7, v3, v2

    move v3, v8

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_48
    if-eqz p2, :cond_62

    .line 2427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 2428
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz p1, :cond_62

    .line 2429
    iput-object v7, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 2430
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    move v3, v8

    :cond_62
    if-eqz v3, :cond_67

    if-nez v4, :cond_67

    move v1, v8

    .line 2443
    :cond_67
    monitor-exit v0

    return v1

    :catchall_69
    move-exception p0

    .line 2444
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_7 .. :try_end_6b} :catchall_69

    throw p0
.end method

.method blacklist resetProperties()V
    .registers 4

    .line 1123
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_56

    .line 1125
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    if-nez v0, :cond_3a

    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 1126
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_3a

    :cond_1d
    const-string v0, "update icc_operator_numeric="

    .line 1132
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, p0, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto :goto_56

    .line 1127
    :cond_3a
    :goto_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " UiccProfile for SPR CHAMELEON and USC icc_operator_numeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 1128
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1127
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public blacklist sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3

    .line 2531
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setEPSLOCI([B)V
    .registers 8

    .line 3120
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    const-string v1, "setEPSLOCI"

    .line 3123
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 3127
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    .line 3128
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 3129
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 3130
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getTaiEps()Ljava/lang/String;

    move-result-object v3

    .line 3131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEPSLOCI USIM taieps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    goto :goto_3e

    :cond_3a
    move-object v3, v2

    goto :goto_3e

    :cond_3c
    move-object v1, v2

    move-object v3, v1

    :goto_3e
    if-eqz v3, :cond_6f

    .line 3136
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v4, 0x18

    .line 3137
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3138
    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3139
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 3140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEPSLOCI newEpsloci: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 3141
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    :cond_6f
    const/16 p0, 0x6fe3

    .line 3145
    invoke-virtual {v0, p0, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    return-void
.end method

.method public blacklist setEPSLOCI([BLandroid/os/Message;)V
    .registers 4

    .line 3151
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object p0

    const/16 v0, 0x6fe3

    .line 3153
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    return-void
.end method

.method public blacklist setFPLMN([B)V
    .registers 5

    .line 3211
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f7b    # 3.9992E-41f

    const/4 v2, 0x0

    .line 3213
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 3214
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mFPLMN:Ljava/lang/String;

    return-void
.end method

.method public blacklist setFPLMN([BLandroid/os/Message;)V
    .registers 5

    .line 3220
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f7b    # 3.9992E-41f

    .line 3222
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 3223
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mFPLMN:Ljava/lang/String;

    return-void
.end method

.method public blacklist setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 1833
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1834
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_b

    .line 1835
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_1f

    :cond_b
    if-eqz p3, :cond_1f

    .line 1837
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ICC card is absent."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1838
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1839
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1840
    monitor-exit v0

    return-void

    .line 1842
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public blacklist setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 1819
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1820
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_b

    .line 1821
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_1f

    :cond_b
    if-eqz p3, :cond_1f

    .line 1823
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ICC card is absent."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1824
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1825
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1826
    monitor-exit v0

    return-void

    .line 1828
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public blacklist setIccSimPersoEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 10

    .line 2966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIccSimPersoEnabled  password : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 2967
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v2, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2968
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDesiredSimPersoLocked:Z

    const-string v0, "ro.boot.hardware"

    const-string v1, ""

    .line 2969
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x70

    if-eqz v0, :cond_40

    .line 2970
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    .line 2971
    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 2970
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->invokeSimPerso(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_64

    :cond_40
    const/4 v4, 0x7

    .line 2978
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    .line 2980
    invoke-virtual {p0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-string v1, "PH-SIM"

    move v2, p1

    move-object v3, p2

    .line 2978
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_64

    :cond_51
    const-string p1, "CSCFEATURE_RIL_USIMPERSONALIZATIONKOR NOT defined"

    .line 2983
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 2984
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Not Supported"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p0, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2985
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :goto_64
    return-void
.end method

.method public blacklist setLOCI([BLandroid/os/Message;)V
    .registers 4

    .line 3166
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object p0

    const/16 v0, 0x6f7e    # 3.9996E-41f

    .line 3168
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    return-void
.end method

.method public blacklist setOPLMNwAct([B)V
    .registers 2

    return-void
.end method

.method public blacklist setOnRefreshFcn(Z)V
    .registers 2

    .line 3589
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOnRefreshFcn:Z

    return-void
.end method

.method public blacklist setOperatorBrandOverride(Ljava/lang/String;)Z
    .registers 6

    .line 2599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOperatorBrandOverride: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 2600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current iccId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 2602
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 2603
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    return v2

    .line 2606
    :cond_3c
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/android/internal/telephony/SubscriptionController;->checkPhoneIdAndIccIdMatch(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string p1, "iccId doesn\'t match current active subId."

    .line 2607
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return v2

    .line 2611
    :cond_50
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 2612
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator_branding_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_75

    .line 2615
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_7c

    .line 2617
    :cond_75
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2619
    :goto_7c
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist setPLMNwAcT([B)V
    .registers 5

    .line 3196
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f60

    const/4 v2, 0x0

    .line 3198
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 3199
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPLMNwAct:Ljava/lang/String;

    return-void
.end method

.method public blacklist setPSLOCI([B)V
    .registers 4

    .line 3158
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object p0

    const/16 v0, 0x6f73

    const/4 v1, 0x0

    .line 3160
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    return-void
.end method

.method public blacklist setTestOverrideCarrierPrivilegeRules(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;)V"
        }
    .end annotation

    .line 2710
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xf

    .line 2711
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2710
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist setUimRemoteLockStatus(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setVoiceRadioTech(I)V
    .registers 5

    .line 915
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 917
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting radio tech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 919
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mRadioTech:I

    .line 920
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setCurrentAppType(Z)V

    const/4 p1, 0x0

    .line 921
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateIccAvailability(Z)V

    .line 922
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public blacklist supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 5

    .line 1759
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1760
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_b

    .line 1761
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_1f

    :cond_b
    if-eqz p3, :cond_1f

    .line 1763
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CommandsInterface is not set."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1764
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1765
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1766
    monitor-exit v0

    return-void

    .line 1768
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public blacklist supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 1731
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1732
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_b

    .line 1733
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1f

    :cond_b
    if-eqz p2, :cond_1f

    .line 1735
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CommandsInterface is not set."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1736
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1737
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1738
    monitor-exit v0

    return-void

    .line 1740
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public blacklist supplyPerso(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6

    .line 3009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supplyIccPerso  pin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 3011
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v2, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "ro.boot.hardware"

    const-string v1, ""

    .line 3012
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x5

    .line 3013
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->invokeSimPerso(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_58

    .line 3015
    :cond_37
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x72

    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->supplyIccPerso(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_58

    :cond_45
    const-string p1, "CSCFEATURE_RIL_USIMPERSONALIZATIONKOR NOT defined"

    .line 3018
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 3019
    new-instance p1, Landroid/os/RemoteException;

    const-string v0, "Not Supported"

    invoke-direct {p1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3020
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :goto_58
    return-void
.end method

.method public blacklist supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 1675
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1676
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_b

    .line 1677
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1f

    :cond_b
    if-eqz p2, :cond_1f

    .line 1679
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ICC card is absent."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1680
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1681
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1682
    monitor-exit v0

    return-void

    .line 1684
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public blacklist supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 1703
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1704
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_b

    .line 1705
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1f

    :cond_b
    if-eqz p2, :cond_1f

    .line 1707
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ICC card is absent."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1708
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1709
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1710
    monitor-exit v0

    return-void

    .line 1712
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public blacklist supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 1689
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1690
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_b

    .line 1691
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1f

    :cond_b
    if-eqz p3, :cond_1f

    .line 1693
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ICC card is absent."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1694
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1695
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1696
    monitor-exit v0

    return-void

    .line 1698
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public blacklist supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 1717
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1718
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_b

    .line 1719
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1f

    :cond_b
    if-eqz p3, :cond_1f

    .line 1721
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ICC card is absent."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1722
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1723
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1724
    monitor-exit v0

    return-void

    .line 1726
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public blacklist supplySimDepersonalization(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 1745
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1746
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_b

    .line 1747
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplySimDepersonalization(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1f

    :cond_b
    if-eqz p3, :cond_1f

    .line 1749
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CommandsInterface is not set."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1750
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iput-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1751
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1752
    monitor-exit v0

    return-void

    .line 1754
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public blacklist unregisterForNetworkLocked(Landroid/os/Handler;)V
    .registers 3

    .line 1576
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1577
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1578
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist unregisterForNetworkSubsetLocked(Landroid/os/Handler;)V
    .registers 3

    .line 1623
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1624
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkSubsetLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1625
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist unregisterForOperatorBrandOverride(Landroid/os/Handler;)V
    .registers 3

    .line 2156
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2157
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2158
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist unregisterForPersoLocked(Landroid/os/Handler;)V
    .registers 3

    .line 1667
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1668
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPersoLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1669
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist unregisterForRegionalLocked(Landroid/os/Handler;)V
    .registers 3

    .line 1600
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1601
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mReginalLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1602
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist unregisterForServicePoviderLocked(Landroid/os/Handler;)V
    .registers 3

    .line 1645
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1646
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mServicePoviderLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1647
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .registers 10

    .line 1899
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1900
    :try_start_3
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 1901
    iget v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    .line 1902
    iget v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    .line 1903
    iget v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    .line 1904
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1905
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1907
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSemCommandsInterfaces()[Lcom/android/internal/telephony/SemCommandsInterface;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 1909
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1913
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " applications"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1914
    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length p1, p1

    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLastReportedNumOfUiccApplications:I

    const/4 p1, 0x0

    move p2, p1

    .line 1916
    :goto_4b
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge p2, v2, :cond_81

    .line 1917
    aget-object v2, v1, p2

    if-nez v2, :cond_68

    .line 1919
    iget-object v2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v3, v2

    if-ge p2, v3, :cond_7e

    .line 1920
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, p2

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v3, p0, v2, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v3, v1, p2

    goto :goto_7e

    .line 1923
    :cond_68
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v4, v1

    if-lt p2, v4, :cond_75

    .line 1925
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 1926
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object v3, v1, p2

    goto :goto_7e

    .line 1929
    :cond_75
    aget-object v1, v1, p2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    :cond_7e
    :goto_7e
    add-int/lit8 p2, p2, 0x1

    goto :goto_4b

    .line 1933
    :cond_81
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->createAndUpdateCatServiceLocked()V

    .line 1936
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Before privilege rules: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1939
    iget-object p2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseAtr(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/AnswerToReset;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_c3

    .line 1940
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isEuiccSupported()Z

    move-result p2

    if-eqz p2, :cond_c3

    iget-object p2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p2, v2, :cond_c3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isEmptyProfile()Z

    move-result p2

    if-eqz p2, :cond_c3

    .line 1942
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->removeInvalidSIMNotification()V

    move p1, v1

    .line 1944
    :cond_c3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEuiccAbsent: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1945
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez p2, :cond_f9

    iget-object p2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p2, v2, :cond_f9

    .line 1946
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportUiccCarrierPrivilegeRules()Z

    move-result p2

    if-eqz p2, :cond_f9

    if-nez p1, :cond_f9

    .line 1948
    new-instance p1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 p3, 0xd

    .line 1949
    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    goto :goto_110

    .line 1950
    :cond_f9
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz p1, :cond_110

    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object p2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq p1, p2, :cond_110

    .line 1952
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 1953
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1957
    :cond_110
    :goto_110
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->sanitizeApplicationIndexesLocked()V

    .line 1958
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mRadioTech:I

    if-eqz p1, :cond_11e

    .line 1959
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setCurrentAppType(Z)V

    .line 1961
    :cond_11e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateIccAvailability(Z)V

    .line 1963
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string p3, "CscFeature_RIL_OTAUsimRegistration"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_175

    const-string p1, "ro.boot.hardware"

    const-string p2, ""

    .line 1964
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "qcom"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_175

    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string p2, "SKT"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 1965
    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_175

    const-string p1, "SKTReady"

    const-string p2, "ril.domesticOtaReady"

    const-string p3, ""

    .line 1966
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_175

    const-string p1, "trigger_restart_min_framework"

    const-string p2, "vold.decrypt"

    .line 1967
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_175

    const-string p1, "ril.domesticOtaReady"

    const-string p2, ""

    .line 1968
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->queryRequestSetOtaReg(I)V

    .line 1973
    :cond_175
    monitor-exit v0

    return-void

    :catchall_177
    move-exception p0

    monitor-exit v0
    :try_end_179
    .catchall {:try_start_3 .. :try_end_179} :catchall_177

    throw p0
.end method

.method public blacklist updateExternalState()V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1145
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v2, 0x2

    const-string v3, ""

    if-ne v0, v1, :cond_73

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ril.pin_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1148
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isNwLockByManufactureOperator()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 1149
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->makeInvalidSIMNotification(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1150
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1151
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1152
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, p0, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto :goto_72

    .line 1156
    :cond_5e
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isNwLockByManufactureOperator()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1157
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->makeNetworkLockDialog()V

    .line 1158
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_72

    .line 1160
    :cond_6d
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    :cond_72
    :goto_72
    return-void

    .line 1166
    :cond_73
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_83

    .line 1167
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    .line 1171
    :cond_83
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    instance-of v1, v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz v1, :cond_97

    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_97

    const-string v0, "EID is not ready yet."

    .line 1173
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void

    .line 1179
    :cond_97
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v0, :cond_a6

    const-string v0, "updateExternalState: setting state to NOT_READY because mUiccApplication is null"

    .line 1180
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 1182
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    .line 1189
    :cond_a6
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    .line 1191
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v1

    .line 1192
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v1, v4, :cond_c4

    .line 1195
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->makeInvalidSIMNotification(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1196
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->sendIntentPermBlocked()V

    .line 1199
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_c1
    move v4, v7

    goto/16 :goto_196

    .line 1201
    :cond_c4
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_cb

    .line 1204
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_c1

    .line 1205
    :cond_cb
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_d2

    .line 1208
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_c1

    .line 1209
    :cond_d2
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_194

    .line 1210
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->isPersoLocked(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 1213
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    move v4, v7

    goto :goto_e8

    :cond_e6
    move-object v1, v5

    move v4, v6

    .line 1216
    :goto_e8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v10, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fa

    .line 1217
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_196

    .line 1219
    :cond_fa
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v8

    .line 1220
    sget-object v9, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_USIM_MANUFACTURE_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v8, v9, :cond_109

    .line 1222
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->makeNetworkLockDialog()V

    goto/16 :goto_196

    .line 1224
    :cond_109
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportSsu()Z

    move-result v9

    if-eqz v9, :cond_140

    const-string v9, "ssu.status"

    .line 1225
    invoke-static {v9, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "perm_unlock"

    .line 1226
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_154

    const-string v9, "temp_unlock"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_154

    .line 1227
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSalesCode:Ljava/lang/String;

    const-string v9, "VZW"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_139

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSalesCode:Ljava/lang/String;

    const-string v9, "VPP"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_154

    .line 1228
    :cond_139
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->makeVzwSsuNetworkLockDialog()V

    .line 1229
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->makeVzwSsuNetworkLockNotification()V

    goto :goto_154

    .line 1233
    :cond_140
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_REGIONAL:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-eq v8, v3, :cond_14f

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_REGIONAL_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v8, v3, :cond_149

    goto :goto_14f

    .line 1237
    :cond_149
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->makeInvalidSIMNotification(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_154

    .line 1235
    :cond_14f
    :goto_14f
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->REGIONAL_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->makeInvalidSIMNotification(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1241
    :cond_154
    :goto_154
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v8, v3, :cond_159

    goto :goto_196

    .line 1243
    :cond_159
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v8, v3, :cond_16d

    .line 1245
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v8, "CscFeature_RIL_PersonalizationBlockAlert"

    invoke-virtual {v3, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_196

    .line 1246
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->sendPersoBlockedIntent()V

    goto :goto_196

    .line 1248
    :cond_16d
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-eq v8, v3, :cond_191

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v8, v3, :cond_176

    goto :goto_191

    .line 1252
    :cond_176
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-eq v8, v3, :cond_18e

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v8, v3, :cond_17f

    goto :goto_18e

    .line 1256
    :cond_17f
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_REGIONAL:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-eq v8, v3, :cond_18b

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_REGIONAL_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v8, v3, :cond_188

    goto :goto_18b

    .line 1260
    :cond_188
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    goto :goto_196

    .line 1259
    :cond_18b
    :goto_18b
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->REGIONAL_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_196

    .line 1255
    :cond_18e
    :goto_18e
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_196

    .line 1251
    :cond_191
    :goto_191
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_196

    :cond_194
    move-object v1, v5

    move v4, v6

    :cond_196
    :goto_196
    if-eqz v4, :cond_215

    .line 1271
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_20f

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getLockedRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_1ca

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1273
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderLockedRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_1ca

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1274
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNetworkSubsetLockedRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_1ca

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1275
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getPersoLockedRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_1ca

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1276
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRegionalLockedRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_1ca

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1278
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNetworkLockedRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_20f

    .line 1285
    :cond_1ca
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v0, :cond_20b

    .line 1286
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPinStorage:Lcom/android/internal/telephony/uicc/PinStorage;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/PinStorage;->getPin(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1287
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20b

    .line 1288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN_REQUIRED["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] - Cache present"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1289
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 1294
    :cond_20b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_214

    .line 1300
    :cond_20f
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    :goto_214
    return-void

    .line 1306
    :cond_215
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccProfile$6;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v7, :cond_28a

    if-eq v0, v2, :cond_263

    const/4 v1, 0x3

    if-eq v0, v1, :cond_226

    goto/16 :goto_28f

    .line 1342
    :cond_226
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkAndUpdateIfAnyAppToBeIgnored()V

    .line 1344
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->removeInvalidSIMNotification()V

    .line 1346
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSsuNetworkLockDialogDisplayed:Z

    if-eqz v0, :cond_23b

    .line 1347
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mSsuNetworkLockDialogDisplayed:Z

    .line 1348
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_23b

    .line 1349
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1350
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->dialog:Landroid/app/AlertDialog;

    .line 1354
    :cond_23b
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areAllApplicationsReady()Z

    move-result v0

    if-eqz v0, :cond_25d

    .line 1355
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areAllRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_257

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areCarrierPrivilegeRulesLoaded()Z

    move-result v0

    if-eqz v0, :cond_257

    .line 1358
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOnRefreshFcn:Z

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    .line 1359
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOnRefreshFcn:Z

    goto :goto_28f

    .line 1367
    :cond_257
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_28f

    .line 1374
    :cond_25d
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_28f

    .line 1326
    :cond_263
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUpdateUnkown:Z

    if-eqz v0, :cond_284

    .line 1328
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    if-ne v0, v7, :cond_26e

    const-string v0, "phone2_on"

    goto :goto_270

    :cond_26e
    const-string v0, "phone1_on"

    .line 1331
    :goto_270
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_284

    const-string v0, "updateExternalState: UNKNOWN for sim off"

    .line 1333
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1335
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUpdateUnkown:Z

    move v6, v7

    .line 1338
    :cond_284
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    goto :goto_28f

    .line 1321
    :cond_28a
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    :goto_28f
    return-void
.end method
