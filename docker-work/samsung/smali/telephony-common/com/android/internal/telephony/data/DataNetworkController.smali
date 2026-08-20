.class public Lcom/android/internal/telephony/data/DataNetworkController;
.super Landroid/os/Handler;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;,
        Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;,
        Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;
    }
.end annotation


# static fields
.field private static final blacklist REEVALUATE_PREFERRED_TRANSPORT_DELAY_MILLIS:J

.field private static final blacklist REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_AFTER_CALL_END_DELAY_MILLIS:J

.field private static final blacklist REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_TAC_CHANGED_DELAY_MILLIS:J

.field private static final blacklist SUPPORTED_IMS_FEATURES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

.field private final blacklist mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

.field private blacklist mAnyDataNetworkExisting:Z

.field private final blacklist mCongestedOverrideNetworkTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDataActivity:I

.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private final blacklist mDataNetworkControllerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataNetworkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

.field private final blacklist mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

.field private final blacklist mDataServiceBound:Landroid/util/SparseBooleanArray;

.field private final blacklist mDataServiceManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

.field private final blacklist mDataStallRecoveryManager:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

.field private blacklist mImsDataNetworkState:I

.field private final blacklist mImsFeaturePackageName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsFeatureRegistrationCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/RegistrationManager$RegistrationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsManager:Landroid/telephony/ims/ImsManager;

.field private final blacklist mImsStateCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/ImsStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mInternetDataNetworkState:I

.field private blacklist mInternetLinkStatus:I

.field private blacklist mLastImsOperationIsRelease:Z

.field private blacklist mLastReleasedImsRequestCapabilities:[I

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

.field private blacklist mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

.field private blacklist mNrAdvancedCapableByPco:Z

.field private final blacklist mPendingImsDeregDataNetworks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingTearDownAllNetworks:Z

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPreviousConnectedDataNetworkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPsRestricted:Z

.field private final blacklist mRegisteredImsFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mServiceState:Landroid/telephony/ServiceState;

.field private blacklist mSetupDataCallWlanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

.field private blacklist mSetupDataCallWwanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

.field private blacklist mSimState:I
    .annotation build Landroid/telephony/TelephonyManager$SimState;
    .end annotation
.end field

.field private blacklist mSubId:I

.field private final blacklist mSubscriptionPlans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUnmeteredOverrideNetworkTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$-R23QDW-58DLpDeDIwN0BQaIaIE(ILcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkValidationStatusChanged$29(ILcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$1ZzyZrTdLNzNc4dfAR-Lp5xS8gA(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataStallReestablishInternet$32(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$31OS2ve1HHEAwmGMaVD27HeeorI(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$isNetworkInterfaceExisting$17(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$3iALmEUoe-rUpbDz7K9JNe9rLww(Lcom/android/internal/telephony/data/DataNetworkController;ILjava/lang/Integer;)Landroid/telephony/ims/ImsStateCallback;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$registerImsStateCallback$19(ILjava/lang/Integer;)Landroid/telephony/ims/ImsStateCallback;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$74xT2SwUsKvZ79amfupcI6o3q8g(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkSetupRetry$27(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$9IcElcwJYqZbIVSPOEtJF1BZS6c(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkSetupFailed$25(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9a5jnECA2KEaHXYkWXaL_AQlvcA(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onPcoDataChanged$40(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EsrTjp28NYZP65pMI6Ym7E1j5Ak(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$handleMessage$2(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JNZe5psruNuLl5Gw3fsqsHv9Cis(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$setupDataNetwork$22(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JlTPNbCmv3Ht5GArIbHJ33L1tdU(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$evaluateDataNetwork$11(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$KPjVlNBCQlnrbgLSl8qTvdbkMTM(Ljava/util/List;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$updateOverallInternetDataState$44(Ljava/util/List;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KgaFjlslTyNwFdtFlV8AWIIJ4iI(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$isDataDormant$15(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$MDndwg3maXxX1PV5vZguNBDHKVg(Ljava/lang/String;Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$isNetworkInterfaceExisting$18(Ljava/lang/String;Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$MvJmLluqs0RtFvjKGRj2pKoK3dw(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkSetupFailed$24(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$O4VJnSQ3zAkdytOrGOwUZE4FlW0(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$isDataDormant$14(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$OU4PBrK365wFU-47zcaPdXZqd-E(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$evaluateNetworkRequest$9(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$OtabJsONkZ8CUtmDtpOoYsvCDfw(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$isInternetUnmetered$8(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Q3bkTh3C2lh2rI33MvfrNRVeyyE(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$handleMessage$0(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QAGDFZhPQy7bP56j8_ow4puDM5M(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$evaluateDataNetwork$12(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$R5sAOgUG1WDp7nblAz6wrST2C7I(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$setupDataNetwork$23(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VEaJ3uPvHp33c0OIVpXBgsRWg-g(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onLinkStatusChanged$37(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Vq4HAFmS7MfspPHuPecz-al-tDg(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$evaluateDataNetworkHandover$13(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ZPqBflLwUxXGfEDiFjIDBSHpVqo(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onLinkStatusChanged$35(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$_G6VigDo4K0U3rYq2g1RoX5suTI(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataServiceBindingChanged$33(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aT6itP5UiecmxevR68UrgNvR2VA(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkDisconnected$31(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bQgqv1IX9vGuJ8P7Xn-Uh3GAb1Q(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkSetupFailed$26(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$cZgHtA5JnR106kqEu9Md7Vr1ug8(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onLinkStatusChanged$38(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cxjnJGHqCz6erSvEquHw2Wgexsc(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkDisconnected$30(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dABW_dXIMJSrWhcxMzPjWMzlgU8(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$handleMessage$5(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dQLHqvNwyaMsm7SVJgSjAOquYXk(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$isInternetUnmetered$7(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ftmIaMyfEaDXwf1obA9zdCRVeUY(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$handleMessage$3(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gjKHe7TV2nLp3NS5Uatm2t6z9ks(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$updateOverallInternetDataState$43(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hLx6XDeVh_lD7U18KQ6IBj2FIXM(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$findCompatibleDataNetworkAndAttach$6(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$i1hYks1gGLzSckNzkISpHsX-TXc(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onPcoDataChanged$39(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$i8JAxyWMq3yImPldIcV0LavIGCQ(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$handleMessage$4(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iFuXgChcEGEMfTK-RajHl9FPrg8(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$updateOverallInternetDataState$42(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$io9uvmi8DPsr0TSvczeOunVytoY(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$updateOverallInternetDataState$41(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$jucMnvz8sJeDsTshPwqeGEurjJU(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$findSatisfiableNetworkRequests$21(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$lLw6YgTEQ4yMZKFaZkRZuR4rtI0(ILcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataServiceBindingChanged$34(ILcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mXq3iUCrwVbD1cMa3hSF95y54LQ(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onDataNetworkValidationStatusChanged$28(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nK1LUploLg5NI3rrXIQs_dMA0wE(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onRemoveNetworkRequest$16(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$pnexJ5vLouhlUmmtjlkbTWlzZY0(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$findSatisfiableNetworkRequests$20(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$r7LZgn-y0Xtn7lIEay9cc5DyJTk(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$updateOverallInternetDataState$45(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uZ8VbQ33nAtY5tbPSYZyv8DszXQ(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$handleMessage$1(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yhx4yC6wMc3qn9ijbcRcg6G0qOo(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onReevaluateUnsatisfiedNetworkRequests$10(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$zn9sVpXrvZz3dOsdFMtKMEQkMng(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->lambda$onLinkStatusChanged$36(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccessNetworksManager(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/AccessNetworksManager;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsFeaturePackageName(Lcom/android/internal/telephony/data/DataNetworkController;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeaturePackageName:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegisteredImsFeatures(Lcom/android/internal/telephony/data/DataNetworkController;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubId(Lcom/android/internal/telephony/data/DataNetworkController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mevaluatePendingImsDeregDataNetworks(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluatePendingImsDeregDataNetworks()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAttachNetworkRequestsFailed(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->onAttachNetworkRequestsFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkConnected(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkConnected(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkDisconnected(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkDisconnected(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkHandoverFailed(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;IJI)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkHandoverFailed(Lcom/android/internal/telephony/data/DataNetwork;IJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkHandoverSucceeded(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkHandoverSucceeded(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkSetupFailed(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkSetupFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkSuspendedStateChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkSuspendedStateChanged(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataNetworkValidationStatusChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;ILandroid/net/Uri;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkValidationStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataStallReestablishInternet(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataStallReestablishInternet()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monEvaluatePreferredTransport(Lcom/android/internal/telephony/data/DataNetworkController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onEvaluatePreferredTransport(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->onLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNetworkCapabilitiesChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onNetworkCapabilitiesChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monPcoDataChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTrackNetworkUnwanted(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onTrackNetworkUnwanted()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterImsFeatureRegistrationState(Lcom/android/internal/telephony/data/DataNetworkController;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->registerImsFeatureRegistrationState(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtearDownGracefully(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterImsFeatureRegistrationState(Lcom/android/internal/telephony/data/DataNetworkController;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->unregisterImsFeatureRegistrationState(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDataActivity(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateDataActivity()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    const/4 v0, 0x1

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/DataNetworkController;->SUPPORTED_IMS_FEATURES:Ljava/util/Collection;

    .line 214
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    .line 215
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_PREFERRED_TRANSPORT_DELAY_MILLIS:J

    .line 218
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    .line 219
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_AFTER_CALL_END_DELAY_MILLIS:J

    const-wide/16 v1, 0x64

    .line 223
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_TAC_CHANGED_DELAY_MILLIS:J

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V
    .registers 15

    .line 769
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 227
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 237
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 241
    iput v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    .line 255
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    .line 262
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    .line 268
    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPreviousConnectedDataNetworkList:Ljava/util/List;

    const/4 v1, 0x0

    .line 288
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    .line 293
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 296
    iput v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetLinkStatus:I

    .line 299
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    .line 303
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPsRestricted:Z

    .line 306
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNrAdvancedCapableByPco:Z

    .line 312
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceBound:Landroid/util/SparseBooleanArray;

    .line 315
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    .line 318
    iput v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataActivity:I

    .line 323
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    .line 326
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    .line 329
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeaturePackageName:Landroid/util/SparseArray;

    .line 335
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingImsDeregDataNetworks:Ljava/util/Map;

    .line 343
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeatureRegistrationCallbacks:Landroid/util/SparseArray;

    .line 359
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingTearDownAllNetworks:Z

    .line 371
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$1;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 770
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DNC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLogTag:Ljava/lang/String;

    const-string v0, "DataNetworkController created."

    .line 772
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 775
    new-instance v1, Lcom/android/internal/telephony/data/DataServiceManager;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lcom/android/internal/telephony/data/DataServiceManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;I)V

    invoke-virtual {v5, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 777
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->isInLegacyMode()Z

    move-result v0

    if-nez v0, :cond_c5

    .line 778
    new-instance v0, Lcom/android/internal/telephony/data/DataServiceManager;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/android/internal/telephony/data/DataServiceManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;I)V

    invoke-virtual {v5, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 782
    :cond_c5
    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/data/DataConfigManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 785
    new-instance v1, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 786
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyImsReleaseRequestThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    .line 787
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyImsReleaseRequestThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {v1, v3, v4, v6}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 788
    new-instance v1, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 789
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkUnwantedThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    .line 790
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkUnwantedThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {v1, v3, v4, v6}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 791
    new-instance v1, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 792
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    .line 793
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {v1, v3, v4, v6}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWlanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 794
    new-instance v1, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 795
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    .line 796
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {v1, v3, v4, v0}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWwanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 799
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    const-class v1, Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 800
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 799
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$2;

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController$2;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    .line 801
    invoke-virtual {v0, p1, p0, p2, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeDataSettingsManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 844
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    const-class v1, Lcom/android/internal/telephony/data/DataProfileManager;

    .line 845
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 844
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v6

    .line 847
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/internal/telephony/data/DataServiceManager;

    new-instance v11, Lcom/android/internal/telephony/data/DataNetworkController$3;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v11, p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController$3;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    move-object v7, p1

    move-object v8, p0

    move-object v10, p2

    .line 846
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeDataProfileManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)Lcom/android/internal/telephony/data/DataProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 859
    new-instance v0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    .line 860
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/internal/telephony/data/DataServiceManager;

    new-instance v11, Lcom/android/internal/telephony/data/DataNetworkController$4;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v11, p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController$4;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataStallRecoveryManager:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    .line 867
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager;

    new-instance v7, Lcom/android/internal/telephony/data/DataNetworkController$5;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v7, p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController$5;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    move-object v2, v0

    move-object v3, p1

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/data/DataRetryManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/util/SparseArray;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    .line 907
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/telephony/ims/ImsManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/ims/ImsManager;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    .line 908
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/net/NetworkPolicyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkPolicyManager;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 912
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    const/16 p1, 0x13

    .line 916
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private blacklist evaluateDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;
    .registers 11

    .line 1631
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;-><init>(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    .line 1633
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p2

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 1635
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 1636
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-object v0

    .line 1641
    :cond_1e
    iget p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    if-eq p2, v1, :cond_27

    .line 1642
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->SIM_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1646
    :cond_27
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->isInCdmaEcm()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 1647
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->CDMA_EMERGENCY_CALLBACK_MODE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1652
    :cond_34
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->isOnlySingleDataNetworkAllowed(I)Z

    move-result p2

    if-eqz p2, :cond_82

    .line 1653
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p2

    const/4 v1, 0x4

    .line 1654
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    if-nez p2, :cond_82

    .line 1657
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda38;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1658
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda39;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda39;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1661
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_69

    .line 1662
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ONLY_ALLOWED_SINGLE_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_82

    .line 1665
    :cond_69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluateDataNetwork: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has the highest priority. No need to tear down"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1672
    :cond_82
    :goto_82
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object p2

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x21

    aput v4, v2, v3

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->get([I)Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    move-result-object p2

    const/4 v2, 0x2

    if-eqz p2, :cond_ca

    .line 1676
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->shouldDelayImsTearDown()Z

    move-result p2

    if-nez p2, :cond_c5

    .line 1677
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result p2

    if-ne p2, v1, :cond_ca

    .line 1678
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v2, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p2

    if-eqz p2, :cond_ca

    .line 1682
    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p2

    if-eqz p2, :cond_ca

    .line 1683
    invoke-virtual {p2}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v3

    if-eqz v3, :cond_ca

    .line 1684
    invoke-virtual {p2}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result p2

    if-nez p2, :cond_ca

    .line 1685
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->VOPS_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_ca

    :cond_c5
    const-string p2, "Ignored VoPS check due to delay IMS tear down until call ends."

    .line 1691
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1697
    :cond_ca
    :goto_ca
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    .line 1702
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-eqz v3, :cond_e6

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v3

    if-nez v3, :cond_e6

    .line 1703
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ROAMING_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1710
    :cond_e6
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v3

    .line 1711
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v4

    .line 1712
    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v5

    if-eqz v5, :cond_152

    .line 1714
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 1716
    invoke-static {v5, v4}, Lcom/android/internal/telephony/data/DataUtils;->getHighestPriorityNetworkCapabilityFromDataProfile(Lcom/android/internal/telephony/data/DataConfigManager;Landroid/telephony/data/DataProfile;)I

    move-result v5

    .line 1715
    invoke-static {v5}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result v5

    .line 1714
    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result p2

    xor-int/2addr p2, v1

    if-eqz v3, :cond_152

    .line 1722
    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/telephony/data/ApnSetting;->canSupportLingeringNetworkType(I)Z

    move-result v5

    if-nez v5, :cond_152

    .line 1723
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "networkType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", networkTypeBitmask="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1725
    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", lingeringNetworkTypeBitmask="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getLingeringNetworkTypeBitmask()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1723
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1728
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_NETWORK_TYPE_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    :cond_152
    if-eqz p2, :cond_159

    .line 1734
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1740
    :cond_159
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 1741
    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    if-eqz v3, :cond_16a

    .line 1742
    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v3

    goto :goto_16b

    :cond_16a
    const/4 v3, 0x0

    .line 1743
    :goto_16b
    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v5

    .line 1740
    invoke-virtual {p2, v3, v5}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfile(Ljava/lang/String;Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile;

    move-result-object p2

    if-nez p2, :cond_17a

    .line 1744
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_PROFILE_INVALID:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1748
    :cond_17a
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result p2

    if-eqz p2, :cond_195

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 1749
    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/data/DataProfileManager;->isDataProfilePreferred(Landroid/telephony/data/DataProfile;)Z

    move-result p2

    if-nez p2, :cond_195

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 1750
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataProfileManager;->isAnyPreferredDataProfileExisting()Z

    move-result p2

    if-eqz p2, :cond_195

    .line 1751
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_PROFILE_NOT_PREFERRED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1755
    :cond_195
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result p2

    if-nez p2, :cond_1a1

    .line 1757
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_1fd

    .line 1758
    :cond_1a1
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsHardDisallowedReasons()Z

    move-result p2

    if-nez p2, :cond_1fd

    .line 1762
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result p2

    if-nez p2, :cond_1b7

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result p2

    if-eqz p2, :cond_1c3

    :cond_1b7
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isEmergencySupl()Z

    move-result p2

    if-eqz p2, :cond_1c3

    .line 1764
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_1fd

    .line 1765
    :cond_1c3
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p2

    const/16 v3, 0xd

    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    if-nez p2, :cond_1d5

    .line 1768
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->RESTRICTED_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_1fd

    .line 1769
    :cond_1d5
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result p2

    if-ne p2, v2, :cond_1e1

    .line 1771
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_1fd

    .line 1773
    :cond_1e1
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 1774
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 1775
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    .line 1773
    invoke-virtual {p2, v2, v3}, Lcom/android/internal/telephony/data/DataConfigManager;->isAnyMeteredCapability([IZ)Z

    move-result p2

    xor-int/2addr p2, v1

    if-eqz p2, :cond_1fd

    .line 1777
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 1782
    :cond_1fd
    :goto_1fd
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Evaluated "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist evaluateDataNetworkHandover(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataEvaluation;
    .registers 10

    .line 1818
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation;

    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_HANDOVER:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;-><init>(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    .line 1819
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1820
    sget-object p0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ILLEGAL_STATE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    return-object v0

    .line 1824
    :cond_19
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->isAnyHandoverRetryScheduled(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1825
    sget-object p0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RETRY_SCHEDULED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    return-object v0

    .line 1830
    :cond_27
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isEnhancedIwlanHandoverCheckEnabled()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_80

    .line 1831
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result v1

    .line 1832
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v2, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    if-eqz v1, :cond_80

    .line 1836
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 1837
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_IN_SERVICE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1842
    :cond_4b
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v3

    .line 1843
    invoke-virtual {v3}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda29;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda29;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 1845
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v1

    if-eqz v1, :cond_79

    .line 1847
    invoke-virtual {v1}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v3

    if-eqz v3, :cond_79

    .line 1848
    invoke-virtual {v1}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result v1

    if-nez v1, :cond_79

    .line 1849
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->VOPS_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1854
    :cond_79
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v1

    if-eqz v1, :cond_80

    return-object v0

    .line 1860
    :cond_80
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isIwlanHandoverPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_173

    .line 1861
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getHandoverRules()Ljava/util/List;

    move-result-object v1

    .line 1864
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v3

    .line 1863
    invoke-static {v3}, Lcom/android/internal/telephony/data/DataUtils;->networkTypeToAccessNetworkType(I)I

    move-result v3

    .line 1866
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v4

    .line 1865
    invoke-static {v4}, Lcom/android/internal/telephony/data/DataUtils;->networkTypeToAccessNetworkType(I)I

    move-result v4

    .line 1867
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 1868
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "evaluateDataNetworkHandover: source="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1869
    invoke-static {v3}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    invoke-static {v4}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", ServiceState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", capabilities="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1868
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1875
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e8
    :goto_e8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;

    .line 1878
    iget-boolean v6, v5, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->isOnlyForRoaming:Z

    if-eqz v6, :cond_101

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v6

    if-nez v6, :cond_101

    goto :goto_e8

    .line 1884
    :cond_101
    iget-object v6, v5, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->sourceAccessNetworks:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e8

    iget-object v6, v5, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->targetAccessNetworks:Ljava/util/Set;

    .line 1885
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e8

    .line 1889
    iget-object v6, v5, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->networkCapabilities:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_135

    iget-object v6, v5, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->networkCapabilities:Ljava/util/Set;

    .line 1890
    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    .line 1891
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda30;

    invoke-direct {v7, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda30;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_e8

    .line 1892
    :cond_135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluateDataNetworkHandover: Matched "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1893
    iget p1, v5, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;->type:I

    if-ne p1, v2, :cond_153

    .line 1894
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_ALLOWED_BY_POLICY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_158

    .line 1897
    :cond_153
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 1899
    :goto_158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluateDataNetworkHandover: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-object v0

    :cond_16d
    const-string p1, "evaluateDataNetworkHandover: Did not find matching rule."

    .line 1904
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_178

    :cond_173
    const-string p1, "evaluateDataNetworkHandover: IWLAN handover policy not enabled."

    .line 1906
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1910
    :goto_178
    sget-object p0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    return-object v0
.end method

.method private blacklist evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;
    .registers 9

    .line 1389
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;-><init>(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    .line 1390
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 1391
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getApnTypeNetworkCapability()I

    move-result v2

    .line 1390
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v1

    const/16 v2, 0xa

    .line 1394
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1395
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 1396
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 1397
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v1

    .line 1396
    invoke-virtual {p2, p1, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Landroid/telephony/data/DataProfile;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataEvaluation;->setCandidateDataProfile(Landroid/telephony/data/DataProfile;)V

    .line 1398
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setEvaluation(Lcom/android/internal/telephony/data/DataEvaluation;)V

    .line 1399
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-object v0

    .line 1403
    :cond_34
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->serviceStateAllowsPSAttach(Landroid/telephony/ServiceState;I)Z

    move-result v3

    if-nez v3, :cond_41

    .line 1404
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_IN_SERVICE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1408
    :cond_41
    iget v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    if-eq v3, v2, :cond_4a

    .line 1409
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->SIM_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1413
    :cond_4a
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result v2

    if-nez v2, :cond_57

    .line 1414
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_CONFIG_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1418
    :cond_57
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_76

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1419
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v2

    if-nez v2, :cond_76

    .line 1420
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    :cond_76
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_a5

    const/16 v4, 0x21

    .line 1426
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 1427
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v2, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    if-eqz v4, :cond_a5

    .line 1430
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v4

    if-eqz v4, :cond_a5

    .line 1431
    invoke-virtual {v4}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v5

    if-eqz v5, :cond_a5

    .line 1432
    invoke-virtual {v4}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result v4

    if-nez v4, :cond_a5

    .line 1433
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->VOPS_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1440
    :cond_a5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    .line 1439
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_b4

    .line 1441
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1445
    :cond_b4
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    if-eqz v4, :cond_c9

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v4

    if-nez v4, :cond_c9

    .line 1446
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ROAMING_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1450
    :cond_c9
    iget-boolean v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPsRestricted:Z

    if-eqz v4, :cond_d2

    .line 1451
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_RESTRICTED_BY_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1455
    :cond_d2
    iget-boolean v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingTearDownAllNetworks:Z

    if-eqz v4, :cond_db

    .line 1456
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->PENDING_TEAR_DOWN_ALL:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    :cond_db
    if-ne v1, v3, :cond_f8

    .line 1462
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1463
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v4

    if-eqz v4, :cond_f3

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1464
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v4

    if-eq v4, v3, :cond_f8

    .line 1465
    :cond_f3
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RADIO_POWER_OFF:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1469
    :cond_f8
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->getPowerStateFromCarrier()Z

    move-result v4

    if-nez v4, :cond_109

    .line 1470
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1474
    :cond_109
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceBound:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_116

    .line 1475
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_SERVICE_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1479
    :cond_116
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->isInCdmaEcm()Z

    move-result v4

    if-eqz v4, :cond_123

    .line 1480
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->CDMA_EMERGENCY_CALLBACK_MODE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1485
    :cond_123
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isOnlySingleDataNetworkAllowed(I)Z

    move-result v4

    if-eqz v4, :cond_146

    const/4 v4, 0x4

    .line 1486
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_146

    .line 1488
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda28;

    invoke-direct {v5}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda28;-><init>()V

    .line 1489
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_146

    .line 1491
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ONLY_ALLOWED_SINGLE_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1496
    :cond_146
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataInitialized()Z

    move-result v4

    if-eqz v4, :cond_164

    .line 1497
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 1498
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getApnTypeNetworkCapability()I

    move-result v5

    .line 1497
    invoke-static {v5}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v4

    if-nez v4, :cond_169

    .line 1499
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_169

    .line 1502
    :cond_164
    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_SETTINGS_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1506
    :cond_169
    :goto_169
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v4

    if-nez v4, :cond_191

    .line 1507
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 1509
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result v2

    if-nez v2, :cond_1d6

    const/4 v2, 0x0

    .line 1510
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    .line 1511
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMmsAlwaysAllowed()Z

    move-result v2

    if-eqz v2, :cond_1d6

    .line 1515
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->MMS_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_1d6

    .line 1517
    :cond_191
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsHardDisallowedReasons()Z

    move-result v4

    if-nez v4, :cond_1d6

    .line 1518
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v4

    if-nez v4, :cond_1a7

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v4

    if-eqz v4, :cond_1b3

    .line 1519
    :cond_1a7
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_1b3

    .line 1521
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_1d6

    :cond_1b3
    const/16 v4, 0xd

    .line 1522
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_1c1

    .line 1525
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->RESTRICTED_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_1d6

    :cond_1c1
    if-ne v1, v2, :cond_1c9

    .line 1528
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_1d6

    :cond_1c9
    if-ne v1, v3, :cond_1d6

    .line 1530
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->isMeteredRequest()Z

    move-result v2

    if-nez v2, :cond_1d6

    .line 1531
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataAllowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    .line 1537
    :cond_1d6
    :goto_1d6
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 1538
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Landroid/telephony/data/DataProfile;

    move-result-object v2

    if-nez v2, :cond_1e8

    .line 1540
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NO_SUITABLE_DATA_PROFILE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_20f

    .line 1541
    :cond_1e8
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->NEW_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-ne p2, v3, :cond_202

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    .line 1542
    invoke-virtual {v3, v2, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->isAnySetupRetryScheduled(Landroid/telephony/data/DataProfile;I)Z

    move-result v3

    if-nez v3, :cond_1fc

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    .line 1543
    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->isSimilarNetworkRequestRetryScheduled(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z

    move-result v3

    if-eqz v3, :cond_202

    .line 1548
    :cond_1fc
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RETRY_SCHEDULED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    goto :goto_20f

    .line 1549
    :cond_202
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {v3, v2, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->isDataProfileThrottled(Landroid/telephony/data/DataProfile;I)Z

    move-result v3

    if-eqz v3, :cond_20f

    .line 1550
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_THROTTLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 1553
    :cond_20f
    :goto_20f
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v3

    if-nez v3, :cond_218

    .line 1554
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataEvaluation;->setCandidateDataProfile(Landroid/telephony/data/DataProfile;)V

    .line 1557
    :cond_218
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setEvaluation(Lcom/android/internal/telephony/data/DataEvaluation;)V

    .line 1559
    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EXTERNAL_QUERY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-eq p2, v2, :cond_25c

    .line 1560
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", network type="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reg state="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1564
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataRegistrationState(Landroid/telephony/ServiceState;I)I

    move-result v1

    .line 1563
    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1560
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    :cond_25c
    return-object v0
.end method

.method private blacklist evaluatePendingImsDeregDataNetworks()V
    .registers 5

    .line 3378
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingImsDeregDataNetworks:Ljava/util/Map;

    .line 3379
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3380
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 3381
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3382
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->isSafeToTearDown(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evaluatePendingImsDeregDataNetworks: Safe to tear down data network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3385
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " now."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3384
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3386
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3387
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 3389
    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Still not safe to tear down "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_a

    :cond_6a
    return-void
.end method

.method private blacklist findCompatibleDataNetworkAndAttach(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z
    .registers 6

    .line 1266
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 1267
    invoke-virtual {p1}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda32;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda32;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1268
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 1270
    invoke-interface {v2}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    .line 1271
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    if-eqz v2, :cond_2d

    goto :goto_6

    .line 1280
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found a compatible data network "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Attaching "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logv(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/data/DataNetwork;->attachNetworkRequests(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z

    move-result p0

    return p0

    :cond_4e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist findCompatibleDataNetworkAndAttach(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 3

    .line 1245
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->findCompatibleDataNetworkAndAttach(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z

    move-result p0

    return p0
.end method

.method private blacklist findSatisfiableNetworkRequests(Landroid/telephony/data/DataProfile;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;
    .registers 4

    .line 2307
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda50;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda50;-><init>()V

    .line 2308
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda51;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda51;-><init>(Landroid/telephony/data/DataProfile;)V

    .line 2310
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2311
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private blacklist getDataNetworkType(I)I
    .registers 3

    .line 3293
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 3296
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getDataRegistrationState(Landroid/telephony/ServiceState;I)I
    .registers 3

    const/4 p0, 0x2

    .line 3310
    invoke-virtual {p1, p0, p2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 3313
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result p0

    return p0

    :cond_c
    const/4 p0, 0x4

    return p0
.end method

.method private blacklist getGroupedUnsatisfiedNetworkRequests()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;",
            ">;"
        }
    .end annotation

    .line 1575
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    .line 1576
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1577
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getState()I

    move-result v2

    if-nez v2, :cond_b

    .line 1578
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    goto :goto_b

    .line 1581
    :cond_21
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->getGroupedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getTearDownReason(Lcom/android/internal/telephony/data/DataEvaluation;)I
    .registers 3

    .line 1922
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    .line 1923
    sget-object v0, Lcom/android/internal/telephony/data/DataNetworkController$13;->$SwitchMap$com$android$internal$telephony$data$DataEvaluation$DataDisallowedReason:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataEvaluation;->getDataDisallowedReasons()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_5c

    goto :goto_5a

    :pswitch_1d
    const/16 p0, 0x1d

    return p0

    :pswitch_20
    const/16 p0, 0x10

    return p0

    :pswitch_23
    const/16 p0, 0x1c

    return p0

    :pswitch_26
    const/16 p0, 0x1b

    return p0

    :pswitch_29
    const/16 p0, 0x1a

    return p0

    :pswitch_2c
    const/16 p0, 0x19

    return p0

    :pswitch_2f
    const/16 p0, 0x18

    return p0

    :pswitch_32
    const/16 p0, 0x17

    return p0

    :pswitch_35
    const/16 p0, 0x16

    return p0

    :pswitch_38
    const/4 p0, 0x6

    return p0

    :pswitch_3a
    const/16 p0, 0x15

    return p0

    :pswitch_3d
    const/16 p0, 0xa

    return p0

    :pswitch_40
    const/16 p0, 0xb

    return p0

    :pswitch_43
    const/16 p0, 0x14

    return p0

    :pswitch_46
    const/4 p0, 0x3

    return p0

    :pswitch_48
    const/16 p0, 0x8

    return p0

    :pswitch_4b
    const/4 p0, 0x2

    return p0

    :pswitch_4d
    const/16 p0, 0x13

    return p0

    :pswitch_50
    const/16 p0, 0x12

    return p0

    :pswitch_53
    const/16 p0, 0x11

    return p0

    :pswitch_56
    const/4 p0, 0x7

    return p0

    :pswitch_58
    const/4 p0, 0x4

    return p0

    :cond_5a
    :goto_5a
    return v1

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_58
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4b
        :pswitch_48
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
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
    .end packed-switch
.end method

.method private blacklist isDataDormant()Z
    .registers 3

    .line 1994
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda35;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda35;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    .line 1997
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda36;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private blacklist isImsGracefulTearDownSupported()Z
    .registers 5

    .line 3423
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getImsDeregistrationDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private blacklist isLegacyCs(I)Z
    .registers 3

    .line 1315
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkTypeToAccessNetworkType(I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x4

    if-ne p0, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :cond_f
    :goto_f
    return p1
.end method

.method private blacklist isOnlySingleDataNetworkAllowed(I)Z
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 p0, 0x0

    return p0

    .line 1327
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getNetworkTypesOnlySupportSingleDataNetwork()Ljava/util/List;

    move-result-object v0

    .line 1328
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isSafeToTearDown(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 6

    .line 3403
    sget-object v0, Lcom/android/internal/telephony/data/DataNetworkController;->SUPPORTED_IMS_FEATURES:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3404
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeaturePackageName:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 3406
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v3

    .line 3407
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->hasNetworkRequestsFromPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3408
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_38
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$evaluateDataNetwork$11(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 3

    .line 1658
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 1660
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getApnTypeNetworkCapability()I

    move-result p2

    .line 1659
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result p0

    if-ne p1, p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static synthetic blacklist lambda$evaluateDataNetwork$12(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 1661
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getPriority()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getPriority()I

    move-result p0

    if-le p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static synthetic blacklist lambda$evaluateDataNetworkHandover$13(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    const/16 v0, 0x21

    .line 1844
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$evaluateNetworkRequest$9(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 1489
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 v0, 0x4

    .line 1490
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic blacklist lambda$findCompatibleDataNetworkAndAttach$6(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 1269
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p0

    .line 1268
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic blacklist lambda$findSatisfiableNetworkRequests$20(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 1

    .line 2308
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getState()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static synthetic blacklist lambda$findSatisfiableNetworkRequests$21(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 2310
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$handleMessage$0(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 1

    .line 1110
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onSubscriptionPlanOverride()V

    return-void
.end method

.method private static synthetic blacklist lambda$handleMessage$1(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 1109
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$handleMessage$2(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 1

    .line 1130
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onSubscriptionPlanOverride()V

    return-void
.end method

.method private static synthetic blacklist lambda$handleMessage$3(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 1129
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$handleMessage$4(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 1

    .line 1144
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onSubscriptionPlanOverride()V

    return-void
.end method

.method private static synthetic blacklist lambda$handleMessage$5(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 1143
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$isDataDormant$14(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 1995
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static synthetic blacklist lambda$isDataDormant$15(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 1998
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkStatus()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private static synthetic blacklist lambda$isInternetUnmetered$7(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 1356
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static synthetic blacklist lambda$isInternetUnmetered$8(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 3

    .line 1358
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/16 v1, 0xb

    .line 1359
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1360
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/16 v0, 0x19

    .line 1361
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

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

.method private static synthetic blacklist lambda$isNetworkInterfaceExisting$17(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 1

    .line 2077
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic blacklist lambda$isNetworkInterfaceExisting$18(Ljava/lang/String;Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 2079
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    .line 2078
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$onDataNetworkDisconnected$30(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 2733
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onAnyDataNetworkExistingChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataNetworkDisconnected$31(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 2732
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda47;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataNetworkSetupFailed$24(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 2468
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onAnyDataNetworkExistingChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataNetworkSetupFailed$25(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 2467
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda33;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataNetworkSetupFailed$26(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 2471
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$onDataNetworkSetupRetry$27(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 2560
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic blacklist lambda$onDataNetworkValidationStatusChanged$28(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V
    .registers 2

    .line 2682
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onInternetDataNetworkValidationStatusChanged(I)V

    return-void
.end method

.method private static synthetic blacklist lambda$onDataNetworkValidationStatusChanged$29(ILcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 2681
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda46;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda46;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$onDataServiceBindingChanged$33(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V
    .registers 2

    .line 2854
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onDataServiceBound(I)V

    return-void
.end method

.method private static synthetic blacklist lambda$onDataServiceBindingChanged$34(ILcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 2853
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda31;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda31;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$onDataStallReestablishInternet$32(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    const/16 v0, 0xc

    .line 2838
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    return-void
.end method

.method private static synthetic blacklist lambda$onLinkStatusChanged$35(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 2968
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static synthetic blacklist lambda$onLinkStatusChanged$36(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 2971
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2972
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkStatus()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private synthetic blacklist lambda$onLinkStatusChanged$37(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 2982
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetLinkStatus:I

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onPhysicalLinkStatusChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onLinkStatusChanged$38(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 2981
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda37;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPcoDataChanged$39(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 3011
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNrAdvancedCapableByPco:Z

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onNrAdvancedCapableByPcoChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onPcoDataChanged$40(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 3010
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda48;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda48;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$onReevaluateUnsatisfiedNetworkRequests$10(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 1596
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object p0

    .line 1595
    invoke-static {p0}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilitiesToString([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$onRemoveNetworkRequest$16(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 2038
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$registerImsStateCallback$19(ILjava/lang/Integer;)Landroid/telephony/ims/ImsStateCallback;
    .registers 4

    .line 2165
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController$11;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;ILjava/lang/Integer;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$setupDataNetwork$22(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 2445
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onAnyDataNetworkExistingChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$setupDataNetwork$23(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 2444
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda49;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda49;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$updateOverallInternetDataState$41(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 3193
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3194
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private static synthetic blacklist lambda$updateOverallInternetDataState$42(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 2

    .line 3198
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3199
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

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

.method private static synthetic blacklist lambda$updateOverallInternetDataState$43(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;Ljava/util/List;)V
    .registers 3

    .line 3222
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda54;-><init>()V

    .line 3223
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 3224
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3221
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onInternetDataNetworkConnected(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic blacklist lambda$updateOverallInternetDataState$44(Ljava/util/List;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 3220
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda52;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda52;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$updateOverallInternetDataState$45(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 2

    .line 3228
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda53;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda53;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 3227
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 3483
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 3491
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 3507
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3508
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private blacklist onAddNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 4

    .line 1172
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLastImsOperationIsRelease:Z

    if-eqz v0, :cond_42

    const/4 v0, 0x0

    .line 1173
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLastImsOperationIsRelease:Z

    .line 1174
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLastReleasedImsRequestCapabilities:[I

    .line 1175
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v1

    .line 1174
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 1176
    invoke-virtual {v0}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->addOccurrence()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest;->getRequestorPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requested with same capabilities "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 1179
    invoke-virtual {v1}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->getFrequencyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ead6f8db-d2f2-4ed3-8da5-1d8560fe7daf"

    .line 1177
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :cond_42
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddNetworkRequest: Duplicate network request. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void

    .line 1187
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddNetworkRequest: added "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1188
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onSatisfyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void
.end method

.method private blacklist onAttachNetworkRequestsFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .registers 5

    .line 2824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to attach "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onDataConfigUpdated()V
    .registers 3

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConfigUpdated: config is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2246
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, ""

    goto :goto_17

    :cond_15
    const-string v1, "not "

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "carrier specific. mSimState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    .line 2248
    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->simStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". DeviceConfig updated."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2245
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2251
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateAnomalySlidingWindowCounters()V

    .line 2252
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateNetworkRequestsPriority()V

    const/4 v0, 0x5

    .line 2253
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_CONFIG_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist onDataNetworkConnected(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 4

    .line 2532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataNetworkConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 2533
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPreviousConnectedDataNetworkList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2535
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPreviousConnectedDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_29

    .line 2536
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPreviousConnectedDataNetworkList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2539
    :cond_29
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateOverallInternetDataState()V

    .line 2541
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 2543
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMS data state changed from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 2544
    invoke-static {v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to CONNECTED."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2543
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 2545
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    :cond_59
    return-void
.end method

.method private blacklist onDataNetworkDisconnected(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 5

    .line 2714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataNetworkDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2715
    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2714
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 2716
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2717
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingImsDeregDataNetworks:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2718
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->cancelPendingHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2719
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateOverallInternetDataState()V

    .line 2721
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_6c

    .line 2723
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMS data state changed from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 2724
    invoke-static {v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to DISCONNECTED."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2723
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 2725
    iput p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 2728
    :cond_6c
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    if-eqz p1, :cond_8b

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8b

    const-string p1, "All data networks disconnected now."

    .line 2729
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2730
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingTearDownAllNetworks:Z

    .line 2731
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    .line 2732
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda27;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda27;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_8b
    const/4 p1, 0x5

    .line 2738
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->RETRY_AFTER_DISCONNECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2740
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataConfigManager;->getRetrySetupAfterDisconnectMillis()J

    move-result-wide v0

    .line 2738
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist onDataNetworkHandoverFailed(Lcom/android/internal/telephony/data/DataNetwork;IJI)V
    .registers 13

    .line 2778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handover failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retryDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, handoverFailureMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2780
    invoke-static {p5}, Landroid/telephony/data/DataCallResponse;->failureModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2778
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 2783
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_HANDOVER:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2786
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2787
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onDataNetworkHandoverFailed: No network requests attached to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". No need to retry since the network will be torn down soon."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    :cond_63
    const/4 v0, 0x1

    if-eq p5, v0, :cond_96

    if-nez p5, :cond_6d

    const/16 v0, 0x8cb

    if-ne p2, v0, :cond_6d

    goto :goto_96

    :cond_6d
    const/4 v0, 0x3

    if-eq p5, v0, :cond_79

    if-nez p5, :cond_73

    goto :goto_79

    .line 2812
    :cond_73
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->evaluateDataHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;IJ)V

    goto :goto_a6

    .line 2805
    :cond_79
    :goto_79
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result p5

    invoke-static {p5}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result v2

    .line 2806
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 2807
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v3

    move v4, p2

    move-wide v5, p3

    .line 2806
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/data/DataRetryManager;->evaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    const/16 p2, 0xd

    .line 2810
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto :goto_a6

    :cond_96
    :goto_96
    const/16 p2, 0x15

    .line 2800
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result p1

    const/4 p3, 0x0

    .line 2799
    invoke-virtual {p0, p2, p1, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    sget-wide p2, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_PREFERRED_TRANSPORT_DELAY_MILLIS:J

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_a6
    return-void
.end method

.method private blacklist onDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 7

    .line 2612
    iget-object v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    .line 2613
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    const-string v3, "onDataNetworkHandoverRetry: "

    if-nez v1, :cond_28

    .line 2614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " no longer exists."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2615
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void

    .line 2619
    :cond_28
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-nez v1, :cond_49

    .line 2620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not in the right state."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2621
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void

    .line 2625
    :cond_49
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 2626
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v4

    .line 2625
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v1

    .line 2627
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v4

    if-ne v4, v1, :cond_80

    .line 2628
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is already on the preferred transport "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2629
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2628
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2631
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void

    .line 2635
    :cond_80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start handover "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2636
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2635
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 2638
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/data/DataNetwork;->startHandover(ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)Z

    return-void
.end method

.method private blacklist onDataNetworkHandoverSucceeded(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 4

    .line 2749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handover successfully. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2750
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2749
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 2755
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result p1

    const/16 v0, 0x15

    const/4 v1, 0x0

    .line 2754
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2759
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_HANDOVER:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist onDataNetworkSetupFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .registers 13

    .line 2460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataNetworkSetupDataFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2461
    invoke-static {p3}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retryDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2460
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 2462
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2463
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->trackSetupDataCallFailure(I)V

    .line 2464
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v0, 0x0

    .line 2465
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingTearDownAllNetworks:Z

    .line 2466
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    .line 2467
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda24;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 2471
    :cond_54
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda25;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2472
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_68

    const-string p1, "onDataNetworkSetupFailed: All requests have been released. Will not evaluate retry."

    .line 2473
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 2479
    :cond_68
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 2480
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v2

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .line 2479
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/data/DataRetryManager;->evaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    return-void
.end method

.method private blacklist onDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V
    .registers 7

    .line 2558
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    iget-object v1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    .line 2560
    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2561
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1f

    const-string v0, "onDataNetworkSetupRetry: Request list is empty. Abort retry."

    .line 2562
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    .line 2563
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void

    :cond_1f
    const/4 v1, 0x0

    .line 2566
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 2568
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getApnTypeNetworkCapability()I

    move-result v1

    .line 2569
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v1

    .line 2571
    iget v3, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->transport:I

    if-eq v1, v3, :cond_78

    .line 2572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot re-satisfy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " on "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->transport:I

    .line 2573
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". The preferred transport has switched to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2575
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2572
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2580
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    const/4 p1, 0x5

    .line 2581
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->PREFERRED_TRANSPORT_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 2586
    :cond_78
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_RETRY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v0

    .line 2588
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_a0

    .line 2589
    iget-object v1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    if-nez v1, :cond_8d

    .line 2591
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->getCandidateDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    :cond_8d
    if-eqz v1, :cond_97

    .line 2595
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataEvaluation;->getDataAllowedReason()Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    move-result-object v0

    .line 2594
    invoke-direct {p0, v1, p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->setupDataNetwork(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_a3

    :cond_97
    const-string v0, "onDataNetworkSetupRetry: Not able to find a suitable data profile to retry."

    .line 2597
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    .line 2598
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    goto :goto_a3

    .line 2601
    :cond_a0
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    :goto_a3
    return-void
.end method

.method private blacklist onDataNetworkSuspendedStateChanged(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .registers 4

    .line 2694
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateOverallInternetDataState()V

    .line 2696
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 2698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMS data state changed from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 2699
    invoke-static {v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2b

    const-string v0, "SUSPENDED"

    goto :goto_2d

    :cond_2b
    const-string v0, "CONNECTED"

    .line 2700
    :goto_2d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2698
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    if-eqz p2, :cond_3b

    const/4 p1, 0x3

    goto :goto_3c

    :cond_3b
    const/4 p1, 0x2

    .line 2702
    :goto_3c
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    :cond_3e
    return-void
.end method

.method private blacklist onDataNetworkValidationStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/net/Uri;)V
    .registers 7

    .line 2653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataNetworkValidationStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", validation status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2654
    invoke-static {p2}, Lcom/android/internal/telephony/data/DataUtils;->validationStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2d

    .line 2655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    :cond_2d
    const-string v1, ""

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2653
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2656
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 2657
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.CARRIER_SIGNAL_REDIRECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telephony.extra.REDIRECTION_URL"

    .line 2658
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2659
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    .line 2660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify carrier signal receivers with redirectUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    :cond_6c
    const/4 p3, 0x1

    const/4 v0, 0x2

    if-eq p2, p3, :cond_8c

    if-eq p2, v0, :cond_8c

    .line 2665
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid validation status "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " received."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void

    .line 2669
    :cond_8c
    iget-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {p3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isRecoveryOnBadNetworkEnabled()Z

    move-result p3

    if-nez p3, :cond_9a

    const-string p1, "Ignore data network validation status changed because data stall recovery is disabled."

    .line 2670
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 2675
    :cond_9a
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result p3

    if-eqz p3, :cond_be

    if-ne p2, v0, :cond_b4

    .line 2677
    invoke-virtual {p1}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p3

    if-eqz p3, :cond_ae

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result p1

    if-eqz p1, :cond_b4

    :cond_ae
    const-string p1, "Ignoring invalid validation status for disconnected DataNetwork"

    .line 2678
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 2681
    :cond_b4
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda26;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda26;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_be
    return-void
.end method

.method private blacklist onDataServiceBindingChanged(IZ)V
    .registers 5

    .line 2849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataServiceBindingChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2850
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data service is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1b

    const-string v1, "bound."

    goto :goto_1d

    :cond_1b
    const-string v1, "unbound."

    .line 2851
    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2849
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_33

    .line 2853
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda23;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda23;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 2856
    :cond_33
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceBound:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method private blacklist onDataStallReestablishInternet()V
    .registers 2

    const-string v0, "onDataStallReestablishInternet: Tear down data networks that support internet."

    .line 2832
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2836
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda8;-><init>()V

    .line 2837
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda16;-><init>()V

    .line 2838
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist onEvaluatePreferredTransport(I)V
    .registers 12

    .line 2892
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 2893
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v0

    .line 2894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvaluatePreferredTransport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " preferred on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2896
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2894
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2897
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_152

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/DataNetwork;

    .line 2898
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v4

    if-ne v4, p1, :cond_30

    .line 2901
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v4

    if-ne v4, v0, :cond_69

    .line 2902
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEvaluatePreferredTransport:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already on "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2903
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2902
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_30

    .line 2910
    :cond_69
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 2911
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " handover in progress."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_30

    .line 2915
    :cond_87
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateDataNetworkHandover(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v4

    .line 2916
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2917
    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v5

    if-nez v5, :cond_d1

    .line 2918
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start handover "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2918
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 2920
    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/data/DataNetwork;->startHandover(ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)Z

    goto/16 :goto_30

    :cond_d1
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 2921
    sget-object v6, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_ALLOWED_BY_POLICY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_IN_SERVICE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    sget-object v6, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->VOPS_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/data/DataEvaluation;->containsAny([Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result v5

    if-eqz v5, :cond_115

    .line 2924
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEvaluatePreferredTransport: Handover not allowed. Tear down "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " so a new network can be setup on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2926
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2924
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    const/16 v4, 0xe

    .line 2928
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto/16 :goto_30

    :cond_115
    new-array v5, v9, [Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 2930
    sget-object v6, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ILLEGAL_STATE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    aput-object v6, v5, v7

    sget-object v6, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RETRY_SCHEDULED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/data/DataEvaluation;->containsAny([Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result v4

    if-eqz v4, :cond_14b

    .line 2932
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEvaluatePreferredTransport: Handover not allowed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " will remain on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2934
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v3

    .line 2933
    invoke-static {v3}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2932
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_14b
    const-string v3, "onEvaluatePreferredTransport: Unexpected handover evaluation result."

    .line 2936
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_152
    return-void
.end method

.method private blacklist onLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 4

    .line 2967
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda17;

    invoke-direct {p2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda17;-><init>()V

    .line 2968
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 2971
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    .line 2970
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda18;

    invoke-direct {p2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda18;-><init>()V

    .line 2971
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x2

    goto :goto_27

    :cond_24
    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 2978
    :goto_27
    iget p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetLinkStatus:I

    if-eq p2, p1, :cond_4f

    .line 2979
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Internet link status changed to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->linkStatusToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2980
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetLinkStatus:I

    .line 2981
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda19;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda19;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 2985
    :cond_4f
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateDataActivity()V

    return-void
.end method

.method private blacklist onNetworkCapabilitiesChanged(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 6

    .line 3024
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    .line 3025
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 3026
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getState()I

    move-result v3

    if-nez v3, :cond_b

    .line 3027
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3028
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    goto :goto_b

    .line 3033
    :cond_2b
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_48

    .line 3034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found more network requests that can be satisfied. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3035
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->attachNetworkRequests(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z

    :cond_48
    return-void
.end method

.method private blacklist onPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 7

    .line 2995
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getNrAdvancedCapablePcoId()I

    move-result p1

    if-eqz p1, :cond_5e

    const/4 v0, 0x0

    .line 2998
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataNetwork;

    .line 2999
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataNetwork;->getPcoData()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PcoData;

    if-eqz v2, :cond_f

    .line 3000
    iget-object v2, v2, Landroid/telephony/PcoData;->contents:[B

    array-length v4, v2

    if-lez v4, :cond_f

    array-length v4, v2

    sub-int/2addr v4, v3

    aget-byte v2, v2, v4

    if-ne v2, v3, :cond_f

    move v0, v3

    .line 3007
    :cond_38
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNrAdvancedCapableByPco:Z

    if-eq v0, p1, :cond_5e

    .line 3008
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPcoDataChanged: mNrAdvancedCapableByPco = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNrAdvancedCapableByPco:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3009
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNrAdvancedCapableByPco:Z

    .line 3010
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda21;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_5e
    return-void
.end method

.method private blacklist onReevaluateExistingDataNetworks(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V
    .registers 6

    .line 1792
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "onReevaluateExistingDataNetworks: No existing data networks to re-evaluate."

    .line 1793
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 1796
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Re-evaluating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " existing data networks due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1798
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 1799
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1800
    :cond_4e
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v2

    .line 1801
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1802
    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetworkController;->getTearDownReason(Lcom/android/internal/telephony/data/DataEvaluation;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto :goto_36

    :cond_60
    return-void
.end method

.method private blacklist onReevaluateUnsatisfiedNetworkRequests(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V
    .registers 6

    .line 1591
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getGroupedUnsatisfiedNetworkRequests()Ljava/util/List;

    move-result-object v0

    .line 1592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re-evaluating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda13;

    invoke-direct {v3}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->sum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unsatisfied network requests in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " groups, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda14;

    invoke-direct {v3}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    const-string v3, ", "

    .line 1597
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1592
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1600
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_62
    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 1601
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->findCompatibleDataNetworkAndAttach(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z

    move-result v2

    if-eqz v2, :cond_75

    goto :goto_62

    :cond_75
    const/4 v2, 0x0

    .line 1608
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object v1

    .line 1609
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v2

    if-nez v2, :cond_62

    .line 1610
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataEvaluation;->getCandidateDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v2

    if-eqz v2, :cond_62

    const/4 v3, 0x0

    .line 1613
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataEvaluation;->getDataAllowedReason()Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    move-result-object v1

    .line 1612
    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->setupDataNetwork(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_62

    :cond_95
    return-void
.end method

.method private blacklist onRegisterAllEvents()V
    .registers 6

    .line 923
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 924
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    .line 925
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 926
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$6;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController$6;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->registerCallback(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V

    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$7;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$7;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerSubscriptionCallback(Landroid/net/NetworkPolicyManager$SubscriptionCallback;)V

    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForServiceStateChanged(Landroid/os/Handler;I)V

    .line 965
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/data/DataConfigManager;->registerForConfigUpdate(Landroid/os/Handler;I)V

    .line 966
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 968
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v0, p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 970
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/16 v3, 0x19

    invoke-virtual {v0, p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForAreaCodeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 971
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0x14

    invoke-virtual {v0, p0, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 972
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataServiceManager;

    const/16 v2, 0x8

    .line 973
    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->registerForServiceBindingChanged(Landroid/os/Handler;I)V

    .line 975
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->isInLegacyMode()Z

    move-result v0

    if-nez v0, :cond_97

    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForServiceStateChanged(Landroid/os/Handler;I)V

    .line 978
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataServiceManager;

    .line 979
    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->registerForServiceBindingChanged(Landroid/os/Handler;I)V

    .line 982
    :cond_97
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$8;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$8;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    .line 983
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 997
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_d2

    .line 998
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1001
    :cond_d2
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSlicingConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1003
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$9;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController$9;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->registerCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    return-void
.end method

.method private blacklist onRemoveNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 4

    .line 2037
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda22;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    .line 2038
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 2039
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    .line 2040
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    if-eqz p1, :cond_5c

    .line 2041
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_5c

    :cond_25
    const/4 v0, 0x4

    .line 2046
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2047
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->addOccurrence()Z

    .line 2048
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLastReleasedImsRequestCapabilities:[I

    const/4 v0, 0x1

    .line 2049
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLastImsOperationIsRelease:Z

    .line 2052
    :cond_3a
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getAttachedNetwork()Lcom/android/internal/telephony/data/DataNetwork;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 2053
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getAttachedNetwork()Lcom/android/internal/telephony/data/DataNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->detachNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    .line 2055
    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoveNetworkRequest: Removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    .line 2042
    :cond_5c
    :goto_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoveNetworkRequest: Network request does not exist. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onSatisfyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 4

    .line 1200
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already satisfied. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logv(Ljava/lang/String;)V

    return-void

    .line 1207
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->findCompatibleDataNetworkAndAttach(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v0

    if-eqz v0, :cond_23

    return-void

    .line 1214
    :cond_23
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->NEW_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object p1

    .line 1216
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1217
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataEvaluation;->getCandidateDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v0

    if-eqz v0, :cond_51

    const/4 v1, 0x0

    .line 1220
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataEvaluation;->getDataAllowedReason()Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    move-result-object p1

    .line 1219
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->setupDataNetwork(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V

    goto :goto_51

    .line 1222
    :cond_3e
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ONLY_ALLOWED_SINGLE_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataEvaluation;->contains(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result p1

    if-eqz p1, :cond_51

    const/16 p1, 0x10

    .line 1226
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SINGLE_DATA_NETWORK_ARBITRATION:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_51
    :goto_51
    return-void
.end method

.method private blacklist onServiceStateChanged()V
    .registers 14

    .line 3136
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 3137
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceStateChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3140
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_de

    .line 3141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceStateChanged: changed to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3142
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v2

    array-length v4, v2

    move v5, v3

    move v6, v5

    :goto_37
    if-ge v3, v4, :cond_da

    aget v7, v2, v3

    .line 3143
    iget-object v8, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v7}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v8

    .line 3145
    invoke-virtual {v0, v9, v7}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v9

    const-string v10, "["

    .line 3147
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3148
    invoke-static {v7}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v10

    .line 3147
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    .line 3148
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    if-eqz v8, :cond_63

    .line 3150
    invoke-virtual {v8}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v11

    .line 3149
    invoke-static {v11}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_64

    :cond_63
    move-object v11, v10

    :goto_64
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "->"

    .line 3151
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_77

    .line 3153
    invoke-virtual {v9}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v12

    .line 3152
    invoke-static {v12}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_78

    :cond_77
    move-object v12, v10

    .line 3151
    :goto_78
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    .line 3153
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_8b

    .line 3156
    invoke-virtual {v8}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v12

    .line 3155
    invoke-static {v12}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_8c

    :cond_8b
    move-object v12, v10

    .line 3154
    :goto_8c
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3157
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_9c

    .line 3159
    invoke-virtual {v9}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v10

    .line 3158
    invoke-static {v10}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v10

    .line 3157
    :cond_9c
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] "

    .line 3159
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3160
    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/data/DataNetworkController;->shouldReevaluateDataNetworks(Landroid/telephony/NetworkRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_bd

    const/16 v8, 0x10

    .line 3161
    invoke-virtual {p0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_bd

    .line 3162
    sget-object v6, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_SERVICE_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v6, v9

    .line 3167
    :cond_bd
    iget-object v8, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v8, v0, v7}, Lcom/android/internal/telephony/data/DataNetworkController;->shouldReevaluateNetworkRequests(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;I)Z

    move-result v7

    if-eqz v7, :cond_d6

    const/4 v7, 0x5

    .line 3168
    invoke-virtual {p0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_d6

    .line 3169
    sget-object v5, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_SERVICE_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v5, v9

    :cond_d6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_37

    .line 3175
    :cond_da
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move v3, v5

    goto :goto_e4

    :cond_de
    const-string v0, "not changed"

    .line 3177
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v3

    :goto_e4
    const-string v0, ". Evaluating network requests is "

    .line 3179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    const-string v2, "not "

    if-eqz v3, :cond_f1

    move-object v3, v0

    goto :goto_f2

    :cond_f1
    move-object v3, v2

    :goto_f2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "needed, evaluating existing data networks is "

    .line 3180
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_fd

    goto :goto_fe

    :cond_fd
    move-object v0, v2

    .line 3181
    :goto_fe
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "needed."

    .line 3182
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onSimAbsent()V
    .registers 3

    const-string v0, "onSimAbsent"

    .line 2863
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2864
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SIM_REMOVAL:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist onSimStateChanged(I)V
    .registers 4
    .param p1    # I
        .annotation build Landroid/telephony/TelephonyManager$SimState;
        .end annotation
    .end param

    .line 2874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->simStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2875
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    if-eq v0, p1, :cond_33

    .line 2876
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_25

    .line 2878
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onSimAbsent()V

    goto :goto_33

    :cond_25
    const/16 v0, 0xa

    if-ne p1, v0, :cond_33

    const/4 p1, 0x5

    .line 2880
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SIM_LOADED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_33
    :goto_33
    return-void
.end method

.method private blacklist onSubscriptionChanged()V
    .registers 3

    .line 2226
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_5a

    .line 2227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConfigUpdated: mSubId changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2228
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2227
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2229
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isImsGracefulTearDownSupported()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2230
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2231
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->registerImsStateCallback(I)V

    goto :goto_4f

    .line 2233
    :cond_4a
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->unregisterImsStateCallbacks(I)V

    .line 2236
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    .line 2237
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->updateSubscriptionPlans()V

    :cond_5a
    return-void
.end method

.method private blacklist onTrackNetworkUnwanted()V
    .registers 3

    .line 2292
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->addOccurrence()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network Unwanted called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 2294
    invoke-virtual {v1}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->getFrequencyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9f3bc55b-bfa6-4e26-afaa-5031426a66d3"

    .line 2293
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method private blacklist registerImsFeatureRegistrationState(II)V
    .registers 6

    .line 2091
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$10;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController$10;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;I)V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1b

    const/4 v1, 0x2

    if-eq p2, v1, :cond_c

    goto :goto_29

    .line 2118
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v1, v2, v0}, Landroid/telephony/ims/ImsRcsManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    goto :goto_29

    .line 2114
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v1, v2, v0}, Landroid/telephony/ims/ImsMmTelManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 2124
    :goto_29
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeatureRegistrationCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataUtils;->imsFeatureToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " registration state. subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V
    :try_end_4e
    .catch Landroid/telephony/ims/ImsException; {:try_start_c .. :try_end_4e} :catch_4f

    goto :goto_78

    :catch_4f
    move-exception v0

    .line 2128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsFeatureRegistrationStateListening: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", imsFeature="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2129
    invoke-static {p2}, Lcom/android/internal/telephony/data/DataUtils;->imsFeatureToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2128
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    :goto_78
    return-void
.end method

.method private blacklist registerImsStateCallback(I)V
    .registers 7

    .line 2164
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda45;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;I)V

    const/4 v1, 0x1

    .line 2188
    :try_start_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsStateCallback;

    .line 2189
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v3, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsMmTelManager;->registerImsStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsStateCallback;)V

    .line 2191
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully register MMTEL state on sub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 2194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStateCallback;

    .line 2195
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v2, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-virtual {v2, v3, v0}, Landroid/telephony/ims/ImsRcsManager;->registerImsStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsStateCallback;)V

    .line 2196
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully register RCS state on sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V
    :try_end_69
    .catch Landroid/telephony/ims/ImsException; {:try_start_6 .. :try_end_69} :catch_6a

    goto :goto_7f

    :catch_6a
    move-exception p1

    .line 2199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception when registering IMS state callback. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    :goto_7f
    return-void
.end method

.method private blacklist reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2522
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 2523
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    invoke-static {p2, p1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist serviceStateAllowsPSAttach(Landroid/telephony/ServiceState;I)Z
    .registers 5

    .line 1299
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataRegistrationState(Landroid/telephony/ServiceState;I)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2d

    const/4 v1, 0x5

    if-ne p2, v1, :cond_b

    goto :goto_2d

    .line 1305
    :cond_b
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result p2

    if-nez p2, :cond_2c

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1306
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v1

    if-eq p2, v1, :cond_2c

    .line 1307
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->isLegacyCs(I)Z

    move-result p0

    if-eqz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :cond_2d
    :goto_2d
    return v0
.end method

.method private blacklist setupDataNetwork(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V
    .registers 16

    .line 2325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetupDataNetwork: dataProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retryEntry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allowed reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", service state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2328
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 2329
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSetupDataNetwork: Found existing data network "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " has the same data profile."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_69

    .line 2333
    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    :cond_69
    return-void

    .line 2339
    :cond_6a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->findSatisfiableNetworkRequests(Landroid/telephony/data/DataProfile;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v8

    .line 2341
    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string p1, "Can\'t find any unsatisfied network requests that can be satisfied by this data profile."

    .line 2342
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_7e

    .line 2345
    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    :cond_7e
    return-void

    .line 2351
    :cond_7f
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    const/4 v1, 0x0

    .line 2352
    invoke-virtual {v8, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getApnTypeNetworkCapability()I

    move-result v1

    .line 2351
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v9

    .line 2353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating data network on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2354
    invoke-static {v9}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", and attaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2355
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " network requests to it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2353
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    .line 2357
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/internal/telephony/data/DataNetworkController$12;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-direct {v11, p0, v2, p2}, Lcom/android/internal/telephony/data/DataNetworkController$12;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    move-object v3, v1

    move-object v7, p1

    move-object v10, p3

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/telephony/data/DataNetwork;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Landroid/util/SparseArray;Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;ILcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2442
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    if-nez p1, :cond_f1

    const/4 p1, 0x1

    .line 2443
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    .line 2444
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda34;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda34;-><init>(Lcom/android/internal/telephony/data/DataNetworkController;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_f1
    return-void
.end method

.method private blacklist shouldReevaluateDataNetworks(Landroid/telephony/NetworkRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo;)Z
    .registers 6

    const/4 p0, 0x0

    if-eqz p1, :cond_55

    if-nez p2, :cond_6

    goto :goto_55

    .line 3049
    :cond_6
    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v0

    if-nez v0, :cond_d

    return p0

    .line 3055
    :cond_d
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_54

    .line 3056
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_54

    .line 3060
    :cond_25
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p1

    .line 3061
    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p2

    if-nez p2, :cond_30

    return p0

    :cond_30
    if-eqz p1, :cond_42

    .line 3064
    invoke-virtual {p1}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 3065
    invoke-virtual {p1}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 3066
    :cond_42
    invoke-virtual {p2}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p1

    if-eqz p1, :cond_53

    invoke-virtual {p2}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p1

    .line 3067
    invoke-virtual {p1}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result p1

    if-nez p1, :cond_53

    return v2

    :cond_53
    return p0

    :cond_54
    :goto_54
    return v2

    :cond_55
    :goto_55
    return p0
.end method

.method private blacklist shouldReevaluateNetworkRequests(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;I)Z
    .registers 10

    const/4 v0, 0x2

    .line 3087
    invoke-virtual {p1, v0, p3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 3089
    invoke-virtual {p2, v0, p3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    return v2

    .line 3093
    :cond_d
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v3

    if-nez v3, :cond_14

    return v2

    :cond_14
    const/4 v3, 0x1

    if-eqz v1, :cond_6a

    .line 3100
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v5

    if-ne v4, v5, :cond_6a

    .line 3101
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v4

    if-eqz v4, :cond_2e

    goto :goto_6a

    .line 3106
    :cond_2e
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->serviceStateAllowsPSAttach(Landroid/telephony/ServiceState;I)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 3107
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->serviceStateAllowsPSAttach(Landroid/telephony/ServiceState;I)Z

    move-result p0

    if-eqz p0, :cond_3b

    return v3

    .line 3111
    :cond_3b
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p0

    .line 3112
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p1

    if-nez p0, :cond_46

    return v2

    :cond_46
    if-eqz p1, :cond_58

    .line 3115
    invoke-virtual {p1}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p2

    if-eqz p2, :cond_58

    .line 3116
    invoke-virtual {p1}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result p1

    if-eqz p1, :cond_69

    .line 3117
    :cond_58
    invoke-virtual {p0}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p1

    if-eqz p1, :cond_69

    invoke-virtual {p0}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object p0

    .line 3118
    invoke-virtual {p0}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result p0

    if-nez p0, :cond_69

    return v3

    :cond_69
    return v2

    :cond_6a
    :goto_6a
    return v3
.end method

.method private blacklist tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 10

    .line 3432
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getImsDeregistrationDelay()J

    move-result-wide v0

    .line 3433
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isImsGracefulTearDownSupported()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->isSafeToTearDown(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 3434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tearDownGracefully: Not safe to tear down "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at this point. Wait for IMS de-registration or timeout. MMTEL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3436
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "registered"

    const-string v5, "not registered"

    if-eqz v3, :cond_37

    move-object v3, v4

    goto :goto_38

    :cond_37
    move-object v3, v5

    .line 3437
    :goto_38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", RCS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3439
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_4f

    :cond_4e
    move-object v4, v5

    .line 3440
    :goto_4f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3434
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3442
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDownWhenConditionMet(IJ)Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_65

    .line 3444
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingImsDeregDataNetworks:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 3446
    :cond_65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is being torn down already."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    goto :goto_91

    .line 3450
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tearDownGracefully: Safe to tear down "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3451
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    :goto_91
    return-void
.end method

.method private blacklist trackSetupDataCallFailure(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_31

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const-string p1, "trackSetupDataCallFailure: INVALID transport."

    .line 2511
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    goto :goto_62

    .line 2504
    :cond_c
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWlanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->addOccurrence()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 2505
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IWLAN data service fails setup data call request "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWlanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 2506
    invoke-virtual {v0}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->getFrequencyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "e2248d8b-d55f-42bd-871c-0cfd80c3ddd1"

    .line 2505
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 2493
    :cond_31
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    if-gt p1, v0, :cond_3e

    return-void

    .line 2497
    :cond_3e
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWwanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->addOccurrence()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 2498
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RIL fails setup data call request "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWwanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 2499
    invoke-virtual {v0}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->getFrequencyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "e6a98b97-9e34-4977-9a92-01d52a6691f6"

    .line 2498
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    :goto_62
    return-void
.end method

.method private blacklist unregisterImsFeatureRegistrationState(II)V
    .registers 5

    .line 2142
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeatureRegistrationCallbacks:Landroid/util/SparseArray;

    .line 2143
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-eqz v0, :cond_48

    const/4 v1, 0x1

    if-ne p2, v1, :cond_17

    .line 2146
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    .line 2147
    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsMmTelManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    goto :goto_23

    :cond_17
    const/4 v1, 0x2

    if-ne p2, v1, :cond_23

    .line 2149
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v1

    .line 2150
    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsRcsManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 2152
    :cond_23
    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully unregistered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataUtils;->imsFeatureToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " registration state. sudId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2154
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsFeatureRegistrationCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_48
    return-void
.end method

.method private blacklist unregisterImsStateCallbacks(I)V
    .registers 5

    .line 2209
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStateCallback;

    if-eqz v0, :cond_2d

    .line 2211
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v2, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/ims/ImsMmTelManager;->unregisterImsStateCallback(Landroid/telephony/ims/ImsStateCallback;)V

    .line 2212
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregister MMTEL state on sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 2216
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStateCallback;

    if-eqz v0, :cond_5a

    .line 2218
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v2, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/ims/ImsRcsManager;->unregisterImsStateCallback(Landroid/telephony/ims/ImsStateCallback;)V

    .line 2219
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsStateCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregister RCS state on sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    :cond_5a
    return-void
.end method

.method private blacklist updateAnomalySlidingWindowCounters()V
    .registers 5

    .line 2270
    new-instance v0, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2271
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyImsReleaseRequestThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2272
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyImsReleaseRequestThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 2273
    new-instance v0, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2274
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkUnwantedThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2275
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalyNetworkUnwantedThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 2276
    new-instance v0, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2277
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2278
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWwanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    .line 2279
    new-instance v0, Lcom/android/internal/telephony/SlidingWindowEventCounter;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2280
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2281
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SlidingWindowEventCounter;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSetupDataCallWlanFailureCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    return-void
.end method

.method private blacklist updateDataActivity()V
    .registers 4

    .line 2007
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isDataDormant()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_1c

    .line 2009
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2010
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataActivity()I

    move-result v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 2013
    :goto_1c
    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataActivity:I

    if-eq v1, v0, :cond_3f

    .line 2014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataActivity: dataActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->dataActivityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2014
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->logv(Ljava/lang/String;)V

    .line 2016
    iput v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataActivity:I

    .line 2017
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    :cond_3f
    return-void
.end method

.method private blacklist updateNetworkRequestsPriority()V
    .registers 2

    .line 2261
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 2262
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->updatePriority()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private blacklist updateOverallInternetDataState()V
    .registers 7

    .line 3192
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda40;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda40;-><init>()V

    .line 3193
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 3196
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda8;-><init>()V

    .line 3197
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda41;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda41;-><init>()V

    .line 3198
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 3200
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3201
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_49

    .line 3202
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda42;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda42;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x1

    goto :goto_4a

    :cond_49
    move v2, v3

    .line 3203
    :goto_4a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSuspended="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", anyInternetConnected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mDataNetworkList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->logv(Ljava/lang/String;)V

    const/4 v4, 0x2

    if-eqz v2, :cond_75

    const/4 v3, 0x3

    goto :goto_78

    :cond_75
    if-eqz v0, :cond_78

    move v3, v4

    .line 3213
    :cond_78
    :goto_78
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    if-eq v0, v3, :cond_ca

    .line 3214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internet data state changed from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    .line 3215
    invoke-static {v2}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3216
    invoke-static {v3}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3214
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->logl(Ljava/lang/String;)V

    if-ne v3, v4, :cond_b8

    .line 3218
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    if-nez v0, :cond_b8

    .line 3220
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda43;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda43;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_c8

    :cond_b8
    if-nez v3, :cond_c8

    .line 3225
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    if-ne v0, v4, :cond_c8

    .line 3227
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda44;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda44;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3230
    :cond_c8
    :goto_c8
    iput v3, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    :cond_ca
    return-void
.end method

.method private blacklist updateSubscriptionPlans()V
    .registers 4

    .line 2946
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubId:I

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2947
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2946
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    .line 2948
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2949
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    if-eqz v0, :cond_20

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_24

    :cond_20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_24
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2950
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2951
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscription plans initialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist addNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 3

    const/4 v0, 0x2

    .line 1162
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 3519
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3520
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3521
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p2, "Current data networks:"

    .line 3522
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3523
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3524
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 3525
    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataNetwork;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_40

    .line 3527
    :cond_50
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p2, "Pending tear down data networks:"

    .line 3529
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3530
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3531
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingImsDeregDataNetworks:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_65
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 3532
    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataNetwork;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_65

    .line 3534
    :cond_75
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p2, "Previously connected data networks: (up to 10)"

    .line 3536
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3538
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3539
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPreviousConnectedDataNetworkList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_86
    :goto_86
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 3541
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    .line 3542
    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataNetwork;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_86

    .line 3545
    :cond_9e
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p2, "All telephony network requests:"

    .line 3547
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3548
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3549
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_af
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 3550
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_af

    .line 3552
    :cond_bf
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3554
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS features registration state: MMTEL="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3555
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "registered"

    const-string v3, "not registered"

    if-eqz v1, :cond_df

    move-object v1, v2

    goto :goto_e0

    :cond_df
    move-object v1, v3

    .line 3556
    :goto_e0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", RCS="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3558
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mRegisteredImsFeatures:Ljava/util/Set;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f6

    goto :goto_f7

    :cond_f6
    move-object v2, v3

    .line 3559
    :goto_f7
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3554
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3560
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3561
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPsRestricted="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPsRestricted:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3562
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAnyDataNetworkExisting="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAnyDataNetworkExisting:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3563
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInternetDataNetworkState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    .line 3564
    invoke-static {v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3563
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3565
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImsDataNetworkState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsDataNetworkState:I

    .line 3566
    invoke-static {v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3565
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3567
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataServiceBound="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceBound:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3568
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSimState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSimState:I

    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->simStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3569
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataNetworkControllerCallbacks="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Subscription plans:"

    .line 3570
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3571
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3572
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 3573
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3574
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmetered override network types="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;-><init>()V

    .line 3575
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3574
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3576
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Congested override network types="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;-><init>()V

    .line 3577
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3576
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3578
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImsThrottleCounter="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mImsThrottleCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3579
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkUnwantedCounter="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mNetworkUnwantedCounter:Lcom/android/internal/telephony/SlidingWindowEventCounter;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Local logs:"

    .line 3580
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3581
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 3582
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3583
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p2, "-------------------------------------"

    .line 3585
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3586
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataProfileManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3587
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3588
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataRetryManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3589
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3590
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataSettingsManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3591
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3592
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataStallRecoveryManager:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3593
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3594
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/data/DataConfigManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3596
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getCongestedOverrideNetworkTypes()Ljava/util/Set;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3283
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    return-object p0
.end method

.method public blacklist getDataActivity()I
    .registers 1

    .line 3322
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataActivity:I

    return p0
.end method

.method public blacklist getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;
    .registers 1

    .line 3238
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    return-object p0
.end method

.method public blacklist getDataProfileManager()Lcom/android/internal/telephony/data/DataProfileManager;
    .registers 1

    .line 3245
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    return-object p0
.end method

.method public blacklist getDataRetryManager()Lcom/android/internal/telephony/data/DataRetryManager;
    .registers 1

    .line 3259
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    return-object p0
.end method

.method public blacklist getDataServicePackages()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3472
    :goto_6
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 3473
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataServiceManager;->getDataServicePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    return-object v0
.end method

.method public blacklist getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;
    .registers 1

    .line 3252
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataSettingsManager:Lcom/android/internal/telephony/data/DataSettingsManager;

    return-object p0
.end method

.method public blacklist getInternetDataDisallowedReasons()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;",
            ">;"
        }
    .end annotation

    .line 1369
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 1371
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1372
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 1373
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;)V

    .line 1374
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EXTERNAL_QUERY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object p0

    .line 1376
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataEvaluation;->getDataDisallowedReasons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getInternetDataNetworkState()I
    .registers 1

    .line 3464
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mInternetDataNetworkState:I

    return p0
.end method

.method public blacklist getSubscriptionPlans()Ljava/util/List;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation

    .line 3267
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getUnmeteredOverrideNetworkTypes()Ljava/util/Set;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3275
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 1015
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_202

    .line 1150
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    goto/16 :goto_201

    .line 1063
    :pswitch_22
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->TAC_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    sget-wide v0, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_TAC_CHANGED_DELAY_MILLIS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_201

    .line 1049
    :pswitch_2f
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SLICE_CONFIG_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_201

    .line 1113
    :pswitch_3a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1114
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_42

    move v1, v4

    goto :goto_43

    :cond_42
    move v1, v2

    .line 1115
    :goto_43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    const-string v3, ","

    const-string v5, ", networkTypes="

    if-ne v0, v4, :cond_a7

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unmetered subscription override: override="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda1;-><init>()V

    .line 1120
    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 1121
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1118
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1122
    array-length v0, p1

    :goto_7f
    if-ge v2, v0, :cond_9b

    aget v3, p1, v2

    if-eqz v1, :cond_8f

    .line 1124
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_98

    .line 1126
    :cond_8f
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mUnmeteredOverrideNetworkTypes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_98
    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    .line 1129
    :cond_9b
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_201

    :cond_a7
    const/4 v4, 0x2

    if-ne v0, v4, :cond_104

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Congested subscription override: override="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda1;-><init>()V

    .line 1134
    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 1135
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1132
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1136
    array-length v0, p1

    :goto_dc
    if-ge v2, v0, :cond_f8

    aget v3, p1, v2

    if-eqz v1, :cond_ec

    .line 1138
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f5

    .line 1140
    :cond_ec
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mCongestedOverrideNetworkTypes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_f5
    add-int/lit8 v2, v2, 0x1

    goto :goto_dc

    .line 1143
    :cond_f8
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_201

    .line 1146
    :cond_104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown override mask: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->loge(Ljava/lang/String;)V

    goto/16 :goto_201

    .line 1105
    :pswitch_11a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/telephony/SubscriptionPlan;

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscription plans changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1108
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mSubscriptionPlans:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1109
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_201

    .line 1102
    :pswitch_150
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onEvaluatePreferredTransport(I)V

    goto/16 :goto_201

    .line 1093
    :pswitch_157
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result p1

    if-eqz p1, :cond_16a

    .line 1094
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EMERGENCY_CALL_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_201

    .line 1097
    :cond_16a
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EMERGENCY_CALL_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_201

    .line 1020
    :pswitch_175
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onRegisterAllEvents()V

    goto/16 :goto_201

    .line 1039
    :pswitch_17a
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->VOICE_CALL_ENDED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1044
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    sget-wide v0, Lcom/android/internal/telephony/data/DataNetworkController;->REEVALUATE_UNSATISFIED_NETWORK_REQUESTS_AFTER_CALL_END_DELAY_MILLIS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_201

    .line 1090
    :pswitch_18e
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onServiceStateChanged()V

    goto/16 :goto_201

    .line 1030
    :pswitch_193
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 1031
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onReevaluateExistingDataNetworks(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    goto :goto_201

    .line 1087
    :pswitch_19b
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onSubscriptionChanged()V

    goto :goto_201

    .line 1084
    :pswitch_19f
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_201

    .line 1081
    :pswitch_1a9
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkControllerCallbacks:Ljava/util/Set;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_201

    .line 1078
    :pswitch_1b3
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onTearDownAllDataNetworks(I)V

    goto :goto_201

    .line 1074
    :pswitch_1b9
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1075
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onSimStateChanged(I)V

    goto :goto_201

    .line 1068
    :pswitch_1bf
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1069
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1070
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1071
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataServiceBindingChanged(IZ)V

    goto :goto_201

    .line 1056
    :pswitch_1d7
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPsRestricted:Z

    .line 1057
    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_RESTRICTED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_201

    .line 1053
    :pswitch_1e3
    iput-boolean v4, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPsRestricted:Z

    goto :goto_201

    .line 1026
    :pswitch_1e6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 1027
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onReevaluateUnsatisfiedNetworkRequests(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)V

    goto :goto_201

    .line 1034
    :pswitch_1ee
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onRemoveNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    goto :goto_201

    .line 1023
    :pswitch_1f6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onAddNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    goto :goto_201

    .line 1017
    :pswitch_1fe
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataConfigUpdated()V

    :goto_201
    return-void

    :pswitch_data_202
    .packed-switch 0x1
        :pswitch_1fe
        :pswitch_1f6
        :pswitch_1ee
        :pswitch_a
        :pswitch_1e6
        :pswitch_1e3
        :pswitch_1d7
        :pswitch_1bf
        :pswitch_1b9
        :pswitch_a
        :pswitch_a
        :pswitch_1b3
        :pswitch_1a9
        :pswitch_19f
        :pswitch_19b
        :pswitch_193
        :pswitch_18e
        :pswitch_17a
        :pswitch_175
        :pswitch_157
        :pswitch_150
        :pswitch_11a
        :pswitch_3a
        :pswitch_2f
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist isInternetDataAllowed()Z
    .registers 4

    .line 1341
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 1343
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1344
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 1345
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;)V

    .line 1346
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EXTERNAL_QUERY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->evaluateNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;)Lcom/android/internal/telephony/data/DataEvaluation;

    move-result-object p0

    .line 1348
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist isInternetNetwork(I)Z
    .registers 4

    .line 1979
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataNetwork;

    .line 1980
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getId()I

    move-result v1

    if-ne v1, p1, :cond_6

    .line 1981
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1982
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/16 v1, 0xc

    .line 1983
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInternetUnmetered()Z
    .registers 2

    .line 1355
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda7;-><init>()V

    .line 1356
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda8;-><init>()V

    .line 1357
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda9;-><init>()V

    .line 1358
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isNetworkInterfaceExisting(Ljava/lang/String;)Z
    .registers 3

    .line 2076
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda4;-><init>()V

    .line 2077
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    .line 2078
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isNetworkRequestExisting(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 2066
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mAllNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist onTearDownAllDataNetworks(I)V
    .registers 5

    .line 3360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTearDownAllDataNetworks: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDownReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    .line 3361
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string p1, "tearDownAllDataNetworks: No pending networks. All disconnected now."

    .line 3362
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->log(Ljava/lang/String;)V

    return-void

    :cond_26
    const/4 v0, 0x1

    .line 3366
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mPendingTearDownAllNetworks:Z

    .line 3367
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataNetwork;

    .line 3368
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 3369
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownGracefully(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto :goto_2f

    :cond_45
    return-void
.end method

.method public blacklist registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    const/16 v0, 0xd

    .line 3332
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist removeNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 3

    const/4 v0, 0x3

    .line 2030
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist tearDownAllDataNetworks(I)V
    .registers 4

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 3351
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist unregisterDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    const/16 v0, 0xe

    .line 3342
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
