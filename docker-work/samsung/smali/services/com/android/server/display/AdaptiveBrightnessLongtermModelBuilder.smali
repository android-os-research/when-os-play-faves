.class public Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessLongtermModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;,
        Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;,
        Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;,
        Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$PackageBroadcastReceiver;,
        Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;,
        Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;,
        Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;,
        Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;
    }
.end annotation


# static fields
.field public static final ADAPTIVE_BRIGHTNESS_STATS_FILE:Ljava/lang/String; = "adaptive_brightness_stats_sec.xml"

.field public static final ATTR_BATTERY_LEVEL:Ljava/lang/String; = "batteryLevel"

.field public static final ATTR_COLOR_SAMPLE_DURATION:Ljava/lang/String; = "colorSampleDuration"

.field public static final ATTR_COLOR_TEMPERATURE:Ljava/lang/String; = "colorTemperature"

.field public static final ATTR_COLOR_VALUE_BUCKETS:Ljava/lang/String; = "colorValueBuckets"

.field public static final ATTR_DEFAULT_CONFIG:Ljava/lang/String; = "defaultConfig"

.field public static final ATTR_LAST_NITS:Ljava/lang/String; = "lastNits"

.field public static final ATTR_LUX:Ljava/lang/String; = "lux"

.field public static final ATTR_LUX_TIMESTAMPS:Ljava/lang/String; = "luxTimestamps"

.field public static final ATTR_NIGHT_MODE:Ljava/lang/String; = "nightMode"

.field public static final ATTR_NITS:Ljava/lang/String; = "nits"

.field public static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final ATTR_POWER_SAVE:Ljava/lang/String; = "powerSaveFactor"

.field public static final ATTR_REDUCE_BRIGHT_COLORS:Ljava/lang/String; = "reduceBrightColors"

.field public static final ATTR_REDUCE_BRIGHT_COLORS_OFFSET:Ljava/lang/String; = "reduceBrightColorsOffset"

.field public static final ATTR_REDUCE_BRIGHT_COLORS_STRENGTH:Ljava/lang/String; = "reduceBrightColorsStrength"

.field public static final ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final ATTR_UNIQUE_DISPLAY_ID:Ljava/lang/String; = "uniqueDisplayId"

.field public static final ATTR_USER:Ljava/lang/String; = "user"

.field public static final ATTR_USER_POINT:Ljava/lang/String; = "userPoint"

.field public static final COLOR_SAMPLE_COMPONENT_MASK:I = 0x4

.field public static final COLOR_SAMPLE_DURATION:J

.field public static final DEBUG:Z = true

.field public static final DEBUG_SPEW:Z = true

.field public static final EVENTS_FILE:Ljava/lang/String; = "brightness_events_sec.xml"

.field public static final FORMAT:Ljava/text/SimpleDateFormat;

.field public static final MAX_EVENTS_FOR_BOUNDARY:I = 0x14

.field public static final MAX_EVENT_AGE:J

.field public static final MODEL_ID:Ljava/lang/String; = "sbs:0"

.field public static final MSG_ACTIVE_MODE_CHANGED:I = 0x6

.field public static final MSG_AMBIENT_LUX_CHANGED:I = 0x5

.field public static final MSG_BACKGROUND_START:I = 0x0

.field public static final MSG_BRIGHTNESS_BNR_PACKAGE_CLEARED:I = 0x8

.field public static final MSG_BRIGHTNESS_CHANGED:I = 0x1

.field public static final MSG_BRIGHTNESS_CONFIG_CHANGED:I = 0x4

.field public static final MSG_SHORT_TERM_MODEL_VALID:I = 0x7

.field public static final MSG_START_ADAPTIVE_BRIGHTNESS_STATS_TRACKER:I = 0x3

.field public static final MSG_STOP_ADAPTIVE_BRIGHTNESS_STATS_TRACKER:I = 0x2

.field public static final TAG:Ljava/lang/String; = "AdaptiveBrightnessLongtermModelBuilder"

.field public static final TAG_EVENT:Ljava/lang/String; = "event"

.field public static final TAG_EVENTS:Ljava/lang/String; = "events"


# instance fields
.field public mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

.field public mAdaptiveBrightnessStatsTrackerStarted:Z

.field public final mBgHandler:Landroid/os/Handler;

.field public mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field public final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mColorSamplingEnabled:Z

.field public final mComparatorAscendingForLux:Ljava/util/Comparator;

.field public final mComparatorDecsendingForWeight:Ljava/util/Comparator;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentUserId:I

.field public final mDataCollectionLock:Ljava/lang/Object;

.field public mDisplayListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

.field public mEvents:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mEventsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mEventsDirty:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mEventsLock"
        }
    .end annotation
.end field

.field public final mEventsLock:Ljava/lang/Object;

.field public mFrameRate:F

.field public final mHbmLux:I

.field public final mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

.field public mLastAmbientLux:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataCollectionLock"
        }
    .end annotation
.end field

.field public mLastBatteryLevel:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataCollectionLock"
        }
    .end annotation
.end field

.field public mLastBrightness:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataCollectionLock"
        }
    .end annotation
.end field

.field public mLastBrightnessChangeEvent:Landroid/hardware/display/BrightnessChangeEvent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataCollectionLock"
        }
    .end annotation
.end field

.field public mLastBrightnessSpline:Landroid/util/Spline;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataCollectionLock"
        }
    .end annotation
.end field

.field public mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

.field public final mMaxBrightnessForNonHbmLux:F

.field public mMaximumBrightnessLimitCount:[I

.field public mMaximumBrightnessLimitLux:[F

.field public final mMaximumBrightnessSpline:Landroid/util/Spline;

.field public final mMinimumBrightnessSpline:Landroid/util/Spline;

.field public mNoFramesToSample:I

.field public mPackageBroadcastReceiver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$PackageBroadcastReceiver;

.field public mSettingsObserver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;

.field public mStarted:Z

.field public mTestModeEnabled:Z

.field public mUserActivityStateListener:Landroid/os/PowerManagerInternal$UserActivityStateListener;

.field public final mUserManager:Landroid/os/UserManager;

.field public volatile mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z


# direct methods
.method public static synthetic $r8$lambda$5ABtRO4SXURUd-CFqHa2tPRyQiE(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->lambda$scheduleWriteAdaptiveBrightnessLongtermModelBuilderState$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$JiZpIZoV7gE3_4-He87C3-CMLAs(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->lambda$restartAdaptiveBrightnessStatsTracker$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$KQmyedszOhSxgU3WlhrXTBKFsZ0(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->lambda$dump$2(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAdaptiveBrightnessStatsTracker(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdaptiveBrightnessStatsTrackerStarted(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBgHandler(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightnessConfiguration(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmColorSamplingEnabled(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBrightnessConfiguration(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbackgroundStart(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->backgroundStart(F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbatteryLevelChanged(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->batteryLevelChanged(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisableColorSampling(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->disableColorSampling()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menableColorSampling(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->enableColorSampling()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAmbientLuxChanged(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->handleAmbientLuxChanged(F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBrightnessBnrPackageCleared(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->handleBrightnessBnrPackageCleared()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBrightnessChanged(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;FZFZZJLjava/lang/String;Landroid/util/Spline;)V
    .registers 10

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->handleBrightnessChanged(FZFZZJLjava/lang/String;Landroid/util/Spline;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleShortTermModelValid(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->handleShortTermModelValid()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleWriteAdaptiveBrightnessLongtermModelBuilderState(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->scheduleWriteAdaptiveBrightnessLongtermModelBuilderState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartAdaptiveBrightnessStatsTracker(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->startAdaptiveBrightnessStatsTracker()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopAdaptiveBrightnessStatsTracker(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->stopAdaptiveBrightnessStatsTracker()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateColorSampling(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->updateColorSampling()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 122
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->MAX_EVENT_AGE:J

    .line 158
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 160
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->COLOR_SAMPLE_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;Lcom/android/server/display/BrightnessMappingStrategy;)V
    .registers 8

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    .line 166
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/hardware/display/BrightnessChangeEvent;

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    const/4 v0, 0x0

    .line 194
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mCurrentUserId:I

    .line 197
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 198
    iput v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBatteryLevel:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 200
    iput v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    .line 202
    iput v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastAmbientLux:F

    const/4 v1, 0x0

    .line 204
    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessSpline:Landroid/util/Spline;

    .line 206
    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessChangeEvent:Landroid/hardware/display/BrightnessChangeEvent;

    .line 227
    new-instance v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;

    invoke-direct {v2, p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    iput-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mComparatorDecsendingForWeight:Ljava/util/Comparator;

    .line 239
    new-instance v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$2;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    iput-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mComparatorAscendingForLux:Ljava/util/Comparator;

    .line 252
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p3, :cond_49

    .line 255
    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    goto :goto_50

    .line 257
    :cond_49
    new-instance p3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    invoke-direct {p3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;-><init>()V

    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 259
    :goto_50
    new-instance p3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p3, p0, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    .line 260
    const-class p3, Landroid/os/UserManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserManager:Landroid/os/UserManager;

    .line 262
    new-instance p3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    invoke-direct {p3, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData-IA;)V

    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    .line 264
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mHbmLux:I

    .line 265
    iput-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 267
    new-instance p2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;

    invoke-direct {p2, p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserActivityStateListener:Landroid/os/PowerManagerInternal$UserActivityStateListener;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 283
    invoke-virtual {p4, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result p2

    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaxBrightnessForNonHbmLux:F

    .line 285
    const-class p3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 286
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getMinimumBrightnessCurve()Landroid/util/Pair;

    move-result-object p3

    .line 287
    iget-object p4, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, [F

    .line 288
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, [F

    .line 289
    invoke-static {p4, p3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMinimumBrightnessSpline:Landroid/util/Spline;

    .line 291
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getMaximumBrightnessCurve()Landroid/util/Pair;

    move-result-object p1

    .line 292
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, p3

    check-cast v1, [F

    check-cast p3, [F

    array-length p3, p3

    const/4 v2, 0x1

    .line 293
    invoke-static {v1, v2, p3}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitLux:[F

    .line 294
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [F

    .line 295
    array-length p3, p1

    sub-int/2addr p3, v2

    aput p2, p1, p3

    .line 297
    invoke-static {p4, p1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessSpline:Landroid/util/Spline;

    .line 298
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitLux:[F

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitCount:[I

    .line 299
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private synthetic lambda$dump$2(Ljava/io/PrintWriter;)V
    .registers 2

    .line 1146
    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private synthetic lambda$restartAdaptiveBrightnessStatsTracker$0(Z)V
    .registers 2

    .line 388
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->readAdaptiveBrightnessStats()V

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->setMaxWeight(I)V

    .line 393
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->stopAdaptiveBrightnessStatsTracker()V

    .line 394
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->startAdaptiveBrightnessStatsTracker()V

    return-void
.end method

.method private synthetic lambda$scheduleWriteAdaptiveBrightnessLongtermModelBuilderState$1()V
    .registers 2

    const/4 v0, 0x0

    .line 813
    iput-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z

    .line 814
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->writeEvents()V

    .line 815
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->writeAdaptiveBrightnessStats()V

    return-void
.end method


# virtual methods
.method public addBrightnessWeightDirectly(FFFF)V
    .registers 11

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addBrightnessWeightDirectly: l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v0, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p4, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->addUserDataPoint(FF)V

    .line 1262
    iget-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p4}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessSpline()Landroid/util/Spline;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessSpline:Landroid/util/Spline;

    .line 1263
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->addDirectly(IFFFLandroid/util/Spline;)V

    return-void
.end method

.method public final backgroundStart(F)V
    .registers 7

    .line 324
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->readEvents()V

    .line 325
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->readAdaptiveBrightnessStats()V

    .line 327
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mSettingsObserver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;

    .line 328
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->registerBrightnessModeObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->startAdaptiveBrightnessStatsTracker()V

    .line 330
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 331
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserActivityStateListener:Landroid/os/PowerManagerInternal$UserActivityStateListener;

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerUserActivityStateListener(Landroid/os/PowerManagerInternal$UserActivityStateListener;)V

    .line 333
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 334
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 335
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 336
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 337
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 340
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    .line 341
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 343
    new-instance v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver-IA;)V

    iput-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 344
    new-instance v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$PackageBroadcastReceiver;

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$PackageBroadcastReceiver;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$PackageBroadcastReceiver-IA;)V

    iput-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mPackageBroadcastReceiver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$PackageBroadcastReceiver;

    .line 346
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 347
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mPackageBroadcastReceiver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$PackageBroadcastReceiver;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 349
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->scheduleIdleJob(Landroid/content/Context;)V

    .line 352
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_7a
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    const/4 p1, 0x1

    .line 354
    iput-boolean p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    .line 355
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_84

    .line 356
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->enableColorSampling()V

    return-void

    :catchall_84
    move-exception p0

    .line 355
    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw p0
.end method

.method public final batteryLevelChanged(II)V
    .registers 4

    .line 1253
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1254
    :try_start_6
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBatteryLevel:F

    .line 1255
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final buildBrightnessConfiguration([Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 13

    .line 661
    array-length v0, p1

    .line 663
    new-array v1, v0, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_12

    .line 666
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->copy()Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 671
    :cond_12
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mComparatorDecsendingForWeight:Ljava/util/Comparator;

    invoke-static {v1, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move p1, v2

    :cond_18
    if-ge p1, v0, :cond_70

    .line 677
    aget-object v3, v1, p1

    invoke-virtual {v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result v3

    .line 678
    aget-object v4, v1, p1

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v4

    add-int/lit8 p1, p1, 0x1

    move v5, p1

    :goto_29
    if-ge v5, v0, :cond_18

    .line 681
    aget-object v6, v1, v5

    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result v6

    .line 682
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v7

    .line 687
    sget-boolean v8, Lcom/android/server/power/PowerManagerUtil;->USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL:Z

    if-eqz v8, :cond_55

    .line 688
    invoke-static {v6, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleMinimumRatio(FF)F

    move-result v8

    .line 689
    invoke-static {v6, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v9

    cmpl-float v6, v6, v3

    if-lez v6, :cond_4e

    mul-float/2addr v8, v4

    mul-float/2addr v9, v4

    .line 692
    invoke-static {v7, v8, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    goto :goto_62

    :cond_4e
    mul-float/2addr v9, v4

    mul-float/2addr v8, v4

    .line 696
    invoke-static {v7, v9, v8}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    goto :goto_62

    :cond_55
    cmpl-float v6, v6, v3

    if-lez v6, :cond_5e

    .line 702
    invoke-static {v7, v4}, Landroid/util/MathUtils;->max(FF)F

    move-result v6

    goto :goto_62

    .line 704
    :cond_5e
    invoke-static {v7, v4}, Landroid/util/MathUtils;->min(FF)F

    move-result v6

    .line 708
    :goto_62
    invoke-static {v7, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_6d

    .line 709
    aget-object v7, v1, v5

    invoke-virtual {v7, v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->setBrightness(F)V

    :cond_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_70
    move p1, v2

    :goto_71
    if-ge p1, v0, :cond_87

    .line 722
    aget-object v3, v1, p1

    invoke-virtual {v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v3

    iget v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaxBrightnessForNonHbmLux:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_84

    .line 723
    aget-object v3, v1, p1

    invoke-virtual {v3, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->setBrightness(F)V

    :cond_84
    add-int/lit8 p1, p1, 0x1

    goto :goto_71

    .line 729
    :cond_87
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mComparatorAscendingForLux:Ljava/util/Comparator;

    invoke-static {v1, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const-string/jumbo p1, "lux sorted: "

    .line 731
    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->printArrayBrightnessWeights([Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Ljava/lang/String;)V

    .line 733
    new-array p1, v0, [F

    .line 734
    new-array v3, v0, [F

    .line 735
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitCount:[I

    array-length v4, v4

    new-array v4, v4, [Z

    move v5, v2

    :goto_9c
    if-ge v5, v0, :cond_138

    .line 737
    aget-object v6, v1, v5

    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result v6

    aput v6, p1, v5

    .line 738
    aget-object v6, v1, v5

    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v6

    aput v6, v3, v5

    .line 740
    iget-object v6, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMinimumBrightnessSpline:Landroid/util/Spline;

    aget v7, p1, v5

    invoke-virtual {v6, v7}, Landroid/util/Spline;->interpolate(F)F

    move-result v6

    .line 741
    iget-object v7, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessSpline:Landroid/util/Spline;

    aget v8, p1, v5

    invoke-virtual {v7, v8}, Landroid/util/Spline;->interpolate(F)F

    move-result v7

    .line 742
    aget v8, v3, v5

    .line 743
    invoke-static {v8, v6, v7}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v8

    .line 745
    aget v9, v3, v5

    invoke-static {v9, v8}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v9

    if-nez v9, :cond_134

    .line 746
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buildBrightnessConfiguration: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, p1, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " lux, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v3, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " nits Limit: ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " ~ "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    aget v6, v3, v5

    cmpl-float v6, v6, v7

    if-lez v6, :cond_132

    move v6, v2

    .line 750
    :goto_112
    iget-object v7, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitLux:[F

    array-length v9, v7

    if-ge v6, v9, :cond_132

    .line 751
    aget v7, v7, v6

    aget v9, p1, v5

    cmpl-float v7, v7, v9

    if-ltz v7, :cond_12f

    .line 752
    aget-boolean v7, v4, v6

    if-eqz v7, :cond_124

    goto :goto_132

    .line 753
    :cond_124
    iget-object v7, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitCount:[I

    aget v9, v7, v6

    const/4 v10, 0x1

    add-int/2addr v9, v10

    aput v9, v7, v6

    .line 754
    aput-boolean v10, v4, v6

    goto :goto_132

    :cond_12f
    add-int/lit8 v6, v6, 0x1

    goto :goto_112

    .line 759
    :cond_132
    :goto_132
    aput v8, v3, v5

    :cond_134
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9c

    .line 764
    :cond_138
    :try_start_138
    new-instance p0, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {p0, p1, v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    const-string/jumbo p1, "sbs:0"

    .line 765
    invoke-virtual {p0, p1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 768
    invoke-virtual {p0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_147} :catch_148

    goto :goto_14d

    :catch_148
    move-exception p0

    .line 771
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_14d
    return-object p0
.end method

.method public clearBrightnessEvents()V
    .registers 4

    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v1, "clearBrightnessEvents()"

    .line 400
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_a
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 405
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    const-string v2, "brightness_events_sec.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 406
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 407
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 410
    :cond_22
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    const-string v1, "adaptive_brightness_stats_sec.xml"

    invoke-virtual {p0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 411
    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 412
    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    .line 414
    :cond_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final disableColorSampling()V
    .registers 4

    .line 1201
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 1204
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->enableColorSampling(ZI)Z

    .line 1205
    iput-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    .line 1206
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDisplayListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

    if-eqz v0, :cond_1b

    .line 1207
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    .line 1208
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDisplayListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

    :cond_1b
    const-string p0, "AdaptiveBrightnessLongtermModelBuilder"

    const-string/jumbo v0, "turning off color sampling"

    .line 1211
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 11

    const-string v0, "AdaptiveBrightnessLongtermModelBuilder state:"

    .line 1096
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1098
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastBatteryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBatteryLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastLightData.lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    iget v2, v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->lux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastLightData.timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    iget-wide v2, v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_8 .. :try_end_7b} :catchall_28a

    .line 1104
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1105
    :try_start_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEventsDirty="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEvents.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/BrightnessChangeEvent;

    const/4 v2, 0x0

    move v3, v2

    .line 1108
    :goto_b8
    array-length v4, v0

    if-ge v3, v4, :cond_1b0

    .line 1109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    aget-object v7, v0, v3

    iget-wide v7, v7, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", isUserSetBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget-boolean v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", powerBrightnessFactor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", isDefaultBrightnessConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget-boolean v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " {"

    .line 1115
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v4, v2

    .line 1116
    :goto_168
    aget-object v5, v0, v3

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v5, v5

    if-ge v4, v5, :cond_1a6

    if-eqz v4, :cond_176

    const-string v5, ", "

    .line 1118
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1120
    :cond_176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    iget-object v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    iget-object v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    aget-wide v6, v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_168

    :cond_1a6
    const-string/jumbo v4, "}"

    .line 1122
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b8

    .line 1124
    :cond_1b0
    monitor-exit v1
    :try_end_1b1
    .catchall {:try_start_7e .. :try_end_1b1} :catchall_287

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMinimumBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMinimumBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaximumBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mMaximumBrightnessLimitLux=["

    .line 1128
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v0, v2

    .line 1129
    :goto_1e3
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitLux:[F

    array-length v1, v1

    if-ge v0, v1, :cond_20d

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitLux:[F

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1131
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitLux:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1fe

    const-string v3, ", "

    goto :goto_200

    :cond_1fe
    const-string v3, "]"

    :goto_200
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1130
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e3

    .line 1133
    :cond_20d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  mMaximumBrightnessLimitCount=["

    .line 1135
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1136
    :goto_215
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitCount:[I

    array-length v0, v0

    if-ge v2, v0, :cond_23f

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitCount:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1138
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitCount:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v2, v1, :cond_230

    const-string v1, ", "

    goto :goto_232

    :cond_230
    const-string v1, "]"

    :goto_232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1137
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_215

    .line 1140
    :cond_23f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxBrightnessForNonHbmLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaxBrightnessForNonHbmLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1147
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    if-eqz v0, :cond_286

    .line 1148
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1149
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->dump(Ljava/io/PrintWriter;)V

    :cond_286
    return-void

    :catchall_287
    move-exception p0

    .line 1124
    :try_start_288
    monitor-exit v1
    :try_end_289
    .catchall {:try_start_288 .. :try_end_289} :catchall_287

    throw p0

    :catchall_28a
    move-exception p0

    .line 1103
    :try_start_28b
    monitor-exit v0
    :try_end_28c
    .catchall {:try_start_28b .. :try_end_28c} :catchall_28a

    throw p0
.end method

.method public final dumpLocal(Ljava/io/PrintWriter;)V
    .registers 4

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdaptiveBrightnessStatsTrackerStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorSamplingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNoFramesToSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mNoFramesToSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mFrameRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enableColorSampling()V
    .registers 6

    .line 1161
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_dd

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 1162
    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_dd

    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    if-nez v0, :cond_dd

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    if-eqz v0, :cond_dd

    .line 1165
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_dd

    .line 1169
    :cond_24
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFrameRate(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mFrameRate:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const-string v2, "AdaptiveBrightnessLongtermModelBuilder"

    if-gtz v1, :cond_3b

    const-string p0, "Default display has a zero or negative framerate."

    .line 1171
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1174
    :cond_3b
    sget-wide v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->COLOR_SAMPLE_DURATION:J

    long-to-float v1, v3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mNoFramesToSample:I

    .line 1176
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getSamplingAttributes()Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color sampling mask=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getComponentMask()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dataSpace=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getDataspace()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pixelFormat=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getPixelFormat()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1178
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    if-eqz v0, :cond_c4

    .line 1184
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getPixelFormat()I

    move-result v1

    const/16 v3, 0x37

    if-ne v1, v3, :cond_c4

    .line 1185
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getComponentMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c4

    .line 1187
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    const/4 v1, 0x1

    iget v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mNoFramesToSample:I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->enableColorSampling(ZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "turning on color sampling for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mNoFramesToSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frames, success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_c4
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    if-eqz v0, :cond_dd

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDisplayListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

    if-nez v0, :cond_dd

    .line 1195
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener-IA;)V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDisplayListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

    .line 1196
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_dd
    :goto_dd
    return-void
.end method

.method public getBrightnessLearningMaxLimitCount()[I
    .registers 3

    .line 1284
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitCount:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1285
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitCount:[I

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([II)V

    return-object v0
.end method

.method public getEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 427
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_6d

    .line 428
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getProfileIds(Landroid/os/UserManager;I)[I

    move-result-object p0

    .line 429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 430
    :goto_1b
    array-length v4, p0

    const/4 v5, 0x1

    if-ge v3, v4, :cond_35

    .line 431
    aget v4, p0, v3

    if-eqz p2, :cond_27

    if-eq v4, p1, :cond_26

    goto :goto_27

    :cond_26
    move v5, v2

    .line 435
    :cond_27
    :goto_27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 437
    :cond_35
    new-instance p0, Ljava/util/ArrayList;

    array-length p1, v1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 438
    :goto_3b
    array-length p1, v1

    if-ge v2, p1, :cond_67

    .line 439
    aget-object p1, v1, v2

    iget p1, p1, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_64

    .line 441
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5a

    .line 442
    aget-object p1, v1, v2

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 444
    :cond_5a
    new-instance p1, Landroid/hardware/display/BrightnessChangeEvent;

    aget-object p2, v1, v2

    invoke-direct {p1, p2, v5}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(Landroid/hardware/display/BrightnessChangeEvent;Z)V

    .line 446
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 450
    :cond_67
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    :catchall_6d
    move-exception p0

    .line 427
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public final handleAmbientLuxChanged(F)V
    .registers 4

    .line 582
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastAmbientLux:F

    .line 584
    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->recordAmbientLuxEvent(F)V

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleAmbientLuxChanged: ambientLux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->updateAdaptiveBrightnessStats(Z)V

    return-void
.end method

.method public final handleBrightnessBnrPackageCleared()V
    .registers 3

    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    const-string/jumbo v1, "handleBrightnessBnrPackageCleared()"

    .line 652
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 655
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->resetBrightnessConfiguration()V

    return-void
.end method

.method public final handleBrightnessChanged(FZFZZJLjava/lang/String;Landroid/util/Spline;)V
    .registers 14

    .line 481
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    if-nez v1, :cond_9

    .line 484
    monitor-exit v0

    return-void

    .line 487
    :cond_9
    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    .line 488
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    .line 489
    iput-object p9, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessSpline:Landroid/util/Spline;

    const-string p9, "AdaptiveBrightnessLongtermModelBuilder"

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleBrightnessChanged: brightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " userInitiated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_35

    .line 497
    invoke-virtual {p0, p2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->updateAdaptiveBrightnessStats(Z)V

    .line 498
    monitor-exit v0

    return-void

    .line 501
    :cond_35
    new-instance p9, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    invoke-direct {p9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 502
    invoke-virtual {p9, p1}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 503
    invoke-virtual {p9, p6, p7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 504
    invoke-virtual {p9, p3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 505
    invoke-virtual {p9, p4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 506
    invoke-virtual {p9, p5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 507
    invoke-virtual {p9, p8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUniqueDisplayId(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const/4 p3, 0x1

    new-array p4, p3, [F

    new-array p5, p3, [J

    .line 513
    iget-object p6, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    iget p7, p6, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->lux:F

    const/4 p8, 0x0

    aput p7, p4, p8

    .line 514
    iget-wide p6, p6, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->timestamp:J

    aput-wide p6, p5, p8

    .line 516
    invoke-virtual {p9, p4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 517
    invoke-virtual {p9, p5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 519
    iget p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBatteryLevel:F

    invoke-virtual {p9, p4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 520
    invoke-virtual {p9, v1}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 521
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_12e

    .line 524
    :try_start_6b
    iget-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    invoke-virtual {p4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFocusedStack()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p4

    if-eqz p4, :cond_126

    .line 525
    iget-object p5, p4, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p5, :cond_126

    .line 526
    iget p5, p4, Landroid/app/ActivityTaskManager$RootTaskInfo;->userId:I

    invoke-virtual {p9, p5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 527
    iget-object p4, p4, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p9, p4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_85} :catch_12d

    .line 540
    iget-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object p5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p5}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->isNightDisplayActivated(Landroid/content/Context;)Z

    move-result p4

    invoke-virtual {p9, p4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 541
    iget-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object p5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p5}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getNightDisplayColorTemperature(Landroid/content/Context;)I

    move-result p4

    invoke-virtual {p9, p4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 542
    iget-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object p5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p5}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->isReduceBrightColorsActivated(Landroid/content/Context;)Z

    move-result p4

    invoke-virtual {p9, p4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColors(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 543
    iget-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object p5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p5}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getReduceBrightColorsStrength(Landroid/content/Context;)I

    move-result p4

    invoke-virtual {p9, p4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsStrength(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 544
    iget-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object p5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p5}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getReduceBrightColorsOffsetFactor(Landroid/content/Context;)F

    move-result p4

    mul-float/2addr p4, p1

    invoke-virtual {p9, p4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsOffset(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 547
    iget-boolean p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    if-eqz p1, :cond_ec

    .line 548
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mNoFramesToSample:I

    invoke-virtual {p1, p4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->sampleColor(I)Landroid/hardware/display/DisplayedContentSample;

    move-result-object p1

    if-eqz p1, :cond_ec

    .line 549
    sget-object p4, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    invoke-virtual {p1, p4}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    move-result-object p4

    if-eqz p4, :cond_ec

    .line 551
    invoke-virtual {p1}, Landroid/hardware/display/DisplayedContentSample;->getNumFrames()J

    move-result-wide p4

    long-to-float p4, p4

    iget p5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mFrameRate:F

    div-float/2addr p4, p5

    const/high16 p5, 0x447a0000    # 1000.0f

    mul-float/2addr p4, p5

    .line 552
    sget-object p5, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    .line 553
    invoke-virtual {p1, p5}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    move-result-object p1

    .line 554
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    int-to-long p4, p4

    .line 552
    invoke-virtual {p9, p1, p4, p5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 558
    :cond_ec
    invoke-virtual {p9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    move-result-object p1

    const-string p4, "AdaptiveBrightnessLongtermModelBuilder"

    .line 560
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Event "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p6, p1, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p6, " "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p1, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    monitor-enter p4

    .line 563
    :try_start_115
    iput-boolean p3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z

    .line 564
    iget-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p3, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 565
    monitor-exit p4
    :try_end_11d
    .catchall {:try_start_115 .. :try_end_11d} :catchall_123

    .line 567
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessChangeEvent:Landroid/hardware/display/BrightnessChangeEvent;

    .line 568
    invoke-virtual {p0, p2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->updateAdaptiveBrightnessStats(Z)V

    return-void

    :catchall_123
    move-exception p0

    .line 565
    :try_start_124
    monitor-exit p4
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    throw p0

    :cond_126
    :try_start_126
    const-string p0, "AdaptiveBrightnessLongtermModelBuilder"

    const-string p1, "Ignoring event due to null focusedTask."

    .line 531
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12d
    .catch Landroid/os/RemoteException; {:try_start_126 .. :try_end_12d} :catch_12d

    :catch_12d
    return-void

    :catchall_12e
    move-exception p0

    .line 521
    :try_start_12f
    monitor-exit v0
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12e

    throw p0
.end method

.method public final handleShortTermModelValid()V
    .registers 13

    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    const-string/jumbo v1, "handleShortTermModelValid()"

    .line 606
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->summarizeStats(I)V

    .line 616
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-virtual {v1, v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->getUserStats(I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    .line 618
    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v3

    .line 619
    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getTimeCollectorStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object v4

    .line 620
    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getContinuityCollectorStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object v1

    goto :goto_26

    :cond_24
    move-object v1, v3

    move-object v4, v1

    :goto_26
    if-eqz v3, :cond_95

    if-eqz v4, :cond_95

    if-eqz v1, :cond_95

    .line 624
    invoke-virtual {p0, v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->buildBrightnessConfiguration([Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v6

    if-eqz v6, :cond_8f

    .line 627
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 628
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 629
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 630
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move p0, v2

    .line 632
    :goto_4d
    array-length v0, v3

    if-ge p0, v0, :cond_60

    .line 633
    aget-object v0, v3, p0

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_4d

    :cond_60
    move p0, v2

    .line 636
    :goto_61
    array-length v0, v4

    if-ge p0, v0, :cond_74

    .line 637
    aget-object v0, v4, p0

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_61

    .line 640
    :cond_74
    :goto_74
    array-length p0, v1

    if-ge v2, p0, :cond_87

    .line 641
    aget-object p0, v1, v2

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v11, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_87
    const/4 v7, 0x0

    const-string/jumbo v8, "sbs"

    .line 644
    invoke-virtual/range {v5 .. v11}, Landroid/hardware/display/DisplayManager;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_95

    :cond_8f
    const-string/jumbo p0, "handleShortTermModelValid: brightnessConfiguration is null"

    .line 646
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    :goto_95
    return-void
.end method

.method public isStarted()Z
    .registers 2

    .line 599
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 600
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 601
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public notifyAmbientLuxChanged(F)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 573
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "notifyAmbientLuxChanged(lux=%f)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 577
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 578
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyBrightnessChanged(FZFZZLjava/lang/String;Landroid/util/Spline;)V
    .registers 22

    move-object v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 466
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "notifyBrightnessChanged(brightness=%f, userInitiated=%b)"

    .line 465
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    .line 469
    new-instance v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;

    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 471
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->currentTimeMillis()J

    move-result-wide v10

    move-object v5, v2

    move v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v5 .. v13}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;-><init>(FFZZJLjava/lang/String;Landroid/util/Spline;)V

    move/from16 v0, p2

    .line 468
    invoke-virtual {v1, v4, v0, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyShortTermResetValid()V
    .registers 3

    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    const-string/jumbo v1, "notifyShortTermResetValid()"

    .line 591
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 595
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public persistAdaptiveBrightnessLongtermModelBuilderState()V
    .registers 1

    .line 454
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->scheduleWriteAdaptiveBrightnessLongtermModelBuilderState()V

    return-void
.end method

.method public final printArrayBrightnessWeights([Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Ljava/lang/String;)V
    .registers 8

    .line 778
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 779
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_24

    aget-object v3, p1, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v3, "%9s"

    .line 781
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 783
    :cond_24
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final readAdaptiveBrightnessStats()V
    .registers 6

    .line 890
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mHbmLux:I

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;-><init>(Landroid/os/UserManager;ILcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;Lcom/android/server/display/BrightnessMappingStrategy;)V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 891
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    const-string v1, "adaptive_brightness_stats_sec.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 892
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 895
    :try_start_1e
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    .line 896
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-virtual {p0, v4}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->readStats(Ljava/io/InputStream;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_27} :catch_2d
    .catchall {:try_start_1e .. :try_end_27} :catchall_2b

    .line 901
    :goto_27
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3d

    :catchall_2b
    move-exception p0

    goto :goto_39

    :catch_2d
    move-exception p0

    .line 898
    :try_start_2e
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v1, "Failed to read ambient brightness stats."

    .line 899
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_2b

    goto :goto_27

    .line 901
    :goto_39
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 902
    throw p0

    :cond_3d
    :goto_3d
    return-void
.end method

.method public final readEvents()V
    .registers 5

    .line 869
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 871
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z

    .line 872
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 873
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    const-string v2, "brightness_events_sec.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 874
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_3b

    if-eqz v2, :cond_39

    const/4 v2, 0x0

    .line 877
    :try_start_1c
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 878
    invoke-virtual {p0, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->readEventsLocked(Ljava/io/InputStream;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_29
    .catchall {:try_start_1c .. :try_end_23} :catchall_27

    .line 883
    :goto_23
    :try_start_23
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3b

    goto :goto_39

    :catchall_27
    move-exception p0

    goto :goto_35

    :catch_29
    move-exception p0

    .line 880
    :try_start_2a
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v3, "Failed to read change mEvents."

    .line 881
    invoke-static {v1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_27

    goto :goto_23

    .line 883
    :goto_35
    :try_start_35
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 884
    throw p0

    .line 886
    :cond_39
    :goto_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public readEventsLocked(Ljava/io/InputStream;)V
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mEventsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v0, ","

    .line 990
    :try_start_6
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v3

    .line 993
    :goto_a
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_15

    const/4 v6, 0x2

    if-eq v4, v6, :cond_15

    goto :goto_a

    .line 996
    :cond_15
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "events"

    .line 997
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19d

    .line 1002
    iget-object v4, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->MAX_EVENT_AGE:J

    sub-long/2addr v6, v8

    .line 1004
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    .line 1005
    :cond_2e
    :goto_2e
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v8

    if-eq v8, v5, :cond_19c

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3d

    .line 1006
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v4, :cond_19c

    :cond_3d
    if-eq v8, v9, :cond_2e

    const/4 v9, 0x4

    if-ne v8, v9, :cond_43

    goto :goto_2e

    .line 1010
    :cond_43
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "event"

    .line 1011
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 1012
    new-instance v8, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    invoke-direct {v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    const-string/jumbo v9, "nits"

    const/4 v10, 0x0

    .line 1014
    invoke-interface {v3, v10, v9}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v9, "timestamp"

    .line 1015
    invoke-interface {v3, v10, v9}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v9, "packageName"

    .line 1016
    invoke-interface {v3, v10, v9}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 1017
    iget-object v9, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v11, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v12, "user"

    .line 1018
    invoke-interface {v3, v10, v12}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 1017
    invoke-virtual {v9, v11, v12}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getUserId(Landroid/os/UserManager;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v9, "uniqueDisplayId"

    .line 1019
    invoke-interface {v3, v10, v9}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_90

    const-string v9, ""

    .line 1023
    :cond_90
    invoke-virtual {v8, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUniqueDisplayId(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string v9, "batteryLevel"

    .line 1024
    invoke-interface {v3, v10, v9}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v9, "nightMode"

    .line 1025
    invoke-interface {v3, v10, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string v9, "colorTemperature"

    .line 1027
    invoke-interface {v3, v10, v9}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1026
    invoke-virtual {v8, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v9, "reduceBrightColors"

    .line 1029
    invoke-interface {v3, v10, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 1028
    invoke-virtual {v8, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColors(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v9, "reduceBrightColorsStrength"

    .line 1031
    invoke-interface {v3, v10, v9}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1030
    invoke-virtual {v8, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsStrength(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v9, "reduceBrightColorsOffset"

    .line 1033
    invoke-interface {v3, v10, v9}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v9

    .line 1032
    invoke-virtual {v8, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsOffset(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v9, "lastNits"

    .line 1034
    invoke-interface {v3, v10, v9}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v9, "lux"

    .line 1036
    invoke-interface {v3, v10, v9}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "luxTimestamps"

    .line 1037
    invoke-interface {v3, v10, v11}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1039
    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1040
    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1041
    array-length v12, v9

    array-length v13, v11

    if-eq v12, v13, :cond_f3

    goto/16 :goto_2e

    .line 1044
    :cond_f3
    array-length v12, v9

    new-array v13, v12, [F

    .line 1045
    array-length v14, v9

    new-array v14, v14, [J

    const/4 v15, 0x0

    move v5, v15

    :goto_fb
    if-ge v5, v12, :cond_110

    .line 1047
    aget-object v16, v9, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    aput v16, v13, v5

    .line 1048
    aget-object v16, v11, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v14, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_fb

    .line 1050
    :cond_110
    invoke-virtual {v8, v13}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 1051
    invoke-virtual {v8, v14}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string v5, "defaultConfig"

    .line 1054
    invoke-interface {v3, v10, v5, v15}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 1053
    invoke-virtual {v8, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v5, "powerSaveFactor"

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1056
    invoke-interface {v3, v10, v5, v9}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v5

    .line 1055
    invoke-virtual {v8, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v5, "userPoint"

    .line 1058
    invoke-interface {v3, v10, v5, v15}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 1057
    invoke-virtual {v8, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string v5, "colorSampleDuration"

    const-wide/16 v11, -0x1

    .line 1061
    invoke-interface {v3, v10, v5, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v13

    const-string v5, "colorValueBuckets"

    .line 1063
    invoke-interface {v3, v10, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    cmp-long v9, v13, v11

    if-eqz v9, :cond_160

    if-eqz v5, :cond_160

    .line 1065
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1066
    array-length v9, v5

    new-array v10, v9, [J

    :goto_150
    if-ge v15, v9, :cond_15d

    .line 1068
    aget-object v11, v5, v15

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    aput-wide v11, v10, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_150

    .line 1070
    :cond_15d
    invoke-virtual {v8, v10, v13, v14}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 1073
    :cond_160
    invoke-virtual {v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    move-result-object v5

    .line 1075
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget v8, v5, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_199

    iget-wide v8, v5, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    cmp-long v8, v8, v6

    if-lez v8, :cond_199

    iget-object v8, v5, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v8, v8

    if-lez v8, :cond_199

    .line 1081
    iget-object v8, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v8, v5}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    :cond_199
    const/4 v5, 0x1

    goto/16 :goto_2e

    :cond_19c
    return-void

    .line 998
    :cond_19d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Events not found in brightness tracker file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b4
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_1b4} :catch_1b4
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_1b4} :catch_1b4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_1b4} :catch_1b4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1b4} :catch_1b4

    :catch_1b4
    move-exception v0

    .line 1088
    new-instance v3, Lcom/android/internal/util/RingBuffer;

    const-class v4, Landroid/hardware/display/BrightnessChangeEvent;

    const/16 v5, 0x14

    invoke-direct {v3, v4, v5}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v3, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    const-string v1, "Failed to parse brightness event"

    .line 1089
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1091
    new-instance v1, Ljava/io/IOException;

    const-string v2, "failed to parse file"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final recordAmbientLuxEvent(F)V
    .registers 6

    .line 1234
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    .line 1236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ambient Lux event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->timestamp:J

    .line 1242
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->lux:F

    .line 1243
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public restartAdaptiveBrightnessStatsTracker(Z)V
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleWriteAdaptiveBrightnessLongtermModelBuilderState()V
    .registers 3

    .line 811
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z

    if-nez v0, :cond_11

    .line 812
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 817
    iput-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z

    :cond_11
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 3

    .line 319
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 320
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setMaxWeight(I)V
    .registers 2

    .line 788
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->setMaxWeight(I)V

    return-void
.end method

.method public setTestModeEnabled(Z)V
    .registers 4

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTestModeEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTestModeEnabled:Z

    if-eq v0, p1, :cond_34

    .line 1273
    iput-boolean p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTestModeEnabled:Z

    if-eqz p1, :cond_2a

    .line 1275
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_34

    .line 1277
    :cond_2a
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_34
    :goto_34
    return-void
.end method

.method public start(F)V
    .registers 4

    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v1, "Start"

    .line 309
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final startAdaptiveBrightnessStatsTracker()V
    .registers 4

    .line 792
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 793
    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContentResolver:Landroid/content/ContentResolver;

    .line 794
    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTestModeEnabled:Z

    if-nez v0, :cond_35

    .line 796
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 797
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 798
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastUserActivityState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f

    move v0, v2

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    .line 797
    :goto_30
    invoke-virtual {v1, v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->start(Z)V

    .line 799
    iput-boolean v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    :cond_35
    return-void
.end method

.method public stop()V
    .registers 5

    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v1, "Stop"

    .line 362
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_a
    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    if-nez v1, :cond_10

    .line 367
    monitor-exit v0

    return-void

    .line 369
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_56

    .line 371
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 372
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->stopAdaptiveBrightnessStatsTracker()V

    .line 373
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 374
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserActivityStateListener:Landroid/os/PowerManagerInternal$UserActivityStateListener;

    invoke-virtual {v0, v2}, Landroid/os/PowerManagerInternal;->unregisterUserActivityStateListener(Landroid/os/PowerManagerInternal$UserActivityStateListener;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mSettingsObserver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->unregisterBrightnessModeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 376
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 377
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mPackageBroadcastReceiver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$PackageBroadcastReceiver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 378
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->cancelIdleJob(Landroid/content/Context;)V

    .line 380
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 381
    :try_start_4c
    iput-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    .line 382
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_53

    .line 383
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->disableColorSampling()V

    return-void

    :catchall_53
    move-exception p0

    .line 382
    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p0

    :catchall_56
    move-exception p0

    .line 369
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p0
.end method

.method public final stopAdaptiveBrightnessStatsTracker()V
    .registers 2

    .line 804
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    if-eqz v0, :cond_c

    .line 805
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->stop()V

    const/4 v0, 0x0

    .line 806
    iput-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    :cond_c
    return-void
.end method

.method public final updateAdaptiveBrightnessStats(Z)V
    .registers 11

    .line 1247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAdaptiveBrightnessStats: l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " u: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    iget v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastAmbientLux:F

    iget v5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    iget-object v6, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessSpline:Landroid/util/Spline;

    iget-object v7, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessChangeEvent:Landroid/hardware/display/BrightnessChangeEvent;

    const/4 v3, 0x0

    move v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->add(IFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Z)V

    return-void
.end method

.method public final updateColorSampling()V
    .registers 3

    .line 1216
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 1219
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFrameRate(Landroid/content/Context;)F

    move-result v0

    .line 1220
    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mFrameRate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19

    .line 1221
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->disableColorSampling()V

    .line 1222
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->enableColorSampling()V

    :cond_19
    return-void
.end method

.method public final writeAdaptiveBrightnessStats()V
    .registers 3

    .line 853
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    const-string v1, "adaptive_brightness_stats_sec.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x0

    .line 859
    :try_start_c
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 860
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-virtual {p0, v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->writeStats(Ljava/io/OutputStream;)V

    .line 861
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_24

    :catch_19
    move-exception p0

    .line 863
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v1, "Failed to write ambient brightness stats."

    .line 864
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method public final writeEvents()V
    .registers 5

    .line 822
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 823
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z

    if-nez v1, :cond_9

    .line 825
    monitor-exit v0

    return-void

    .line 828
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    const-string v2, "brightness_events_sec.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    if-nez v1, :cond_15

    .line 830
    monitor-exit v0

    return-void

    .line 832
    :cond_15
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    .line 833
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 834
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 836
    :cond_27
    iput-boolean v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_45

    goto :goto_43

    :cond_2a
    const/4 v2, 0x0

    .line 840
    :try_start_2b
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 841
    invoke-virtual {p0, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->writeEventsLocked(Ljava/io/OutputStream;)V

    .line 842
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 843
    iput-boolean v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_37} :catch_38
    .catchall {:try_start_2b .. :try_end_37} :catchall_45

    goto :goto_43

    :catch_38
    move-exception p0

    .line 845
    :try_start_39
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v2, "Failed to write change mEvents."

    .line 846
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 849
    :goto_43
    monitor-exit v0

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public writeEventsLocked(Ljava/io/OutputStream;)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mEventsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 909
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 910
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v3, 0x1

    .line 911
    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "events"

    .line 913
    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 914
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 916
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 918
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing events "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->MAX_EVENT_AGE:J

    sub-long/2addr v4, v6

    const/4 v6, 0x0

    move v7, v6

    .line 921
    :goto_45
    array-length v8, v3

    if-ge v7, v8, :cond_18b

    .line 922
    iget-object v8, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v9, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserManager:Landroid/os/UserManager;

    aget-object v10, v3, v7

    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {v8, v9, v10}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getUserSerialNumber(Landroid/os/UserManager;I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_187

    .line 923
    aget-object v9, v3, v7

    iget-wide v10, v9, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    cmp-long v10, v10, v4

    if-lez v10, :cond_187

    .line 924
    iget-object v10, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v10, v9}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    const-string v9, "event"

    .line 925
    invoke-interface {v0, v2, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 926
    aget-object v10, v3, v7

    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    const-string/jumbo v11, "nits"

    invoke-interface {v0, v2, v11, v10}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 927
    aget-object v10, v3, v7

    iget-wide v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    const-string/jumbo v12, "timestamp"

    invoke-interface {v0, v2, v12, v10, v11}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 928
    aget-object v10, v3, v7

    iget-object v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    const-string/jumbo v11, "packageName"

    invoke-interface {v0, v2, v11, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "user"

    .line 929
    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 930
    aget-object v8, v3, v7

    iget-object v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->uniqueDisplayId:Ljava/lang/String;

    if-nez v8, :cond_95

    const-string v8, ""

    :cond_95
    const-string/jumbo v10, "uniqueDisplayId"

    .line 934
    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 935
    aget-object v8, v3, v7

    iget v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    const-string v10, "batteryLevel"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 936
    aget-object v8, v3, v7

    iget-boolean v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    const-string/jumbo v10, "nightMode"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 937
    aget-object v8, v3, v7

    iget v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    const-string v10, "colorTemperature"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 939
    aget-object v8, v3, v7

    iget-boolean v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColors:Z

    const-string/jumbo v10, "reduceBrightColors"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 941
    aget-object v8, v3, v7

    iget v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsStrength:I

    const-string/jumbo v10, "reduceBrightColorsStrength"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 943
    aget-object v8, v3, v7

    iget v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsOffset:F

    const-string/jumbo v10, "reduceBrightColorsOffset"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 945
    aget-object v8, v3, v7

    iget v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    const-string/jumbo v10, "lastNits"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 947
    aget-object v8, v3, v7

    iget-boolean v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    const-string v10, "defaultConfig"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 949
    aget-object v8, v3, v7

    iget v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    const-string/jumbo v10, "powerSaveFactor"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 951
    aget-object v8, v3, v7

    iget-boolean v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    const-string/jumbo v10, "userPoint"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 953
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 954
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v11, v6

    .line 955
    :goto_107
    aget-object v12, v3, v7

    iget-object v12, v12, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v12, v12

    const/16 v13, 0x2c

    if-ge v11, v12, :cond_135

    if-lez v11, :cond_118

    .line 957
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 958
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 960
    :cond_118
    aget-object v12, v3, v7

    iget-object v12, v12, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    aget v12, v12, v11

    invoke-static {v12}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    aget-object v12, v3, v7

    iget-object v12, v12, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    aget-wide v12, v12, v11

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_107

    .line 963
    :cond_135
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "lux"

    invoke-interface {v0, v2, v11, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 964
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "luxTimestamps"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 965
    aget-object v8, v3, v7

    iget-object v10, v8, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    if-eqz v10, :cond_184

    array-length v10, v10

    if-lez v10, :cond_184

    .line 967
    iget-wide v10, v8, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    const-string v8, "colorSampleDuration"

    invoke-interface {v0, v2, v8, v10, v11}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 969
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v6

    .line 970
    :goto_15f
    aget-object v11, v3, v7

    iget-object v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    array-length v11, v11

    if-ge v10, v11, :cond_17b

    if-lez v10, :cond_16b

    .line 972
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 974
    :cond_16b
    aget-object v11, v3, v7

    iget-object v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    aget-wide v11, v11, v10

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_15f

    .line 976
    :cond_17b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "colorValueBuckets"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 978
    :cond_184
    invoke-interface {v0, v2, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_187
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_45

    .line 981
    :cond_18b
    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 982
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 983
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
