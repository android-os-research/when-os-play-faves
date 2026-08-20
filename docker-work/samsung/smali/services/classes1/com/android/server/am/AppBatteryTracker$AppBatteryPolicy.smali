.class public final Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
.super Lcom/android/server/am/BaseAppStatePolicy;
.source "AppBatteryTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppBatteryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppBatteryPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStatePolicy<",
        "Lcom/android/server/am/AppBatteryTracker;",
        ">;"
    }
.end annotation


# static fields
.field public static final BATTERY_USAGE_TYPE_BACKGROUND:I = 0x4

.field public static final BATTERY_USAGE_TYPE_CACHED:I = 0x10

.field public static final BATTERY_USAGE_TYPE_FOREGROUND:I = 0x2

.field public static final BATTERY_USAGE_TYPE_FOREGROUND_SERVICE:I = 0x8

.field public static final BATTERY_USAGE_TYPE_UNSPECIFIED:I = 0x1

.field public static final DEFAULT_BG_CURRENT_DRAIN_DECOUPLE_THRESHOLD:Z = true

.field public static final DEFAULT_BG_CURRENT_DRAIN_POWER_COMPONENTS:I = -0x1

.field public static final INDEX_HIGH_CURRENT_DRAIN_THRESHOLD:I = 0x1

.field public static final INDEX_REGULAR_CURRENT_DRAIN_THRESHOLD:I = 0x0

.field public static final KEY_BG_CURRENT_DRAIN_AUTO_RESTRICT_ABUSIVE_APPS_ENABLED:Ljava/lang/String; = "bg_current_drain_auto_restrict_abusive_apps_enabled"

.field public static final KEY_BG_CURRENT_DRAIN_DECOUPLE_THRESHOLDS:Ljava/lang/String; = "bg_current_drain_decouple_thresholds"

.field public static final KEY_BG_CURRENT_DRAIN_EVENT_DURATION_BASED_THRESHOLD_ENABLED:Ljava/lang/String; = "bg_current_drain_event_duration_based_threshold_enabled"

.field public static final KEY_BG_CURRENT_DRAIN_EXEMPTED_TYPES:Ljava/lang/String; = "bg_current_drain_exempted_types"

.field public static final KEY_BG_CURRENT_DRAIN_HIGH_THRESHOLD_BY_BG_LOCATION:Ljava/lang/String; = "bg_current_drain_high_threshold_by_bg_location"

.field public static final KEY_BG_CURRENT_DRAIN_HIGH_THRESHOLD_TO_BG_RESTRICTED:Ljava/lang/String; = "bg_current_drain_high_threshold_to_bg_restricted"

.field public static final KEY_BG_CURRENT_DRAIN_HIGH_THRESHOLD_TO_RESTRICTED_BUCKET:Ljava/lang/String; = "bg_current_drain_high_threshold_to_restricted_bucket"

.field public static final KEY_BG_CURRENT_DRAIN_INTERACTION_GRACE_PERIOD:Ljava/lang/String; = "bg_current_drain_interaction_grace_period"

.field public static final KEY_BG_CURRENT_DRAIN_LOCATION_MIN_DURATION:Ljava/lang/String; = "bg_current_drain_location_min_duration"

.field public static final KEY_BG_CURRENT_DRAIN_MEDIA_PLAYBACK_MIN_DURATION:Ljava/lang/String; = "bg_current_drain_media_playback_min_duration"

.field public static final KEY_BG_CURRENT_DRAIN_MONITOR_ENABLED:Ljava/lang/String; = "bg_current_drain_monitor_enabled"

.field public static final KEY_BG_CURRENT_DRAIN_POWER_COMPONENTS:Ljava/lang/String; = "bg_current_drain_power_components"

.field public static final KEY_BG_CURRENT_DRAIN_THRESHOLD_TO_BG_RESTRICTED:Ljava/lang/String; = "bg_current_drain_threshold_to_bg_restricted"

.field public static final KEY_BG_CURRENT_DRAIN_THRESHOLD_TO_RESTRICTED_BUCKET:Ljava/lang/String; = "bg_current_drain_threshold_to_restricted_bucket"

.field public static final KEY_BG_CURRENT_DRAIN_TYPES_TO_BG_RESTRICTED:Ljava/lang/String; = "bg_current_drain_types_to_bg_restricted"

.field public static final KEY_BG_CURRENT_DRAIN_TYPES_TO_RESTRICTED_BUCKET:Ljava/lang/String; = "bg_current_drain_types_to_restricted_bucket"

.field public static final KEY_BG_CURRENT_DRAIN_WINDOW:Ljava/lang/String; = "bg_current_drain_window"

.field public static final TIME_STAMP_INDEX_BG_RESTRICTED:I = 0x1

.field public static final TIME_STAMP_INDEX_LAST:I = 0x2

.field public static final TIME_STAMP_INDEX_RESTRICTED_BUCKET:I


# instance fields
.field public volatile mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

.field public mBatteryFullChargeMah:I

.field public volatile mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

.field public volatile mBgCurrentDrainBgRestrictedThreshold:[F

.field public volatile mBgCurrentDrainBgRestrictedTypes:I

.field public volatile mBgCurrentDrainDecoupleThresholds:Z

.field public volatile mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

.field public volatile mBgCurrentDrainExemptedTypes:I

.field public volatile mBgCurrentDrainHighThresholdByBgLocation:Z

.field public volatile mBgCurrentDrainInteractionGracePeriodMs:J

.field public volatile mBgCurrentDrainLocationMinDuration:J

.field public volatile mBgCurrentDrainMediaPlaybackMinDuration:J

.field public volatile mBgCurrentDrainPowerComponents:I

.field public volatile mBgCurrentDrainRestrictedBucketThreshold:[F

.field public volatile mBgCurrentDrainRestrictedBucketTypes:I

.field public volatile mBgCurrentDrainWindowMs:J

.field public final mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

.field public final mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

.field public final mDefaultBgCurrentDrainBgRestrictedThreshold:F

.field public final mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

.field public final mDefaultBgCurrentDrainExemptedTypes:I

.field public final mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

.field public final mDefaultBgCurrentDrainInteractionGracePeriodMs:J

.field public final mDefaultBgCurrentDrainLocationMinDuration:J

.field public final mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

.field public final mDefaultBgCurrentDrainPowerComponent:I

.field public final mDefaultBgCurrentDrainRestrictedBucket:F

.field public final mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

.field public final mDefaultBgCurrentDrainTypesToBgRestricted:I

.field public final mDefaultBgCurrentDrainWindowMs:J

.field public final mDefaultCurrentDrainTypesToRestrictedBucket:I

.field public final mHighBgBatteryPackages:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "[J[",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mLastInteractionTime:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppBatteryTracker;)V
    .registers 15

    .line 1515
    iget-object v0, p2, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 1516
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110040

    .line 1517
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string v1, "bg_current_drain_monitor_enabled"

    .line 1515
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/am/BaseAppStatePolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTracker;Ljava/lang/String;Z)V

    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 1416
    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    new-array p1, p1, [F

    .line 1422
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 1497
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 1504
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    .line 1518
    iget-object p1, p2, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    .line 1519
    iget-object p1, p2, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1070087

    .line 1520
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object p2

    .line 1523
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_49

    aget p2, p2, v1

    goto :goto_4b

    :cond_49
    aget p2, p2, v2

    :goto_4b
    iput p2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucket:F

    const v0, 0x1070086

    .line 1524
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    .line 1527
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_61

    aget v0, v0, v1

    goto :goto_63

    :cond_61
    aget v0, v0, v2

    :goto_63
    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedThreshold:F

    const v3, 0x10e003a

    .line 1528
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainWindowMs:J

    .line 1530
    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainInteractionGracePeriodMs:J

    const v5, 0x1070085

    .line 1531
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v5

    .line 1534
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v6

    if-eqz v6, :cond_87

    aget v5, v5, v1

    goto :goto_89

    :cond_87
    aget v5, v5, v2

    :goto_89
    iput v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

    const v6, 0x1070084

    .line 1535
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v6

    .line 1538
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v7

    if-eqz v7, :cond_9f

    aget v6, v6, v1

    goto :goto_a1

    :cond_9f
    aget v6, v6, v2

    :goto_a1
    iput v6, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

    const v7, 0x10e0036

    .line 1539
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

    const v9, 0x10e0035

    .line 1541
    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainLocationMinDuration:J

    const v11, 0x111003e

    .line 1543
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    const v11, 0x111003d

    .line 1545
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    const v11, 0x10e0039

    .line 1547
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultCurrentDrainTypesToRestrictedBucket:I

    const v11, 0x10e0038

    .line 1549
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainTypesToBgRestricted:I

    const v11, 0x10e0037

    .line 1551
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainPowerComponent:I

    const v11, 0x10e0034

    .line 1553
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainExemptedTypes:I

    const v11, 0x111003f

    .line 1555
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

    .line 1557
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    aput p2, p1, v2

    .line 1559
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    aput v5, p1, v1

    .line 1561
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aput v0, p1, v2

    .line 1563
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aput v6, p1, v1

    .line 1565
    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 1566
    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 1568
    iput-wide v7, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    .line 1570
    iput-wide v9, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    return-void
.end method

.method public static batteryUsageTypesToString(I)Ljava/lang/String;
    .registers 5

    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1808
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_d
    if-eqz v1, :cond_66

    if-eqz v3, :cond_16

    const/16 v3, 0x7c

    .line 1811
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_16
    if-eq v1, v2, :cond_59

    const/4 v3, 0x2

    if-eq v1, v3, :cond_53

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4d

    const/16 v3, 0x8

    if-eq v1, v3, :cond_47

    const/16 v3, 0x10

    if-eq v1, v3, :cond_41

    .line 1831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_41
    const-string v3, "CACHED"

    .line 1828
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    :cond_47
    const-string v3, "FOREGROUND_SERVICE"

    .line 1825
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    :cond_4d
    const-string v3, "BACKGROUND"

    .line 1822
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    :cond_53
    const-string v3, "FOREGROUND"

    .line 1819
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    :cond_59
    const-string v3, "UNSPECIFIED"

    .line 1816
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5e
    not-int v1, v1

    and-int/2addr p0, v1

    .line 1809
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    move v3, v2

    goto :goto_d

    :cond_66
    const-string p0, "]"

    .line 1835
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5

    .line 1574
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 1575
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_14

    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 1577
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1579
    :cond_14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method


# virtual methods
.method public calcPercentage(I[D[D)[D
    .registers 9

    const/4 v0, 0x0

    if-lez p1, :cond_12

    .line 1786
    iget-object v1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    invoke-static {v1}, Lcom/android/server/am/AppBatteryTracker;->-$$Nest$fgetmDebugUidPercentages(Lcom/android/server/am/AppBatteryTracker;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    goto :goto_13

    :cond_12
    move-object p1, v0

    :goto_13
    if-eqz p1, :cond_19

    .line 1787
    invoke-virtual {p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getPercentage()[D

    move-result-object v0

    :cond_19
    const/4 p1, 0x0

    .line 1788
    :goto_1a
    array-length v1, p2

    if-ge p1, v1, :cond_30

    if-eqz v0, :cond_22

    .line 1789
    aget-wide v1, v0, p1

    goto :goto_2b

    :cond_22
    aget-wide v1, p2, p1

    iget v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    :goto_2b
    aput-wide v1, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    :cond_30
    return-object p3
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 2060
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "APP BATTERY TRACKER POLICY SETTINGS:"

    .line 2061
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2064
    invoke-super {v0, v7, v1}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2065
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1ee

    .line 2066
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "bg_current_drain_threshold_to_restricted_bucket"

    .line 2067
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x3d

    .line 2068
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2069
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    const/4 v8, 0x0

    aget v3, v3, v8

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 2071
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "bg_current_drain_high_threshold_to_restricted_bucket"

    .line 2072
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2074
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    const/4 v9, 0x1

    aget v3, v3, v9

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 2076
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "bg_current_drain_threshold_to_bg_restricted"

    .line 2077
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2078
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2079
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aget v3, v3, v8

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 2081
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "bg_current_drain_high_threshold_to_bg_restricted"

    .line 2082
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2084
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aget v3, v3, v9

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 2086
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "bg_current_drain_window"

    .line 2087
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2088
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2089
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    invoke-virtual {v7, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 2090
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "bg_current_drain_interaction_grace_period"

    .line 2091
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2092
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2093
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    invoke-virtual {v7, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 2094
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "bg_current_drain_media_playback_min_duration"

    .line 2095
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2096
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2097
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    invoke-virtual {v7, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 2098
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "bg_current_drain_location_min_duration"

    .line 2099
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2100
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2101
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    invoke-virtual {v7, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 2102
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "bg_current_drain_event_duration_based_threshold_enabled"

    .line 2103
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2104
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2105
    iget-boolean v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2106
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    .line 2107
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2109
    iget-boolean v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2110
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "bg_current_drain_types_to_restricted_bucket"

    .line 2111
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2113
    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    invoke-static {v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->batteryUsageTypesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2114
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "bg_current_drain_types_to_bg_restricted"

    .line 2115
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2116
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2117
    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    invoke-static {v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->batteryUsageTypesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2118
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "bg_current_drain_power_components"

    .line 2119
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2120
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2121
    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2122
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "bg_current_drain_exempted_types"

    .line 2123
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2124
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2125
    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    invoke-static {v3}, Lcom/android/server/am/BaseAppStateTracker;->stateTypesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2126
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "bg_current_drain_high_threshold_by_bg_location"

    .line 2127
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2128
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2129
    iget-boolean v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 2130
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Full charge capacity="

    .line 2131
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2132
    iget v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mAh"

    .line 2133
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2135
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Excessive current drain detected:"

    .line 2136
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2137
    iget-object v10, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2138
    :try_start_14d
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 2139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    if-lez v11, :cond_1e1

    .line 2141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move v15, v8

    :goto_16b
    if-ge v15, v11, :cond_1e9

    .line 2143
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 2144
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 2145
    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2146
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v2

    check-cast v17, [J

    .line 2147
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v1

    check-cast v18, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 2148
    iget-wide v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-wide v3, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getCurrentDrainThresholdIndex(IJJ)I

    move-result v1

    const-string v6, "%s%s: (threshold=%4.2f%%/%4.2f%%) %s / %s\n"

    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v12, v4, v8

    .line 2152
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v9

    const/4 v2, 0x2

    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    aget v3, v3, v1

    .line 2153
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aget v1, v3, v1

    .line 2154
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v2

    const/16 v16, 0x4

    aget-wide v2, v17, v8

    aget-object v19, v18, v8

    move-object/from16 v1, p0

    move-object v8, v4

    move-wide v4, v13

    move-object/from16 v20, v6

    move-object/from16 v6, v19

    .line 2155
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v16

    const/16 v16, 0x5

    aget-wide v2, v17, v9

    aget-object v6, v18, v9

    move-object/from16 v1, p0

    move-wide v4, v13

    .line 2158
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v16

    move-object/from16 v1, v20

    .line 2150
    invoke-virtual {v7, v1, v8}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    goto :goto_16b

    .line 2164
    :cond_1e1
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "(none)"

    .line 2165
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2167
    :cond_1e9
    monitor-exit v10

    goto :goto_1ee

    :catchall_1eb
    move-exception v0

    monitor-exit v10
    :try_end_1ed
    .catchall {:try_start_14d .. :try_end_1ed} :catchall_1eb

    throw v0

    :cond_1ee
    :goto_1ee
    return-void
.end method

.method public final formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-lez p0, :cond_27

    if-eqz p5, :cond_27

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2174
    invoke-static {p1, p2, p3, p4}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x1

    invoke-virtual {p5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    const/4 p1, 0x2

    invoke-virtual {p5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    const-string p1, "%s %s (%s)"

    .line 2173
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    const-string p0, "0"

    return-object p0
.end method

.method public final getCurrentDrainThresholdIndex(IJJ)I
    .registers 7

    .line 1963
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->hasMediaPlayback(IJJ)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->hasLocation(IJJ)Z

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

.method public getProposedRestrictionLevel(Ljava/lang/String;II)I
    .registers 14

    const/16 p1, 0x1e

    const/4 v0, 0x0

    if-gt p3, p1, :cond_6

    return v0

    .line 1761
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1762
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz v2, :cond_56

    .line 1764
    iget-object v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, p2, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v6

    .line 1765
    iget-object p2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, [J

    .line 1766
    aget-wide v2, p2, v0

    iget-wide v8, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    add-long/2addr v6, v8

    cmp-long v2, v2, v6

    const/4 v3, 0x1

    if-lez v2, :cond_2b

    move v2, v3

    goto :goto_2c

    :cond_2b
    move v2, v0

    .line 1768
    :goto_2c
    iget-object v6, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v6, Lcom/android/server/am/AppBatteryTracker;

    iget-object v6, v6, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 1769
    invoke-virtual {v6}, Lcom/android/server/am/AppRestrictionController;->isAutoRestrictAbusiveAppEnabled()Z

    move-result v6

    if-eqz v6, :cond_3d

    iget-boolean p0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    if-eqz p0, :cond_3d

    move v0, v3

    :cond_3d
    if-eqz v2, :cond_44

    if-eqz v0, :cond_44

    const/16 p0, 0x28

    goto :goto_45

    :cond_44
    move p0, p1

    :goto_45
    const/16 v0, 0x32

    if-le p3, v0, :cond_52

    .line 1775
    aget-wide p1, p2, v3

    cmp-long p1, p1, v4

    if-lez p1, :cond_50

    move p0, v0

    .line 1776
    :cond_50
    monitor-exit v1

    return p0

    :cond_52
    if-ne p3, v0, :cond_56

    .line 1778
    monitor-exit v1

    return p0

    .line 1781
    :cond_56
    monitor-exit v1

    return p1

    :catchall_58
    move-exception p0

    .line 1782
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_9 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public handleUidBatteryUsage(ILcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V
    .registers 26

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 1840
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BaseAppStatePolicy;->shouldExemptUid(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    return-void

    .line 1851
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getPercentage()[D

    move-result-object v1

    iget v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->sumPercentageOfTypes([DI)D

    move-result-wide v8

    .line 1853
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getPercentage()[D

    move-result-object v1

    iget v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->sumPercentageOfTypes([DI)D

    move-result-wide v10

    .line 1855
    iget-object v12, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1856
    :try_start_23
    iget-object v1, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v1, v7}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(I)I

    move-result v13

    const/16 v1, 0x32

    if-lt v13, v1, :cond_33

    .line 1859
    monitor-exit v12

    return-void

    .line 1861
    :cond_33
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    const-wide/16 v14, 0x0

    invoke-virtual {v1, v7, v14, v15}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v16

    .line 1862
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 1863
    iget-wide v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getCurrentDrainThresholdIndex(IJJ)I

    move-result v1

    .line 1865
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 1866
    iget-boolean v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainDecoupleThresholds:Z

    .line 1867
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    aget v4, v4, v1

    float-to-double v4, v4

    .line 1868
    iget-object v6, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aget v1, v6, v1

    float-to-double v14, v1

    const/4 v6, 0x2

    const/16 v20, 0x0

    const/4 v1, 0x1

    if-gez v2, :cond_a8

    cmpl-double v2, v8, v4

    if-ltz v2, :cond_87

    .line 1873
    iget-wide v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    add-long v16, v16, v4

    cmp-long v2, v18, v16

    if-lez v2, :cond_83

    new-array v2, v6, [J

    aput-wide v18, v2, v20

    new-array v4, v6, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    aput-object p2, v4, v20

    .line 1879
    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v20, v1

    goto :goto_85

    :cond_83
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_85
    move v5, v1

    goto :goto_8b

    :cond_87
    move/from16 v5, v20

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_8b
    if-eqz v3, :cond_106

    cmpl-double v3, v10, v14

    if-ltz v3, :cond_106

    if-nez v2, :cond_a0

    new-array v2, v6, [J

    new-array v4, v6, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 1889
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1891
    :cond_a0
    aput-wide v18, v2, v1

    .line 1892
    aput-object p2, v4, v1

    move v5, v1

    move/from16 v20, v5

    goto :goto_106

    .line 1896
    :cond_a8
    iget-object v6, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 1897
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1898
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    .line 1899
    aget-wide v21, v6, v20

    cmpl-double v4, v8, v4

    if-ltz v4, :cond_d6

    .line 1901
    iget-wide v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    add-long v16, v16, v4

    cmp-long v4, v18, v16

    if-lez v4, :cond_d2

    const-wide/16 v4, 0x0

    cmp-long v8, v21, v4

    if-nez v8, :cond_d0

    .line 1903
    aput-wide v18, v6, v20

    .line 1904
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    aput-object p2, v4, v20

    :cond_d0
    move v4, v1

    goto :goto_d4

    :cond_d2
    move/from16 v4, v20

    :goto_d4
    move v5, v1

    goto :goto_d9

    :cond_d6
    move/from16 v4, v20

    move v5, v4

    :goto_d9
    cmpl-double v8, v10, v14

    if-ltz v8, :cond_f9

    if-nez v3, :cond_eb

    const/16 v3, 0x28

    if-ne v13, v3, :cond_ed

    .line 1921
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    add-long v21, v21, v3

    cmp-long v3, v18, v21

    if-lez v3, :cond_ed

    :cond_eb
    move/from16 v20, v1

    :cond_ed
    if-eqz v20, :cond_f7

    .line 1925
    aput-wide v18, v6, v1

    .line 1926
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    aput-object p2, v2, v1

    :cond_f7
    move v5, v1

    goto :goto_106

    :cond_f9
    const-wide/16 v8, 0x0

    .line 1933
    aput-wide v8, v6, v1

    .line 1934
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    move/from16 v20, v4

    .line 1938
    :cond_106
    :goto_106
    monitor-exit v12
    :try_end_107
    .catchall {:try_start_23 .. :try_end_107} :catchall_118

    if-eqz v5, :cond_117

    if-eqz v20, :cond_117

    .line 1947
    iget-object v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppBatteryTracker;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const/16 v2, 0x600

    const/4 v3, 0x2

    invoke-virtual {v0, v7, v2, v3, v1}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    :cond_117
    return-void

    :catchall_118
    move-exception v0

    .line 1938
    :try_start_119
    monitor-exit v12
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_118

    throw v0
.end method

.method public final hasLocation(IJJ)Z
    .registers 16

    .line 1975
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1978
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppBatteryTracker;

    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 1979
    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, p1, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    const/4 v9, 0x1

    if-nez v0, :cond_1c

    return v9

    .line 1983
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    if-nez v0, :cond_21

    return v1

    :cond_21
    const-wide/16 v3, 0x0

    sub-long p4, p2, p4

    .line 1986
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const/16 v8, 0x8

    move v3, p1

    move-wide v6, p2

    .line 1987
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppRestrictionController;->getForegroundServiceTotalDurationsSince(IJJI)J

    move-result-wide p1

    .line 1989
    iget-wide p3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    cmp-long p0, p1, p3

    if-ltz p0, :cond_38

    move v1, v9

    :cond_38
    return v1
.end method

.method public final hasMediaPlayback(IJJ)Z
    .registers 13

    .line 1969
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppBatteryTracker;

    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 1970
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppRestrictionController;->getCompositeMediaPlaybackDurations(IJJ)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    cmp-long p0, p1, p3

    if-ltz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public onBackgroundRestrictionChanged(ILjava/lang/String;Z)V
    .registers 6

    if-eqz p3, :cond_3

    return-void

    .line 2020
    :cond_3
    iget-object p2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2023
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_20

    .line 2025
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, [J

    const-wide/16 v0, 0x0

    const/4 p3, 0x1

    aput-wide v0, p1, p3

    .line 2026
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    const/4 p1, 0x0

    aput-object p1, p0, p3

    .line 2028
    :cond_20
    monitor-exit p2

    return-void

    :catchall_22
    move-exception p0

    monitor-exit p2
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public onPropertiesChanged(Ljava/lang/String;)V
    .registers 4

    .line 1585
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_100

    goto/16 :goto_d4

    :sswitch_d
    const-string v0, "bg_current_drain_window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_d4

    :cond_17
    const/16 v1, 0xf

    goto/16 :goto_d4

    :sswitch_1b
    const-string v0, "bg_current_drain_threshold_to_restricted_bucket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_d4

    :cond_25
    const/16 v1, 0xe

    goto/16 :goto_d4

    :sswitch_29
    const-string v0, "bg_current_drain_threshold_to_bg_restricted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_d4

    :cond_33
    const/16 v1, 0xd

    goto/16 :goto_d4

    :sswitch_37
    const-string v0, "bg_current_drain_types_to_bg_restricted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_d4

    :cond_41
    const/16 v1, 0xc

    goto/16 :goto_d4

    :sswitch_45
    const-string v0, "bg_current_drain_exempted_types"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_d4

    :cond_4f
    const/16 v1, 0xb

    goto/16 :goto_d4

    :sswitch_53
    const-string v0, "bg_current_drain_types_to_restricted_bucket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_d4

    :cond_5d
    const/16 v1, 0xa

    goto/16 :goto_d4

    :sswitch_61
    const-string v0, "bg_current_drain_interaction_grace_period"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_d4

    :cond_6b
    const/16 v1, 0x9

    goto/16 :goto_d4

    :sswitch_6f
    const-string v0, "bg_current_drain_high_threshold_by_bg_location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_d4

    :cond_79
    const/16 v1, 0x8

    goto/16 :goto_d4

    :sswitch_7d
    const-string v0, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto :goto_d4

    :cond_86
    const/4 v1, 0x7

    goto :goto_d4

    :sswitch_88
    const-string v0, "bg_current_drain_high_threshold_to_bg_restricted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto :goto_d4

    :cond_91
    const/4 v1, 0x6

    goto :goto_d4

    :sswitch_93
    const-string v0, "bg_current_drain_location_min_duration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto :goto_d4

    :cond_9c
    const/4 v1, 0x5

    goto :goto_d4

    :sswitch_9e
    const-string v0, "bg_current_drain_high_threshold_to_restricted_bucket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    goto :goto_d4

    :cond_a7
    const/4 v1, 0x4

    goto :goto_d4

    :sswitch_a9
    const-string v0, "bg_current_drain_power_components"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    goto :goto_d4

    :cond_b2
    const/4 v1, 0x3

    goto :goto_d4

    :sswitch_b4
    const-string v0, "bg_current_drain_media_playback_min_duration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    goto :goto_d4

    :cond_bd
    const/4 v1, 0x2

    goto :goto_d4

    :sswitch_bf
    const-string v0, "bg_current_drain_decouple_thresholds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    goto :goto_d4

    :cond_c8
    const/4 v1, 0x1

    goto :goto_d4

    :sswitch_ca
    const-string v0, "bg_current_drain_event_duration_based_threshold_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    goto :goto_d4

    :cond_d3
    const/4 v1, 0x0

    :goto_d4
    packed-switch v1, :pswitch_data_142

    .line 1621
    invoke-super {p0, p1}, Lcom/android/server/am/BaseAppStatePolicy;->onPropertiesChanged(Ljava/lang/String;)V

    goto :goto_fe

    .line 1600
    :pswitch_db
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainWindow()V

    goto :goto_fe

    .line 1615
    :pswitch_df
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainExemptedTypes()V

    goto :goto_fe

    .line 1603
    :pswitch_e3
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainInteractionGracePeriod()V

    goto :goto_fe

    .line 1597
    :pswitch_e7
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateBgCurrentDrainAutoRestrictAbusiveAppsEnabled()V

    goto :goto_fe

    .line 1609
    :pswitch_eb
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainLocationMinDuration()V

    goto :goto_fe

    .line 1594
    :pswitch_ef
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainThreshold()V

    goto :goto_fe

    .line 1606
    :pswitch_f3
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainMediaPlaybackMinDuration()V

    goto :goto_fe

    .line 1618
    :pswitch_f7
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainDecoupleThresholds()V

    goto :goto_fe

    .line 1612
    :pswitch_fb
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainEventDurationBasedThresholdEnabled()V

    :goto_fe
    return-void

    nop

    :sswitch_data_100
    .sparse-switch
        -0x756855de -> :sswitch_ca
        -0x701eaca1 -> :sswitch_bf
        -0x1fb1101d -> :sswitch_b4
        -0x1f35f949 -> :sswitch_a9
        -0x1d805c6c -> :sswitch_9e
        0x303f164 -> :sswitch_93
        0x60568db -> :sswitch_88
        0x7be7274 -> :sswitch_7d
        0x17cc3411 -> :sswitch_6f
        0x1edfa25c -> :sswitch_61
        0x270cf0f7 -> :sswitch_53
        0x2ad74b9f -> :sswitch_45
        0x43bedfbe -> :sswitch_37
        0x513daa8c -> :sswitch_29
        0x6f6da4c5 -> :sswitch_1b
        0x74efacd7 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_fb
        :pswitch_f7
        :pswitch_f3
        :pswitch_ef
        :pswitch_ef
        :pswitch_eb
        :pswitch_ef
        :pswitch_e7
        :pswitch_ef
        :pswitch_e3
        :pswitch_ef
        :pswitch_df
        :pswitch_ef
        :pswitch_ef
        :pswitch_ef
        :pswitch_db
    .end packed-switch
.end method

.method public onSystemReady()V
    .registers 2

    .line 1740
    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 1741
    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryFullCharge()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    .line 1742
    invoke-super {p0}, Lcom/android/server/am/BaseAppStatePolicy;->onSystemReady()V

    .line 1743
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainThreshold()V

    .line 1744
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainWindow()V

    .line 1745
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainInteractionGracePeriod()V

    .line 1746
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainMediaPlaybackMinDuration()V

    .line 1747
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainLocationMinDuration()V

    .line 1748
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainEventDurationBasedThresholdEnabled()V

    .line 1749
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainExemptedTypes()V

    .line 1750
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainDecoupleThresholds()V

    .line 1751
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateBgCurrentDrainAutoRestrictAbusiveAppsEnabled()V

    return-void
.end method

.method public onTrackerEnabled(Z)V
    .registers 2

    .line 1636
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker;

    invoke-static {p0, p1}, Lcom/android/server/am/AppBatteryTracker;->-$$Nest$monCurrentDrainMonitorEnabled(Lcom/android/server/am/AppBatteryTracker;Z)V

    return-void
.end method

.method public onUidRemovedLocked(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2054
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2055
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 7

    .line 1994
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1995
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1996
    iget-object v1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(ILjava/lang/String;)I

    move-result p1

    const/16 v1, 0x32

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1c

    goto :goto_2b

    .line 2002
    :cond_1c
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_2b

    .line 2004
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeAt(I)V

    move p1, v2

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p1, 0x0

    .line 2008
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_3c

    if-eqz p1, :cond_3b

    .line 2011
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const/16 p1, 0x300

    const/4 v0, 0x3

    invoke-virtual {p0, p2, p1, v0, v2}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    :cond_3b
    return-void

    :catchall_3c
    move-exception p0

    .line 2008
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public onUserRemovedLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2040
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    .line 2041
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_1b

    .line 2042
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2045
    :cond_1e
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_26
    if-ltz v0, :cond_3c

    .line 2046
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_39

    .line 2047
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_3c
    return-void
.end method

.method public reset()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2033
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2034
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 2035
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker;

    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->reset()V

    return-void
.end method

.method public final sumPercentageOfTypes([DI)D
    .registers 7

    .line 1796
    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    const-wide/16 v0, 0x0

    :goto_6
    if-eqz p0, :cond_16

    .line 1798
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    .line 1799
    aget-wide v2, p1, v2

    add-double/2addr v0, v2

    not-int p0, p0

    and-int/2addr p2, p0

    .line 1797
    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    goto :goto_6

    :cond_16
    return-wide v0
.end method

.method public final updateBgCurrentDrainAutoRestrictAbusiveAppsEnabled()V
    .registers 4

    .line 1732
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    const-string v1, "activity_manager"

    const-string v2, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    return-void
.end method

.method public final updateCurrentDrainDecoupleThresholds()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "bg_current_drain_decouple_thresholds"

    const/4 v2, 0x1

    .line 1725
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainDecoupleThresholds:Z

    return-void
.end method

.method public final updateCurrentDrainEventDurationBasedThresholdEnabled()V
    .registers 4

    .line 1711
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    const-string v1, "activity_manager"

    const-string v2, "bg_current_drain_event_duration_based_threshold_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    return-void
.end method

.method public final updateCurrentDrainExemptedTypes()V
    .registers 4

    .line 1718
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainExemptedTypes:I

    const-string v1, "activity_manager"

    const-string v2, "bg_current_drain_exempted_types"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    return-void
.end method

.method public final updateCurrentDrainInteractionGracePeriod()V
    .registers 5

    .line 1690
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainInteractionGracePeriodMs:J

    const-string v2, "activity_manager"

    const-string v3, "bg_current_drain_interaction_grace_period"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    return-void
.end method

.method public final updateCurrentDrainLocationMinDuration()V
    .registers 5

    .line 1704
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainLocationMinDuration:J

    const-string v2, "activity_manager"

    const-string v3, "bg_current_drain_location_min_duration"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    return-void
.end method

.method public final updateCurrentDrainMediaPlaybackMinDuration()V
    .registers 5

    .line 1697
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

    const-string v2, "activity_manager"

    const-string v3, "bg_current_drain_media_playback_min_duration"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    return-void
.end method

.method public final updateCurrentDrainThreshold()V
    .registers 7

    .line 1640
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucket:F

    const-string v2, "activity_manager"

    const-string v3, "bg_current_drain_threshold_to_restricted_bucket"

    .line 1641
    invoke-static {v2, v3, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 1644
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

    const-string v4, "bg_current_drain_high_threshold_to_restricted_bucket"

    .line 1645
    invoke-static {v2, v4, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    const/4 v4, 0x1

    aput v1, v0, v4

    .line 1648
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedThreshold:F

    const-string v5, "bg_current_drain_threshold_to_bg_restricted"

    .line 1649
    invoke-static {v2, v5, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    aput v1, v0, v3

    .line 1652
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

    const-string v5, "bg_current_drain_high_threshold_to_bg_restricted"

    .line 1653
    invoke-static {v2, v5, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    aput v1, v0, v4

    .line 1656
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultCurrentDrainTypesToRestrictedBucket:I

    const-string v1, "bg_current_drain_types_to_restricted_bucket"

    .line 1657
    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    .line 1660
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainTypesToBgRestricted:I

    const-string v1, "bg_current_drain_types_to_bg_restricted"

    .line 1661
    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    .line 1664
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainPowerComponent:I

    const-string v1, "bg_current_drain_power_components"

    .line 1665
    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    .line 1668
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5c

    .line 1669
    sget-object v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->BATT_DIMENS:[Landroid/os/BatteryConsumer$Dimensions;

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    goto :goto_71

    :cond_5c
    const/4 v0, 0x5

    new-array v1, v0, [Landroid/os/BatteryConsumer$Dimensions;

    .line 1671
    iput-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    :goto_61
    if-ge v3, v0, :cond_71

    .line 1673
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    new-instance v4, Landroid/os/BatteryConsumer$Dimensions;

    iget v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    invoke-direct {v4, v5, v3}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 1676
    :cond_71
    :goto_71
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

    const-string v1, "bg_current_drain_high_threshold_by_bg_location"

    .line 1677
    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    return-void
.end method

.method public final updateCurrentDrainWindow()V
    .registers 5

    .line 1683
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainWindowMs:J

    const-string v2, "activity_manager"

    const-string v3, "bg_current_drain_window"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    return-void
.end method

.method public updateTrackerEnabled()V
    .registers 2

    .line 1627
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    if-lez v0, :cond_8

    .line 1628
    invoke-super {p0}, Lcom/android/server/am/BaseAppStatePolicy;->updateTrackerEnabled()V

    goto :goto_e

    :cond_8
    const/4 v0, 0x0

    .line 1630
    iput-boolean v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 1631
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onTrackerEnabled(Z)V

    :goto_e
    return-void
.end method
