.class public Lcom/android/server/location/gnss/hal/GnssNative;
.super Ljava/lang/Object;
.source "GnssNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;,
        Lcom/android/server/location/gnss/hal/GnssNative$NativeEntryPoint;,
        Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;,
        Lcom/android/server/location/gnss/hal/GnssNative$AgpsSetIdType;,
        Lcom/android/server/location/gnss/hal/GnssNative$AgpsReferenceLocationType;,
        Lcom/android/server/location/gnss/hal/GnssNative$GnssAidingTypeFlags;,
        Lcom/android/server/location/gnss/hal/GnssNative$GnssRealtimeFlags;,
        Lcom/android/server/location/gnss/hal/GnssNative$GnssLocationFlags;,
        Lcom/android/server/location/gnss/hal/GnssNative$GnssPositionRecurrence;,
        Lcom/android/server/location/gnss/hal/GnssNative$GnssPositionMode;
    }
.end annotation


# static fields
.field public static final AGPS_REF_LOCATION_TYPE_CDMA_CELLID:I = 0x5

.field public static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field public static final AGPS_REF_LOCATION_TYPE_LTE_CELLID:I = 0x4

.field public static final AGPS_REF_LOCATION_TYPE_NR_CELLID:I = 0x8

.field public static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field public static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field public static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field public static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field public static final AGPS_SETID_TYPE_NONE:I = 0x0

.field public static final GNSS_AIDING_TYPE_ALL:I = 0xffff

.field public static final GNSS_AIDING_TYPE_ALMANAC:I = 0x2

.field public static final GNSS_AIDING_TYPE_CELLDB_INFO:I = 0x8000

.field public static final GNSS_AIDING_TYPE_EPHEMERIS:I = 0x1

.field public static final GNSS_AIDING_TYPE_HEALTH:I = 0x40

.field public static final GNSS_AIDING_TYPE_IONO:I = 0x10

.field public static final GNSS_AIDING_TYPE_POSITION:I = 0x4

.field public static final GNSS_AIDING_TYPE_RTI:I = 0x400

.field public static final GNSS_AIDING_TYPE_SADATA:I = 0x200

.field public static final GNSS_AIDING_TYPE_SVDIR:I = 0x80

.field public static final GNSS_AIDING_TYPE_SVSTEER:I = 0x100

.field public static final GNSS_AIDING_TYPE_TIME:I = 0x8

.field public static final GNSS_AIDING_TYPE_UTC:I = 0x20

.field public static final GNSS_LOCATION_HAS_ALTITUDE:I = 0x2

.field public static final GNSS_LOCATION_HAS_BEARING:I = 0x8

.field public static final GNSS_LOCATION_HAS_BEARING_ACCURACY:I = 0x80

.field public static final GNSS_LOCATION_HAS_HORIZONTAL_ACCURACY:I = 0x10

.field public static final GNSS_LOCATION_HAS_LAT_LONG:I = 0x1

.field public static final GNSS_LOCATION_HAS_SPEED:I = 0x4

.field public static final GNSS_LOCATION_HAS_SPEED_ACCURACY:I = 0x40

.field public static final GNSS_LOCATION_HAS_VERTICAL_ACCURACY:I = 0x20

.field public static final GNSS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field public static final GNSS_POSITION_MODE_MS_BASED:I = 0x1

.field public static final GNSS_POSITION_MODE_STANDALONE:I = 0x0

.field public static final GNSS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field public static final GNSS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field public static final GNSS_REALTIME_HAS_TIMESTAMP_NS:I = 0x1

.field public static final GNSS_REALTIME_HAS_TIME_UNCERTAINTY_NS:I = 0x2

.field public static final ITAR_SPEED_LIMIT_METERS_PER_SECOND:F = 400.0f

.field public static final mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

.field public static final mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

.field public static sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "GnssNative.class"
        }
    .end annotation
.end field

.field public static sGnssHalInitialized:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "GnssNative.class"
        }
    .end annotation
.end field

.field public static sInstance:Lcom/android/server/location/gnss/hal/GnssNative;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "GnssNative.class"
        }
    .end annotation
.end field


# instance fields
.field public mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

.field public mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

.field public mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

.field public mCapabilities:Landroid/location/GnssCapabilities;

.field public final mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

.field public final mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

.field public mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

.field public final mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

.field public mHandler:Landroid/os/Handler;

.field public mHardwareModelName:Ljava/lang/String;

.field public mHardwareYear:I

.field public mHasFirstFix:Z

.field public volatile mItarSpeedLimitExceeded:Z

.field public mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

.field public mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

.field public mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

.field public mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

.field public final mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

.field public mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

.field public mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

.field public mPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

.field public mPsdsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

.field public mRegistered:Z

.field public mStartRealtimeMs:J

.field public mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

.field public mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

.field public mTimeCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

.field public mTopFlags:I


# direct methods
.method public static synthetic $r8$lambda$-VKeyZw04oVHwBU20ifE3sJirjA(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportNfwNotification$24(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$4lXHZWv7Ty9RuIifJpf_3UZlqgA(Lcom/android/server/location/gnss/hal/GnssNative;ILandroid/location/Location;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceTransition$13(ILandroid/location/Location;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$85HfP21vGgz8ro8QGnwbv6da4Hc(Lcom/android/server/location/gnss/hal/GnssNative;II[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportAGpsStatus$3(II[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$EHU9n696rYIcAdExUbHk_BKRuY8(Lcom/android/server/location/gnss/hal/GnssNative;ZLandroid/location/Location;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportLocation$0(ZLandroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F9-DHw9FvD2lRKaNv2oC4qSs85s(Lcom/android/server/location/gnss/hal/GnssNative;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestFlpLocation$28(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FzZO9wol7WFUPfnP86CwVqfhKlQ(Lcom/android/server/location/gnss/hal/GnssNative;)Ljava/lang/Boolean;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$isInEmergencySession$25()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IFbGNbp5IKTHj0wYDqEKMySh11E(Lcom/android/server/location/gnss/hal/GnssNative;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceResumeStatus$18(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ia9pYTapwgyEwp6xFReG1hxpGnQ(Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestLppeCommonIesCapability$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$IiW0kJ2oWv1fMmdRq0E-t6aGlV0(Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestWlanCapability$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$JF8C5fzYaLumlTBgBHR2Pa-qrJE(Lcom/android/server/location/gnss/hal/GnssNative;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceAddStatus$15(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kg-0j66prdTYeaWmpH6XjN77y-I(Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestUtcTime$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$NYXhh1t0HgIIvk9D3Exm_MvIzes(Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;Landroid/location/GnssNavigationMessage;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportNavigationMessage$8(Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;Landroid/location/GnssNavigationMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OGaF1kkkbW9yvGkyVM-bile2imI(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;Landroid/location/GnssMeasurementsEvent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportMeasurementData$5(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PC3OsLy4SZaZNmhrOSs7tgH5mTY(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/GnssMeasurementsEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportMeasurementData$6(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qkc1m1tjsrmTltXLUWHxLouLa9w(Lcom/android/server/location/gnss/hal/GnssNative;[Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportLocationBatch$11([Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QtnO77Sm68PbmaG5wGPfwR3uzQs(Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestUbpCapability$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$RMDhaFdSaNJQBpTRpYsxwseoOWs(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportAntennaInfo$7(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TOg0bWtEf1NWQdpYaY--YCC9PtE(Lcom/android/server/location/gnss/hal/GnssNative;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofencePauseStatus$17(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$UkJY_8VsBfAHjTZZdGSsiWbHnK8(Lcom/android/server/location/gnss/hal/GnssNative;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestWlanScanInfo$32(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$a1JzDsZIwj4Ml_GJyF7sqICJLrE(Lcom/android/server/location/gnss/hal/GnssNative;ILandroid/location/Location;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceStatus$14(ILandroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c55O3Qp-xzBAR9loDiHV-CmKeN0(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/GnssNavigationMessage;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportNavigationMessage$9(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fDJqKZ1D-B8GXd0c1vx-YMxZtbA(Lcom/android/server/location/gnss/hal/GnssNative;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestLocation$21(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gFoC4o5-BIwGsy0v9Ll66LOEEQc(Lcom/android/server/location/gnss/hal/GnssNative;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestUbpInfo$30(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gwFEvHbx0tPHheG56uTmqu3Bbqs(Lcom/android/server/location/gnss/hal/GnssNative;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestSetID$20(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oi7FVbBGUNNVo0TOsZfRar3Q4ls(Lcom/android/server/location/gnss/hal/GnssNative;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportNmea$4(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$ptijmDJTy_M5ybZQYxpnj__LnS0(Lcom/android/server/location/gnss/hal/GnssNative;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportStatus$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qT7spbUsaV1Q5U2u9bsJfeLkCQg(Lcom/android/server/location/gnss/hal/GnssNative;I[I[F[F[F[F[F)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportSvStatus$2(I[I[F[F[F[F[F)V

    return-void
.end method

.method public static synthetic $r8$lambda$rJXanyFbaFrnrixJPqqiXdBZ56s(Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestRefLocation$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$r_6m-iQEASJmdHqzMbCwlfGiYEg(Lcom/android/server/location/gnss/hal/GnssNative;IIIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportNiNotification$19(IIIIILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$swGJkc56TLpnwXyl7ngq-xwK5DY(Lcom/android/server/location/gnss/hal/GnssNative;)Ljava/lang/Boolean;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$isInEmergencySession$26()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t8ERY_X-X9LgSF1C21AXr8oaEtY(Lcom/android/server/location/gnss/hal/GnssNative;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$psdsDownloadRequest$12(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uEYDzYJeTT5drnB6aRZe210QpLA(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$onCapabilitiesChanged$10(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v4XPC0Hyk4in_732PzfwBpG_5QE(Lcom/android/server/location/gnss/hal/GnssNative;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceRemoveStatus$16(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnative_init_once(Lcom/android/server/location/gnss/hal/GnssNative;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init_once(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_add_geofence(IDDDIIII)Z
    .registers 11

    invoke-static/range {p0 .. p10}, Lcom/android/server/location/gnss/hal/GnssNative;->native_add_geofence(IDDDIIII)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_agps_set_id(ILjava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_agps_set_id(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_agps_set_ref_location_cellid(IIIIJII)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/server/location/gnss/hal/GnssNative;->native_agps_set_ref_location_cellid(IIIIJII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_agps_set_ref_location_cellid(IIIIJIII)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/android/server/location/gnss/hal/GnssNative;->native_agps_set_ref_location_cellid(IIIIJIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_class_init_once()V
    .registers 0

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_class_init_once()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_cleanup()V
    .registers 0

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_cleanup()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_cleanup_batching()V
    .registers 0

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_cleanup_batching()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_configuration_update_extension(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->native_configuration_update_extension(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_delete_aiding_data(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->native_delete_aiding_data(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_flush_batch()V
    .registers 0

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_flush_batch()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_get_batch_size()I
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_get_batch_size()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_get_internal_state()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_get_internal_state()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smnative_get_seh_gnss_hal_version()F
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_get_seh_gnss_hal_version()F

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_init()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_init_batching()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init_batching()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_init_extension_location_off()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init_extension_location_off()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_best_location(IDDDFFFFFFJIJD)V
    .registers 20

    invoke-static/range {p0 .. p19}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_best_location(IDDDFFFFFFJIJD)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_flp_error(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_flp_error(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_flp_location(IDDDFFFFFFJ)V
    .registers 15

    invoke-static/range {p0 .. p14}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_flp_location(IDDDFFFFFFJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_location(IDDDFFFFFFJIJD)V
    .registers 20

    invoke-static/range {p0 .. p19}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_location(IDDDFFFFFFJIJD)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_lppe_com_ie_capability(IZZZIZZZZZ)V
    .registers 10

    invoke-static/range {p0 .. p9}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_lppe_com_ie_capability(IZZZIZZZZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_psds_data([BII)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_psds_data([BII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_time(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_time(JJI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_ubp_capability(ZZZZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_ubp_capability(ZZZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_ubp_error(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_ubp_error(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_ubp_info(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_ubp_info(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_wlan_capability(IIJIII)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_wlan_capability(IIJIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_wlan_error(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_wlan_error(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_wlan_scan_info([J[I[II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_wlan_scan_info([J[I[II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_is_antenna_info_supported()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_antenna_info_supported()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_is_geofence_supported()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_is_gnss_visibility_control_supported()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_gnss_visibility_control_supported()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_is_measurement_corrections_supported()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_measurement_corrections_supported()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_is_measurement_supported()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_is_navigation_message_supported()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_navigation_message_supported()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_is_seh_gnss_aidl_hal()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_seh_gnss_aidl_hal()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_is_supported()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_pause_geofence(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->native_pause_geofence(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_read_nmea([BI)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_read_nmea([BI)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_remove_geofence(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->native_remove_geofence(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_request_power_stats()V
    .registers 0

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_request_power_stats()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_resume_geofence(II)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_resume_geofence(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_send_ni_response(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_send_ni_response(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_send_supl_ni_message([BI)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_send_supl_ni_message([BI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_set_agps_server(ILjava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->native_set_agps_server(ILjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_set_position_mode(IIIIIZ)Z
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/location/gnss/hal/GnssNative;->native_set_position_mode(IIIIIZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_start()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_start_antenna_info_listening()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_antenna_info_listening()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_start_batch(JFZ)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_batch(JFZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_start_measurement_collection(ZZI)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_measurement_collection(ZZI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_start_navigation_message_collection()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_start_nmea_message_collection()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_nmea_message_collection()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_start_sv_status_collection()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_sv_status_collection()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_stop()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_stop_antenna_info_listening()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_antenna_info_listening()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_stop_batch()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_batch()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_stop_measurement_collection()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_stop_navigation_message_collection()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_stop_nmea_message_collection()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_nmea_message_collection()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_stop_sv_status_collection()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_sv_status_collection()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_supports_psds()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_supports_psds()Z

    move-result v0

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 342
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 344
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/gnss/hal/GnssNative;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)V
    .registers 7

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    .line 394
    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    .line 395
    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    .line 396
    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    .line 397
    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    .line 398
    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    .line 399
    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    .line 400
    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    .line 401
    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    .line 416
    new-instance v1, Landroid/location/GnssCapabilities$Builder;

    invoke-direct {v1}, Landroid/location/GnssCapabilities$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/location/GnssCapabilities$Builder;->build()Landroid/location/GnssCapabilities;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    const/4 v1, 0x0

    .line 418
    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

    .line 419
    iput v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareYear:I

    .line 420
    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareModelName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 421
    iput-wide v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStartRealtimeMs:J

    .line 422
    iput-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHasFirstFix:Z

    .line 431
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    .line 432
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getEmergencyHelper()Lcom/android/server/location/injector/EmergencyHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

    .line 433
    iput-object p3, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 436
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getNSConnectionHelper()Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    return-void
.end method

.method public static declared-synchronized create(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)Lcom/android/server/location/gnss/hal/GnssNative;
    .registers 5

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative;

    monitor-enter v0

    .line 384
    :try_start_3
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->isSupported()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 385
    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sInstance:Lcom/android/server/location/gnss/hal/GnssNative;

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 386
    new-instance v1, Lcom/android/server/location/gnss/hal/GnssNative;

    sget-object v2, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;-><init>(Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)V

    sput-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sInstance:Lcom/android/server/location/gnss/hal/GnssNative;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return-object v1

    :catchall_1f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initializeHal()V
    .registers 2

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative;

    monitor-enter v0

    .line 359
    :try_start_3
    sget-boolean v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHalInitialized:Z

    if-nez v1, :cond_1a

    .line 360
    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    if-nez v1, :cond_12

    .line 361
    new-instance v1, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-direct {v1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;-><init>()V

    sput-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    .line 363
    :cond_12
    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->classInitOnce()V

    const/4 v1, 0x1

    .line 364
    sput-boolean v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHalInitialized:Z
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    .line 366
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isSupported()Z
    .registers 2

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative;

    monitor-enter v0

    .line 373
    :try_start_3
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->initializeHal()V

    .line 374
    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isSupported()Z

    move-result v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private synthetic lambda$isInEmergencySession$25()Ljava/lang/Boolean;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1330
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    invoke-interface {p0}, Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;->isInEmergencySessionSEC()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isInEmergencySession$26()Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1334
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 1335
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSec()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 1334
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/EmergencyHelper;->isInEmergency(J)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCapabilitiesChanged$10(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1203
    invoke-virtual {p1, p2}, Landroid/location/GnssCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1207
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "gnss capabilities changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1209
    :goto_1f
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_2c

    .line 1210
    aget-object v1, v1, v0

    invoke-interface {v1, p2, p1}, Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2c
    return-void
.end method

.method private synthetic lambda$psdsDownloadRequest$12(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1241
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPsdsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;->onRequestPsdsDownload(I)V

    return-void
.end method

.method private synthetic lambda$reportAGpsStatus$3(II[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1120
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;->onReportAGpsStatus(II[B)V

    return-void
.end method

.method private synthetic lambda$reportAntennaInfo$7(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1153
    :goto_1
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 1154
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;->onReportAntennaInfo(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method private synthetic lambda$reportGeofenceAddStatus$15(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1261
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofenceAddStatus(II)V

    return-void
.end method

.method private synthetic lambda$reportGeofencePauseStatus$17(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1273
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofencePauseStatus(II)V

    return-void
.end method

.method private synthetic lambda$reportGeofenceRemoveStatus$16(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1267
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofenceRemoveStatus(II)V

    return-void
.end method

.method private synthetic lambda$reportGeofenceResumeStatus$18(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1279
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofenceResumeStatus(II)V

    return-void
.end method

.method private synthetic lambda$reportGeofenceStatus$14(ILandroid/location/Location;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1255
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofenceStatus(ILandroid/location/Location;)V

    return-void
.end method

.method private synthetic lambda$reportGeofenceTransition$13(ILandroid/location/Location;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1248
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofenceTransition(ILandroid/location/Location;IJ)V

    return-void
.end method

.method private synthetic lambda$reportLocation$0(ZLandroid/location/Location;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_20

    .line 1065
    iget-boolean v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHasFirstFix:Z

    if-nez v2, :cond_20

    .line 1066
    iput-boolean v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHasFirstFix:Z

    .line 1069
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStartRealtimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    move v3, v0

    .line 1070
    :goto_13
    iget-object v4, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    array-length v5, v4

    if-ge v3, v5, :cond_20

    .line 1071
    aget-object v4, v4, v3

    invoke-interface {v4, v2}, Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;->onReportFirstFix(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1075
    :cond_20
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1076
    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    const/high16 v3, 0x43c80000    # 400.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_31

    goto :goto_32

    :cond_31
    move v1, v0

    .line 1077
    :goto_32
    iget-boolean v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    const-string v3, "GnssManager"

    if-nez v2, :cond_41

    if-eqz v1, :cond_41

    const-string/jumbo v2, "speed nearing ITAR threshold - blocking further GNSS output"

    .line 1078
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 1079
    :cond_41
    iget-boolean v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v2, :cond_4d

    if-nez v1, :cond_4d

    const-string/jumbo v2, "speed leaving ITAR threshold - allowing further GNSS output"

    .line 1080
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_4d
    :goto_4d
    iput-boolean v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    .line 1085
    :cond_4f
    iget-boolean v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v1, :cond_54

    return-void

    .line 1089
    :cond_54
    :goto_54
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_61

    .line 1090
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;->onReportLocation(ZLandroid/location/Location;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_61
    return-void
.end method

.method private synthetic lambda$reportLocationBatch$11([Landroid/location/Location;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1233
    :goto_1
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 1234
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;->onReportLocations([Landroid/location/Location;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public static synthetic lambda$reportMeasurementData$5(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;Landroid/location/GnssMeasurementsEvent;)V
    .registers 2

    .line 1145
    invoke-interface {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;->onReportMeasurements(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method private synthetic lambda$reportMeasurementData$6(Landroid/location/GnssMeasurementsEvent;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1139
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_5

    return-void

    .line 1143
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 1145
    iget-object v4, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1a
    return-void
.end method

.method public static synthetic lambda$reportNavigationMessage$8(Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;Landroid/location/GnssNavigationMessage;)V
    .registers 2

    .line 1168
    invoke-interface {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;->onReportNavigationMessage(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method

.method private synthetic lambda$reportNavigationMessage$9(Landroid/location/GnssNavigationMessage;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1162
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_5

    return-void

    .line 1166
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 1168
    iget-object v4, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda16;

    invoke-direct {v5, v3, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1a
    return-void
.end method

.method private synthetic lambda$reportNfwNotification$24(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 1320
    iget-object v0, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;->onReportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    return-void
.end method

.method private synthetic lambda$reportNiNotification$19(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 1287
    iget-object v0, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;->onReportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic lambda$reportNmea$4(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1126
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 1130
    :goto_6
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 1131
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;->onReportNmea(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_13
    return-void
.end method

.method private synthetic lambda$reportStatus$1(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1098
    :goto_1
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 1099
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;->onReportStatus(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method private synthetic lambda$reportSvStatus$2(I[I[F[F[F[F[F)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1109
    invoke-static/range {p1 .. p7}, Landroid/location/GnssStatus;->wrap(I[I[F[F[F[F[F)Landroid/location/GnssStatus;

    move-result-object p1

    const/4 p2, 0x0

    .line 1111
    :goto_5
    iget-object p3, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    array-length p4, p3

    if-ge p2, p4, :cond_12

    .line 1112
    aget-object p3, p3, p2

    invoke-interface {p3, p1}, Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;->onReportSvStatus(Landroid/location/GnssStatus;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_12
    return-void
.end method

.method private synthetic lambda$requestFlpLocation$28(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1371
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;->onRequestFlpLocation(I)V

    return-void
.end method

.method private synthetic lambda$requestLocation$21(ZZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1300
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;->onRequestLocation(ZZ)V

    return-void
.end method

.method private synthetic lambda$requestLppeCommonIesCapability$27()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1365
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    invoke-interface {p0}, Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;->onRequestLppeCommonIesCapability()V

    return-void
.end method

.method private synthetic lambda$requestRefLocation$23()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1312
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    invoke-interface {p0}, Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;->onRequestRefLocation()V

    return-void
.end method

.method private synthetic lambda$requestSetID$20(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1294
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;->onRequestSetID(I)V

    return-void
.end method

.method private synthetic lambda$requestUbpCapability$29()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1377
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    invoke-interface {p0}, Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;->onRequestUbpCapability()V

    return-void
.end method

.method private synthetic lambda$requestUbpInfo$30(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1383
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;->onRequestUbpInfo(I)V

    return-void
.end method

.method private synthetic lambda$requestUtcTime$22()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1306
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTimeCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

    invoke-interface {p0}, Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;->onRequestUtcTime()V

    return-void
.end method

.method private synthetic lambda$requestWlanCapability$31()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1389
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    invoke-interface {p0}, Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;->onRequestWifiCapability()V

    return-void
.end method

.method private synthetic lambda$requestWlanScanInfo$32(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1395
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;->onRequestWifiScan(I)V

    return-void
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private static native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private static native native_agps_set_ref_location_cellid(IIIIII)V
.end method

.method private static native native_agps_set_ref_location_cellid(IIIIJII)V
.end method

.method private static native native_agps_set_ref_location_cellid(IIIIJIII)V
.end method

.method private static native native_class_init_once()V
.end method

.method private static native native_cleanup()V
.end method

.method private static native native_cleanup_batching()V
.end method

.method private static native native_configuration_update_extension(Ljava/lang/String;)V
.end method

.method private static native native_delete_aiding_data(I)V
.end method

.method private static native native_flush_batch()V
.end method

.method private static native native_get_batch_size()I
.end method

.method private static native native_get_internal_state()Ljava/lang/String;
.end method

.method private static native native_get_seh_gnss_hal_version()F
.end method

.method private static native native_init()Z
.end method

.method private static native native_init_batching()Z
.end method

.method private static native native_init_extension_location_off()Z
.end method

.method private static native native_init_extension_once()Z
.end method

.method private native native_init_once(Z)V
.end method

.method private static native native_inject_best_location(IDDDFFFFFFJIJD)V
.end method

.method private static native native_inject_flp_error(I)V
.end method

.method private static native native_inject_flp_location(IDDDFFFFFFJ)V
.end method

.method private static native native_inject_location(IDDDFFFFFFJIJD)V
.end method

.method private static native native_inject_lppe_com_ie_capability(IZZZIZZZZZ)V
.end method

.method private static native native_inject_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z
.end method

.method private static native native_inject_psds_data([BII)V
.end method

.method private static native native_inject_time(JJI)V
.end method

.method private static native native_inject_ubp_capability(ZZZZ)V
.end method

.method private static native native_inject_ubp_error(I)V
.end method

.method private static native native_inject_ubp_info(II)V
.end method

.method private static native native_inject_wlan_capability(IIJIII)V
.end method

.method private static native native_inject_wlan_error(I)V
.end method

.method private static native native_inject_wlan_scan_info([J[I[II)V
.end method

.method private static native native_is_antenna_info_supported()Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_is_gnss_visibility_control_supported()Z
.end method

.method private static native native_is_measurement_corrections_supported()Z
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_is_navigation_message_supported()Z
.end method

.method private static native native_is_seh_gnss_aidl_hal()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private static native native_read_nmea([BI)I
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_request_power_stats()V
.end method

.method private static native native_resume_geofence(II)Z
.end method

.method private static native native_send_ni_response(II)V
.end method

.method private static native native_send_supl_ni_message([BI)V
.end method

.method private static native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private static native native_set_position_mode(IIIIIZ)Z
.end method

.method private static native native_start()Z
.end method

.method private static native native_start_antenna_info_listening()Z
.end method

.method private static native native_start_batch(JFZ)Z
.end method

.method private static native native_start_measurement_collection(ZZI)Z
.end method

.method private static native native_start_navigation_message_collection()Z
.end method

.method private static native native_start_nmea_message_collection()Z
.end method

.method private static native native_start_sv_status_collection()Z
.end method

.method private static native native_stop()Z
.end method

.method private static native native_stop_antenna_info_listening()Z
.end method

.method private static native native_stop_batch()Z
.end method

.method private static native native_stop_measurement_collection()Z
.end method

.method private static native native_stop_navigation_message_collection()Z
.end method

.method private static native native_stop_nmea_message_collection()Z
.end method

.method private static native native_stop_sv_status_collection()Z
.end method

.method private static native native_supports_psds()Z
.end method

.method public static declared-synchronized setGnssHalForTest(Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative;

    monitor-enter v0

    .line 353
    :try_start_3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sput-object p0, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    const/4 p0, 0x0

    .line 354
    sput-boolean p0, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHalInitialized:Z

    const/4 p0, 0x0

    .line 355
    sput-object p0, Lcom/android/server/location/gnss/hal/GnssNative;->sInstance:Lcom/android/server/location/gnss/hal/GnssNative;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 356
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addAntennaInfoCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;)V
    .registers 4

    .line 476
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 477
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    return-void
.end method

.method public addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V
    .registers 4

    .line 441
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 442
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    return-void
.end method

.method public addGeofence(IDDDIIII)Z
    .registers 26

    move-object v0, p0

    .line 948
    iget-boolean v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 949
    iget-object v2, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    move v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->addGeofence(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method public addLocationCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;)V
    .registers 4

    .line 464
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 465
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    return-void
.end method

.method public addMeasurementCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;)V
    .registers 4

    .line 470
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 471
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    return-void
.end method

.method public addNavigationMessageCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;)V
    .registers 4

    .line 482
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 483
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    return-void
.end method

.method public addNmeaCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;)V
    .registers 4

    .line 458
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 459
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    return-void
.end method

.method public addStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;)V
    .registers 4

    .line 446
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 447
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    return-void
.end method

.method public addSvStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;)V
    .registers 4

    .line 452
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 453
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    return-void
.end method

.method public cleanup()V
    .registers 2

    .line 581
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 582
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->cleanup()V

    return-void
.end method

.method public cleanupBatching()V
    .registers 2

    .line 897
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 898
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->cleanupBatching()V

    return-void
.end method

.method public deleteAidingData(I)V
    .registers 3

    .line 662
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 663
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->deleteAidingData(I)V

    return-void
.end method

.method public flushBatch()V
    .registers 2

    .line 914
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 915
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->flushBatch()V

    return-void
.end method

.method public getBatchSize()I
    .registers 2

    .line 930
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 931
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->getBatchSize()I

    move-result p0

    return p0
.end method

.method public getCapabilities()Landroid/location/GnssCapabilities;
    .registers 1

    .line 596
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    return-object p0
.end method

.method public getConfiguration()Lcom/android/server/location/gnss/GnssConfiguration;
    .registers 1

    .line 564
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    return-object p0
.end method

.method public getHardwareModelName()Ljava/lang/String;
    .registers 1

    .line 610
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareModelName:Ljava/lang/String;

    return-object p0
.end method

.method public getHardwareYear()I
    .registers 1

    .line 603
    iget p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareYear:I

    return p0
.end method

.method public getInternalState()Ljava/lang/String;
    .registers 2

    .line 654
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 655
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->getInternalState()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPowerStats()Lcom/android/server/location/gnss/GnssPowerStats;
    .registers 1

    .line 589
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

    return-object p0
.end method

.method public getSehGnssHalVersion()F
    .registers 2

    .line 1422
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1423
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->getSehGnssHalVersion()F

    move-result p0

    return p0
.end method

.method public gnssConfigurationUpdateSec(Ljava/lang/String;)V
    .registers 3

    .line 1405
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1406
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->gnssConfigurationUpdateExtension(Ljava/lang/String;)V

    return-void
.end method

.method public init()Z
    .registers 2

    .line 572
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 573
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->init()Z

    move-result p0

    return p0
.end method

.method public initBatching()Z
    .registers 2

    .line 889
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 890
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->initBatching()Z

    move-result p0

    return p0
.end method

.method public initLocationOff()Z
    .registers 2

    .line 1400
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1401
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->initLocationOff()Z

    move-result p0

    return p0
.end method

.method public final initializeGnss(Z)V
    .registers 3

    .line 548
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const/4 v0, 0x0

    .line 549
    iput v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTopFlags:I

    .line 550
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->initOnce(Lcom/android/server/location/gnss/hal/GnssNative;Z)V

    .line 554
    iget-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->init()Z

    move-result p1

    const-string v0, "GnssManager"

    if-eqz p1, :cond_28

    .line 555
    iget-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->cleanup()V

    .line 556
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->initLocationOff()Z

    const-string/jumbo p0, "gnss hal initialized"

    .line 557
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_28
    const-string/jumbo p0, "gnss hal initialization failed"

    .line 559
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void
.end method

.method public injectBestLocation(Landroid/location/Location;)V
    .registers 28

    move-object/from16 v0, p0

    .line 720
    iget-boolean v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 723
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    move v1, v3

    :goto_12
    or-int/lit8 v1, v1, 0x1

    .line 724
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v4, 0x4

    goto :goto_1d

    :cond_1c
    move v4, v3

    :goto_1d
    or-int/2addr v1, v4

    .line 725
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_27

    const/16 v4, 0x8

    goto :goto_28

    :cond_27
    move v4, v3

    :goto_28
    or-int/2addr v1, v4

    .line 726
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_32

    const/16 v4, 0x10

    goto :goto_33

    :cond_32
    move v4, v3

    :goto_33
    or-int/2addr v1, v4

    .line 727
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v4, 0x20

    goto :goto_3e

    :cond_3d
    move v4, v3

    :goto_3e
    or-int/2addr v1, v4

    .line 728
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v4

    if-eqz v4, :cond_48

    const/16 v4, 0x40

    goto :goto_49

    :cond_48
    move v4, v3

    :goto_49
    or-int/2addr v1, v4

    .line 729
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v4

    if-eqz v4, :cond_53

    const/16 v4, 0x80

    goto :goto_54

    :cond_53
    move v4, v3

    :goto_54
    or-int v6, v1, v4

    .line 731
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    .line 732
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    .line 733
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 734
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v13

    .line 735
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v14

    .line 736
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 737
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v16

    .line 738
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v17

    .line 739
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v18

    .line 740
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v19

    .line 743
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v1

    if-eqz v1, :cond_85

    goto :goto_86

    :cond_85
    move v2, v3

    :goto_86
    or-int/lit8 v21, v2, 0x1

    .line 745
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v22

    .line 746
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v24

    .line 748
    iget-object v5, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual/range {v5 .. v25}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectBestLocation(IDDDFFFFFFJIJD)V

    return-void
.end method

.method public injectFlpError(I)V
    .registers 3

    .line 1443
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1444
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectFlpError(I)V

    return-void
.end method

.method public injectFlpLocation(IDDDFFFFFFJ)V
    .registers 34

    move-object/from16 v0, p0

    .line 1436
    iget-boolean v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1437
    iget-object v2, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move-wide/from16 v16, p14

    invoke-virtual/range {v2 .. v17}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectFlpLocation(IDDDFFFFFFJ)V

    return-void
.end method

.method public injectLocation(Landroid/location/Location;)V
    .registers 28

    move-object/from16 v0, p0

    .line 679
    iget-boolean v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 680
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 683
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_18

    :cond_17
    move v1, v3

    :goto_18
    or-int/lit8 v1, v1, 0x1

    .line 684
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x4

    goto :goto_23

    :cond_22
    move v4, v3

    :goto_23
    or-int/2addr v1, v4

    .line 685
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_2d

    const/16 v4, 0x8

    goto :goto_2e

    :cond_2d
    move v4, v3

    :goto_2e
    or-int/2addr v1, v4

    .line 686
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x10

    goto :goto_39

    :cond_38
    move v4, v3

    :goto_39
    or-int/2addr v1, v4

    .line 687
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v4

    if-eqz v4, :cond_43

    const/16 v4, 0x20

    goto :goto_44

    :cond_43
    move v4, v3

    :goto_44
    or-int/2addr v1, v4

    .line 688
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v4

    if-eqz v4, :cond_4e

    const/16 v4, 0x40

    goto :goto_4f

    :cond_4e
    move v4, v3

    :goto_4f
    or-int/2addr v1, v4

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v4

    if-eqz v4, :cond_59

    const/16 v4, 0x80

    goto :goto_5a

    :cond_59
    move v4, v3

    :goto_5a
    or-int v6, v1, v4

    .line 691
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    .line 692
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    .line 693
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 694
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v13

    .line 695
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v14

    .line 696
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 697
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v16

    .line 698
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v17

    .line 699
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v18

    .line 700
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v19

    .line 703
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v1

    if-eqz v1, :cond_8b

    goto :goto_8c

    :cond_8b
    move v2, v3

    :goto_8c
    or-int/lit8 v21, v2, 0x1

    .line 705
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v22

    .line 706
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v24

    .line 708
    iget-object v5, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual/range {v5 .. v25}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectLocation(IDDDFFFFFFJIJD)V

    :cond_9b
    return-void
.end method

.method public injectLppeComIeCapability(IZZZIZZZZZ)V
    .registers 24

    move-object v0, p0

    .line 1450
    iget-boolean v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1451
    iget-object v2, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectLppeComIeCapability(IZZZIZZZZZ)V

    return-void
.end method

.method public injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z
    .registers 3

    .line 881
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 882
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result p0

    return p0
.end method

.method public injectPsdsData([BII)V
    .registers 5

    .line 1038
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1039
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectPsdsData([BII)V

    return-void
.end method

.method public injectTime(JJI)V
    .registers 13

    .line 759
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 760
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectTime(JJI)V

    return-void
.end method

.method public injectUbpCapability(ZZZZ)V
    .registers 6

    .line 1458
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1459
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectUbpCapability(ZZZZ)V

    return-void
.end method

.method public injectUbpError(I)V
    .registers 3

    .line 1467
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1468
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectUbpError(I)V

    return-void
.end method

.method public injectUbpInfo(II)V
    .registers 4

    .line 1463
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1464
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectUbpInfo(II)V

    return-void
.end method

.method public injectWlanCapability(IIJIII)V
    .registers 18

    move-object v0, p0

    .line 1473
    iget-boolean v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1474
    iget-object v2, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectWlanCapability(IIJIII)V

    return-void
.end method

.method public injectWlanError(I)V
    .registers 3

    .line 1482
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1483
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectWlanError(I)V

    return-void
.end method

.method public injectWlanScanInfo([J[I[II)V
    .registers 6

    .line 1478
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1479
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectWlanScanInfo([J[I[II)V

    return-void
.end method

.method public isAntennaInfoSupported()Z
    .registers 2

    .line 791
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 792
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isAntennaInfoSupported()Z

    move-result p0

    return p0
.end method

.method public isGeofencingSupported()Z
    .registers 2

    .line 938
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 939
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isGeofencingSupported()Z

    move-result p0

    return p0
.end method

.method public isGnssAssertMessage(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "$"

    .line 1358
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isGnssVisibilityControlSupported()Z
    .registers 2

    .line 981
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 982
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isGnssVisibilityControlSupported()Z

    move-result p0

    return p0
.end method

.method public isInEmergencySession()Z
    .registers 3

    .line 1328
    sget-object v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/android/server/location/gnss/hal/GnssNative;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUSAMarket()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isCanadaMarket()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1329
    :cond_16
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 1333
    :cond_26
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isItarSpeedLimitExceeded()Z
    .registers 1

    .line 618
    iget-boolean p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    return p0
.end method

.method public isMeasurementCorrectionsSupported()Z
    .registers 2

    .line 873
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 874
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isMeasurementCorrectionsSupported()Z

    move-result p0

    return p0
.end method

.method public isMeasurementSupported()Z
    .registers 2

    .line 815
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 816
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isMeasurementSupported()Z

    move-result p0

    return p0
.end method

.method public isNavigationMessageCollectionSupported()Z
    .registers 2

    .line 767
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 768
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isNavigationMessageCollectionSupported()Z

    move-result p0

    return p0
.end method

.method public isPsdsSupported()Z
    .registers 2

    .line 1030
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1031
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isPsdsSupported()Z

    move-result p0

    return p0
.end method

.method public isSehGnssAidlHal()Z
    .registers 2

    .line 1427
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1428
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isSehGnssAidlHal()Z

    move-result p0

    return p0
.end method

.method public final onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V
    .registers 4

    .line 1202
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public pauseGeofence(I)Z
    .registers 3

    .line 965
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 966
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->pauseGeofence(I)Z

    move-result p0

    return p0
.end method

.method public psdsDownloadRequest(I)V
    .registers 3

    .line 1241
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public readNmea([BI)I
    .registers 4

    .line 671
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 672
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->readNmea([BI)I

    move-result p0

    return p0
.end method

.method public register()V
    .registers 4

    .line 536
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 537
    iput-boolean v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v0, 0x0

    .line 539
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->initializeGnss(Z)V

    const-string v1, "GnssManager"

    const-string/jumbo v2, "gnss hal started"

    .line 540
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :goto_15
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 543
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;->onHalStarted()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_22
    return-void
.end method

.method public removeGeofence(I)Z
    .registers 3

    .line 973
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 974
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->removeGeofence(I)Z

    move-result p0

    return p0
.end method

.method public reportAGpsStatus(II[B)V
    .registers 5

    .line 1119
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II[B)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportAntennaInfo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;)V"
        }
    .end annotation

    .line 1152
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/util/List;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportExtraAssertMessage(Ljava/lang/String;)V
    .registers 4

    .line 1344
    sget-object v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->isGnssAssertMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "method_reportExtraAssertMessage, message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Reset it"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->init()Z

    .line 1349
    :cond_2f
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onGnssEventUpdated(Ljava/lang/String;)V

    return-void
.end method

.method public reportGeofenceAddStatus(II)V
    .registers 4

    .line 1260
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportGeofencePauseStatus(II)V
    .registers 4

    .line 1272
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportGeofenceRemoveStatus(II)V
    .registers 4

    .line 1266
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportGeofenceResumeStatus(II)V
    .registers 4

    .line 1278
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportGeofenceStatus(ILandroid/location/Location;)V
    .registers 4

    .line 1254
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;ILandroid/location/Location;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportGeofenceTransition(ILandroid/location/Location;IJ)V
    .registers 14

    .line 1247
    new-instance v7, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;ILandroid/location/Location;IJ)V

    invoke-static {v7}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportGnssPowerStats(Lcom/android/server/location/gnss/GnssPowerStats;)V
    .registers 2

    .line 1217
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

    return-void
.end method

.method public reportGnssServiceDied()V
    .registers 3

    const-string v0, "GnssManager"

    const-string/jumbo v1, "gnss hal died - restarting shortly..."

    .line 1045
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportLocation(ZLandroid/location/Location;)V
    .registers 4

    .line 1064
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;ZLandroid/location/Location;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportLocationBatch([Landroid/location/Location;)V
    .registers 3

    .line 1232
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;[Landroid/location/Location;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
    .registers 3

    .line 1138
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/GnssMeasurementsEvent;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .registers 3

    .line 1161
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/GnssNavigationMessage;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 20

    .line 1319
    new-instance v10, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    invoke-static {v10}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 22

    .line 1286
    new-instance v11, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda33;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;IIIIILjava/lang/String;Ljava/lang/String;II)V

    invoke-static {v11}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportNmea(J)V
    .registers 4

    .line 1125
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;J)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportStatus(I)V
    .registers 3

    .line 1097
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportSvStatus(I[I[F[F[F[F[F)V
    .registers 18

    .line 1108
    new-instance v9, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I[I[F[F[F[F[F)V

    invoke-static {v9}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public requestFlpLocation(I)V
    .registers 3

    .line 1370
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public requestLocation(ZZ)V
    .registers 4

    .line 1299
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;ZZ)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public requestLppeCommonIesCapability()V
    .registers 2

    .line 1364
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public requestPowerStats()V
    .registers 2

    .line 997
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 998
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->requestPowerStats()V

    return-void
.end method

.method public requestRefLocation()V
    .registers 2

    .line 1311
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public requestSetID(I)V
    .registers 3

    .line 1294
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public requestUbpCapability()V
    .registers 2

    .line 1376
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public requestUbpInfo(I)V
    .registers 3

    .line 1382
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public requestUtcTime()V
    .registers 2

    .line 1306
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public requestWlanCapability()V
    .registers 2

    .line 1388
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public requestWlanScanInfo(I)V
    .registers 3

    .line 1394
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public restartHal()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 1054
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->initializeGnss(Z)V

    const-string v0, "GnssManager"

    const-string/jumbo v1, "gnss hal restarted"

    .line 1055
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1057
    :goto_d
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_1a

    .line 1058
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;->onHalRestarted()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1a
    return-void
.end method

.method public resumeGeofence(II)Z
    .registers 4

    .line 957
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 958
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->resumeGeofence(II)Z

    move-result p0

    return p0
.end method

.method public sendNiResponse(II)V
    .registers 4

    .line 989
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 990
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->sendNiResponse(II)V

    return-void
.end method

.method public sendSuplNiMessage([BI)V
    .registers 4

    .line 1410
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1411
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->sendSuplNiMessage([BI)V

    return-void
.end method

.method public setAGpsCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;)V
    .registers 4

    .line 512
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 513
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 514
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    return-void
.end method

.method public setAgpsReferenceLocationCellId(IIIIJII)V
    .registers 20

    move-object v0, p0

    .line 1417
    iget-boolean v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1418
    iget-object v2, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->setAgpsReferenceLocationCellId(IIIIJII)V

    return-void
.end method

.method public setAgpsReferenceLocationCellId(IIIIJIII)V
    .registers 22

    move-object v0, p0

    .line 1022
    iget-boolean v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1023
    iget-object v2, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->setAgpsReferenceLocationCellId(IIIIJIII)V

    return-void
.end method

.method public setAgpsServer(ILjava/lang/String;I)V
    .registers 5

    .line 1005
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1006
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->setAgpsServer(ILjava/lang/String;I)V

    return-void
.end method

.method public setAgpsSetId(ILjava/lang/String;)V
    .registers 4

    .line 1013
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1014
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->setAgpsSetId(ILjava/lang/String;)V

    return-void
.end method

.method public setGeofenceCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;)V
    .registers 4

    .line 488
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 490
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    return-void
.end method

.method public final setGnssHardwareModelName(Ljava/lang/String;)V
    .registers 2

    .line 1227
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareModelName:Ljava/lang/String;

    return-void
.end method

.method public setGnssYearOfHardware(I)V
    .registers 2

    .line 1222
    iput p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareYear:I

    return-void
.end method

.method public setLocationRequestCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;)V
    .registers 4

    .line 500
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 501
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 502
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    return-void
.end method

.method public setLppeHelperCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;)V
    .registers 4

    .line 525
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 526
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 527
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLppeHelperCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LppeHelperCallbacks;

    return-void
.end method

.method public setNotificationCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;)V
    .registers 4

    .line 518
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 519
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 520
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    return-void
.end method

.method public setPositionMode(IIIIIZ)Z
    .registers 15

    .line 645
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 646
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->setPositionMode(IIIIIZ)Z

    move-result p0

    return p0
.end method

.method public setPsdsCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;)V
    .registers 4

    .line 506
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 507
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPsdsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 508
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPsdsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

    return-void
.end method

.method public setSubHalMeasurementCorrectionsCapabilities(I)V
    .registers 3

    .line 1187
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1188
    invoke-virtual {v0, p1}, Landroid/location/GnssCapabilities;->withSubHalMeasurementCorrectionsFlags(I)Landroid/location/GnssCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1189
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    return-void
.end method

.method public setSubHalPowerIndicationCapabilities(I)V
    .registers 3

    .line 1195
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1196
    invoke-virtual {v0, p1}, Landroid/location/GnssCapabilities;->withSubHalPowerFlags(I)Landroid/location/GnssCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1197
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    return-void
.end method

.method public setTimeCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;)V
    .registers 4

    .line 494
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 495
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTimeCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 496
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTimeCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

    return-void
.end method

.method public setTopHalCapabilities(I)V
    .registers 3

    .line 1178
    iget v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTopFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTopFlags:I

    .line 1179
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1180
    invoke-virtual {v0, p1}, Landroid/location/GnssCapabilities;->withTopHalFlags(I)Landroid/location/GnssCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1181
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    return-void
.end method

.method public start()Z
    .registers 3

    .line 625
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 626
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStartRealtimeMs:J

    const/4 v0, 0x0

    .line 627
    iput-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHasFirstFix:Z

    .line 628
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->start()Z

    move-result p0

    return p0
.end method

.method public startAntennaInfoListening()Z
    .registers 2

    .line 799
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 800
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startAntennaInfoListening()Z

    move-result p0

    return p0
.end method

.method public startBatch(JFZ)Z
    .registers 6

    .line 906
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 907
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startBatch(JFZ)Z

    move-result p0

    return p0
.end method

.method public startMeasurementCollection(ZZI)Z
    .registers 5

    .line 824
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 825
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startMeasurementCollection(ZZI)Z

    move-result p0

    return p0
.end method

.method public startNavigationMessageCollection()Z
    .registers 2

    .line 775
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 776
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startNavigationMessageCollection()Z

    move-result p0

    return p0
.end method

.method public startNmeaMessageCollection()Z
    .registers 2

    .line 857
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 858
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startNmeaMessageCollection()Z

    move-result p0

    return p0
.end method

.method public startSvStatusCollection()Z
    .registers 2

    .line 841
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 842
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startSvStatusCollection()Z

    move-result p0

    return p0
.end method

.method public stop()Z
    .registers 2

    .line 635
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 636
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stop()Z

    move-result p0

    return p0
.end method

.method public stopAntennaInfoListening()Z
    .registers 2

    .line 807
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 808
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopAntennaInfoListening()Z

    move-result p0

    return p0
.end method

.method public stopBatch()V
    .registers 2

    .line 922
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 923
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopBatch()V

    return-void
.end method

.method public stopMeasurementCollection()Z
    .registers 2

    .line 833
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 834
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopMeasurementCollection()Z

    move-result p0

    return p0
.end method

.method public stopNavigationMessageCollection()Z
    .registers 2

    .line 783
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 784
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopNavigationMessageCollection()Z

    move-result p0

    return p0
.end method

.method public stopNmeaMessageCollection()Z
    .registers 2

    .line 865
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 866
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopNmeaMessageCollection()Z

    move-result p0

    return p0
.end method

.method public stopSvStatusCollection()Z
    .registers 2

    .line 849
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 850
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopSvStatusCollection()Z

    move-result p0

    return p0
.end method
