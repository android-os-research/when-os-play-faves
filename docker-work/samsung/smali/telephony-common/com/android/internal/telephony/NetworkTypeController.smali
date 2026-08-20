.class public Lcom/android/internal/telephony/NetworkTypeController;
.super Lcom/android/internal/telephony/StateMachine;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NetworkTypeController$SIB2for5GIconObserver;,
        Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;,
        Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;,
        Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;,
        Lcom/android/internal/telephony/NetworkTypeController$IdleState;,
        Lcom/android/internal/telephony/NetworkTypeController$LegacyState;,
        Lcom/android/internal/telephony/NetworkTypeController$DefaultState;
    }
.end annotation


# static fields
.field private static final blacklist ALL_STATES:[Ljava/lang/String;

.field public static final blacklist EVENT_QUIT:I = 0x1

.field public static final blacklist EVENT_UPDATE:I

.field private static final blacklist NGRAN_TDD_BANDS:[Ljava/lang/Integer;

.field private static final blacklist sEvents:[Ljava/lang/String;


# instance fields
.field private blacklist mAdditionalNrAdvancedBandsList:[I

.field private blacklist mArPhysicalLinkActive:Landroid/os/AsyncResult;

.field private blacklist mBWCheck5GUCIconEnabled:Z

.field private blacklist mBWCheck5GUCIconValue:I

.field private blacklist mBand:I

.field private blacklist mCallState:Z

.field private blacklist mCfgNrIconConfiguration:Ljava/lang/String;

.field private blacklist mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

.field private blacklist mCfgOverrideTimerRule:Ljava/lang/String;

.field private blacklist mCurServingCellInfo:[I

.field private blacklist mCurrentCellId:J

.field private final blacklist mDefaultState:Lcom/android/internal/telephony/NetworkTypeController$DefaultState;

.field private final blacklist mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

.field private blacklist mEnableNrAdvancedWhileRoaming:Z

.field private blacklist mFromCscFeature:Z

.field private blacklist mHighBwThreshold:I

.field private final blacklist mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

.field private blacklist mImsQci:I

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mIs5GUCToidle:Z

.field private blacklist mIs5gAvailable:Z

.field private blacklist mIsConfigNotNull:Z

.field private blacklist mIsCpIconTypeConfigEnabled:Z

.field private blacklist mIsCpIconTypeSupported:Z

.field private blacklist mIsDeviceConfigUpdated:Z

.field private blacklist mIsDeviceIdleMode:Z

.field private blacklist mIsInEmergencyCall:Z

.field private blacklist mIsNrAdvBandIndi:I

.field private blacklist mIsNrAdvanced:Z

.field private blacklist mIsNrAdvancedAllowedByPco:Z

.field private blacklist mIsPhysicalChannelConfig16Supported:Z

.field private blacklist mIsPhysicalChannelConfigOn:Z

.field private blacklist mIsPhysicalLinkStatusDelayed:Z

.field private blacklist mIsPrevNrCband:Z

.field private blacklist mIsPrimaryTimerActive:Z

.field private blacklist mIsQc:Z

.field private blacklist mIsRefreshTimerActive:Z

.field private blacklist mIsSecondaryTimerActive:Z

.field private blacklist mIsTimerResetEnabledForLegacyStateRRCIdle:Z

.field private blacklist mIsUpdateToUCIconInIdle:Z

.field private blacklist mIsUsingUserDataForRrcDetection:Z

.field private blacklist mIsUwDsqEnabled:Z

.field private blacklist mIsUwIratChanged:Z

.field private blacklist mIsUwTimerDragUpdated:Z

.field private blacklist mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

.field private final blacklist mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

.field private final blacklist mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

.field private blacklist mLteEnhancedPattern:Ljava/lang/String;

.field private blacklist mLtePlusThresholdBandwidth:I

.field private blacklist mLteServingChange:I

.field private blacklist mMobileNetworkStatus:I

.field private blacklist mMobileNetworkStatusObserver:Landroid/database/ContentObserver;

.field private blacklist mNewCellId:J

.field private blacklist mNewServingCellInfo:[I

.field private blacklist mNotRestrictedRrcState:[Z

.field private blacklist mNrAdvancedCapablePcoId:I

.field private blacklist mNrAdvancedThresholdBandwidth:I

.field private final blacklist mNrConnectedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

.field private blacklist mNrServingChange:I

.field private blacklist mNsaUCBandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOverrideNetworkType:I

.field private blacklist mOverrideTimerRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhysicalLinkStatus:I

.field private blacklist mPlmn:Ljava/lang/String;

.field private blacklist mPrevNrAdvBandIndi:I

.field private blacklist mPrevRat:I

.field private blacklist mPreviousState:Ljava/lang/String;

.field private blacklist mPrimaryBand:I

.field private blacklist mPrimaryTimerState:Ljava/lang/String;

.field private blacklist mRetainCtr:I

.field private blacklist mRetainUC:Z

.field private blacklist mRilNrIconType:I

.field private blacklist mSIB2for5GIconObserver:Lcom/android/internal/telephony/NetworkTypeController$SIB2for5GIconObserver;

.field private blacklist mSaUCBandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSecondaryTimerState:Ljava/lang/String;

.field private blacklist mShow5GUC:Z

.field private blacklist mSib2For5GIcon:I

.field private blacklist mSupport5gAvailable:Z

.field private blacklist mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

.field private blacklist mTimers:[I

.field private blacklist mUwDragStartTime:J

.field private blacklist mUwDsqEvent:I

.field private blacklist mUwTimerDrag:I

.field private blacklist mVzwRrcConnected:Z

.field private blacklist mVzwTuwb1Started:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$76EMwi56SJw7btgdZVPgpMnGxa0(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->lambda$isBandwidthRequirementMet$0(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmArPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Landroid/os/AsyncResult;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mArPhysicalLinkActive:Landroid/os/AsyncResult;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentCellId(Lcom/android/internal/telephony/NetworkTypeController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurrentCellId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsQci(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mImsQci:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIs5GUCToidle(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5GUCToidle:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDeviceIdleMode(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvanced:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvancedAllowedByPco:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPhysicalChannelConfigOn(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPhysicalLinkStatusDelayed(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalLinkStatusDelayed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsQc(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsQc:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRefreshTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTimerResetEnabledForLegacyStateRRCIdle(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledForLegacyStateRRCIdle:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsUpdateToUCIconInIdle(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsUwDsqEnabled(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsUwIratChanged(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwIratChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMobileNetworkStatus(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNewCellId(Lcom/android/internal/telephony/NetworkTypeController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotRestrictedRrcState(Lcom/android/internal/telephony/NetworkTypeController;)[Z
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNotRestrictedRrcState:[Z

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNrAdvancedCapablePcoId(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrevNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevNrAdvBandIndi:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrevRat(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevRat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryBand(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryBand:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetainCtr(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainCtr:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainUC:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSaUCBandList(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecondaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSib2For5GIcon(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSib2For5GIcon:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyFacade(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/TelephonyFacade;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimers(Lcom/android/internal/telephony/NetworkTypeController;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUwDragStartTime(Lcom/android/internal/telephony/NetworkTypeController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDragStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUwDsqEvent(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUwTimerDrag(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwTimerDrag:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVzwRrcConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwRrcConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVzwTuwb1Started(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallState(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCallState:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurServingCellInfo(Lcom/android/internal/telephony/NetworkTypeController;[I)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentCellId(Lcom/android/internal/telephony/NetworkTypeController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurrentCellId:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImsQci(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mImsQci:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIs5GUCToidle(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5GUCToidle:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsCpIconTypeSupported(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsCpIconTypeSupported:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsDeviceConfigUpdated(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceConfigUpdated:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsDeviceIdleMode(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsInEmergencyCall:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvanced:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvancedAllowedByPco:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPhysicalChannelConfigOn(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPhysicalLinkStatusDelayed(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalLinkStatusDelayed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPrevNrCband(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrevNrCband:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRefreshTimerActive(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsUpdateToUCIconInIdle(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsUwIratChanged(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwIratChanged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsUwTimerDragUpdated(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwTimerDragUpdated:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMobileNetworkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrevNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevNrAdvBandIndi:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrevRat(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevRat:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrimaryBand(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryBand:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRetainCtr(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainCtr:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainUC:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRilNrIconType(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSecondaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSib2For5GIcon(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSib2For5GIcon:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUwDsqEvent(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUwTimerDrag(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwTimerDrag:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVzwRrcConnected(Lcom/android/internal/telephony/NetworkTypeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwRrcConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCidFromCellIdentity(Lcom/android/internal/telephony/NetworkTypeController;Landroid/telephony/CellIdentity;)J
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->getEventName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetIsInEmergencyCall(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getIsInEmergencyCall()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNrAdvBandInd(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getNrAdvBandInd()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getPhysicalLinkStatusFromPhysicalChannelConfig()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetServingCellInfo(Lcom/android/internal/telephony/NetworkTypeController;Landroid/telephony/CellIdentity;Z)[I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/NetworkTypeController;->getServingCellInfo(Landroid/telephony/CellIdentity;Z)[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetUWBitValue(Lcom/android/internal/telephony/NetworkTypeController;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getUWBitValue()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleHighBandwidthDataTransfer(Lcom/android/internal/telephony/NetworkTypeController;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/NetworkTypeController;->handleHighBandwidthDataTransfer(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleNrAdvancedNotAllowed(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleNrAdvancedNotAllowed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleUwDsqChanged(Lcom/android/internal/telephony/NetworkTypeController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->handleUwDsqChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleVolteCall(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleVolteCall()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleVolteEmergencyCall(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleVolteEmergencyCall()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misEndcDetectionBeforeRrcConnectSupported(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isEndcDetectionBeforeRrcConnectSupported()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misInCall(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isInCall()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNetworkVzw(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrConnected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNrNone(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrNone()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrNotRestricted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNrRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrRestricted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkActive()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPhysicalLinkValid(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkValid()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misTmo5GUCSupported(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUsingPhysicalChannelConfigForRrcDetection()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misUwDsqNotRequired(Lcom/android/internal/telephony/NetworkTypeController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUwDsqNotRequired()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monCellInfoChanged(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->onCellInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNrAdvBandIndiChanged(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->onNrAdvBandIndiChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monReceiveCpIconTypeChanged(Lcom/android/internal/telephony/NetworkTypeController;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->onReceiveCpIconTypeChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monReceiveIconTypeChanged(Lcom/android/internal/telephony/NetworkTypeController;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->onReceiveIconTypeChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monReceiveUwDsqNrAdvancedDisabled(Lcom/android/internal/telephony/NetworkTypeController;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->onReceiveUwDsqNrAdvancedDisabled(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monReceiveUwDsqOutOfNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->onReceiveUwDsqOutOfNrAdvanced(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mparseCarrierConfigs(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->parseCarrierConfigs()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessPendingPhysicalLinkStatusChanged(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->processPendingPhysicalLinkStatusChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForAllEvents(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->registerForAllEvents()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetUwDsqEvent(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetUwDsqEvent()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->startUCRefreshTimer(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->stopUCRefreshTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->transitionToCurrentState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtransitionWithInterRatTimer(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->transitionWithInterRatTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtransitionWithSecondaryTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->transitionWithSecondaryTimerTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->transitionWithTimerTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munRegisterForAllEvents(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->unRegisterForAllEvents()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideNetworkType()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateTimers()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 25

    const-string v0, "connected_mmwave"

    const-string v1, "connected"

    const-string v2, "not_restricted_rrc_idle"

    const-string v3, "not_restricted_rrc_con"

    const-string v4, "restricted"

    const-string v5, "legacy"

    .line 108
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/NetworkTypeController;->ALL_STATES:[Ljava/lang/String;

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x22

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v0, v6

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v0, v7

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v0, v8

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v0, v9

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v0, v10

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v11, 0x8

    aput-object v2, v0, v11

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v12, 0x9

    aput-object v2, v0, v12

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v13, 0xa

    aput-object v2, v0, v13

    const/16 v2, 0x4d

    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v14, 0xb

    aput-object v2, v0, v14

    const/16 v2, 0x4e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v15, 0xc

    aput-object v2, v0, v15

    const/16 v2, 0x4f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v16, 0xd

    aput-object v2, v0, v16

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v17, 0xe

    aput-object v2, v0, v17

    const/16 v2, 0x60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v18, 0xf

    aput-object v2, v0, v18

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v19, 0x10

    aput-object v2, v0, v19

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v20, 0x11

    aput-object v2, v0, v20

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v21, 0x12

    aput-object v2, v0, v21

    const/16 v2, 0x101

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v22, 0x13

    aput-object v2, v0, v22

    const/16 v2, 0x102

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v23, 0x14

    aput-object v2, v0, v23

    const/16 v2, 0x103

    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v24, 0x15

    aput-object v2, v0, v24

    const/16 v2, 0x104

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v24, 0x16

    aput-object v2, v0, v24

    const/16 v2, 0x105

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v24, 0x17

    aput-object v2, v0, v24

    const/16 v2, 0x106

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v24, 0x18

    aput-object v2, v0, v24

    const/16 v2, 0x107

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v24, 0x19

    aput-object v2, v0, v24

    sput-object v0, Lcom/android/internal/telephony/NetworkTypeController;->NGRAN_TDD_BANDS:[Ljava/lang/Integer;

    new-array v0, v1, [Ljava/lang/String;

    .line 147
    sput-object v0, Lcom/android/internal/telephony/NetworkTypeController;->sEvents:[Ljava/lang/String;

    const-string v1, "EVENT_UPDATE"

    aput-object v1, v0, v3

    const-string v1, "EVENT_QUIT"

    aput-object v1, v0, v4

    const-string v1, "EVENT_DATA_RAT_CHANGED"

    aput-object v1, v0, v5

    const-string v1, "EVENT_NR_STATE_CHANGED"

    aput-object v1, v0, v6

    const-string v1, "EVENT_NR_FREQUENCY_CHANGED"

    aput-object v1, v0, v7

    const-string v1, "EVENT_PHYSICAL_LINK_STATUS_CHANGED"

    aput-object v1, v0, v8

    const-string v1, "EVENT_PHYSICAL_CHANNEL_CONFIG_NOTIF_CHANGED"

    aput-object v1, v0, v9

    const-string v1, "EVENT_CARRIER_CONFIG_CHANGED"

    aput-object v1, v0, v10

    const-string v1, "EVENT_PRIMARY_TIMER_EXPIRED"

    aput-object v1, v0, v11

    const-string v1, "EVENT_SECONDARY_TIMER_EXPIRED"

    aput-object v1, v0, v12

    const-string v1, "EVENT_RADIO_OFF_OR_UNAVAILABLE"

    aput-object v1, v0, v13

    const-string v1, "EVENT_PREFERRED_NETWORK_MODE_CHANGED"

    aput-object v1, v0, v14

    const-string v1, "EVENT_INITIALIZE"

    aput-object v1, v0, v15

    const-string v1, "EVENT_PHYSICAL_CHANNEL_CONFIG_CHANGED"

    aput-object v1, v0, v16

    const-string v1, "EVENT_PCO_DATA_CHANGED"

    aput-object v1, v0, v17

    const-string v1, "EVENT_BANDWIDTH_CHANGED"

    aput-object v1, v0, v18

    const-string v1, "EVENT_UPDATE_NR_ADVANCED_STATE"

    aput-object v1, v0, v19

    const-string v1, "EVENT_DEVICE_IDLE_MODE_CHANGED"

    aput-object v1, v0, v20

    const-string v1, "EVENT_CELL_INFO_CHANGED"

    aput-object v1, v0, v21

    const-string v1, "EVENT_UC_REFRESH_TIMER"

    aput-object v1, v0, v22

    const-string v1, "EVENT_PRECISE_CALL_STATE_CHANGED"

    aput-object v1, v0, v23

    const/16 v1, 0x15

    const-string v2, "EVENT_UW_DISQUALIFIED"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "EVENT_UW_DSQ_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "EVENT_IMS_QOS_CHANGED"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/DisplayInfoController;)V
    .registers 15

    const-string v0, "NetworkTypeController"

    .line 374
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 180
    new-instance v0, Lcom/android/internal/telephony/NetworkTypeController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/NetworkTypeController$1;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    const-string v0, ""

    .line 241
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    const/4 v1, 0x0

    .line 255
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvancedAllowedByPco:Z

    .line 256
    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    .line 257
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUsingUserDataForRrcDetection:Z

    const/4 v2, 0x1

    .line 258
    iput-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mEnableNrAdvancedWhileRoaming:Z

    .line 259
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    const/4 v3, -0x1

    .line 285
    iput v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryBand:I

    const-wide/16 v4, -0x1

    .line 287
    iput-wide v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurrentCellId:J

    .line 288
    iput-wide v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    .line 289
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    .line 290
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    .line 332
    iput v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    .line 354
    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevRat:I

    .line 355
    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 357
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPlmn:Ljava/lang/String;

    .line 362
    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v6, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mArPhysicalLinkActive:Landroid/os/AsyncResult;

    .line 1619
    new-instance v4, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;

    invoke-direct {v4, p0, v7}, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController$DefaultState-IA;)V

    iput-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDefaultState:Lcom/android/internal/telephony/NetworkTypeController$DefaultState;

    .line 1790
    new-instance v6, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    invoke-direct {v6, p0, v7}, Lcom/android/internal/telephony/NetworkTypeController$LegacyState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController$LegacyState-IA;)V

    iput-object v6, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    .line 1931
    new-instance v8, Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    invoke-direct {v8, p0, v7}, Lcom/android/internal/telephony/NetworkTypeController$IdleState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController$IdleState-IA;)V

    iput-object v8, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    .line 2075
    new-instance v9, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    invoke-direct {v9, p0, v7}, Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState-IA;)V

    iput-object v9, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    .line 2390
    new-instance v10, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    invoke-direct {v10, p0, v7}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState-IA;)V

    iput-object v10, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    .line 3126
    new-instance v7, Lcom/android/internal/telephony/NetworkTypeController$5;

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v11}, Lcom/android/internal/telephony/NetworkTypeController$5;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatusObserver:Landroid/database/ContentObserver;

    .line 375
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 376
    iput-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    .line 377
    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    .line 378
    iput-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    .line 380
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getTelephonyFacade()Lcom/android/internal/telephony/TelephonyFacade;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    .line 383
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 384
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDefaultValueOfNetworkStatus()I

    move-result p2

    const-string v7, "mobile_network_status"

    .line 383
    invoke-static {p1, v7, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatus:I

    .line 385
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    const-string p2, "ro.boot.hardware"

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/TelephonyFacade;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "qcom"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsQc:Z

    .line 386
    new-instance p1, Lcom/android/internal/telephony/NetworkTypeController$SIB2for5GIconObserver;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/NetworkTypeController$SIB2for5GIconObserver;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSIB2for5GIconObserver:Lcom/android/internal/telephony/NetworkTypeController$SIB2for5GIconObserver;

    .line 387
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getRfConfig()V

    .line 388
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5gAvailable:Z

    .line 389
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->support5gAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSupport5gAvailable:Z

    .line 390
    iput v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 392
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    .line 393
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mFromCscFeature:Z

    .line 394
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    .line 395
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideTimerRule:Ljava/lang/String;

    .line 396
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

    .line 398
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwRrcConnected:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    new-array p1, v5, [Z

    .line 399
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNotRestrictedRrcState:[Z

    new-array p1, v2, [I

    aput v3, p1, v1

    .line 400
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    new-array p1, v2, [I

    aput v3, p1, v1

    .line 401
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewServingCellInfo:[I

    .line 402
    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrServingChange:I

    .line 403
    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteServingChange:I

    .line 405
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 406
    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 407
    invoke-virtual {p0, v8, v4}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 408
    invoke-virtual {p0, v9, v4}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 409
    invoke-virtual {p0, v10, v4}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 410
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->start()V

    const/16 p1, 0xc

    .line 412
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private blacklist convertToOverrideNetworkType(I)I
    .registers 2

    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    const/4 p0, 0x5

    goto :goto_b

    :cond_5
    const/4 p0, 0x1

    if-ne p1, p0, :cond_a

    const/4 p0, 0x3

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private blacklist createTimerRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v0, p0

    .line 755
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 756
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, ","

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_83

    .line 758
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v8, v2

    move v9, v7

    :goto_1d
    if-ge v9, v8, :cond_83

    aget-object v10, v2, v9

    .line 759
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 760
    array-length v12, v11

    if-eq v12, v4, :cond_47

    .line 761
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid 5G icon configuration, config = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    goto :goto_80

    .line 765
    :cond_47
    aget-object v10, v11, v6

    const-string v12, "5g"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_53

    move v10, v3

    goto :goto_76

    .line 767
    :cond_53
    aget-object v10, v11, v6

    const-string v12, "5g_plus"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5f

    const/4 v10, 0x5

    goto :goto_76

    .line 770
    :cond_5f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid 5G icon = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v11, v6

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    move v10, v7

    .line 772
    :goto_76
    aget-object v11, v11, v7

    new-instance v12, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    invoke-direct {v12, v11, v10}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_80
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    .line 776
    :cond_83
    sget-object v2, Lcom/android/internal/telephony/NetworkTypeController;->ALL_STATES:[Ljava/lang/String;

    array-length v8, v2

    move v9, v7

    :goto_87
    if-ge v9, v8, :cond_9c

    aget-object v10, v2, v9

    .line 777
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_99

    .line 778
    new-instance v11, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    invoke-direct {v11, v10, v7}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_99
    add-int/lit8 v9, v9, 0x1

    goto :goto_87

    .line 783
    :cond_9c
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideTypeInRules(Ljava/util/Map;)V

    .line 785
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v8, "any"

    const/4 v9, -0x1

    const-string v10, ";"

    if-nez v2, :cond_10e

    .line 787
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v11, v2

    move v12, v7

    :goto_b4
    if-ge v12, v11, :cond_10e

    aget-object v13, v2, v12

    .line 788
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 789
    array-length v15, v14

    if-eq v15, v3, :cond_dc

    .line 790
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid 5G icon timer configuration, config = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    goto :goto_107

    .line 802
    :cond_dc
    aget-object v13, v14, v4

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/NetworkTypeController;->getTimerValue(Ljava/lang/String;)I

    move-result v13

    if-ne v13, v9, :cond_e5

    goto :goto_107

    .line 805
    :cond_e5
    aget-object v15, v14, v7

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_ff

    .line 806
    sget-object v15, Lcom/android/internal/telephony/NetworkTypeController;->ALL_STATES:[Ljava/lang/String;

    array-length v9, v15

    move v4, v7

    :goto_f1
    if-ge v4, v9, :cond_107

    aget-object v3, v15, v4

    .line 812
    aget-object v7, v14, v6

    invoke-direct {v0, v1, v3, v7, v13}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideTimerRule(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x3

    const/4 v7, 0x0

    goto :goto_f1

    :cond_ff
    move v3, v7

    .line 821
    aget-object v4, v14, v3

    aget-object v3, v14, v6

    invoke-direct {v0, v1, v4, v3, v13}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideTimerRule(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_107
    :goto_107
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v9, -0x1

    goto :goto_b4

    .line 827
    :cond_10e
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17b

    .line 829
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_11e
    if-ge v4, v3, :cond_17b

    aget-object v7, v2, v4

    .line 830
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 831
    array-length v10, v9

    const/4 v11, 0x3

    if-eq v10, v11, :cond_149

    .line 833
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid 5G icon secondary timer configuration, config = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v12, -0x1

    goto :goto_178

    :cond_149
    const/4 v7, 0x2

    .line 846
    aget-object v10, v9, v7

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/NetworkTypeController;->getTimerValue(Ljava/lang/String;)I

    move-result v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_155

    :cond_153
    const/4 v7, 0x0

    goto :goto_178

    :cond_155
    const/4 v13, 0x0

    .line 849
    aget-object v14, v9, v13

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_170

    .line 850
    sget-object v13, Lcom/android/internal/telephony/NetworkTypeController;->ALL_STATES:[Ljava/lang/String;

    array-length v14, v13

    const/4 v15, 0x0

    :goto_162
    if-ge v15, v14, :cond_153

    aget-object v7, v13, v15

    .line 857
    aget-object v11, v9, v6

    invoke-direct {v0, v1, v7, v11, v10}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideSecondaryTimerRule(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x2

    const/4 v11, 0x3

    goto :goto_162

    :cond_170
    const/4 v7, 0x0

    .line 867
    aget-object v11, v9, v7

    aget-object v9, v9, v6

    invoke-direct {v0, v1, v11, v9, v10}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideSecondaryTimerRule(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_178
    add-int/lit8 v4, v4, 0x1

    goto :goto_11e

    .line 873
    :cond_17b
    iput-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    .line 874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOverrideTimerRules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist extract2ndRule(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    if-eqz p2, :cond_5

    const-string p0, "(\\w*)_2nd:(\\w*)"

    goto :goto_7

    :cond_5
    const-string p0, "(\\w*)_2nd,(\\w*),(\\w*)"

    :goto_7
    if-eqz p2, :cond_c

    const-string p2, ","

    goto :goto_e

    :cond_c
    const-string p2, ";"

    .line 3419
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3420
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3421
    :goto_1b
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 3422
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_2nd"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 3425
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getBoolConfig(Ljava/lang/String;)Z
    .registers 13

    const-string v0, "getBoolConfig: "

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    const-string v3, "content://com.samsung.ims.entitlementconfig.provider"

    .line 3706
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "config"

    .line 3705
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "xpath"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3706
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "tag_name"

    .line 3707
    invoke-virtual {v3, v4, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3708
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 3709
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3711
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_61

    .line 3713
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5b

    const/4 p1, 0x1

    .line 3714
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 3715
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    goto :goto_66

    :cond_5b
    const-string p1, "getBoolConfig: moveToFirst is false"

    .line 3717
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_66

    :cond_61
    const-string p1, "getBoolConfig: cursor is null"

    .line 3720
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_66} :catch_6e
    .catchall {:try_start_4 .. :try_end_66} :catchall_6c

    :goto_66
    if-eqz v2, :cond_88

    .line 3726
    :goto_68
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_88

    :catchall_6c
    move-exception p0

    goto :goto_89

    :catch_6e
    move-exception p1

    .line 3723
    :try_start_6f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_6f .. :try_end_85} :catchall_6c

    if-eqz v2, :cond_88

    goto :goto_68

    :cond_88
    :goto_88
    return v1

    :goto_89
    if-eqz v2, :cond_8e

    .line 3726
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3728
    :cond_8e
    throw p0
.end method

.method private blacklist getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J
    .registers 8

    const-wide/16 v0, -0x1

    if-nez p1, :cond_5

    return-wide v0

    .line 1054
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-eq v2, v3, :cond_3a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_32

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2a

    const/4 v3, 0x5

    if-eq v2, v3, :cond_22

    if-eq v2, v4, :cond_1a

    move-wide v2, v0

    goto :goto_42

    .line 1059
    :cond_1a
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v2

    goto :goto_42

    .line 1057
    :cond_22
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityTdscdma;->getCid()I

    move-result v2

    goto :goto_41

    .line 1056
    :cond_2a
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    goto :goto_41

    .line 1058
    :cond_32
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    goto :goto_41

    .line 1055
    :cond_3a
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    :goto_41
    int-to-long v2, v2

    .line 1063
    :goto_42
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getType()I

    move-result p1

    if-ne p1, v4, :cond_4e

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_51

    :cond_4e
    const-wide/32 v4, 0x7fffffff

    :goto_51
    cmp-long p1, v2, v4

    if-nez p1, :cond_56

    goto :goto_57

    :cond_56
    move-wide v0, v2

    .line 1067
    :goto_57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5G UC: getCidFromCellIdentity cid:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-wide v0
.end method

.method private blacklist getCurrentOverrideNetworkType()I
    .registers 6

    .line 937
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    .line 938
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 939
    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v2

    goto :goto_1b

    :cond_1a
    move v1, v3

    :goto_1b
    const/16 v4, 0x14

    if-ne v0, v4, :cond_20

    goto :goto_21

    :cond_20
    move v2, v3

    :goto_21
    if-nez v1, :cond_31

    if-eqz v2, :cond_26

    goto :goto_31

    .line 955
    :cond_26
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 957
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getLteDisplayType()I

    move-result v3

    goto :goto_3d

    .line 950
    :cond_31
    :goto_31
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->getNrDisplayType(Z)I

    move-result v3

    if-nez v3, :cond_3d

    if-nez v2, :cond_3d

    .line 953
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getLteDisplayType()I

    move-result v3

    :cond_3d
    :goto_3d
    return v3
.end method

.method private blacklist getCurrentPlmn()Ljava/lang/String;
    .registers 2

    .line 2909
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    .line 2912
    :cond_d
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCurrentCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1b

    const-string p0, ""

    :cond_1b
    return-object p0
.end method

.method private blacklist getDataNetworkType()I
    .registers 3

    .line 2793
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 2799
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1a

    .line 2800
    :cond_15
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private blacklist getEventName(I)Ljava/lang/String;
    .registers 2

    .line 2805
    :try_start_0
    sget-object p0, Lcom/android/internal/telephony/NetworkTypeController;->sEvents:[Ljava/lang/String;

    aget-object p0, p0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const-string p0, "EVENT_NOT_DEFINED"

    return-object p0
.end method

.method private blacklist getIsInEmergencyCall()Z
    .registers 1

    .line 2918
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 2920
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result p0

    return p0
.end method

.method private blacklist getLteDisplayType()I
    .registers 3

    .line 1019
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1020
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 1027
    :goto_18
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isLteEnhancedAvailable()Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 v0, 0x2

    :cond_1f
    return v0
.end method

.method private blacklist getMmwaveBitValue()I
    .registers 4

    .line 2934
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ril.is_advanced_band_indi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2935
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    .line 2934
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/TelephonyFacade;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private blacklist getNetworkServerConfig(Ljava/lang/String;)I
    .registers 13

    const-string v0, "getNetworkServerConfig: "

    .line 3184
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceConfigUpdated:Z

    const/4 v2, -0x1

    if-nez v1, :cond_d

    const-string p1, "DEVICE_CONFIG_UPDATED is false"

    .line 3185
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v2

    :cond_d
    const/4 v1, 0x0

    :try_start_e
    const-string v3, "content://com.samsung.ims.entitlementconfig.provider"

    .line 3190
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "config"

    .line 3189
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "xpath"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3190
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "tag_name"

    .line 3191
    invoke-virtual {v3, v4, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3192
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 3193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3195
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 3197
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_64

    const/4 p1, 0x1

    .line 3198
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    move v2, p0

    goto :goto_6f

    :cond_64
    const-string p1, "getNetworkServerConfig: moveToFirst is false"

    .line 3200
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_6f

    :cond_6a
    const-string p1, "getNetworkServerConfig: cursor is null"

    .line 3203
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_6f} :catch_77
    .catchall {:try_start_e .. :try_end_6f} :catchall_75

    :goto_6f
    if-eqz v1, :cond_91

    .line 3209
    :goto_71
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_91

    :catchall_75
    move-exception p0

    goto :goto_92

    :catch_77
    move-exception p1

    .line 3206
    :try_start_78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_78 .. :try_end_8e} :catchall_75

    if-eqz v1, :cond_91

    goto :goto_71

    :cond_91
    :goto_91
    return v2

    :goto_92
    if-eqz v1, :cond_97

    .line 3209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3211
    :cond_97
    throw p0
.end method

.method private blacklist getNrAdvBandInd()I
    .registers 2

    .line 2924
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsQc:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getUWBitValue()I

    move-result p0

    goto :goto_d

    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isLsiNrAdvBand()I

    move-result p0

    :goto_d
    return p0
.end method

.method private blacklist getNrDisplayType(Z)I
    .registers 7

    .line 964
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCachedAllowedNetworkTypesBitmask()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 967
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNrDisplayType: getCachedAllowedNetworkTypesBitmask =  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCachedAllowedNetworkTypesBitmask()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1

    .line 972
    :cond_2d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "connected"

    const-string v3, "connected_mmwave"

    if-eqz p1, :cond_45

    .line 979
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 980
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    :cond_41
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_91

    .line 986
    :cond_45
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result p1

    if-eqz p1, :cond_5c

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    if-ne p1, v4, :cond_5c

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 987
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    :cond_5c
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p1

    const/4 v4, 0x1

    if-eq p1, v4, :cond_8c

    const/4 v4, 0x2

    if-eq p1, v4, :cond_7d

    const/4 v4, 0x3

    if-eq p1, v4, :cond_70

    goto :goto_91

    .line 992
    :cond_70
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result p1

    if-eqz p1, :cond_79

    .line 993
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    :cond_79
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_91

    .line 998
    :cond_7d
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkActive()Z

    move-result p1

    if-eqz p1, :cond_86

    const-string p1, "not_restricted_rrc_con"

    goto :goto_88

    :cond_86
    const-string p1, "not_restricted_rrc_idle"

    :goto_88
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_91

    :cond_8c
    const-string p1, "restricted"

    .line 1002
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    :goto_91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_95
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1008
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    if-eqz v0, :cond_95

    .line 1009
    iget v0, v0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mOverrideType:I

    if-eqz v0, :cond_95

    return v0

    :cond_b0
    return v1
.end method

.method private blacklist getPhysicalLinkStatusFromPhysicalChannelConfig()I
    .registers 1

    .line 2786
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2787
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhysicalChannelConfigList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 2788
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x2

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private blacklist getRfConfig()V
    .registers 5

    .line 3430
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const-string v1, "0"

    const/4 v2, 0x1

    if-le v0, v2, :cond_2c

    .line 3431
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3432
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "ril.enabled_5g_rf_per_subs"

    .line 3431
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/TelephonyFacade;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    goto :goto_3a

    .line 3434
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    const-string v2, "ril.enabled_5g_rf"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/TelephonyFacade;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    :goto_3a
    return-void
.end method

.method private blacklist getServerConfigValues()[I
    .registers 5

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 3235
    fill-array-data v1, :array_8c

    .line 3236
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 3238
    :try_start_c
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getUwbTimers()[I

    move-result-object v1

    .line 3239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerConfigValues from getUwbTimers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_2b

    goto :goto_5f

    :catch_2b
    move-exception v1

    .line 3241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServerConfigValues: getUwbTimer\'s exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    new-array v1, v0, [I

    .line 3242
    fill-array-data v1, :array_96

    goto :goto_5f

    :cond_46
    const-string v0, "TMO"

    .line 3244
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "DSH"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isSubOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 3245
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->update5GNetworkServerConfig()[I

    move-result-object v1

    const/4 v0, 0x2

    .line 3246
    aget v0, v1, v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSib2For5GIcon:I

    .line 3248
    :cond_5f
    :goto_5f
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-eqz v0, :cond_72

    array-length v0, v1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_72

    new-array v1, v2, [I

    .line 3253
    fill-array-data v1, :array_a0

    .line 3254
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->setUwbTimers([I)Z

    .line 3256
    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServerConfigValues: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-object v1

    nop

    :array_8c
    .array-data 4
        0x1e
        0x1e
        0x0
    .end array-data

    :array_96
    .array-data 4
        0x3
        0x3c
        0x2
    .end array-data

    :array_a0
    .array-data 4
        0x3
        0x3c
        0xa
        0x78
        0x3c
        0x0
        0x0
        0x3000
    .end array-data
.end method

.method private blacklist getServingCellInfo(Landroid/telephony/CellIdentity;Z)[I
    .registers 9

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    if-nez p1, :cond_a

    return-object v1

    .line 3625
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    array-length v2, v2

    .line 3627
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_45

    const/4 v5, 0x6

    if-eq v4, v5, :cond_18

    goto :goto_71

    :cond_18
    if-eqz p2, :cond_1e

    .line 3642
    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrServingChange:I

    add-int/lit8 v2, p2, 0x1

    .line 3644
    :cond_1e
    new-array v1, v2, [I

    .line 3645
    check-cast p1, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityNr;->getPci()I

    move-result p2

    aput p2, v1, v3

    if-le v2, v0, :cond_30

    .line 3648
    invoke-virtual {p1}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result p1

    aput p1, v1, v0

    .line 3650
    :cond_30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "5G UW: getServingCellInfo NR(SA). NumInfoValues: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_71

    :cond_45
    if-eqz p2, :cond_4b

    .line 3630
    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteServingChange:I

    add-int/lit8 v2, p2, 0x1

    .line 3632
    :cond_4b
    new-array v1, v2, [I

    .line 3633
    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result p2

    aput p2, v1, v3

    if-le v2, v0, :cond_5d

    .line 3636
    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result p1

    aput p1, v1, v0

    .line 3638
    :cond_5d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "5G UW: getServingCellInfo LTE(NSA). NumInfoValues: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    :goto_71
    return-object v1
.end method

.method private blacklist getTimerValue(Ljava/lang/String;)I
    .registers 4

    const-string v0, "timer1"

    .line 3261
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3262
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    :cond_e
    const-string v0, "timer2"

    .line 3263
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3264
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    const/4 p1, 0x1

    aget p0, p0, p1

    return p0

    :cond_1c
    const-string v0, "timer3"

    .line 3265
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3266
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    const/4 p1, 0x2

    aget p0, p0, p1

    return p0

    .line 3271
    :cond_2a
    :try_start_2a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2e} :catch_2f

    goto :goto_49

    .line 3273
    :catch_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTimerValue() : Error! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a correct value"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/4 p0, -0x1

    :goto_49
    return p0
.end method

.method private blacklist getTuwSecondaryTimerValue(Ljava/lang/String;I)I
    .registers 6

    .line 3282
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-eqz v0, :cond_25

    .line 3283
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {p1}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDragStartTime:J

    .line 3284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VZW timer : TUW_DRAG started@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDragStartTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3285
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwTimerDrag:I

    return p0

    .line 3287
    :cond_25
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v0

    if-eqz v0, :cond_86

    const-string v0, "not_restricted_rrc_con"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_86

    .line 3290
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VZW timer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mVzwTuwb1Started="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", idle="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNotRestrictedRrcState:[Z

    const/4 v1, 0x0

    aget-boolean p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", connected="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNotRestrictedRrcState:[Z

    const/4 v2, 0x1

    aget-boolean p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3293
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    if-eqz p1, :cond_86

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNotRestrictedRrcState:[Z

    aget-boolean v0, p1, v1

    if-eqz v0, :cond_86

    aget-boolean p1, p1, v2

    if-nez p1, :cond_7b

    goto :goto_86

    :cond_7b
    const-string p1, "VZW timer : TUWB3 started. "

    .line 3296
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3297
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    const/4 p1, 0x2

    aget p0, p0, p1

    return p0

    :cond_86
    :goto_86
    return p2
.end method

.method private blacklist getUWBandList()Ljava/lang/String;
    .registers 4

    .line 2928
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2929
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v1, "ril.bandList"

    const-string v2, "0"

    .line 2928
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/TelephonyFacade;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getUWBitValue()I
    .registers 4

    .line 2940
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isAdditionalNrAdvancedBandDisabledByBwThres()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 2944
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ril.is_advanced_band_indi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2945
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    .line 2944
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/TelephonyFacade;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private blacklist handleHighBandwidthDataTransfer(II)V
    .registers 5

    .line 2949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHighBandwidthDataTransfer: ulKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dlKbps="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mHighBwThreshold="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHighBwThreshold:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2951
    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    if-nez p1, :cond_40

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_40

    .line 2953
    :cond_31
    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 2954
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz p1, :cond_40

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_40
    :goto_40
    return-void
.end method

.method private blacklist handleNrAdvancedDisabled()V
    .registers 2

    const-string v0, "NrAdvancedDisabled"

    .line 2958
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2959
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 2960
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_14

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_14
    return-void
.end method

.method private blacklist handleNrAdvancedNotAllowed()V
    .registers 2

    .line 2964
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvancedAllowedByPco:Z

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUwDsqNotRequired()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1f

    :cond_b
    const-string v0, "NrAdvancedNotAllowed"

    .line 2966
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2967
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 2968
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_1f

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private blacklist handleOutOfNrAdvanced()V
    .registers 2

    .line 2973
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->is5GHysteresisActive()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "handleOutOfNrAdvanced"

    .line 2975
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 2976
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    const/16 v0, 0x15

    .line 2977
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private blacklist handlePlmnChanged()V
    .registers 5

    .line 2981
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getCurrentPlmn()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 2982
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPlmn:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_53

    .line 2984
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlmnChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPlmn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2985
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPlmn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2986
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPlmn:Ljava/lang/String;

    if-nez v1, :cond_53

    .line 2987
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUwDsqNotRequired()Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_53

    .line 2989
    :cond_44
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 2990
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_53

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_53
    :goto_53
    return-void
.end method

.method private blacklist handleServingCellChanged()V
    .registers 6

    .line 2994
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUwDsqNotRequired()Z

    move-result v0

    if-nez v0, :cond_b0

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_b0

    .line 2995
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isServingCellChanged()Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_b0

    .line 2997
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UW ServingCell Changed. nrlevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrServingChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ltelevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteServingChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", NumInfoValues:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CurPci: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 3000
    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", NewPci: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewServingCellInfo:[I

    aget v1, v1, v2

    .line 3002
    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3003
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    array-length v1, v1

    const-string v2, ""

    const/4 v3, 0x1

    if-le v1, v3, :cond_79

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", CurArfcn: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    aget v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7a

    :cond_79
    move-object v1, v2

    :goto_7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3004
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewServingCellInfo:[I

    array-length v1, v1

    if-le v1, v3, :cond_97

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NewArfcn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewServingCellInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2997
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3005
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 3006
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_b0

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_b0
    :goto_b0
    return-void
.end method

.method private blacklist handleTuwTimer(Lcom/android/internal/telephony/IState;Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;)V
    .registers 8

    .line 3302
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v0

    if-eqz v0, :cond_ad

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    if-eqz v0, :cond_c

    goto/16 :goto_ad

    :cond_c
    const/4 v0, 0x1

    .line 3304
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    .line 3305
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNotRestrictedRrcState:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 3306
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    if-ne p1, v3, :cond_1a

    move v4, v0

    goto :goto_1b

    :cond_1a
    move v4, v2

    :goto_1b
    aput-boolean v4, v1, v0

    const-string v1, "connected_mmwave"

    if-eq p1, v3, :cond_4f

    .line 3308
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    .line 3309
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "connected"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    .line 3310
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "not_restricted_rrc_con"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    :cond_4f
    move v2, v0

    :cond_50
    iput-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwRrcConnected:Z

    .line 3311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VZW timer : TUW1 timer started in "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3314
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-nez p1, :cond_6d

    return-void

    .line 3315
    :cond_6d
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateTuwDragTimer()V

    .line 3317
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 3318
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsInEmergencyCall:Z

    if-eqz p1, :cond_85

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleVolteEmergencyCall()V

    .line 3319
    :cond_85
    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mImsQci:I

    if-ne p1, v0, :cond_8c

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleVolteCall()V

    .line 3320
    :cond_8c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setHighBwDataXferThreshold="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHighBwThreshold:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3321
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object p1

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHighBwThreshold:I

    .line 3322
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->setHighBandwidthDataTransferThresholdKbps(I)V

    :cond_ad
    :goto_ad
    return-void
.end method

.method private blacklist handleUwDsqAny()V
    .registers 2

    const-string v0, "handleUwDsqAny"

    .line 3011
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3012
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    const/16 v0, 0x15

    .line 3013
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private blacklist handleUwDsqChanged(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/16 v0, 0x8

    if-eq p1, v0, :cond_10

    const/16 v0, 0x10

    if-eq p1, v0, :cond_c

    goto :goto_17

    .line 3019
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleNrAdvancedDisabled()V

    goto :goto_17

    .line 3022
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleOutOfNrAdvanced()V

    goto :goto_17

    .line 3025
    :cond_14
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleUwDsqAny()V

    :goto_17
    return-void
.end method

.method private blacklist handleVolteCall()V
    .registers 3

    .line 3033
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUwDsqNotRequired()Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCallState:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mImsQci:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    goto :goto_24

    :cond_10
    const-string v0, "VoLTE call with QCI=1"

    .line 3035
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3036
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 3037
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_24

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method private blacklist handleVolteEmergencyCall()V
    .registers 2

    .line 3041
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isUwDsqNotRequired()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsInEmergencyCall:Z

    if-nez v0, :cond_b

    goto :goto_1f

    :cond_b
    const-string v0, "VoLTE emergency call"

    .line 3043
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3044
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 3045
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v0, :cond_1f

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private blacklist is5gAvailable()Z
    .registers 6

    .line 3664
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    .line 3665
    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 3667
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is5gAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist isAdditionalNrAdvancedBand()Z
    .registers 4

    .line 2758
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 2760
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    if-eqz v0, :cond_d

    return v2

    .line 2763
    :cond_d
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    if-ne p0, v2, :cond_12

    move v1, v2

    :cond_12
    return v1

    .line 2765
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getNrAdvBandInd()I

    move-result p0

    if-ne p0, v2, :cond_1a

    move v1, v2

    :cond_1a
    return v1
.end method

.method private blacklist isAdditionalNrAdvancedBandDisabledByBwThres()Z
    .registers 1

    .line 3063
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    if-gez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private blacklist isBandwidthRequirementMet()Z
    .registers 5

    .line 3067
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 3070
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isAdditionalNrAdvancedBandDisabledByBwThres()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    return v2

    .line 3074
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    .line 3076
    iget v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    if-ge v0, v3, :cond_43

    .line 3077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NrAdvThresholdBw = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cellBw = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v2

    :cond_43
    const-string v0, "BMC"

    .line 3082
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isSubOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 3083
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    return p0

    :cond_69
    return v1
.end method

.method private blacklist isCarrierId(I)Z
    .registers 3

    .line 3547
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v0

    if-eq v0, p1, :cond_13

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSpecificCarrierId()I

    move-result p0

    if-ne p0, p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private blacklist isEndcDetectionBeforeRrcConnectSupported()Z
    .registers 2

    .line 3552
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0

    const-string v0, "jp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isInCall()Z
    .registers 4

    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 882
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_33

    .line 883
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_33

    .line 884
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_33
    const/4 v0, 0x1

    move v1, v0

    .line 886
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5G UC/UW: isInCall() - isImsCall: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist isLatinSubOperator(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "LTN"

    .line 3471
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "ICE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "IUS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "MNX"

    .line 3472
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_37

    .line 3476
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": isLatinSubOperator: false"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 3473
    :cond_37
    :goto_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": isLatinSubOperator: true"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isLsiNrAdvBand()I
    .registers 12

    .line 1101
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrNone()Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    .line 1102
    :goto_15
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_1f

    move v3, v2

    goto :goto_20

    :cond_1f
    move v3, v1

    .line 1103
    :goto_20
    iget-object v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mAdditionalNrAdvancedBandsList:[I

    .line 1105
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v6

    if-eqz v6, :cond_52

    if-eqz v0, :cond_3d

    .line 1106
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    :cond_3d
    if-eqz v3, :cond_52

    .line 1107
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    .line 1111
    :cond_52
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getUWBandList()Ljava/lang/String;

    move-result-object v0

    .line 1113
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9e

    const-string v3, ";"

    .line 1114
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1115
    array-length v6, v3

    move v7, v1

    move v8, v7

    :goto_65
    if-ge v7, v6, :cond_9c

    aget-object v9, v3, v7

    .line 1116
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v5, v10}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([II)Z

    move-result v10

    if-eqz v10, :cond_99

    .line 1117
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BandList = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1119
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/NetworkTypeController;->isTDD(I)Z

    move-result v8

    if-eqz v8, :cond_98

    const-string v0, "Hal v1.5 and below with TDD UC Band Attached"

    .line 1120
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    move v0, v2

    goto :goto_9f

    :cond_98
    move v8, v2

    :cond_99
    add-int/lit8 v7, v7, 0x1

    goto :goto_65

    :cond_9c
    move v0, v1

    goto :goto_a0

    :cond_9e
    move v0, v1

    :goto_9f
    move v8, v0

    :goto_a0
    if-nez v8, :cond_10d

    .line 1130
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1131
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhysicalChannelConfigList()Ljava/util/List;

    move-result-object v3

    .line 1132
    invoke-static {v5}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([I)Z

    move-result v6

    if-nez v6, :cond_107

    if-eqz v3, :cond_107

    .line 1133
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_bb

    goto :goto_107

    .line 1137
    :cond_bb
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_bf
    :goto_bf
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/PhysicalChannelConfig;

    .line 1138
    invoke-virtual {v6}, Landroid/telephony/PhysicalChannelConfig;->getNetworkType()I

    move-result v7

    if-ne v7, v4, :cond_bf

    .line 1139
    invoke-virtual {v6}, Landroid/telephony/PhysicalChannelConfig;->getBand()I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-eqz v7, :cond_bf

    .line 1140
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBand = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/telephony/PhysicalChannelConfig;->getBand()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {v6}, Landroid/telephony/PhysicalChannelConfig;->getBand()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/NetworkTypeController;->isTDD(I)Z

    move-result v6

    if-eqz v6, :cond_105

    const-string v0, "Hal v1.6 and above with TDD UC Band Attached"

    .line 1143
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    move v0, v2

    move v8, v0

    goto :goto_10d

    :cond_105
    move v8, v2

    goto :goto_bf

    :cond_107
    :goto_107
    const-string v0, "advBandList/physicalChannelConfigList = Empty"

    .line 1134
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1

    .line 1151
    :cond_10d
    :goto_10d
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v3

    if-eqz v3, :cond_122

    if-eqz v8, :cond_121

    if-nez v0, :cond_121

    .line 1152
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconEnabled:Z

    if-nez v0, :cond_11c

    goto :goto_121

    .line 1155
    :cond_11c
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/NetworkTypeController;->isTmoBWCheckMet([I)Z

    move-result p0

    return p0

    :cond_121
    :goto_121
    return v8

    :cond_122
    if-ne v8, v2, :cond_12b

    .line 1159
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isBandwidthRequirementMet()Z

    move-result p0

    if-eqz p0, :cond_12b

    move v1, v2

    :cond_12b
    return v1
.end method

.method private blacklist isLte(I)Z
    .registers 4

    const/16 v0, 0x12

    if-ne p1, v0, :cond_26

    .line 2772
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2773
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilMobileDataRadioTechnology()I

    move-result p1

    .line 2772
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result p1

    .line 2774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLte(): rat = IWLAN, mobile rat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    :cond_26
    const/16 p0, 0xd

    if-eq p1, p0, :cond_31

    const/16 p0, 0x13

    if-ne p1, p0, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 p0, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 p0, 0x1

    :goto_32
    return p0
.end method

.method private blacklist isLteEnhancedAvailable()Z
    .registers 8

    .line 1034
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 1037
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    .line 1038
    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorAlphaLongRaw()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1039
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorAlphaShortRaw()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x1

    aput-object p0, v3, v4

    move p0, v1

    :goto_2d
    if-ge p0, v2, :cond_45

    .line 1038
    aget-object v5, v3, p0

    .line 1040
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_42

    .line 1041
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1042
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_42

    return v4

    :cond_42
    add-int/lit8 p0, p0, 0x1

    goto :goto_2d

    :cond_45
    return v1
.end method

.method private blacklist isMainOperatorName(Ljava/lang/String;)Z
    .registers 3

    .line 3457
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 3460
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyFacade;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isNetworkAtt()Z
    .registers 2

    const/16 v0, 0x4a3

    .line 3534
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x6f3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x847

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x848

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x9dd

    .line 3535
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x9de

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x9df

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x9e6

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x9ea

    .line 3536
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x9eb

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x7e9

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x7ea

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x7eb

    .line 3537
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x7ec

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x7ef

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x2726

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x2710

    .line 3538
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result p0

    if-eqz p0, :cond_89

    goto :goto_8b

    :cond_89
    const/4 p0, 0x0

    goto :goto_8c

    :cond_8b
    :goto_8b
    const/4 p0, 0x1

    :goto_8c
    return p0
.end method

.method private blacklist isNetworkTmo()Z
    .registers 2

    const/4 v0, 0x1

    .line 3543
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result p0

    return p0
.end method

.method private blacklist isNetworkVzw()Z
    .registers 2

    const/16 v0, 0x72f

    .line 3524
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1b

    const/16 v0, 0x862

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_1b

    const/16 v0, 0x2718

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isCarrierId(I)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method private blacklist isNrAdvanced()Z
    .registers 3

    .line 2703
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    const/4 v1, 0x0

    if-lez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvancedAllowedByPco:Z

    if-nez v0, :cond_a

    return v1

    .line 2709
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mEnableNrAdvancedWhileRoaming:Z

    if-nez v0, :cond_1b

    return v1

    .line 2728
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrMmwave()Z

    move-result v0

    if-nez v0, :cond_2d

    :cond_27
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isAdditionalNrAdvancedBand()Z

    move-result p0

    if-eqz p0, :cond_2e

    :cond_2d
    const/4 v1, 0x1

    :cond_2e
    return v1
.end method

.method private blacklist isNrConnected()Z
    .registers 2

    .line 2660
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private blacklist isNrMmwave()Z
    .registers 3

    .line 2733
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsQc:Z

    if-eqz v0, :cond_19

    .line 2736
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getMmwaveBitValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method private blacklist isNrNone()Z
    .registers 1

    .line 2665
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private blacklist isNrNotRestricted()Z
    .registers 2

    .line 2670
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private blacklist isNrRestricted()Z
    .registers 2

    .line 2675
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist isNrRestrictedForUw()Z
    .registers 4

    .line 2681
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2683
    :cond_6
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    .line 2684
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    return v2

    :cond_14
    const/4 v0, 0x2

    .line 2686
    invoke-virtual {p0, v0, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-nez p0, :cond_1c

    return v1

    .line 2690
    :cond_1c
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p0

    if-nez p0, :cond_23

    return v1

    .line 2693
    :cond_23
    iget-boolean p0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    return p0
.end method

.method private blacklist isPhysicalLinkActive()Z
    .registers 2

    .line 2782
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private blacklist isPhysicalLinkValid()Z
    .registers 2

    .line 3091
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private blacklist isServingCellChanged()Z
    .registers 5

    .line 3049
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    return v1

    :cond_9
    move v0, v1

    .line 3053
    :goto_a
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurServingCellInfo:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1c

    .line 3054
    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewServingCellInfo:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1c
    return v1
.end method

.method private blacklist isSubOperatorName(Ljava/lang/String;)Z
    .registers 3

    .line 3464
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 3467
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyFacade;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static blacklist isTDD(I)Z
    .registers 2

    .line 1163
    sget-object v0, Lcom/android/internal/telephony/NetworkTypeController;->NGRAN_TDD_BANDS:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isTmo5GUCSupported()Z
    .registers 3

    .line 1305
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "TMO"

    .line 1308
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "DSH"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isSubOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_18
    const-string v0, "SPR"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    return v1
.end method

.method private blacklist isTmoBWCheckMet([I)Z
    .registers 10

    .line 1167
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1168
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhysicalChannelConfigList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d2

    .line 1170
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d2

    .line 1171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTmoBWCheckMet HalVersion(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " physicalChannelConfigList.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " advBandList.length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1171
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1175
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/HalVersion;

    const/4 v5, 0x5

    invoke-direct {v4, v1, v5}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->lessOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    const/16 v4, 0x14

    if-eqz v3, :cond_a0

    const/4 v3, 0x0

    .line 1177
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getUWBandList()Ljava/lang/String;

    move-result-object v5

    .line 1178
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_68

    const-string v3, ";"

    .line 1179
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1181
    :cond_68
    invoke-static {v3}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    return v2

    :cond_6f
    move v5, v2

    move v6, v5

    .line 1182
    :goto_71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_d3

    array-length v7, v3

    if-ge v5, v7, :cond_d3

    .line 1183
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/PhysicalChannelConfig;

    invoke-virtual {v7}, Landroid/telephony/PhysicalChannelConfig;->getNetworkType()I

    move-result v7

    if-ne v7, v4, :cond_9d

    aget-object v7, v3, v5

    .line 1185
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {p1, v7}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 1186
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/PhysicalChannelConfig;

    .line 1187
    invoke-virtual {v7}, Landroid/telephony/PhysicalChannelConfig;->getCellBandwidthDownlinkKhz()I

    move-result v7

    add-int/2addr v6, v7

    :cond_9d
    add-int/lit8 v5, v5, 0x1

    goto :goto_71

    :cond_a0
    move v3, v2

    move v6, v3

    .line 1192
    :goto_a2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_d3

    .line 1193
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PhysicalChannelConfig;

    invoke-virtual {v5}, Landroid/telephony/PhysicalChannelConfig;->getNetworkType()I

    move-result v5

    if-ne v5, v4, :cond_cf

    .line 1196
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PhysicalChannelConfig;

    invoke-virtual {v5}, Landroid/telephony/PhysicalChannelConfig;->getBand()I

    move-result v5

    .line 1195
    invoke-static {p1, v5}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 1197
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PhysicalChannelConfig;

    .line 1198
    invoke-virtual {v5}, Landroid/telephony/PhysicalChannelConfig;->getCellBandwidthDownlinkKhz()I

    move-result v5

    add-int/2addr v6, v5

    :cond_cf
    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    :cond_d2
    move v6, v2

    .line 1203
    :cond_d3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Non TDD UC bands with Total Bandwidth: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1204
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconValue:I

    if-ge v6, p0, :cond_ec

    move v1, v2

    :cond_ec
    return v1
.end method

.method private blacklist isUsingPhysicalChannelConfigForRrcDetection()Z
    .registers 2

    .line 2812
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfig16Supported:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUsingUserDataForRrcDetection:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private blacklist isUwDsqNotRequired()Z
    .registers 2

    .line 3095
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    if-nez v0, :cond_c

    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic blacklist lambda$isBandwidthRequirementMet$0(I)Z
    .registers 2

    const v0, 0x9c40

    if-lt p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private blacklist needRemoveAllTimers(Ljava/lang/String;)Z
    .registers 8

    .line 3378
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v0

    const-string v1, "connected"

    const-string v2, "connected_mmwave"

    const/4 v3, 0x0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkAtt()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3379
    :cond_11
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwIratChanged:Z

    if-eqz v0, :cond_16

    return v3

    .line 3381
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_31

    .line 3383
    :cond_23
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 3384
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getCurrentOverrideNetworkType()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_31

    goto :goto_9d

    .line 3394
    :cond_31
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_9c

    .line 3395
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_9c

    .line 3399
    :cond_3f
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result p1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_72

    .line 3400
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v0

    if-nez v0, :cond_72

    .line 3401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove primary timer! rat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currentState: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v2

    .line 3406
    :cond_72
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string v0, "CHN"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9b

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3407
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCachedAllowedNetworkTypesBitmask()I

    move-result p1

    int-to-long v0, p1

    const-wide/32 v4, 0x80000

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-nez p1, :cond_9b

    const-string p1, "Remove timer! preferred network type does not include 5G"

    .line 3408
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v2

    :cond_9b
    return v3

    :cond_9c
    :goto_9c
    return v2

    .line 3386
    :cond_9d
    :goto_9d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needRemoveAllTimers return false due to prevState ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), current State ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), mOverrideNetworkType ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), currentOverrideNetworkType ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3388
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getCurrentOverrideNetworkType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3386
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v3
.end method

.method private blacklist needRemovePrimaryTimer()Z
    .registers 5

    .line 3335
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_15

    const-string v0, "5G UC: needRemovePrimaryTimer() - Stop primary timer for IWLAN RAT"

    .line 3336
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1

    .line 3340
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getOverrideNetworkType()I

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getCurrentOverrideNetworkType()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4b

    .line 3343
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    const-string v2, "connected_mmwave"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    if-ne v0, v2, :cond_3c

    const-string v0, "5G UC: needRemovePrimaryTimer() - Don\'t stop primry timer."

    .line 3344
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v3

    .line 3348
    :cond_3c
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSupport5gAvailable:Z

    if-eqz v0, :cond_4a

    if-eqz v0, :cond_4b

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5gAvailable:Z

    .line 3349
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->is5gAvailable()Z

    move-result p0

    if-ne v0, p0, :cond_4b

    :cond_4a
    return v1

    :cond_4b
    return v3
.end method

.method private blacklist needRemoveSecondaryTimer(Ljava/lang/String;)Z
    .registers 6

    .line 3359
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    .line 3360
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwIratChanged:Z

    if-eqz v0, :cond_b

    return v2

    .line 3362
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwTimerDragUpdated:Z

    if-eqz v0, :cond_15

    const-string p1, "Remove the old secondary timer since it is updated to Tpci_hys."

    .line 3363
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v1

    .line 3366
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    const-string v3, "connected_mmwave"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    return v2

    .line 3369
    :cond_20
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    return v1

    :cond_29
    return v2
.end method

.method private blacklist onCellInfoChanged(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_62

    .line 1230
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_62

    .line 1231
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 1232
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_c

    .line 1233
    :cond_1f
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    .line 1234
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-eqz p1, :cond_38

    .line 1235
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->getServingCellInfo(Landroid/telephony/CellIdentity;Z)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewServingCellInfo:[I

    .line 1239
    :cond_38
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    if-ne p1, v0, :cond_45

    .line 1240
    iget-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    iput-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurrentCellId:J

    goto :goto_62

    .line 1243
    :cond_45
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result p1

    if-eqz p1, :cond_62

    iget-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurrentCellId:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_62

    iget-wide v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_62

    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-eqz p1, :cond_62

    const-string p1, "cellid_change"

    .line 1245
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->startUCRefreshTimer(Ljava/lang/String;)V

    .line 1250
    :cond_62
    :goto_62
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-eqz p1, :cond_6c

    .line 1251
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handlePlmnChanged()V

    .line 1252
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->handleServingCellChanged()V

    :cond_6c
    return-void
.end method

.method private blacklist onNrAdvBandIndiChanged()V
    .registers 4

    .line 1208
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1209
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getNrAdvBandInd()I

    move-result v0

    .line 1210
    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    if-eq v1, v0, :cond_5e

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5G UC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsRefreshTimerActive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1212
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-eqz v1, :cond_3d

    const/4 v2, 0x1

    if-eq v0, v2, :cond_41

    :cond_3d
    if-nez v1, :cond_44

    if-nez v0, :cond_44

    .line 1214
    :cond_41
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    return-void

    .line 1217
    :cond_44
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    if-nez v1, :cond_4c

    .line 1218
    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevNrAdvBandIndi:I

    .line 1220
    :cond_4c
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    .line 1221
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    if-ne v0, v1, :cond_59

    .line 1222
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    :cond_59
    const-string v0, "nr_adv_band_indi_change"

    .line 1224
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->startUCRefreshTimer(Ljava/lang/String;)V

    :cond_5e
    return-void
.end method

.method private blacklist onReceiveCpIconTypeChanged(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "SlotIdx"

    const/4 v1, -0x1

    .line 1269
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-eq v0, v2, :cond_10

    return-void

    :cond_10
    const-string v0, "NrIconType"

    .line 1271
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RilNrIconType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    if-ltz p1, :cond_48

    const/4 v0, 0x2

    if-lt v0, p1, :cond_48

    .line 1273
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    if-ne v0, p1, :cond_3e

    goto :goto_48

    .line 1277
    :cond_3e
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    .line 1279
    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsCpIconTypeConfigEnabled:Z

    if-nez p1, :cond_45

    return-void

    .line 1280
    :cond_45
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideNetworkTypeByCpIconType()V

    :cond_48
    :goto_48
    return-void
.end method

.method private blacklist onReceiveIconTypeChanged(Landroid/content/Intent;)V
    .registers 6

    const-string v0, "NrIconType"

    const/4 v1, -0x1

    .line 1258
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RilNrIconType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    if-gt p1, v1, :cond_28

    return-void

    .line 1262
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    if-ge p1, v0, :cond_3f

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3f

    const/16 v0, 0x16

    .line 1263
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1265
    :cond_3f
    iput p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    return-void
.end method

.method private blacklist onReceiveUwDsqNrAdvancedDisabled(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "NrAdvancedDisabled"

    const/4 v1, -0x1

    .line 1285
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-gtz p1, :cond_a

    return-void

    .line 1288
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_UW_DSQ_CHANGED.CP_LOW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/16 p1, 0x16

    .line 1289
    new-instance v0, Landroid/os/AsyncResult;

    const/16 v1, 0x10

    .line 1290
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1289
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist onReceiveUwDsqOutOfNrAdvanced(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "OutOfNrAdvancedCoverage"

    const/4 v1, -0x1

    .line 1294
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_a

    return-void

    .line 1297
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutOfNrAdvancedCoverage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_32

    const/16 p1, 0x16

    .line 1299
    new-instance v0, Landroid/os/AsyncResult;

    const/16 v1, 0x8

    .line 1300
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1299
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_32
    return-void
.end method

.method private blacklist parseCarrierConfigs()V
    .registers 12

    .line 549
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->use2ndString()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "5g_icon_configuration_string_2nd"

    const-string v1, "5g_icon_display_grace_period_string_2nd"

    const-string v2, "5g_icon_display_secondary_grace_period_string_2nd"

    goto :goto_13

    :cond_d
    const-string v0, "5g_icon_configuration_string"

    const-string v1, "5g_icon_display_grace_period_string"

    const-string v2, "5g_icon_display_secondary_grace_period_string"

    .line 555
    :goto_13
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    .line 556
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideTimerRule:Ljava/lang/String;

    .line 557
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 558
    invoke-virtual {v3, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

    .line 560
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v4, "show_carrier_data_icon_pattern_string"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    .line 563
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v5, "nr_timers_reset_if_non_endc_and_rrc_idle_bool"

    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledForLegacyStateRRCIdle:Z

    .line 565
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v6, "lte_plus_threshold_bandwidth_khz_int"

    invoke-virtual {v3, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLtePlusThresholdBandwidth:I

    .line 567
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v7, "nr_advanced_threshold_bandwidth_khz_int"

    invoke-virtual {v3, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    .line 569
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v8, "enable_nr_advanced_for_roaming_bool"

    invoke-virtual {v3, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mEnableNrAdvancedWhileRoaming:Z

    .line 572
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v9, "carrier_config"

    .line 573
    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierConfigManager;

    const/4 v9, 0x5

    if-eqz v3, :cond_229

    .line 575
    iget-object v10, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_229

    .line 594
    invoke-virtual {v3, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_96

    .line 595
    invoke-virtual {v3, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    .line 597
    :cond_96
    invoke-virtual {v3, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a2

    .line 598
    invoke-virtual {v3, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideTimerRule:Ljava/lang/String;

    .line 600
    :cond_a2
    invoke-virtual {v3, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 601
    invoke-virtual {v3, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

    .line 604
    :cond_ae
    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ba

    .line 606
    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    .line 609
    :cond_ba
    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledForLegacyStateRRCIdle:Z

    .line 611
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLtePlusThresholdBandwidth:I

    invoke-virtual {v3, v6, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLtePlusThresholdBandwidth:I

    .line 614
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    invoke-virtual {v3, v7, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    const-string v0, "additional_nr_advanced_bands_int_array"

    .line 617
    invoke-virtual {v3, v0}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mAdditionalNrAdvancedBandsList:[I

    const-string v0, "nr_advanced_capable_pco_id_int"

    .line 619
    invoke-virtual {v3, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    if-lez v0, :cond_104

    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v0

    if-eqz v0, :cond_104

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    new-instance v4, Lcom/android/internal/telephony/NetworkTypeController$2;

    .line 623
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v4, p0, v6}, Lcom/android/internal/telephony/NetworkTypeController$2;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/concurrent/Executor;)V

    .line 622
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 633
    :cond_104
    invoke-virtual {v3, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mEnableNrAdvancedWhileRoaming:Z

    const-string v0, "lte_endc_using_user_data_for_rrc_detection_bool"

    .line 635
    invoke-virtual {v3, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUsingUserDataForRrcDetection:Z

    .line 637
    iget-boolean v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfig16Supported:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_119

    if-eqz v0, :cond_14b

    .line 638
    :cond_119
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    new-instance v4, Lcom/android/internal/telephony/NetworkTypeController$3;

    .line 640
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v7, v6}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v4, p0, v7}, Lcom/android/internal/telephony/NetworkTypeController$3;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/concurrent/Executor;)V

    .line 639
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    goto :goto_14b

    .line 650
    :cond_13c
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    if-eqz v0, :cond_14b

    .line 653
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v4, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForPhysicalLinkStatusChanged(Landroid/os/Handler;I)V

    :cond_14b
    :goto_14b
    const-string v0, "uw_disqualification_enabled_bool"

    .line 659
    invoke-virtual {v3, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_1c4

    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_167

    .line 664
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v0, v6, v7, v4}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 667
    :cond_167
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x12

    invoke-virtual {v0, v6, v7, v4}, Lcom/android/internal/telephony/Phone;->registerForCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_uw_dsq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    invoke-virtual {v3, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19e

    .line 671
    invoke-virtual {v3, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideTimerRule:Ljava/lang/String;

    .line 673
    :cond_19e
    invoke-virtual {v3, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1aa

    .line 674
    invoke-virtual {v3, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

    .line 676
    :cond_1aa
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v0

    if-eqz v0, :cond_1b3

    goto :goto_1c4

    .line 679
    :cond_1b3
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    if-eqz v0, :cond_1c4

    .line 682
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForImsQoSChanged(Landroid/os/Handler;I)V

    :cond_1c4
    :goto_1c4
    const/4 v0, 0x0

    const-string v1, "high_bandwidth_data_transfer_threshold_kbps_int"

    .line 687
    invoke-virtual {v3, v1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHighBwThreshold:I

    .line 690
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-eqz v1, :cond_210

    if-lez v0, :cond_210

    .line 691
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    if-nez v0, :cond_1ea

    .line 692
    new-instance v0, Lcom/android/internal/telephony/NetworkTypeController$4;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/NetworkTypeController$4;-><init>(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    .line 699
    :cond_1ea
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->registerCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    goto :goto_221

    .line 702
    :cond_210
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    if-eqz v0, :cond_221

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->unregisterCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    .line 704
    iput-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLbeCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    :cond_221
    :goto_221
    const-string v0, "enable_override_network_type_by_cp_icon_type"

    .line 707
    invoke-virtual {v3, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsCpIconTypeConfigEnabled:Z

    .line 719
    :cond_229
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    if-eqz v0, :cond_233

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_259

    .line 720
    :cond_233
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyFacade;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLatinSubOperator(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "connected_mmwave:5G,connected:5G,not_restricted_rrc_idle:5G,not_restricted_rrc_con:5G"

    if-eqz v0, :cond_24a

    .line 721
    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    goto :goto_259

    :cond_24a
    const-string v0, "EUR"

    .line 722
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_257

    const-string v0, "connected_mmwave:5G,connected:5G,not_restricted_rrc_idle:None,not_restricted_rrc_con:None"

    .line 723
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    goto :goto_259

    .line 725
    :cond_257
    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    .line 730
    :cond_259
    :goto_259
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v0

    if-nez v0, :cond_26e

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkAtt()Z

    move-result v0

    if-nez v0, :cond_26e

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    if-nez v0, :cond_26e

    .line 731
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->parseFeature()Z

    .line 734
    :cond_26e
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getServerConfigValues()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    .line 736
    array-length v1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_287

    .line 737
    aget v1, v0, v9

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrServingChange:I

    const/4 v1, 0x6

    .line 738
    aget v1, v0, v1

    iput v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteServingChange:I

    const/4 v1, 0x7

    .line 739
    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHighBwThreshold:I

    .line 742
    :cond_287
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideTimerRule:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->createTimerRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    if-eqz v0, :cond_299

    .line 746
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->parseUCBandInfo()V

    .line 750
    :cond_299
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->support5gAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSupport5gAvailable:Z

    return-void
.end method

.method private blacklist parseFeature()Z
    .registers 8

    .line 3482
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "CarrierFeature_RIL_5gIconConfiguration"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 3484
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v5, "CarrierFeature_RIL_5gIconDisplayGracePeriod"

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3486
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    const-string v6, "CarrierFeature_RIL_5gIconDisplaySecondaryGracePeriod"

    invoke-virtual {v2, v5, v6, v3, v4}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 3489
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->use2ndString()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_58

    .line 3490
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 3491
    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/NetworkTypeController;->extract2ndRule(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 3493
    :cond_44
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 3494
    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/NetworkTypeController;->extract2ndRule(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3496
    :cond_4e
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58

    .line 3497
    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/NetworkTypeController;->extract2ndRule(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 3501
    :cond_58
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_78

    .line 3502
    iput-boolean v6, p0, Lcom/android/internal/telephony/NetworkTypeController;->mFromCscFeature:Z

    .line 3503
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    .line 3504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Use Feature,  mCfgNrIconConfiguration: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3506
    :cond_78
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    .line 3507
    iput-boolean v6, p0, Lcom/android/internal/telephony/NetworkTypeController;->mFromCscFeature:Z

    .line 3508
    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideTimerRule:Ljava/lang/String;

    .line 3509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use Feature,  mCfgOverrideTimerRule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideTimerRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3511
    :cond_98
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    .line 3512
    iput-boolean v6, p0, Lcom/android/internal/telephony/NetworkTypeController;->mFromCscFeature:Z

    .line 3513
    iput-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

    .line 3514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use Feature,  mCfgOverrideSecondaryTimerRule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3517
    :cond_b8
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mFromCscFeature:Z

    return p0
.end method

.method private blacklist parseTmoBwInfo()V
    .registers 3

    const/4 v0, 0x0

    .line 3734
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    const-string v0, "//IconPolicy5G/BW_Check_5GUC_Icon_Enabled"

    .line 3735
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->getBoolConfig(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconEnabled:Z

    .line 3736
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 3737
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconEnabled:Z

    :cond_12
    const-string v0, "//IconPolicy5G/BW_Check_5GUC_Icon_Value_MHz"

    .line 3739
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->getNetworkServerConfig(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    const/16 v0, 0x28

    .line 3741
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconValue:I

    .line 3743
    :cond_21
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconValue:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconValue:I

    return-void
.end method

.method private blacklist parseUCBandInfo()V
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3771
    iput-boolean v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    .line 3772
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3773
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn2_Enabled"

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3774
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn25_Enabled"

    const/16 v5, 0x19

    invoke-direct {v0, v2, v3, v5}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3775
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn41_Enabled"

    const/16 v6, 0x29

    .line 3784
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3775
    invoke-direct {v0, v2, v3, v6}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3776
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn48_Enabled"

    const/16 v8, 0x30

    invoke-direct {v0, v2, v3, v8}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3777
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn66_Enabled"

    const/16 v9, 0x42

    invoke-direct {v0, v2, v3, v9}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3778
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn71_Enabled"

    const/16 v10, 0x47

    invoke-direct {v0, v2, v3, v10}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3779
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn77_Enabled"

    const/16 v11, 0x4d

    invoke-direct {v0, v2, v3, v11}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3780
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn258_Enabled"

    const/16 v12, 0x102

    .line 3784
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 3780
    invoke-direct {v0, v2, v3, v12}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3781
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn260_Enabled"

    const/16 v14, 0x104

    .line 3784
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 3781
    invoke-direct {v0, v2, v3, v14}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3782
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn261_Enabled"

    const/16 v14, 0x105

    .line 3784
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 3782
    invoke-direct {v0, v2, v3, v14}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3783
    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_NSAn262_Enabled"

    const/16 v14, 0x106

    .line 3784
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 3783
    invoke-direct {v0, v2, v3, v14}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Integer;

    aput-object v7, v3, v1

    const/16 v18, 0x1

    aput-object v13, v3, v18

    aput-object v15, v3, v4

    const/16 v19, 0x3

    aput-object v16, v3, v19

    const/16 v20, 0x4

    aput-object v17, v3, v20

    .line 3784
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/NetworkTypeController;->setDefaultNsaBandsForUCBandList(Ljava/util/List;)V

    .line 3786
    iput-boolean v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    .line 3787
    iget-object v3, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 3788
    iget-object v3, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v1, "//IconPolicy5G/Indicator_5GUC_SAn2_Enabled"

    invoke-direct {v0, v3, v1, v4}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3789
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_SAn25_Enabled"

    invoke-direct {v0, v1, v3, v5}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3790
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_SAn41_Enabled"

    invoke-direct {v0, v1, v3, v6}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3791
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_SAn48_Enabled"

    invoke-direct {v0, v1, v3, v8}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3792
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_SAn66_Enabled"

    invoke-direct {v0, v1, v3, v9}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3793
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_SAn71_Enabled"

    invoke-direct {v0, v1, v3, v10}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3794
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_SAn77_Enabled"

    invoke-direct {v0, v1, v3, v11}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3795
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_SAn258_Enabled"

    invoke-direct {v0, v1, v3, v12}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3796
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_SAn260_Enabled"

    const/16 v5, 0x104

    invoke-direct {v0, v1, v3, v5}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3797
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_SAn261_Enabled"

    const/16 v5, 0x105

    invoke-direct {v0, v1, v3, v5}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 3798
    iget-object v1, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    const-string v3, "//IconPolicy5G/Indicator_5GUC_SAn262_Enabled"

    invoke-direct {v0, v1, v3, v14}, Lcom/android/internal/telephony/NetworkTypeController;->updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V

    new-array v1, v2, [Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    aput-object v13, v1, v18

    aput-object v15, v1, v4

    aput-object v16, v1, v19

    aput-object v17, v1, v20

    .line 3799
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->setDefaultSaBandsForUCBandList(Ljava/util/List;)V

    .line 3800
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/NetworkTypeController;->parseTmoBwInfo()V

    .line 3802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5G UC: mNsaUCBandList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mSaUCBandList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist processPendingPhysicalLinkStatusChanged()V
    .registers 4

    .line 3104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhysicalLinkStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3105
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalLinkStatusDelayed:Z

    if-eqz v0, :cond_38

    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    goto :goto_38

    :cond_20
    const/4 v0, 0x5

    .line 3110
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "Remove pending messages"

    .line 3111
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3113
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mArPhysicalLinkActive:Landroid/os/AsyncResult;

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    :cond_35
    const/4 v0, 0x0

    .line 3116
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalLinkStatusDelayed:Z

    :cond_38
    :goto_38
    return-void
.end method

.method private blacklist registerForAllEvents()V
    .registers 7

    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreferredNetworkTypeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPhysicalChannelConfig(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x2

    .line 438
    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xf

    .line 441
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForBandwidthChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfig16Supported:Z

    .line 451
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNrStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 453
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNrFrequencyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 455
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDeviceStateMonitor()Lcom/android/internal/telephony/DeviceStateMonitor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/telephony/DeviceStateMonitor;->registerForPhysicalChannelConfigNotifChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 458
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 459
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_84

    .line 461
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x14

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 463
    :cond_84
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x12

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/telephony/Phone;->registerForCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 466
    :cond_8f
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 467
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 468
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    .line 470
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.LTE_BAND"

    .line 471
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.carrier.action.CARRIER_CHANGED"

    .line 473
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.telephony.event.EVENT_ICON_UW_DSQ_CHANGED"

    .line 474
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.telephony.event.EVENT_CP_ICON_TYPE_CHANGED"

    .line 475
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v4, v1, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 478
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v1

    if-nez v1, :cond_d9

    .line 479
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0xe

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 483
    :cond_d9
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v1

    if-nez v1, :cond_fc

    const-string v1, "SPR"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 484
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SIB2for5GIcon"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSIB2for5GIconObserver:Lcom/android/internal/telephony/NetworkTypeController$SIB2for5GIconObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 488
    :cond_fc
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_network_status"

    .line 489
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatusObserver:Landroid/database/ContentObserver;

    .line 488
    invoke-virtual {v1, v2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private blacklist resetAllTimers()V
    .registers 3

    const/16 v0, 0x8

    .line 2566
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    const/16 v0, 0x9

    .line 2567
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    const/4 v0, 0x0

    .line 2568
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    .line 2569
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    const-string v1, ""

    .line 2570
    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    .line 2571
    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    .line 2573
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwRrcConnected:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    return-void
.end method

.method private blacklist resetRetainUC()V
    .registers 2

    const/4 v0, 0x0

    .line 1315
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainUC:Z

    .line 1316
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainCtr:I

    return-void
.end method

.method private blacklist resetUwDsqEvent()V
    .registers 2

    const-string v0, "resetUwDsqEvent"

    .line 3120
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3121
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwDsqEvent:I

    .line 3122
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->setHighBandwidthDataTransferThresholdKbps(I)V

    return-void
.end method

.method private blacklist setDefaultNsaBandsForUCBandList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3748
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    if-nez v0, :cond_10

    const-string v0, "5G UC: Default UC NSA Band List"

    .line 3749
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3750
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    :cond_10
    return-void
.end method

.method private blacklist setDefaultSaBandsForUCBandList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3756
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    if-nez v0, :cond_10

    const-string v0, "5G UC: Default UC SA Band List"

    .line 3757
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    :cond_10
    return-void
.end method

.method private blacklist startUCRefreshTimer(Ljava/lang/String;)V
    .registers 5

    .line 1087
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    if-nez v0, :cond_5a

    .line 1088
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5a

    const-string v0, "call_state_change"

    .line 1089
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    if-eq v0, v1, :cond_5a

    :cond_1c
    const/4 v0, 0x1

    .line 1090
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    const-string v0, "nr_adv_band_indi_change"

    .line 1091
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1092
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevNrAdvBandIndi:I

    .line 1094
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5G UC: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") startUCRefreshTimer reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/16 p1, 0x13

    .line 1095
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    :cond_5a
    return-void
.end method

.method private blacklist stopUCRefreshTimer()V
    .registers 3

    .line 1072
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    if-eqz v0, :cond_2a

    const/16 v0, 0x13

    .line 1073
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    const/4 v0, 0x0

    .line 1074
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    .line 1075
    iget-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNewCellId:J

    iput-wide v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCurrentCellId:J

    .line 1076
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsQc:Z

    if-eqz v0, :cond_1b

    .line 1077
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getUWBitValue()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    goto :goto_21

    .line 1079
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isLsiNrAdvBand()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    .line 1081
    :goto_21
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvBandIndi:I

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrevNrAdvBandIndi:I

    const-string v0, "5G UC: stopUCRefreshTimer"

    .line 1082
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method private blacklist support5gAvailable()Z
    .registers 9

    .line 3685
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5b

    .line 3686
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_17
    if-ge v3, v2, :cond_5b

    aget-object v4, v0, v3

    .line 3687
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3688
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_42

    .line 3689
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid 5G icon configuration, config = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    goto :goto_58

    .line 3692
    :cond_42
    aget-object v4, v5, v1

    const-string v6, "not_restricted_rrc_idle"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    const/4 v4, 0x1

    aget-object v5, v5, v4

    const-string v6, "5g"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    return v4

    :cond_58
    :goto_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_5b
    return v1
.end method

.method private blacklist transitionToCurrentState()V
    .registers 3

    .line 2476
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3f

    .line 2478
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrConnected()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_3f

    .line 2481
    :cond_f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isLte(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrNotRestricted()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2482
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isPhysicalLinkActive()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2483
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    const-string v1, "not_restricted_rrc_con"

    .line 2484
    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    goto :goto_4e

    .line 2486
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    const-string v1, "not_restricted_rrc_idle"

    .line 2487
    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    goto :goto_4e

    .line 2490
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLegacyState:Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    .line 2491
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrRestricted()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "restricted"

    goto :goto_3c

    :cond_3a
    const-string v1, "legacy"

    :goto_3c
    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    goto :goto_4e

    .line 2479
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    .line 2480
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "connected_mmwave"

    goto :goto_4c

    :cond_4a
    const-string v1, "connected"

    :goto_4c
    iput-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    .line 2493
    :goto_4e
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 2494
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_5f

    .line 2496
    :cond_5c
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideNetworkType()V

    :goto_5f
    return-void
.end method

.method private blacklist transitionWithInterRatTimer()V
    .registers 8

    .line 2462
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 2464
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2465
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    .line 2467
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    .line 2468
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    .line 2469
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2470
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    const/16 v0, 0x9

    .line 2471
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v2

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    return-void
.end method

.method private blacklist transitionWithSecondaryTimerTo(Lcom/android/internal/telephony/IState;)V
    .registers 8

    .line 2426
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2427
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    .line 2429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transition with secondary timer from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2430
    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2429
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2438
    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    const/4 v3, 0x1

    if-nez v2, :cond_82

    if-eqz v1, :cond_82

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrRestrictedForUw()Z

    move-result v2

    if-nez v2, :cond_82

    .line 2439
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->getSecondaryTimer(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_82

    .line 2440
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->getSecondaryTimer(Ljava/lang/String;)I

    move-result v1

    .line 2441
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->getTuwSecondaryTimerValue(Ljava/lang/String;I)I

    move-result v1

    .line 2442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Secondary timer started : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2445
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    .line 2446
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    .line 2447
    iput-boolean v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    const/16 v0, 0x9

    int-to-long v1, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v1, v4

    .line 2448
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 2451
    :cond_82
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_93

    .line 2452
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwRrcConnected:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    .line 2453
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNotRestrictedRrcState:[Z

    aput-boolean v0, p1, v3

    aput-boolean v0, p1, v0

    .line 2456
    :cond_93
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    .line 2457
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method private blacklist transitionWithTimerTo(Lcom/android/internal/telephony/IState;)V
    .registers 10

    .line 2393
    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition with primary timer from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2395
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    .line 2396
    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    if-nez v2, :cond_7f

    if-eqz v1, :cond_7f

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->getTimer(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_7f

    .line 2397
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->getTimer(Ljava/lang/String;)I

    move-result v2

    .line 2402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Primary timer started : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2405
    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    .line 2406
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    const/4 v3, 0x1

    .line 2407
    iput-boolean v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    const/16 v3, 0x8

    int-to-long v4, v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 2408
    invoke-virtual {p0, v3, p1, v4, v5}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 2410
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->handleTuwTimer(Lcom/android/internal/telephony/IState;Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;)V

    .line 2414
    :cond_7f
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 2415
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "not_restricted_rrc_idle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 2416
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    const/4 v0, 0x0

    .line 2417
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5GUCToidle:Z

    .line 2418
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUpdateToUCIconInIdle:Z

    .line 2422
    :cond_a0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method private blacklist unRegisterForAllEvents()V
    .registers 4

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailable(Landroid/os/Handler;)V

    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreferredNetworkTypeChanged(Landroid/os/Handler;)V

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 497
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    .line 496
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(ILandroid/os/Handler;)V

    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNrStateChanged(Landroid/os/Handler;)V

    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNrFrequencyChanged(Landroid/os/Handler;)V

    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDeviceStateMonitor()Lcom/android/internal/telephony/DeviceStateMonitor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->unregisterForPhysicalChannelConfigNotifChanged(Landroid/os/Handler;)V

    .line 502
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->unRegisterForTmo5GUCEvents()V

    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v0

    if-nez v0, :cond_68

    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForPcoData(Landroid/os/Handler;)V

    :cond_68
    const-string v0, "SPR"

    .line 510
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSIB2for5GIconObserver:Lcom/android/internal/telephony/NetworkTypeController$SIB2for5GIconObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 514
    :cond_7f
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatusObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_95

    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 516
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatusObserver:Landroid/database/ContentObserver;

    .line 518
    :cond_95
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    if-eqz v0, :cond_a4

    .line 520
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForImsQoSChanged(Landroid/os/Handler;)V

    :cond_a4
    return-void
.end method

.method private blacklist unRegisterForTmo5GUCEvents()V
    .registers 3

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 529
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 531
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForCellInfo(Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist updateOverrideNetworkType()V
    .registers 3

    .line 893
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsCpIconTypeConfigEnabled:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsCpIconTypeSupported:Z

    if-eqz v0, :cond_c

    .line 894
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideNetworkTypeByCpIconType()V

    return-void

    .line 899
    :cond_c
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    if-nez v0, :cond_bf

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-nez v0, :cond_bf

    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsRefreshTimerActive:Z

    if-eqz v0, :cond_1a

    goto/16 :goto_bf

    .line 906
    :cond_1a
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getCurrentOverrideNetworkType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    .line 909
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->is5gAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5gAvailable:Z

    .line 912
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isTmo5GUCSupported()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 913
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIdleState:Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    if-eq v0, v1, :cond_44

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteConnectedState:Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    if-eq v0, v1, :cond_44

    .line 914
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrConnectedState:Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    if-ne v0, v1, :cond_48

    :cond_44
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainUC:Z

    if-nez v0, :cond_4c

    :cond_48
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCallState:Z

    if-eqz v0, :cond_56

    :cond_4c
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    if-eqz v0, :cond_56

    const-string v0, "5G UC: retain 5GUC icon"

    .line 915
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_be

    .line 917
    :cond_56
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_67

    .line 918
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_67

    const/4 v0, 0x1

    .line 919
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    goto :goto_6d

    :cond_67
    const/4 v0, 0x0

    .line 921
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    .line 922
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetRetainUC()V

    .line 924
    :goto_6d
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DisplayInfoController;->updateTelephonyDisplayInfo()V

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5G UC: updateOverrideNetworkType curState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mShow5GUC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mShow5GUC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRetainUC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRetainUC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mOverrideNetworkType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " incall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isInCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 925
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_be

    .line 931
    :cond_b9
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DisplayInfoController;->updateTelephonyDisplayInfo()V

    :goto_be
    return-void

    :cond_bf
    :goto_bf
    const-string v0, "Skip updating override network type since timer is active."

    .line 903
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateOverrideNetworkTypeByCpIconType()V
    .registers 2

    .line 3556
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mRilNrIconType:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->convertToOverrideNetworkType(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    .line 3557
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->is5gAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5gAvailable:Z

    .line 3558
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DisplayInfoController;->updateTelephonyDisplayInfo()V

    return-void
.end method

.method private blacklist updateOverrideSecondaryTimerRule(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 3613
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 3614
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected fromState : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void

    .line 3618
    :cond_30
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    .line 3619
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->addSecondaryTimer(Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist updateOverrideTimerRule(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 3601
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 3602
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected fromState : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void

    .line 3606
    :cond_30
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    .line 3607
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->addTimer(Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist updateOverrideType(Ljava/util/Map;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 3562
    new-instance p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist updateOverrideTypeInRules(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;",
            ">;)V"
        }
    .end annotation

    .line 3567
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "TMO"

    .line 3569
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "DSH"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isSubOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "XAG"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isSubOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_1f
    const-string v0, "SPR"

    .line 3570
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 3571
    :cond_27
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getSIB2for5GIcon()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSib2For5GIcon:I

    .line 3572
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getRfConfig()V

    .line 3574
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSib2For5GIcon:I

    const-string v1, "not_restricted_rrc_idle"

    const/4 v2, 0x2

    const-string v3, "not_restricted_rrc_con"

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v0, :cond_4f

    if-eq v0, v4, :cond_3e

    goto :goto_60

    .line 3585
    :cond_3e
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    if-eq v0, v4, :cond_4b

    if-ne v0, v5, :cond_45

    goto :goto_4b

    :cond_45
    if-ne v0, v2, :cond_60

    .line 3589
    invoke-direct {p0, p1, v1, v5}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideType(Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_60

    .line 3586
    :cond_4b
    :goto_4b
    invoke-direct {p0, p1, v3, v5}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideType(Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_60

    .line 3576
    :cond_4f
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    const/4 v6, 0x0

    if-eq v0, v4, :cond_5d

    if-ne v0, v5, :cond_57

    goto :goto_5d

    :cond_57
    if-ne v0, v2, :cond_60

    .line 3580
    invoke-direct {p0, p1, v1, v6}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideType(Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_60

    .line 3577
    :cond_5d
    :goto_5d
    invoke-direct {p0, p1, v3, v6}, Lcom/android/internal/telephony/NetworkTypeController;->updateOverrideType(Ljava/util/Map;Ljava/lang/String;I)V

    :cond_60
    :goto_60
    return-void
.end method

.method private blacklist updateTimers()V
    .registers 6

    .line 2501
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCachedAllowedNetworkTypesBitmask()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    const-string v0, "Reset timers since NR is not allowed."

    .line 2503
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2504
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    return-void

    .line 2508
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2514
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_52

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->needRemovePrimaryTimer()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 2518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove primary timer since icon of primary state and current icon equal: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 2521
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 2522
    iput-boolean v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    .line 2523
    iput-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    .line 2525
    iput-boolean v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwRrcConnected:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mVzwTuwb1Started:Z

    .line 2533
    :cond_52
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz v1, :cond_8c

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->needRemoveSecondaryTimer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 2535
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwTimerDragUpdated:Z

    if-nez v1, :cond_83

    .line 2537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove secondary timer since current state ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") is no longer secondary timer state ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    :cond_83
    const/16 v1, 0x9

    .line 2540
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    .line 2541
    iput-boolean v3, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    .line 2542
    iput-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    .line 2559
    :cond_8c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->needRemoveAllTimers(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 2560
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->resetAllTimers()V

    :cond_95
    return-void
.end method

.method private blacklist updateTuwDragTimer()V
    .registers 3

    .line 3328
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrevNrCband:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    :goto_f
    iput v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwTimerDrag:I

    .line 3329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VZW TUW_DRAG = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mUwTimerDrag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updatebandInfo(Ljava/util/List;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 3764
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/NetworkTypeController;->getBoolConfig(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    .line 3765
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    return-void
.end method

.method private blacklist use2ndString()Z
    .registers 6

    .line 3440
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->getRfConfig()V

    .line 3442
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "CHN"

    const-string v2, "KOR"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 3443
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatus:I

    if-eqz p0, :cond_1f

    const/4 v0, 0x2

    if-ne p0, v0, :cond_4a

    :cond_1f
    return v1

    .line 3446
    :cond_20
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkAtt()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3447
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v2, "TMO"

    const-string v3, "SPR"

    const-string v4, "DSH"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 3446
    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3448
    :cond_42
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    if-eq p0, v1, :cond_4c

    const/4 v0, 0x3

    if-ne p0, v0, :cond_4a

    goto :goto_4c

    :cond_4a
    const/4 p0, 0x0

    return p0

    :cond_4c
    :goto_4c
    return v1
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 2838
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "NetworkTypeController: "

    .line 2839
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2840
    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/telephony/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2841
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 2842
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2843
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSubId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2844
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mOverrideTimerRules="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2845
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mLteEnhancedPattern="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2846
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsPhysicalChannelConfigOn="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsPrimaryTimerActive="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2848
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsSecondaryTimerActive="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2849
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsTimerRestEnabledForLegacyStateRRCIdle="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsTimerResetEnabledForLegacyStateRRCIdle:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mLtePlusThresholdBandwidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLtePlusThresholdBandwidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2852
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mNrAdvancedThresholdBandwidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedThresholdBandwidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2853
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPrimaryTimerState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2854
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSecondaryTimerState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2855
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPreviousState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2856
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPhysicalLinkStatus="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhysicalLinkStatus:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2857
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mAdditionalNrAdvancedBandsList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mAdditionalNrAdvancedBandsList:[I

    .line 2858
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2857
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2859
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsPhysicalChannelConfig16Supported="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfig16Supported:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2860
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsNrAdvancedAllowedByPco="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsNrAdvancedAllowedByPco:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2861
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mNrAdvancedCapablePcoId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNrAdvancedCapablePcoId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2862
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsUsingUserDataForRrcDetection="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUsingUserDataForRrcDetection:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2863
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mEnableNrAdvancedWhileRoaming="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mEnableNrAdvancedWhileRoaming:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2864
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsDeviceIdleMode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsDeviceIdleMode:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2866
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mBand="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2867
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCfgNrIconConfiguration="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgNrIconConfiguration:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2868
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCfgOverrideTimerRule="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideTimerRule:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2869
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCfgOverrideSecondaryTimerRule="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mCfgOverrideSecondaryTimerRule:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2870
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mFromCscFeature="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mFromCscFeature:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2871
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mHighBwThreshold="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mHighBwThreshold:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2872
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIs5gAvailable="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5gAvailable:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2873
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsCpIconTypeConfigEnabled="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsCpIconTypeConfigEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2874
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsCpIconTypeSupported="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsCpIconTypeSupported:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2875
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsQc="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsQc:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2876
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsUwDsqEnabled="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsUwDsqEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2877
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mMobileNetworkStatus="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mMobileNetworkStatus:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2878
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSib2For5GIcon="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSib2For5GIcon:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2879
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSupport5gAvailable="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSupport5gAvailable:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2880
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mTimers="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mTimers:[I

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2881
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getCachedAllowedNetworkTypesBitmask="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2882
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getCachedAllowedNetworkTypesBitmask()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2881
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2883
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isNetwork="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkVzw()Z

    move-result p2

    if-eqz p2, :cond_354

    const-string p2, "VZW"

    goto :goto_368

    :cond_354
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkAtt()Z

    move-result p2

    if-eqz p2, :cond_35d

    const-string p2, "ATT"

    goto :goto_368

    .line 2884
    :cond_35d
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNetworkTmo()Z

    move-result p2

    if-eqz p2, :cond_366

    const-string p2, "TMO"

    goto :goto_368

    :cond_366
    const-string p2, "Non-V/A/T"

    :goto_368
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2883
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2886
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mNsaUCBandList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mNsaUCBandList:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2887
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSaUCBandList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSaUCBandList:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2888
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mBWCheck5GUCIconValue="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconValue:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2889
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mBWCheck5GUCIconEnabled="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBWCheck5GUCIconEnabled:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2891
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2892
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getDefaultValueOfNetworkStatus()I
    .registers 5

    .line 3140
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v1, "CarrierFeature_VoiceCall_ConfigOpStyleMobileNetworkSettingMenu"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "networkstatus_current_state"

    .line 3142
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public blacklist getIs5gAvailable()Z
    .registers 1

    .line 3660
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIs5gAvailable:Z

    return p0
.end method

.method public blacklist getOverrideNetworkType()I
    .registers 1

    .line 420
    iget p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideNetworkType:I

    return p0
.end method

.method public blacklist getSIB2for5GIcon()I
    .registers 5

    const-string v0, "TMO"

    .line 3164
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1b

    const-string v0, "DSH"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isSubOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3165
    iput-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    const-string v0, "//IconPolicy5G/SIB2for5GIcon"

    .line 3166
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->getBoolConfig(Ljava/lang/String;)Z

    move-result v2

    goto :goto_33

    :cond_1b
    const-string v0, "SPR"

    .line 3167
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->isMainOperatorName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3168
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "SIB2for5GIcon"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    :cond_33
    :goto_33
    if-ltz v2, :cond_39

    .line 3171
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    if-nez v0, :cond_5f

    .line 3172
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSIB2for5GIcon(): value = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", when mBand = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 3173
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x1

    :goto_5e
    move v2, v1

    .line 3176
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSIB2for5GIcon(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return v2
.end method

.method public blacklist is5GHysteresisActive()Z
    .registers 2

    .line 428
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 2816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkTypeController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 4

    .line 2820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkTypeController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideTimerRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mOverrideTimerRules:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLteEnhancedPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mLteEnhancedPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPhysicalChannelConfigOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPhysicalChannelConfigOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPrimaryTimerActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsPrimaryTimerActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSecondaryTimerActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsSecondaryTimerActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPrimaryTimerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPrimaryTimerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSecondaryTimerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mSecondaryTimerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mPreviousState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsNrAdvanced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2833
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController;->isNrAdvanced()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist update5GNetworkServerConfig()[I
    .registers 7

    const/4 v0, 0x3

    new-array v0, v0, [I

    const-string v1, "//IconPolicy5G/IconRefreshDelay_IdletoConnect"

    .line 3218
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->getNetworkServerConfig(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v3, 0x1e

    if-gez v1, :cond_12

    aput v3, v0, v2

    :cond_12
    const-string v1, "//IconPolicy5G/IconRefreshDelay_SCGtoMCG"

    .line 3221
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->getNetworkServerConfig(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    aput v1, v0, v4

    if-gez v1, :cond_1f

    aput v3, v0, v4

    .line 3224
    :cond_1f
    iput-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    const-string v1, "//IconPolicy5G/SIB2for5GIcon"

    .line 3225
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->getBoolConfig(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 3226
    iget-boolean v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mIsConfigNotNull:Z

    if-nez v1, :cond_37

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController;->mBand:I

    if-ne v1, v3, :cond_34

    move v1, v2

    goto :goto_35

    :cond_34
    move v1, v4

    :goto_35
    aput v1, v0, v3

    .line 3228
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update5GNetworkServerConfig: IconRefreshDelay_IdletoConnect="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", IconRefreshDelay_SCGtoMCG="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", SIB2for5GIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-object v0
.end method
