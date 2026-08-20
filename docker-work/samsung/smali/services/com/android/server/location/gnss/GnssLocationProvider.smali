.class public abstract Lcom/android/server/location/gnss/GnssLocationProvider;
.super Lcom/android/server/location/provider/AbstractLocationProvider;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;
.implements Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$GnssSatelliteBlocklistCallback;
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssLocationProvider$SvCallback;,
        Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;
    }
.end annotation


# static fields
.field public static final AGPS_SUPL_MODE_MSA:I = 0x2

.field public static final AGPS_SUPL_MODE_MSB:I = 0x1

.field public static final DEBUG:Z = true

.field public static final DOWNLOAD_PSDS_DATA_TIMEOUT_MS:J = 0xea60L

.field public static final EMERGENCY_LOCATION_UPDATE_DURATION_MULTIPLIER:I = 0x3

.field public static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field public static final LOCATION_OFF_DELAY_THRESHOLD_ERROR_MILLIS:J = 0x3a98L

.field public static final LOCATION_OFF_DELAY_THRESHOLD_WARN_MILLIS:J = 0x7d0L

.field public static final LOCATION_UPDATE_DURATION_MILLIS:J = 0x2710L

.field public static final LOCATION_UPDATE_MIN_TIME_INTERVAL_MILLIS:J = 0x3e8L

.field public static final MAX_BATCH_LENGTH_MS:J = 0x5265c00L

.field public static final MAX_BATCH_TIMESTAMP_DELTA_MS:J = 0x1f4L

.field public static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field public static final MAX_SECGPS_DUMP_SIZE:I = 0x12c

.field public static final MAX_SECGPS_SIMHISTORY_DUMP_SIZE:I = 0x1e

.field public static final MIN_BATCH_INTERVAL_MS:I = 0x3e8

.field public static final NO_FIX_TIMEOUT:I = 0xea60

.field public static final PROPERTIES:Landroid/location/provider/ProviderProperties;

.field public static final RETRY_INTERVAL:J = 0x493e0L

.field public static final TAG:Ljava/lang/String; = "GnssLocationProvider"

.field public static final TCP_MAX_PORT:I = 0xffff

.field public static final TCP_MIN_PORT:I = 0x0

.field public static final VERBOSE:Z

.field public static final WAKELOCK_TIMEOUT_MILLIS:J = 0x7530L


# instance fields
.field public isExtraCommandFromAllowedAppRequest:Z

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mAutomotiveSuspend:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

.field public mBatchingEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mBatchingStarted:Z

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mC2KServerHost:Ljava/lang/String;

.field public mC2KServerPort:I

.field public final mClientSource:Landroid/os/WorkSource;

.field public final mContext:Landroid/content/Context;

.field public mDeleteAidingHistory:Ljava/lang/String;

.field public final mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mFixInterval:I

.field public mFixRequestTime:J

.field public final mFlushListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

.field public final mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

.field public mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final mGnssSatelliteBlocklistHelper:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

.field public mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

.field public mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

.field public mGpsEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public mLastFixTime:J

.field public mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

.field public final mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

.field public final mLock:Ljava/lang/Object;

.field public final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field public final mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public final mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

.field public final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field public final mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

.field public final mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

.field public final mPendingDownloadPsdsTypes:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPositionMode:I

.field public mProviderRequest:Landroid/location/provider/ProviderRequest;

.field public final mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mPsdsPeriodicDownloadToken:Ljava/lang/Object;

.field public final mSecGpsDump:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mSecGpsSimHistoryDump:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mShutdown:Z

.field public mSimSlotId:I

.field public mStarted:Z

.field public mStartedChangedElapsedRealtime:J

.field public mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public mSuplEsEnabled:Z

.field public mSuplServerHost:Ljava/lang/String;

.field public mSuplServerPort:I

.field public mSupportsPsds:Z

.field public mSvCallback:Lcom/android/server/location/gnss/GnssLocationProvider$SvCallback;

.field public mTimeToFirstFix:I

.field public final mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;


# direct methods
.method public static synthetic $r8$lambda$-Fd0adaF7RpZQa9Ww1D8sIXAhN0(Lcom/android/server/location/gnss/GnssLocationProvider;ZLandroid/location/Location;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onReportLocation$15(ZLandroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-PME8ZL8sG3USjmYPKRmOppFXaY(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleInitialize()V

    return-void
.end method

.method public static synthetic $r8$lambda$3G6fQXee3gaICwd5J3UURJphHBk(Lcom/android/server/location/gnss/GnssLocationProvider;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$handleDownloadPsdsData$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$40a89NFIWOdnjvxpsUxPo4tKoVg(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onExtraCommand$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$7ptxoHJJAasZaiaKGoJDtQcF37c(Lcom/android/server/location/gnss/GnssLocationProvider;I[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$handleDownloadPsdsData$3(I[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$9sSPMK2HhcdmHWjcYHg7YWQOhr8(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->onNetworkAvailable()V

    return-void
.end method

.method public static synthetic $r8$lambda$BlYoJrr9W8NLXKb8qeQTRJqhhg0(Lcom/android/server/location/gnss/GnssLocationProvider;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$startBatching$10(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$DM2jogNw2zqn2FJTIr0Ka-JQdtY(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->injectBestLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I3z4wufSltPA9tPB0gNWMMU18H0(Lcom/android/server/location/gnss/GnssLocationProvider;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$handleDownloadPsdsData$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NDT0mo-7GltqQP_hSgbbs2O9lgs(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$deleteAidingData$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$W2wQX1gYe3t6D2Hm_NEwnRQ8ut0(Lcom/android/server/location/gnss/GnssLocationProvider;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onRequestPsdsDownload$17(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wg-yoEB-VMU5sJo1WeAMRYSmm_Y(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->injectLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X56OQCeXikQTYclwmg2TOA-qN_k(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->startNavigating()V

    return-void
.end method

.method public static synthetic $r8$lambda$X6jrPaiGMSwBBIDUbUp7YSeMNi8(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/GnssStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onReportSvStatus$16(Landroid/location/GnssStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fXqWcoN2pIVsbZWB4pUp3Xp1CmA(Lcom/android/server/location/gnss/GnssLocationProvider;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$handleDownloadPsdsData$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$i0K6Hf2M9qbC9dyZzD6P9NP3Vyw(Lcom/android/server/location/gnss/GnssLocationProvider;[I[I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onUpdateSatelliteBlocklist$0([I[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iZbaMN6kmJERVk6bydXJVkR45Gs(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hibernate()V

    return-void
.end method

.method public static synthetic $r8$lambda$jXgOu6tYPwKweYUgWDvCPqM4lhY(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onCapabilitiesChanged$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$kM57fFuDWVVItPquyafBLS1cnmI(Landroid/location/Location;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$handleRequestLocation$2(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mLHmJVc7aM6qSVUtQhXM2kQ63vc(Lcom/android/server/location/gnss/GnssLocationProvider;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$postWithWakeLockHeld$12(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$psDCrDckf5m_N0A7dKPvNgtKsyw(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onHalRestarted$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$xCNQVG3DKZRjNQM3LoA9h_Xn4HY(Landroid/telephony/CellInfo;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$requestRefLocation$11(Landroid/telephony/CellInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xGFLA2O6P2KqnuEq94KswdMHYn0(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onRequestLocation$18(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$zmy1uYJuhljbO-awN0H3uxrKYmQ(Lcom/android/server/location/gnss/GnssLocationProvider;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onNetworkAvailable$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zoi80vYwvwGqxn3ikOy6qcY2UpU(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/provider/ProviderRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onSetRequest$7(Landroid/location/provider/ProviderRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSubscriptionManager(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/telephony/SubscriptionManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSuplEsEnabled(Lcom/android/server/location/gnss/GnssLocationProvider;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetTimestamp(Lcom/android/server/location/gnss/GnssLocationProvider;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getTimestamp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msubscriptionOrCarrierConfigChanged(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->subscriptionOrCarrierConfigChanged()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "GnssLocationProvider"

    const/4 v1, 0x2

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    .line 164
    new-instance v0, Landroid/location/provider/ProviderProperties$Builder;

    invoke-direct {v0}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    const/4 v1, 0x1

    .line 165
    invoke-virtual {v0, v1}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v1}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0, v1}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v1}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    const/4 v2, 0x3

    .line 169
    invoke-virtual {v0, v2}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0, v1}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 446
    invoke-direct {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>()V

    .line 265
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 272
    new-instance v0, Lcom/android/server/location/gnss/ExponentialBackOff;

    const-wide/32 v1, 0x493e0

    const-wide/32 v3, 0xdbba00

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/location/gnss/ExponentialBackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    const/16 v0, 0x3e8

    .line 291
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const-wide/16 v0, 0x0

    .line 299
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    const/4 v0, 0x0

    .line 301
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 305
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 309
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsPeriodicDownloadToken:Ljava/lang/Object;

    .line 312
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    .line 315
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    .line 318
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    const-string v1, "None"

    .line 321
    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDeleteAidingHistory:Ljava/lang/String;

    .line 324
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 328
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isExtraCommandFromAllowedAppRequest:Z

    .line 337
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerPort:I

    .line 340
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 342
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-direct {v1}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    .line 356
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 357
    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    .line 1539
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$4;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 447
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 448
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 449
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 450
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    const/4 p2, 0x0

    .line 451
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 452
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string p3, "alarm"

    .line 453
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AlarmManager;

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 454
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p3}, Lcom/android/server/location/gnss/hal/GnssNative;->getConfiguration()Lcom/android/server/location/gnss/GnssConfiguration;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 455
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 456
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 457
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    .line 458
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssSatelliteBlocklistHelper:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    .line 459
    const-class p3, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 460
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 461
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 462
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;Lcom/android/server/location/gnss/GnssMetrics;)V
    .registers 10

    .line 467
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p1}, Landroid/location/util/identity/CallerIdentity;->fromContext(Landroid/content/Context;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    .line 468
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 467
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    .line 265
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 272
    new-instance v0, Lcom/android/server/location/gnss/ExponentialBackOff;

    const-wide/32 v1, 0x493e0

    const-wide/32 v3, 0xdbba00

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/location/gnss/ExponentialBackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    const/16 v0, 0x3e8

    .line 291
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const-wide/16 v0, 0x0

    .line 299
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    const/4 v0, 0x0

    .line 301
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 305
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 309
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsPeriodicDownloadToken:Ljava/lang/Object;

    .line 312
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    .line 315
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 317
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    .line 318
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    const-string v2, "None"

    .line 321
    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDeleteAidingHistory:Ljava/lang/String;

    .line 324
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 328
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isExtraCommandFromAllowedAppRequest:Z

    .line 337
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerPort:I

    .line 340
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 342
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    .line 356
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 357
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 362
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    .line 1539
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$4;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    const-string v2, "GnssLocationProvider"

    const-string v3, "GnssLocationProvider()"

    .line 469
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 471
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 472
    iput-object p4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 475
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getNSConnectionHelper()Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 476
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getNSLocationProviderHelper()Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 480
    const-class p2, Landroid/os/PowerManager;

    .line 481
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 480
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Landroid/os/PowerManager;

    const/4 p3, 0x1

    const-string p4, "*location*:GnssLocationProvider"

    .line 482
    invoke-virtual {p2, p3, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 483
    invoke-virtual {p4, p3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string/jumbo p4, "telephony_subscription_service"

    .line 486
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/SubscriptionManager;

    iput-object p4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string p4, "*location*:PsdsDownload"

    .line 490
    invoke-virtual {p2, p3, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 492
    invoke-virtual {p2, p3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string p2, "alarm"

    .line 494
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 497
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    const-string p2, "batterystats"

    .line 500
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 504
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 511
    iget-object p4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p4}, Lcom/android/server/location/gnss/hal/GnssNative;->getConfiguration()Lcom/android/server/location/gnss/GnssConfiguration;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 513
    new-instance p4, Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-direct {p4, p1, v0, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object p4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 517
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p4}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;-><init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 521
    new-instance p4, Lcom/android/server/location/gnss/NtpTimeHelper;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, p1, v0, p0}, Lcom/android/server/location/gnss/NtpTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;)V

    iput-object p4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    .line 522
    new-instance p4, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    .line 524
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p4, p1, p2, p0}, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$GnssSatelliteBlocklistCallback;)V

    iput-object p4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssSatelliteBlocklistHelper:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    .line 526
    invoke-virtual {p0, p3}, Lcom/android/server/location/provider/AbstractLocationProvider;->setAllowed(Z)V

    .line 528
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 529
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addLocationCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;)V

    .line 530
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addSvStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;)V

    .line 531
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setAGpsCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;)V

    .line 532
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setPsdsCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;)V

    .line 533
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setNotificationCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;)V

    .line 534
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setLocationRequestCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;)V

    .line 535
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setTimeCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;)V

    return-void
.end method

.method public static getCellType(Landroid/telephony/CellInfo;)I
    .registers 2

    .line 1633
    instance-of v0, p0, Landroid/telephony/CellInfoGsm;

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 1635
    :cond_6
    instance-of v0, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_c

    const/4 p0, 0x4

    return p0

    .line 1637
    :cond_c
    instance-of v0, p0, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_12

    const/4 p0, 0x3

    return p0

    .line 1639
    :cond_12
    instance-of p0, p0, Landroid/telephony/CellInfoNr;

    if-eqz p0, :cond_18

    const/4 p0, 0x6

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J
    .registers 7

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 1653
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-eq v2, v3, :cond_2f

    if-eq v2, v4, :cond_27

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1f

    const/4 v3, 0x4

    if-eq v2, v3, :cond_17

    move-wide v2, v0

    goto :goto_37

    .line 1658
    :cond_17
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    goto :goto_36

    .line 1661
    :cond_1f
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    goto :goto_36

    .line 1664
    :cond_27
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v2

    goto :goto_37

    .line 1655
    :cond_2f
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    :goto_36
    int-to-long v2, v2

    .line 1670
    :goto_37
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getType()I

    move-result p0

    if-ne p0, v4, :cond_43

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_46

    :cond_43
    const-wide/32 v4, 0x7fffffff

    :goto_46
    cmp-long p0, v2, v4

    if-nez p0, :cond_4b

    goto :goto_4c

    :cond_4b
    move-wide v0, v2

    :goto_4c
    return-wide v0
.end method

.method private synthetic lambda$deleteAidingData$9()V
    .registers 2

    const-string v0, "XTRA_THROTTLE=0"

    .line 1251
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleDownloadPsdsData$3(I[B)V
    .registers 5

    const/16 v0, 0x1be

    .line 796
    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    const-string v0, "GnssLocationProvider"

    const-string v1, "calling native_inject_psds_data"

    .line 798
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setXtraDownloadedTime()V

    .line 802
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    array-length v1, p2

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectPsdsData([BII)V

    .line 803
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 804
    :try_start_18
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/ExponentialBackOff;->reset()V

    .line 805
    monitor-exit p1

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method private synthetic lambda$handleDownloadPsdsData$4(I)V
    .registers 2

    .line 813
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void
.end method

.method private synthetic lambda$handleDownloadPsdsData$5(I)V
    .registers 2

    .line 825
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void
.end method

.method private synthetic lambda$handleDownloadPsdsData$6(I)V
    .registers 10

    .line 785
    new-instance v0, Lcom/android/server/location/gnss/GnssPsdsDownloader;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 786
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/location/gnss/GnssPsdsDownloader;-><init>(Ljava/util/Properties;)V

    .line 789
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    sget-object v2, Landroid/location/LocationConstants$STATE_TYPE;->XTRA:Landroid/location/LocationConstants$STATE_TYPE;

    const/4 v3, 0x1

    .line 790
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    .line 789
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->reportProviderStatus(Landroid/location/LocationConstants$STATE_TYPE;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 793
    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->downloadPsdsData(I)[B

    move-result-object v1

    if-eqz v1, :cond_61

    .line 795
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I[B)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 807
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_75

    const-string v4, "android.hardware.type.watch"

    .line 808
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    if-ne p1, v3, :cond_75

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 810
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssConfiguration;->isPsdsPeriodicDownloadEnabled()Z

    move-result v2

    if-eqz v2, :cond_75

    const-string v2, "GnssLocationProvider"

    const-string/jumbo v3, "scheduling next long term Psds download"

    .line 811
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsPeriodicDownloadToken:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 813
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsPeriodicDownloadToken:Ljava/lang/Object;

    const-wide/32 v6, 0x5265c00

    invoke-virtual {v2, v3, p1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_75

    .line 822
    :cond_61
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 823
    :try_start_64
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {v3}, Lcom/android/server/location/gnss/ExponentialBackOff;->nextBackoffMillis()J

    move-result-wide v3

    .line 824
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_b4

    .line 825
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_75
    :goto_75
    if-eqz v1, :cond_79

    const/4 p1, 0x2

    goto :goto_7a

    :cond_79
    const/4 p1, 0x3

    :goto_7a
    if-eqz v1, :cond_7d

    goto :goto_85

    .line 830
    :cond_7d
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->getFailReason()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 831
    :goto_85
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    sget-object v1, Landroid/location/LocationConstants$STATE_TYPE;->XTRA:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1, v5}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->reportProviderStatus(Landroid/location/LocationConstants$STATE_TYPE;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 836
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 837
    :try_start_93
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 840
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string p0, "GnssLocationProvider"

    const-string v0, "WakeLock released by handleDownloadPsdsData()"

    .line 841
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    :cond_a8
    const-string p0, "GnssLocationProvider"

    const-string v0, "WakeLock expired before release in handleDownloadPsdsData()"

    .line 843
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :goto_af
    monitor-exit p1

    return-void

    :catchall_b1
    move-exception p0

    monitor-exit p1
    :try_end_b3
    .catchall {:try_start_93 .. :try_end_b3} :catchall_b1

    throw p0

    :catchall_b4
    move-exception p0

    .line 824
    :try_start_b5
    monitor-exit v2
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw p0
.end method

.method public static synthetic lambda$handleRequestLocation$2(Landroid/location/Location;)V
    .registers 1

    return-void
.end method

.method private synthetic lambda$onCapabilitiesChanged$14()V
    .registers 2

    .line 1849
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GnssCapabilities;->hasOnDemandTime()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1850
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/NtpTimeHelper;->enablePeriodicTimeInjection()V

    .line 1851
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->requestUtcTime()V

    .line 1854
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->restartLocationRequest()V

    return-void
.end method

.method private synthetic lambda$onExtraCommand$8()V
    .registers 2

    const/4 v0, 0x1

    .line 1210
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void
.end method

.method private synthetic lambda$onHalRestarted$13()V
    .registers 2

    .line 1836
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    .line 1837
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 1838
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 1839
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 1840
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->restartLocationRequest()V

    :cond_13
    return-void
.end method

.method private synthetic lambda$onNetworkAvailable$1(I)V
    .registers 2

    .line 656
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void
.end method

.method private synthetic lambda$onReportLocation$15(ZLandroid/location/Location;)V
    .registers 3

    .line 1860
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportLocation(ZLandroid/location/Location;)V

    return-void
.end method

.method private synthetic lambda$onReportSvStatus$16(Landroid/location/GnssStatus;)V
    .registers 2

    .line 1921
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportSvStatus(Landroid/location/GnssStatus;)V

    return-void
.end method

.method private synthetic lambda$onRequestLocation$18(ZZ)V
    .registers 3

    .line 1982
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleRequestLocation(ZZ)V

    return-void
.end method

.method private synthetic lambda$onRequestPsdsDownload$17(I)V
    .registers 2

    .line 1936
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData(I)V

    return-void
.end method

.method private synthetic lambda$onSetRequest$7(Landroid/location/provider/ProviderRequest;)V
    .registers 2

    .line 1034
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateRequirements()V

    return-void
.end method

.method private synthetic lambda$onUpdateSatelliteBlocklist$0([I[I)V
    .registers 3

    .line 373
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssConfiguration;->setSatelliteBlocklist([I[I)V

    return-void
.end method

.method private synthetic lambda$postWithWakeLockHeld$12(Ljava/lang/Runnable;)V
    .registers 2

    .line 1776
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    .line 1778
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_9
    move-exception p1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1779
    throw p1
.end method

.method public static synthetic lambda$requestRefLocation$11(Landroid/telephony/CellInfo;)I
    .registers 1

    .line 1731
    invoke-virtual {p0}, Landroid/telephony/CellInfo;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$startBatching$10(J)V
    .registers 12

    .line 1370
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1371
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    .line 1373
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p1

    const-string v6, "GnssLocationProvider"

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    .line 1375
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 1373
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 1377
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_26

    if-eqz v1, :cond_25

    .line 1380
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->flushBatch()V

    :cond_25
    return-void

    :catchall_26
    move-exception p0

    .line 1377
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private requestRefLocation()V
    .registers 13

    .line 1721
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 1722
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1724
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const-string v2, "GnssLocationProvider"

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 1746
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-ne v1, v4, :cond_d9

    .line 1727
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d3

    .line 1729
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1730
    new-instance v6, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;

    invoke-direct {v6}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v6}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v6

    .line 1731
    invoke-interface {v6}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v6

    .line 1730
    invoke-interface {v0, v6}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1733
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_38
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CellInfo;

    .line 1734
    invoke-virtual {v6}, Landroid/telephony/CellInfo;->getCellConnectionStatus()I

    move-result v7

    if-eq v7, v4, :cond_4c

    if-ne v7, v3, :cond_38

    .line 1737
    :cond_4c
    invoke-virtual {v6}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v7

    .line 1738
    invoke-static {v6}, Lcom/android/server/location/gnss/GnssLocationProvider;->getCellType(Landroid/telephony/CellInfo;)I

    move-result v6

    .line 1739
    invoke-static {v7}, Lcom/android/server/location/gnss/GnssLocationProvider;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_38

    .line 1740
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_38

    .line 1741
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 1746
    :cond_70
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1748
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentity;

    .line 1747
    invoke-virtual {p0, v4, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setRefLocation(ILandroid/telephony/CellIdentity;)V

    goto :goto_e0

    :cond_80
    const/4 v0, 0x4

    .line 1749
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 1751
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentity;

    .line 1750
    invoke-virtual {p0, v3, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setRefLocation(ILandroid/telephony/CellIdentity;)V

    goto :goto_e0

    :cond_99
    const/4 v3, 0x3

    .line 1752
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 1754
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellIdentity;

    .line 1753
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setRefLocation(ILandroid/telephony/CellIdentity;)V

    goto :goto_e0

    :cond_b2
    const/4 v0, 0x6

    .line 1755
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    const/16 v2, 0x8

    .line 1757
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentity;

    .line 1756
    invoke-virtual {p0, v2, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setRefLocation(ILandroid/telephony/CellIdentity;)V

    goto :goto_e0

    :cond_cd
    const-string p0, "No available serving cell information."

    .line 1759
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    :cond_d3
    const-string p0, "Error getting cell location info."

    .line 1762
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    :cond_d9
    if-ne v1, v3, :cond_e0

    const-string p0, "CDMA not supported."

    .line 1765
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e0
    :goto_e0
    return-void
.end method


# virtual methods
.method public abstract changeNlpAccuracyInForce(Landroid/location/Location;)V
.end method

.method public final deleteAidingData(Landroid/os/Bundle;)V
    .registers 5

    const v0, 0xffff

    if-nez p1, :cond_12

    .line 1226
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-nez p1, :cond_9c

    const v0, 0xfffd

    goto/16 :goto_9c

    :cond_12
    const-string v1, "ephemeris"

    .line 1231
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "almanac"

    .line 1232
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    or-int/lit8 v1, v1, 0x2

    :cond_22
    const-string/jumbo v2, "position"

    .line 1233
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    or-int/lit8 v1, v1, 0x4

    :cond_2d
    const-string/jumbo v2, "time"

    .line 1234
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    or-int/lit8 v1, v1, 0x8

    :cond_38
    const-string/jumbo v2, "iono"

    .line 1235
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    or-int/lit8 v1, v1, 0x10

    :cond_43
    const-string/jumbo v2, "utc"

    .line 1236
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    or-int/lit8 v1, v1, 0x20

    :cond_4e
    const-string/jumbo v2, "health"

    .line 1237
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    or-int/lit8 v1, v1, 0x40

    :cond_59
    const-string/jumbo v2, "svdir"

    .line 1238
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    or-int/lit16 v1, v1, 0x80

    :cond_64
    const-string/jumbo v2, "svsteer"

    .line 1239
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    or-int/lit16 v1, v1, 0x100

    :cond_6f
    const-string/jumbo v2, "sadata"

    .line 1240
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    or-int/lit16 v1, v1, 0x200

    :cond_7a
    const-string/jumbo v2, "rti"

    .line 1241
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    or-int/lit16 v1, v1, 0x400

    :cond_85
    const-string v2, "celldb-info"

    .line 1242
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    const v2, 0x8000

    or-int/2addr v1, v2

    :cond_91
    const-string v2, "all"

    .line 1243
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9b

    or-int/2addr v0, v1

    goto :goto_9c

    :cond_9b
    move v0, v1

    :cond_9c
    :goto_9c
    if-eqz v0, :cond_a3

    .line 1247
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->deleteAidingData(I)V

    .line 1250
    :cond_a3
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 1251
    new-instance p1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    :cond_b3
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 1791
    :cond_2
    array-length v2, p3

    if-ge v1, v2, :cond_23

    .line 1792
    aget-object v2, p3, v1

    if-eqz v2, :cond_23

    .line 1793
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_23

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_18

    goto :goto_23

    :cond_18
    add-int/lit8 v1, v1, 0x1

    const-string v3, "-a"

    .line 1797
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 1803
    :cond_23
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   (changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1804
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v1, " ago)"

    .line 1806
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBatchingEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBatchingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBatchSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getBatchSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFixInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1811
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics;->dumpGnssMetricsAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_108

    .line 1813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSupportsPsds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PsdsServerConfigured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 1815
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConfiguration;->isLongTermPsdsServerConfigured()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1814
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "native internal state: "

    .line 1816
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->getInternalState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_108
    const-string v0, "\nSEC Dump for updateRequirements"

    .line 1821
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "SEC Dump for Deleting aiding data"

    .line 1823
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDeleteAidingHistory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "SEC Dump for sim state history"

    .line 1825
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1829
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssLocationProvider;->dumpSec(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public abstract dumpSec(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public getBatchSize()I
    .registers 2

    .line 1010
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isSupportGnssBatching()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1013
    :cond_8
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->getBatchSize()I

    move-result p0

    return p0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .registers 1

    .line 1573
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object p0
.end method

.method public abstract getPositionModeSec(ILandroid/location/provider/ProviderRequest;)I
.end method

.method public final getSuplMode(Z)I
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    .line 884
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {p1, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplMode(I)I

    move-result p1

    if-nez p1, :cond_c

    return v0

    .line 891
    :cond_c
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMsb()Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-eqz p1, :cond_1d

    return p0

    :cond_1d
    return v0
.end method

.method public final getTimestamp()Ljava/lang/String;
    .registers 2

    .line 2026
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    const-string v0, "[yyyy-MM-dd HH:mm:ss]"

    .line 2025
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 2026
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract gnssConfigurationUpdateSec(Ljava/lang/String;)V
.end method

.method public handleDisable()V
    .registers 3

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "handleDisable"

    .line 953
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 955
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 956
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 957
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 958
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopBatching()V

    .line 960
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz v1, :cond_21

    .line 961
    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onGpsEnabledChanged(Z)V

    .line 964
    :cond_21
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->cleanupBatching()V

    .line 965
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->cleanup()V

    .line 966
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->initLocationOff()Z

    return-void
.end method

.method public final handleDownloadPsdsData(I)V
    .registers 7

    :try_start_0
    const-string/jumbo v0, "persist.sys.xtra_time"

    .line 752
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string/jumbo v3, "user"

    .line 754
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    if-eqz v0, :cond_40

    iget-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isExtraCommandFromAllowedAppRequest:Z

    if-nez v3, :cond_40

    .line 755
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1499700

    cmp-long v0, v1, v3

    if-gez v0, :cond_30

    const-string v0, "GnssLocationProvider"

    const-string v1, "Ignore xtra download request"

    .line 757
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_30
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "xtra download request accepted from FW"

    .line 760
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_40

    :catch_39
    const-string v0, "GnssLocationProvider"

    const-string v1, "NumberFormatException while using parseLong."

    .line 764
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_40
    :goto_40
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    if-nez v0, :cond_4d

    const-string p0, "GnssLocationProvider"

    const-string/jumbo p1, "handleDownloadPsdsData() called when PSDS not supported"

    .line 769
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 772
    :cond_4d
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_66

    .line 774
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_58
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 776
    monitor-exit v0

    return-void

    :catchall_63
    move-exception p0

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_63

    throw p0

    .line 779
    :cond_66
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 781
    :try_start_69
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 782
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_89

    const-string v0, "GnssLocationProvider"

    const-string v1, "WakeLock acquired by handleDownloadPsdsData()"

    .line 783
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 849
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isExtraCommandFromAllowedAppRequest:Z

    return-void

    :catchall_89
    move-exception p0

    .line 782
    :try_start_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw p0
.end method

.method public handleEnable()V
    .registers 4

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "handleEnable"

    .line 926
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->init()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    const/4 v0, 0x1

    .line 931
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 932
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->isPsdsSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    .line 935
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setSuplServerSec()V

    .line 938
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isSupportGnssBatching()Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 939
    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->initBatching()Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->getBatchSize()I

    move-result v1

    if-le v1, v0, :cond_37

    move v2, v0

    :cond_37
    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingEnabled:Z

    .line 940
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz v1, :cond_49

    .line 941
    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onGpsEnabledChanged(Z)V

    goto :goto_49

    .line 944
    :cond_41
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    const-string v1, "Failed to enable location provider"

    .line 945
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_54

    .line 948
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleEnableSec()V

    :cond_54
    return-void
.end method

.method public abstract handleEnableSec()V
.end method

.method public final handleInitialize()V
    .registers 6

    .line 565
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->isGnssVisibilityControlSupported()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 566
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/gnss/GnssVisibilityControl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 572
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    .line 575
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 576
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 577
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$3;

    invoke-direct {v2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$3;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 620
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->registerNetworkCallbacks()V

    .line 623
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    .line 624
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 623
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/location/LocationManager;

    .line 625
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "network"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 626
    new-instance v1, Landroid/location/LocationRequest$Builder;

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v1, v3, v4}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const-wide/16 v3, 0x0

    .line 629
    invoke-virtual {v1, v3, v4}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 630
    invoke-virtual {v1, v3}, Landroid/location/LocationRequest$Builder;->setHiddenFromAppOps(Z)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    .line 631
    invoke-virtual {v1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v1

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 626
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 636
    :cond_7d
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    return-void
.end method

.method public final handleReportLocation(ZLandroid/location/Location;)V
    .registers 8

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "reportLocation"

    .line 1421
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    :try_start_12
    new-array v1, v1, [Landroid/location/Location;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 1427
    invoke-static {v1}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_22} :catch_f5

    .line 1433
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v1, :cond_50

    .line 1434
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {v1, p1}, Lcom/android/server/location/gnss/GnssMetrics;->logReceivedLocationStatus(Z)V

    if-eqz p1, :cond_84

    .line 1436
    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1437
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result p2

    invoke-virtual {v1, p2}, Lcom/android/server/location/gnss/GnssMetrics;->logPositionAccuracyMeters(F)V

    .line 1439
    :cond_3c
    iget p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    if-lez p2, :cond_84

    .line 1440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v1, v3

    long-to-int p2, v1

    .line 1441
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v2, p2}, Lcom/android/server/location/gnss/GnssMetrics;->logMissedReports(II)V

    goto :goto_84

    .line 1448
    :cond_50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long p2, v1, v3

    if-lez p2, :cond_84

    .line 1450
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected GNSS Location report "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " after location turned off"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v3, 0x3a98

    cmp-long v1, v1, v3

    if-lez v1, :cond_81

    .line 1454
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 1456
    :cond_81
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_84
    :goto_84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 1463
    iget p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    if-nez p2, :cond_b7

    if-eqz p1, :cond_b7

    .line 1464
    iget-wide p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    sub-long/2addr v1, p1

    long-to-int p1, v1

    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1465
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TTFF: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz p1, :cond_b7

    .line 1467
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    iget p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {p1, p2}, Lcom/android/server/location/gnss/GnssMetrics;->logTimeToFirstFixMilliSecs(I)V

    .line 1471
    :cond_b7
    iget-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz p1, :cond_d5

    .line 1476
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result p1

    if-nez p1, :cond_d5

    iget p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const p2, 0xea60

    if-ge p1, p2, :cond_d5

    .line 1477
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1481
    :cond_d5
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result p1

    if-nez p1, :cond_f4

    iget-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz p1, :cond_f4

    iget p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const/16 p2, 0x2710

    if-le p1, p2, :cond_f4

    const-string/jumbo p1, "got fix, hibernating"

    .line 1483
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hibernate()V

    :cond_f4
    return-void

    :catch_f5
    move-exception p0

    .line 1429
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-void
.end method

.method public final handleReportSvStatus(Landroid/location/GnssStatus;)V
    .registers 8

    .line 1490
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssMetrics;->logCn0(Landroid/location/GnssStatus;)V

    .line 1492
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_23

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SV count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 1499
    :goto_27
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v4

    if-ge v0, v4, :cond_56

    .line 1500
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v4

    if-eqz v4, :cond_53

    add-int/lit8 v1, v1, 0x1

    .line 1502
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_43

    .line 1503
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v3

    float-to-int v3, v3

    :cond_43
    int-to-float v2, v2

    .line 1505
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 1506
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/location/gnss/GnssMetrics;->logConstellationType(I)V

    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_56
    if-lez v1, :cond_59

    .line 1510
    div-int/2addr v2, v1

    .line 1513
    :cond_59
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportSvStatusSec(Landroid/location/GnssStatus;)V

    .line 1515
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSvCallback:Lcom/android/server/location/gnss/GnssLocationProvider$SvCallback;

    if-eqz v0, :cond_63

    .line 1516
    invoke-interface {v0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvCallback;->onSvCallback(Landroid/location/GnssStatus;)V

    .line 1522
    :cond_63
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->set(III)V

    .line 1524
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssMetrics;->logSvStatus(Landroid/location/GnssStatus;)V

    return-void
.end method

.method public abstract handleReportSvStatusSec(Landroid/location/GnssStatus;)V
.end method

.method public final handleRequestLocation(ZZ)V
    .registers 14

    .line 664
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isRequestLocationRateLimited()Z

    move-result v0

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_e

    const-string p0, "RequestLocation is denied due to too frequent requests."

    .line 666
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 670
    :cond_e
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v2, 0x2710

    const-string/jumbo v4, "gnss_hal_location_request_duration_millis"

    .line 671
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_29

    const-string p0, "GNSS HAL location request is disabled by Settings."

    .line 676
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 680
    :cond_29
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "location"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 684
    new-instance v4, Landroid/location/LocationRequest$Builder;

    const-wide/16 v5, 0x3e8

    invoke-direct {v4, v5, v6}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const/4 v5, 0x1

    .line 685
    invoke-virtual {v4, v5}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v4

    if-nez p1, :cond_56

    .line 687
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isDeviceBasedHybridSupported()Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_56

    .line 697
    :cond_49
    new-instance p1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda18;

    invoke-direct {p1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    const/16 v6, 0x64

    .line 698
    invoke-virtual {v4, v6}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    const-string v6, "fused"

    goto :goto_63

    .line 691
    :cond_56
    :goto_56
    new-instance p1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda17;

    invoke-direct {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda17;-><init>()V

    const/16 v6, 0x68

    .line 693
    invoke-virtual {v4, v6}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    const-string/jumbo v6, "network"

    .line 703
    :goto_63
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v7

    const/4 v8, 0x2

    if-nez v7, :cond_72

    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->isKOREmergency(Z)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 704
    :cond_72
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 705
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getHalInterfaceVersion()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    move-result-object p0

    if-nez p2, :cond_7e

    .line 706
    iget p0, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    if-ge p0, v8, :cond_84

    .line 707
    :cond_7e
    invoke-virtual {v4, v5}, Landroid/location/LocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;

    const-wide/16 v9, 0x3

    mul-long/2addr v2, v9

    .line 712
    :cond_84
    invoke-virtual {v4, v2, v3}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    new-array p0, v8, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v6, p0, p2

    .line 717
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p0, v5

    const-string p2, "GNSS HAL Requesting location updates from %s provider for %d millis."

    .line 715
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 714
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {v0, v6}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object p0

    if-eqz p0, :cond_aa

    .line 720
    invoke-virtual {v4}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p0

    sget-object p2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v6, p0, p2, p1}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    :cond_aa
    return-void
.end method

.method public final hibernate()V
    .registers 10

    .line 1414
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 1415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1416
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    int-to-long v3, v3

    add-long v4, v0, v3

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-string v6, "GnssLocationProvider"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final injectBestLocation(Landroid/location/Location;)V
    .registers 4

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "injectBestLocation: "

    .line 727
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {p1}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 735
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->changeNlpAccuracyInForce(Landroid/location/Location;)V

    .line 738
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectBestLocation(Landroid/location/Location;)V

    return-void
.end method

.method public final injectLocation(Landroid/location/Location;)V
    .registers 3

    .line 853
    invoke-virtual {p1}, Landroid/location/Location;->isMock()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 855
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 858
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->changeNlpAccuracyInForce(Landroid/location/Location;)V

    .line 860
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectLocation(Landroid/location/Location;)V

    :cond_1f
    return-void
.end method

.method public injectTime(JJI)V
    .registers 12

    .line 644
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/gnss/hal/GnssNative;->injectTime(JJI)V

    return-void
.end method

.method public isAutomotiveGnssSuspended()Z
    .registers 3

    .line 920
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 921
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAutomotiveSuspend:Z

    if-eqz v1, :cond_d

    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 922
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public abstract isDeviceBasedHybridSupported()Z
.end method

.method public abstract isExtraCommandAllowed(I)Z
.end method

.method public isGpsEnabled()Z
    .registers 2

    .line 999
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1001
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public abstract isKOREmergency(Z)Z
.end method

.method public final isRequestLocationRateLimited()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isSupportGnssBatching()Z
.end method

.method public onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V
    .registers 3

    .line 1848
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 1198
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->isExtraCommandAllowed(I)Z

    move-result p2

    const-string v0, "GnssLocationProvider"

    if-nez p2, :cond_23

    .line 1199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendExtraCommand from uid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ignored."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    const-string p1, "delete_aiding_data"

    .line 1203
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 1204
    invoke-virtual {p0, p4}, Lcom/android/server/location/gnss/GnssLocationProvider;->deleteAidingData(Landroid/os/Bundle;)V

    .line 1205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getTimestamp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": Delete Aiding data"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDeleteAidingHistory:Ljava/lang/String;

    goto :goto_8b

    :cond_46
    const-string p1, "force_time_injection"

    .line 1206
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 1207
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->requestUtcTime()V

    goto :goto_8b

    :cond_52
    const-string p1, "force_psds_injection"

    .line 1208
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 1209
    iget-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz p1, :cond_8b

    .line 1210
    new-instance p1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda29;

    invoke-direct {p1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    goto :goto_8b

    :cond_67
    const-string/jumbo p1, "request_power_stats"

    .line 1213
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    .line 1214
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->requestPowerStats()V

    goto :goto_8b

    .line 1216
    :cond_76
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "sendExtraCommand: unknown command "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    :goto_8b
    return-void
.end method

.method public onFlush(Ljava/lang/Runnable;)V
    .registers 4

    .line 1019
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingEnabled:Z

    if-eqz v1, :cond_e

    .line 1021
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 1023
    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1c

    if-nez v1, :cond_16

    .line 1025
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1b

    .line 1027
    :cond_16
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->flushBatch()V

    :goto_1b
    return-void

    :catchall_1c
    move-exception p0

    .line 1023
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public onHalRestarted()V
    .registers 3

    .line 1835
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onNetworkAvailable()V
    .registers 5

    .line 651
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/NtpTimeHelper;->onNetworkAvailable()V

    .line 653
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz v0, :cond_35

    .line 654
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_c
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 656
    new-instance v3, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    goto :goto_12

    .line 658
    :cond_2b
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPendingDownloadPsdsTypes:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 659
    monitor-exit v0

    goto :goto_35

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_32

    throw p0

    :cond_35
    :goto_35
    return-void
.end method

.method public onReportAGpsStatus(II[B)V
    .registers 4

    .line 1930
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->onReportAGpsStatus(II[B)V

    return-void
.end method

.method public onReportLocation(ZLandroid/location/Location;)V
    .registers 4

    .line 1860
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;ZLandroid/location/Location;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReportLocations([Landroid/location/Location;)V
    .registers 12

    const-string v0, "GnssLocationProvider"

    .line 1866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location batch of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_aa

    .line 1871
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_9f

    .line 1874
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    :goto_27
    if-ltz v0, :cond_55

    add-int/lit8 v3, v0, 0x1

    .line 1875
    aget-object v4, p1, v3

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    aget-object v6, p1, v0

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1876
    aget-object v3, p1, v3

    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v6

    aget-object v3, p1, v0

    .line 1877
    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    .line 1878
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-lez v3, :cond_52

    move v0, v2

    goto :goto_56

    :cond_52
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    :cond_55
    move v0, v1

    :goto_56
    if-eqz v0, :cond_93

    .line 1887
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda5;-><init>()V

    .line 1888
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 1887
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1890
    array-length v0, p1

    sub-int/2addr v0, v2

    aget-object v0, p1, v0

    .line 1891
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    array-length v0, p1

    sub-int/2addr v0, v2

    aget-object v0, p1, v0

    .line 1892
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 1893
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    :goto_78
    if-ltz v0, :cond_9f

    .line 1894
    aget-object v2, p1, v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1896
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1895
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    .line 1894
    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_78

    .line 1900
    :cond_93
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda6;-><init>()V

    .line 1901
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 1900
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1905
    :cond_9f
    invoke-static {p1}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    .line 1909
    :cond_aa
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1910
    :try_start_ad
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    new-array v2, v1, [Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Runnable;

    .line 1911
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 1912
    monitor-exit p1
    :try_end_bd
    .catchall {:try_start_ad .. :try_end_bd} :catchall_c9

    .line 1913
    array-length p0, v0

    :goto_be
    if-ge v1, p0, :cond_c8

    aget-object p1, v0, v1

    .line 1914
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_be

    :cond_c8
    return-void

    :catchall_c9
    move-exception p0

    .line 1912
    :try_start_ca
    monitor-exit p1
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw p0
.end method

.method public onReportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 19

    move-object v0, p0

    .line 1999
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-nez v1, :cond_e

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "reportNfwNotification: mGnssVisibilityControl uninitialized."

    .line 2000
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 2004
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/location/gnss/GnssVisibilityControl;->reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    .line 2009
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "proxyAppPackageName"

    move-object v3, p1

    .line 2010
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "protocolStack"

    move v3, p2

    .line 2011
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string/jumbo v2, "otherProtocolStackName"

    move-object v3, p3

    .line 2012
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "requestor"

    move v3, p4

    .line 2013
    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string/jumbo v2, "requestorId"

    move-object v3, p5

    .line 2014
    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "responseType"

    move/from16 v3, p6

    .line 2015
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string/jumbo v2, "inEmergencyMode"

    move/from16 v3, p7

    .line 2016
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "isCachedLocation"

    move/from16 v3, p8

    .line 2017
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2019
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object v2, Landroid/location/LocationConstants$STATE_TYPE;->REPORT_NFW_NOTIFICATION:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public onReportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 10

    .line 1943
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/location/gnss/GnssLocationProvider;->reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public onReportSvStatus(Landroid/location/GnssStatus;)V
    .registers 3

    .line 1921
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/GnssStatus;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 1924
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onSatelliteStatusUpdated(Landroid/location/GnssStatus;)V

    return-void
.end method

.method public onRequestLocation(ZZ)V
    .registers 5

    .line 1978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestLocation. independentFromGnss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUserEmergency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRequestPsdsDownload(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1935
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->isExtraCommandFromAllowedAppRequest:Z

    .line 1936
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRequestRefLocation()V
    .registers 1

    .line 1992
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->requestRefLocation()V

    return-void
.end method

.method public onRequestSetID(I)V
    .registers 7

    .line 1949
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 1950
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1954
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 1955
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1956
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    :cond_19
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_28

    .line 1959
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_33

    move v2, v3

    goto :goto_34

    :cond_28
    and-int/2addr p1, v2

    if-ne p1, v2, :cond_32

    .line 1965
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_32
    const/4 p1, 0x0

    :cond_33
    move v2, v4

    .line 1972
    :goto_34
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    if-nez p1, :cond_3a

    const-string p1, ""

    :cond_3a
    invoke-virtual {p0, v2, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsSetId(ILjava/lang/String;)V

    return-void
.end method

.method public onRequestUtcTime()V
    .registers 1

    .line 1987
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->requestUtcTime()V

    return-void
.end method

.method public onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .registers 4

    .line 1033
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/provider/ProviderRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized onSystemReady()V
    .registers 7

    monitor-enter p0

    .line 540
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$1;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 550
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_mode"

    .line 551
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/location/gnss/GnssLocationProvider$2;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/location/gnss/GnssLocationProvider$2;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/os/Handler;)V

    const/4 v4, -0x1

    .line 550
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 560
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 561
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssSatelliteBlocklistHelper:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda15;

    invoke-direct {v2, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4b

    .line 562
    monitor-exit p0

    return-void

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUpdateSatelliteBlocklist([I[I)V
    .registers 5

    .line 373
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;[I[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMetrics;->resetConstellationTypes()V

    return-void
.end method

.method public postWithWakeLockHeld(Ljava/lang/Runnable;)V
    .registers 5

    .line 1773
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1774
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 1782
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_19
    return-void
.end method

.method public abstract reloadAutoSuplUrl()V
.end method

.method public final reloadGpsProperties()V
    .registers 4

    .line 421
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 422
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz v0, :cond_28

    .line 423
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromCarrierConfig()V

    .line 424
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onConfigurationUpdated(Lcom/android/server/location/gnss/GnssConfiguration;)V

    .line 425
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->setEsExtensionSec()V

    .line 426
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSec()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyExtensionSeconds(I)V

    :cond_28
    return-void

    .line 430
    :cond_29
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties()V

    .line 435
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSec()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyExtensionSeconds(I)V

    .line 436
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplEs(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_44

    move v1, v2

    :cond_44
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 437
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz v0, :cond_54

    .line 439
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onConfigurationUpdated(Lcom/android/server/location/gnss/GnssConfiguration;)V

    :cond_54
    return-void
.end method

.method public final reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 37

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    const-string v10, "GnssLocationProvider"

    const-string/jumbo v11, "reportNiNotification: entered"

    .line 1580
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "notificationId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", niType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", notifyFlags: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", timeout: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", defaultResponse: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "requestorId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", text: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", requestorIdEncoding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", textEncoding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    new-instance v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v10}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 1594
    iput v1, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 1595
    iput v2, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    and-int/lit8 v1, v3, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_8f

    move v1, v11

    goto :goto_90

    :cond_8f
    move v1, v2

    .line 1596
    :goto_90
    iput-boolean v1, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    and-int/lit8 v1, v3, 0x2

    if-eqz v1, :cond_98

    move v1, v11

    goto :goto_99

    :cond_98
    move v1, v2

    .line 1597
    :goto_99
    iput-boolean v1, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    and-int/lit8 v1, v3, 0x4

    if-eqz v1, :cond_a0

    move v2, v11

    .line 1598
    :cond_a0
    iput-boolean v2, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 1600
    iput v4, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 1601
    iput v5, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 1602
    iput-object v6, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 1603
    iput-object v7, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 1604
    iput v8, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 1605
    iput v9, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 1607
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v1, v10}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    const/16 v11, 0x7c

    const/4 v12, 0x1

    .line 1608
    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iget v14, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    iget-boolean v15, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    iget-boolean v1, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    iget-boolean v2, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    iget v3, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    iget v4, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    iget-object v5, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    iget-object v6, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    iget v7, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    iget v8, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    iget-boolean v9, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 1622
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v25

    const/16 v26, 0x0

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    .line 1608
    invoke-static/range {v11 .. v26}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIZZZIILjava/lang/String;Ljava/lang/String;IIZZI)V

    return-void
.end method

.method public final requestUtcTime()V
    .registers 3

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "utcTimeRequest"

    .line 1627
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda28;

    invoke-direct {v1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/location/gnss/NtpTimeHelper;)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final restartLocationRequest()V
    .registers 4

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartLocationRequest"

    .line 1528
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1529
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1531
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x12c

    if-le v1, v2, :cond_1b

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1532
    :cond_1b
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": restartLocationRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1533
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateRequirements()V

    return-void
.end method

.method public setAutomotiveGnssSuspended(Z)V
    .registers 3

    .line 909
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 910
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAutomotiveSuspend:Z

    .line 911
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    .line 912
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_11
    move-exception p0

    .line 911
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final setGpsEnabled(Z)V
    .registers 3

    .line 899
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 900
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    .line 901
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final setPositionMode(IIIZ)Z
    .registers 13

    .line 1118
    new-instance v7, Lcom/android/server/location/gnss/GnssPositionMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssPositionMode;-><init>(IIIIIZ)V

    .line 1120
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v7}, Lcom/android/server/location/gnss/GnssPositionMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x1

    return p0

    .line 1124
    :cond_18
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/gnss/hal/GnssNative;->setPositionMode(IIIIIZ)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1127
    iput-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    goto :goto_2c

    :cond_29
    const/4 p2, 0x0

    .line 1129
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    :goto_2c
    return p1
.end method

.method public final setRefLocation(ILandroid/telephony/CellIdentity;)V
    .registers 16

    .line 1679
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v0

    .line 1680
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7fffffff

    if-eqz v0, :cond_13

    .line 1681
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    goto :goto_14

    :cond_13
    move v5, v2

    :goto_14
    if-eqz v1, :cond_1c

    .line 1682
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    goto :goto_1d

    :cond_1c
    move v6, v2

    :goto_1d
    const-wide v0, 0x7fffffffffffffffL

    const/4 v3, 0x1

    if-eq p1, v3, :cond_6e

    const/4 v3, 0x2

    if-eq p1, v3, :cond_62

    const/4 v3, 0x4

    if-eq p1, v3, :cond_4d

    const/16 v3, 0x8

    if-eq p1, v3, :cond_35

    move-wide v8, v0

    move v7, v2

    move v10, v7

    :goto_32
    move v11, v10

    move v12, v11

    goto :goto_7d

    .line 1707
    :cond_35
    check-cast p2, Landroid/telephony/CellIdentityNr;

    .line 1708
    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v0

    .line 1709
    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result v3

    .line 1710
    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getPci()I

    move-result v4

    .line 1711
    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result p2

    move v12, p2

    move-wide v8, v0

    move v7, v2

    move v10, v3

    move v11, v4

    goto :goto_7d

    .line 1701
    :cond_4d
    check-cast p2, Landroid/telephony/CellIdentityLte;

    .line 1702
    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v0

    int-to-long v0, v0

    .line 1703
    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v3

    .line 1704
    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result p2

    move v11, p2

    move-wide v8, v0

    move v7, v2

    move v12, v7

    move v10, v3

    goto :goto_7d

    .line 1696
    :cond_62
    check-cast p2, Landroid/telephony/CellIdentityWcdma;

    .line 1697
    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v0

    int-to-long v0, v0

    .line 1698
    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result p2

    goto :goto_79

    .line 1691
    :cond_6e
    check-cast p2, Landroid/telephony/CellIdentityGsm;

    .line 1692
    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v0

    int-to-long v0, v0

    .line 1693
    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p2

    :goto_79
    move v7, p2

    move-wide v8, v0

    move v10, v2

    goto :goto_32

    .line 1716
    :goto_7d
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    move v4, p1

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsReferenceLocationCellId(IIIIJIII)V

    return-void
.end method

.method public setSLocationSvCallback(Lcom/android/server/location/gnss/GnssLocationProvider$SvCallback;)V
    .registers 2

    .line 2065
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSvCallback:Lcom/android/server/location/gnss/GnssLocationProvider$SvCallback;

    return-void
.end method

.method public final setStarted(Z)V
    .registers 4

    .line 1406
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eq v0, p1, :cond_c

    .line 1407
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 1408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    :cond_c
    return-void
.end method

.method public final setSuplHostPort()V
    .registers 4

    .line 865
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 866
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplPort(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerPort:I

    .line 867
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_22

    if-lez v0, :cond_22

    const v2, 0xffff

    if-gt v0, v2, :cond_22

    .line 870
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->setAgpsServer(ILjava/lang/String;I)V

    :cond_22
    return-void
.end method

.method public abstract setSuplServerSec()V
.end method

.method public abstract setXtraDownloadedTime()V
.end method

.method public final startBatching(J)V
    .registers 11

    .line 1357
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    int-to-long v0, v0

    div-long v0, p1, v0

    .line 1360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GnssLocationProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/location/gnss/hal/GnssNative;->startBatch(JFZ)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1363
    iput-boolean v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingStarted:Z

    .line 1365
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getBatchSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_65

    .line 1368
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;J)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    .line 1383
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    .line 1384
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p1

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    .line 1385
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const-string v5, "GnssLocationProvider"

    .line 1383
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_65

    :cond_5f
    const-string/jumbo p0, "native_start_batch failed in startBatching()"

    .line 1388
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    :goto_65
    return-void
.end method

.method public final startNavigating()V
    .registers 11

    .line 1256
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_ea

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "startNavigating"

    .line 1257
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1258
    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    const-wide/16 v2, 0x0

    .line 1259
    iput-wide v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    const/4 v2, 0x1

    .line 1260
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1261
    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 1263
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1264
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_gps_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_29

    move v3, v2

    goto :goto_2a

    :cond_29
    move v3, v1

    .line 1266
    :goto_2a
    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->getSuplMode(Z)I

    move-result v3

    iput v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    if-eqz v3, :cond_3a

    .line 1270
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 1271
    invoke-virtual {p0, v3, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->getPositionModeSec(ILandroid/location/provider/ProviderRequest;)I

    move-result v3

    iput v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 1274
    :cond_3a
    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    if-eqz v3, :cond_41

    .line 1277
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateSuplServerForNewSISession()V

    .line 1283
    :cond_41
    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    if-eqz v3, :cond_54

    if-eq v3, v2, :cond_51

    const/4 v2, 0x2

    if-eq v3, v2, :cond_4e

    const-string/jumbo v2, "unknown"

    goto :goto_57

    :cond_4e
    const-string v2, "MS_ASSISTED"

    goto :goto_57

    :cond_51
    const-string v2, "MS_BASED"

    goto :goto_57

    :cond_54
    const-string/jumbo v2, "standalone"

    .line 1297
    :goto_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting position_mode to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result v2

    if-eqz v2, :cond_7b

    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    goto :goto_7d

    :cond_7b
    const/16 v2, 0x3e8

    .line 1301
    :goto_7d
    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 1302
    invoke-virtual {v4}, Landroid/location/provider/ProviderRequest;->isLowPower()Z

    move-result v4

    .line 1301
    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->setPositionMode(IIIZ)Z

    move-result v3

    if-nez v3, :cond_95

    .line 1303
    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    const-string/jumbo p0, "set_position_mode failed in startNavigating()"

    .line 1304
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1307
    :cond_95
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v3}, Lcom/android/server/location/gnss/hal/GnssNative;->start()Z

    move-result v3

    if-nez v3, :cond_a7

    .line 1308
    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    const-string/jumbo p0, "native_start failed in startNavigating()"

    .line 1309
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1314
    :cond_a7
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->reset()V

    .line 1315
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    .line 1316
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result v0

    if-nez v0, :cond_d9

    .line 1319
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_d9

    .line 1320
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    .line 1321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v5, 0xea60

    add-long/2addr v5, v0

    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const-string v7, "GnssLocationProvider"

    .line 1320
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1327
    :cond_d9
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    sget-object v1, Landroid/location/LocationConstants$STATE_TYPE;->NAVIGATING:Landroid/location/LocationConstants$STATE_TYPE;

    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 1328
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1327
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->reportProviderStatus(Landroid/location/LocationConstants$STATE_TYPE;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_ea
    return-void
.end method

.method public final stopBatching()V
    .registers 3

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "stopBatching"

    .line 1393
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingStarted:Z

    if-eqz v0, :cond_25

    .line 1395
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v0, :cond_18

    .line 1396
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    .line 1397
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    .line 1399
    :cond_18
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->flushBatch()V

    .line 1400
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopBatch()V

    const/4 v0, 0x0

    .line 1401
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingStarted:Z

    :cond_25
    return-void
.end method

.method public final stopNavigating()V
    .registers 5

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopNavigating, mStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    .line 1336
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1337
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->stop()Z

    const-wide/16 v2, 0x0

    .line 1338
    iput-wide v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 1340
    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    .line 1342
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigatingSec()V

    .line 1346
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->reset()V

    .line 1348
    :cond_35
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1349
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1352
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->NAVIGATING:Landroid/location/LocationConstants$STATE_TYPE;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->reportProviderStatus(Landroid/location/LocationConstants$STATE_TYPE;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public abstract stopNavigatingSec()V
.end method

.method public final subscriptionOrCarrierConfigChanged()V
    .registers 8

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "received SIM related action: "

    .line 378
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    .line 380
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 381
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "carrier_config"

    .line 382
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 383
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 384
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 385
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 387
    :cond_2b
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 389
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_83

    .line 390
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM MCC/MNC is available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadAutoSuplUrl()V

    if-eqz v2, :cond_64

    .line 393
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 394
    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_5b

    :cond_5a
    const/4 v0, 0x0

    :goto_5b
    if-eqz v0, :cond_64

    const-string/jumbo v1, "gps.persist_lpp_mode_bool"

    .line 397
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    :cond_64
    const-string/jumbo v0, "persist.sys.gps.lpp"

    if-eqz v4, :cond_7a

    .line 402
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromCarrierConfig()V

    .line 403
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getLppProfile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 406
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    :cond_7a
    const-string v1, ""

    .line 410
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_7f
    :goto_7f
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    goto :goto_8d

    :cond_83
    const-string v1, "SIM MCC/MNC is still not available"

    .line 414
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties()V

    :goto_8d
    return-void
.end method

.method public final updateClientUids(Landroid/os/WorkSource;)V
    .registers 10

    .line 1135
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1141
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_19

    :catch_11
    move-exception v0

    const-string v1, "GnssLocationProvider"

    const-string v2, "RemoteException"

    .line 1143
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1149
    :goto_19
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-static {v0, p1}, Landroid/os/WorkSource;->diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6d

    .line 1151
    aget-object v4, v0, v3

    .line 1152
    aget-object v0, v0, v2

    if-eqz v4, :cond_48

    .line 1155
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource$WorkChain;

    .line 1156
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v7

    .line 1157
    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1156
    invoke-virtual {v6, v1, v7, v5}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    goto :goto_2e

    :cond_48
    if-eqz v0, :cond_68

    .line 1162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource$WorkChain;

    .line 1163
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v4}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v6

    .line 1164
    invoke-virtual {v4}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1163
    invoke-virtual {v5, v1, v6, v4}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    goto :goto_4e

    .line 1168
    :cond_68
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->transferWorkChains(Landroid/os/WorkSource;)V

    .line 1173
    :cond_6d
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object p1

    if-eqz p1, :cond_aa

    .line 1175
    aget-object v0, p1, v3

    .line 1176
    aget-object p1, p1, v2

    if-eqz v0, :cond_92

    move v2, v3

    .line 1180
    :goto_7c
    invoke-virtual {v0}, Landroid/os/WorkSource;->size()I

    move-result v4

    if-ge v2, v4, :cond_92

    .line 1181
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 1182
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getUid(I)I

    move-result v5

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v6

    .line 1181
    invoke-virtual {v4, v1, v5, v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_92
    if-eqz p1, :cond_aa

    .line 1188
    :goto_94
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-ge v3, v0, :cond_aa

    .line 1189
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v3}, Landroid/os/WorkSource;->getUid(I)I

    move-result v2

    .line 1190
    invoke-virtual {p1, v3}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 1189
    invoke-virtual {v0, v1, v2, v4}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    :cond_aa
    return-void
.end method

.method public updateEnabled()V
    .registers 6

    .line 971
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 972
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    .line 975
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_26

    .line 976
    invoke-virtual {v1}, Landroid/location/provider/ProviderRequest;->isActive()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 977
    invoke-virtual {v1}, Landroid/location/provider/ProviderRequest;->isBypass()Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v3

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    or-int/2addr v0, v1

    .line 980
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 981
    :try_start_2b
    iget-boolean v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAutomotiveSuspend:Z

    if-nez v4, :cond_30

    move v2, v3

    :cond_30
    and-int/2addr v0, v2

    .line 982
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_47

    .line 985
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mShutdown:Z

    xor-int/2addr v1, v3

    and-int/2addr v0, v1

    .line 987
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_3d

    return-void

    :cond_3d
    if-eqz v0, :cond_43

    .line 992
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleEnable()V

    goto :goto_46

    .line 994
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDisable()V

    :goto_46
    return-void

    :catchall_47
    move-exception p0

    .line 982
    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public final updateRequirements()V
    .registers 11

    .line 1042
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    if-eqz v0, :cond_179

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_179

    .line 1046
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRequest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x12c

    const/4 v3, 0x0

    if-le v0, v2, :cond_35

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1049
    :cond_35
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsDump:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->getTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 1050
    invoke-virtual {v4}, Landroid/location/provider/ProviderRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1049
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mStarted =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isEnabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->isActive()Z

    move-result v0

    if-eqz v0, :cond_16b

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 1060
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1062
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_b8

    .line 1063
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v4

    long-to-int v0, v4

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    goto :goto_d8

    .line 1065
    :cond_b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interval overflow: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    .line 1066
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 1069
    :goto_d8
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1070
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v2}, Landroid/location/provider/ProviderRequest;->getMaxUpdateDelayMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1074
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatchingEnabled:Z

    if-eqz v2, :cond_104

    const-wide/16 v6, 0x2

    div-long v6, v4, v6

    int-to-long v8, v0

    cmp-long v2, v6, v8

    if-ltz v2, :cond_104

    .line 1075
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 1076
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 1077
    invoke-virtual {p0, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider;->startBatching(J)V

    goto/16 :goto_179

    .line 1079
    :cond_104
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopBatching()V

    .line 1082
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_119

    .line 1083
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    sget-object v2, Landroid/location/LocationConstants$STATE_TYPE;->UPDATE_GNSS_INTERVAL:Landroid/location/LocationConstants$STATE_TYPE;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 1084
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1083
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->reportProviderStatus(Landroid/location/LocationConstants$STATE_TYPE;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1088
    :cond_119
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_140

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->getCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result v0

    if-eqz v0, :cond_140

    .line 1090
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Landroid/location/provider/ProviderRequest;

    .line 1091
    invoke-virtual {v4}, Landroid/location/provider/ProviderRequest;->isLowPower()Z

    move-result v4

    .line 1090
    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->setPositionMode(IIIZ)Z

    move-result p0

    if-nez p0, :cond_179

    const-string/jumbo p0, "set_position_mode failed in updateRequirements"

    .line 1092
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_179

    .line 1094
    :cond_140
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_148

    .line 1096
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->startNavigating()V

    goto :goto_179

    .line 1099
    :cond_148
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1100
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_179

    .line 1103
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    .line 1104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v4, 0xea60

    add-long/2addr v4, v0

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const-string v6, "GnssLocationProvider"

    .line 1103
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_179

    .line 1110
    :cond_16b
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1111
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 1112
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopBatching()V

    :cond_179
    :goto_179
    return-void
.end method

.method public abstract updateSuplServerForNewSISession()V
.end method
