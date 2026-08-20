.class public Lcom/android/server/display/BrightnessTracker;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessTracker$Injector;,
        Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;,
        Lcom/android/server/display/BrightnessTracker$TrackerHandler;,
        Lcom/android/server/display/BrightnessTracker$Receiver;,
        Lcom/android/server/display/BrightnessTracker$SettingsObserver;,
        Lcom/android/server/display/BrightnessTracker$DisplayListener;,
        Lcom/android/server/display/BrightnessTracker$SensorListener;,
        Lcom/android/server/display/BrightnessTracker$LightData;
    }
.end annotation


# static fields
.field public static final AMBIENT_BRIGHTNESS_STATS_FILE:Ljava/lang/String; = "ambient_brightness_stats.xml"

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

.field public static final DEBUG:Z = false

.field public static final EVENTS_FILE:Ljava/lang/String; = "brightness_events.xml"

.field public static final FORMAT:Ljava/text/SimpleDateFormat;

.field public static final LUX_EVENT_HORIZON:J

.field public static final MAX_EVENTS:I = 0x64

.field public static final MAX_EVENT_AGE:J

.field public static final MSG_BACKGROUND_START:I = 0x0

.field public static final MSG_BRIGHTNESS_CHANGED:I = 0x1

.field public static final MSG_BRIGHTNESS_CONFIG_CHANGED:I = 0x4

.field public static final MSG_SENSOR_CHANGED:I = 0x5

.field public static final MSG_START_SENSOR_LISTENER:I = 0x3

.field public static final MSG_STOP_SENSOR_LISTENER:I = 0x2

.field public static final TAG:Ljava/lang/String; = "BrightnessTracker"

.field public static final TAG_EVENT:Ljava/lang/String; = "event"

.field public static final TAG_EVENTS:Ljava/lang/String; = "events"


# instance fields
.field public mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

.field public final mBgHandler:Landroid/os/Handler;

.field public mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mColorSamplingEnabled:Z

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDataCollectionLock:Ljava/lang/Object;

.field public mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

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

.field public final mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

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

.field public mLastSensorReadings:Ljava/util/Deque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataCollectionLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/server/display/BrightnessTracker$LightData;",
            ">;"
        }
    .end annotation
.end field

.field public mLightSensor:Landroid/hardware/Sensor;

.field public mNoFramesToSample:I

.field public mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

.field public mSensorRegistered:Z

.field public mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

.field public mStarted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataCollectionLock"
        }
    .end annotation
.end field

.field public final mUserManager:Landroid/os/UserManager;

.field public volatile mWriteBrightnessTrackerStateScheduled:Z


# direct methods
.method public static synthetic $r8$lambda$JVotX9KTpW1iLtXoBQhF3l8dc1Q(Lcom/android/server/display/BrightnessTracker;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->lambda$dump$1(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zg1HFRKNx4CFnfRjEWgI1I_K--M(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->lambda$scheduleWriteBrightnessTrackerState$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBgHandler(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightnessConfiguration(Lcom/android/server/display/BrightnessTracker;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmColorSamplingEnabled(Lcom/android/server/display/BrightnessTracker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/server/display/BrightnessTracker;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/BrightnessTracker;)Lcom/android/server/display/BrightnessTracker$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBrightnessConfiguration(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbackgroundStart(Lcom/android/server/display/BrightnessTracker;F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessTracker;->backgroundStart(F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbatteryLevelChanged(Lcom/android/server/display/BrightnessTracker;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->batteryLevelChanged(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisableColorSampling(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menableColorSampling(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBrightnessChanged(Lcom/android/server/display/BrightnessTracker;FZFZZJLjava/lang/String;)V
    .registers 9

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/display/BrightnessTracker;->handleBrightnessChanged(FZFZZJLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSensorChanged(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/Sensor;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessTracker;->handleSensorChanged(Landroid/hardware/Sensor;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrecordAmbientBrightnessStats(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/SensorEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessTracker;->recordAmbientBrightnessStats(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrecordSensorEvent(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/SensorEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessTracker;->recordSensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleWriteBrightnessTrackerState(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->scheduleWriteBrightnessTrackerState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartSensorListener(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopSensorListener(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateColorSampling(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->updateColorSampling()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 5

    .line 103
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    .line 105
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/display/BrightnessTracker;->LUX_EVENT_HORIZON:J

    .line 136
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/android/server/display/BrightnessTracker;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 138
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/BrightnessTracker;->COLOR_SAMPLE_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V
    .registers 6

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    .line 144
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/hardware/display/BrightnessChangeEvent;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    const/16 v0, -0x2710

    .line 172
    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    .line 176
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 178
    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 180
    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 190
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_3c

    .line 193
    iput-object p2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    goto :goto_43

    .line 195
    :cond_3c
    new-instance p2, Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-direct {p2}, Lcom/android/server/display/BrightnessTracker$Injector;-><init>()V

    iput-object p2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 197
    :goto_43
    new-instance p2, Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/android/server/display/BrightnessTracker$TrackerHandler;-><init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    .line 198
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private synthetic lambda$dump$1(Ljava/io/PrintWriter;)V
    .registers 2

    .line 797
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessTracker;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private synthetic lambda$scheduleWriteBrightnessTrackerState$0()V
    .registers 2

    const/4 v0, 0x0

    .line 478
    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 479
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->writeEvents()V

    .line 480
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->writeAmbientBrightnessStats()V

    return-void
.end method


# virtual methods
.method public final backgroundStart(F)V
    .registers 6

    .line 226
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->readEvents()V

    .line 227
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->readAmbientBrightnessStats()V

    .line 229
    new-instance v0, Lcom/android/server/display/BrightnessTracker$SensorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/BrightnessTracker$SensorListener;-><init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$SensorListener-IA;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    .line 231
    new-instance v0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/display/BrightnessTracker$SettingsObserver;-><init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    .line 232
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/display/BrightnessTracker$Injector;->registerBrightnessModeObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    .line 236
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 237
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    .line 238
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 239
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    new-instance v2, Lcom/android/server/display/BrightnessTracker$Receiver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/display/BrightnessTracker$Receiver;-><init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$Receiver-IA;)V

    iput-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/display/BrightnessTracker$Injector;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 243
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->scheduleIdleJob(Landroid/content/Context;)V

    .line 244
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_52
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 247
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_5c

    .line 248
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    return-void

    :catchall_5c
    move-exception p0

    .line 247
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public final batteryLevelChanged(II)V
    .registers 4

    .line 930
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 931
    :try_start_6
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    .line 932
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final disableColorSampling()V
    .registers 4

    .line 852
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 855
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->enableColorSampling(ZI)Z

    .line 856
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 857
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    if-eqz v0, :cond_1b

    .line 858
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/BrightnessTracker$Injector;->unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    .line 859
    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    :cond_1b
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 11

    const-string v0, "BrightnessTracker state:"

    .line 761
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLightSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastBatteryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSensorReadings.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b2

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSensorReadings time span "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 770
    invoke-interface {v2}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v2, v2, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 771
    invoke-interface {v2}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v2, v2, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 769
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    :cond_b2
    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_8 .. :try_end_b3} :catchall_21b

    .line 774
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 775
    :try_start_b6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEventsDirty="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEvents.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/BrightnessChangeEvent;

    const/4 v2, 0x0

    move v3, v2

    .line 778
    :goto_f0
    array-length v4, v0

    if-ge v3, v4, :cond_1e8

    .line 779
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/display/BrightnessTracker;->FORMAT:Ljava/text/SimpleDateFormat;

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

    .line 780
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

    .line 781
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

    .line 782
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

    .line 783
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

    .line 784
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

    .line 785
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v4, v2

    .line 786
    :goto_1a0
    aget-object v5, v0, v3

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v5, v5

    if-ge v4, v5, :cond_1de

    if-eqz v4, :cond_1ae

    const-string v5, ", "

    .line 788
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 790
    :cond_1ae
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

    goto :goto_1a0

    :cond_1de
    const-string/jumbo v4, "}"

    .line 792
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f0

    .line 794
    :cond_1e8
    monitor-exit v1
    :try_end_1e9
    .catchall {:try_start_b6 .. :try_end_1e9} :catchall_218

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWriteBrightnessTrackerStateScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/BrightnessTracker;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 798
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-eqz v0, :cond_217

    .line 799
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 800
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->dump(Ljava/io/PrintWriter;)V

    :cond_217
    return-void

    :catchall_218
    move-exception p0

    .line 794
    :try_start_219
    monitor-exit v1
    :try_end_21a
    .catchall {:try_start_219 .. :try_end_21a} :catchall_218

    throw p0

    :catchall_21b
    move-exception p0

    .line 773
    :try_start_21c
    monitor-exit v0
    :try_end_21d
    .catchall {:try_start_21c .. :try_end_21d} :catchall_21b

    throw p0
.end method

.method public final dumpLocal(Ljava/io/PrintWriter;)V
    .registers 4

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSensorRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorSamplingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNoFramesToSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enableColorSampling()V
    .registers 4

    .line 812
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 813
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-nez v0, :cond_7d

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    if-eqz v0, :cond_7d

    .line 816
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_7d

    .line 820
    :cond_23
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFrameRate(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_3a

    const-string p0, "BrightnessTracker"

    const-string v0, "Default display has a zero or negative framerate."

    .line 822
    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 825
    :cond_3a
    sget-wide v1, Lcom/android/server/display/BrightnessTracker;->COLOR_SAMPLE_DURATION:J

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    .line 827
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->getSamplingAttributes()Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 835
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getPixelFormat()I

    move-result v1

    const/16 v2, 0x37

    if-ne v1, v2, :cond_64

    .line 836
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getComponentMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_64

    .line 838
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->enableColorSampling(ZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 845
    :cond_64
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    if-nez v0, :cond_7d

    .line 846
    new-instance v0, Lcom/android/server/display/BrightnessTracker$DisplayListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/BrightnessTracker$DisplayListener;-><init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$DisplayListener-IA;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    .line 847
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/server/display/BrightnessTracker$Injector;->registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 878
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-eqz p0, :cond_10

    .line 880
    invoke-virtual {p0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->getUserStats(I)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 882
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    .line 885
    :cond_10
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
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

    .line 283
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 285
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_6d

    .line 286
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/BrightnessTracker$Injector;->getProfileIds(Landroid/os/UserManager;I)[I

    move-result-object p0

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 288
    :goto_1b
    array-length v4, p0

    const/4 v5, 0x1

    if-ge v3, v4, :cond_35

    .line 289
    aget v4, p0, v3

    if-eqz p2, :cond_27

    if-eq v4, p1, :cond_26

    goto :goto_27

    :cond_26
    move v5, v2

    .line 293
    :cond_27
    :goto_27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 295
    :cond_35
    new-instance p0, Ljava/util/ArrayList;

    array-length p1, v1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    :goto_3b
    array-length p1, v1

    if-ge v2, p1, :cond_67

    .line 297
    aget-object p1, v1, v2

    iget p1, p1, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_64

    .line 299
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5a

    .line 300
    aget-object p1, v1, v2

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 302
    :cond_5a
    new-instance p1, Landroid/hardware/display/BrightnessChangeEvent;

    aget-object p2, v1, v2

    invoke-direct {p1, p2, v5}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(Landroid/hardware/display/BrightnessChangeEvent;Z)V

    .line 304
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 308
    :cond_67
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    :catchall_6d
    move-exception p0

    .line 285
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public final handleBrightnessChanged(FZFZZJLjava/lang/String;)V
    .registers 24

    move-object v0, p0

    move/from16 v1, p1

    .line 345
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 346
    :try_start_6
    iget-boolean v3, v0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    if-nez v3, :cond_c

    .line 348
    monitor-exit v2

    return-void

    .line 351
    :cond_c
    iget v3, v0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 352
    iput v1, v0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    if-nez p2, :cond_14

    .line 358
    monitor-exit v2

    return-void

    .line 361
    :cond_14
    new-instance v4, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    invoke-direct {v4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 362
    invoke-virtual {v4, v1}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    move-wide/from16 v5, p6

    .line 363
    invoke-virtual {v4, v5, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    move/from16 v5, p3

    .line 364
    invoke-virtual {v4, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    move/from16 v5, p4

    .line 365
    invoke-virtual {v4, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    move/from16 v5, p5

    .line 366
    invoke-virtual {v4, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    move-object/from16 v5, p8

    .line 367
    invoke-virtual {v4, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUniqueDisplayId(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 369
    iget-object v5, v0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->size()I

    move-result v5

    if-nez v5, :cond_3f

    .line 372
    monitor-exit v2

    return-void

    .line 375
    :cond_3f
    new-array v6, v5, [F

    .line 376
    new-array v5, v5, [J

    const/4 v7, 0x0

    .line 381
    iget-object v8, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v8}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v8

    .line 382
    iget-object v10, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v10}, Lcom/android/server/display/BrightnessTracker$Injector;->elapsedRealtimeNanos()J

    move-result-wide v10

    .line 383
    iget-object v12, v0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v12}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_56
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/display/BrightnessTracker$LightData;

    .line 384
    iget v14, v13, Lcom/android/server/display/BrightnessTracker$LightData;->lux:F

    aput v14, v6, v7

    .line 385
    sget-object v14, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 p2, v12

    iget-wide v12, v13, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    sub-long v12, v10, v12

    .line 386
    invoke-virtual {v14, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    sub-long v12, v8, v12

    aput-wide v12, v5, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v12, p2

    goto :goto_56

    .line 389
    :cond_7b
    invoke-virtual {v4, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 390
    invoke-virtual {v4, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 392
    iget v5, v0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    invoke-virtual {v4, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 393
    invoke-virtual {v4, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 394
    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_6 .. :try_end_8a} :catchall_120

    .line 397
    :try_start_8a
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessTracker$Injector;->getFocusedStack()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_11f

    .line 398
    iget-object v3, v2, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_11f

    .line 399
    iget v3, v2, Landroid/app/ActivityTaskManager$RootTaskInfo;->userId:I

    invoke-virtual {v4, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 400
    iget-object v2, v2, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_a4} :catch_11f

    .line 413
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, v0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->isNightDisplayActivated(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v4, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 414
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, v0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->getNightDisplayColorTemperature(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 415
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, v0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->isReduceBrightColorsActivated(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v4, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColors(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 416
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, v0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->getReduceBrightColorsStrength(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsStrength(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 417
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, v0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->getReduceBrightColorsOffsetFactor(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {v4, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsOffset(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 420
    iget-boolean v1, v0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-eqz v1, :cond_10b

    .line 421
    iget-object v1, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget v2, v0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->sampleColor(I)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v1

    if-eqz v1, :cond_10b

    .line 422
    sget-object v2, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    move-result-object v2

    if-eqz v2, :cond_10b

    .line 424
    invoke-virtual {v1}, Landroid/hardware/display/DisplayedContentSample;->getNumFrames()J

    move-result-wide v2

    long-to-float v2, v2

    iget v3, v0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    .line 425
    sget-object v3, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    .line 426
    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    move-result-object v1

    .line 427
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    .line 425
    invoke-virtual {v4, v1, v2, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 431
    :cond_10b
    invoke-virtual {v4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    move-result-object v1

    .line 435
    iget-object v2, v0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    .line 436
    :try_start_113
    iput-boolean v3, v0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 437
    iget-object v0, v0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 438
    monitor-exit v2

    return-void

    :catchall_11c
    move-exception v0

    monitor-exit v2
    :try_end_11e
    .catchall {:try_start_113 .. :try_end_11e} :catchall_11c

    throw v0

    :catch_11f
    :cond_11f
    return-void

    :catchall_120
    move-exception v0

    .line 394
    :try_start_121
    monitor-exit v2
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    throw v0
.end method

.method public final handleSensorChanged(Landroid/hardware/Sensor;)V
    .registers 3

    .line 442
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    if-eq v0, p1, :cond_19

    .line 443
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    .line 444
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    .line 445
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter p1

    .line 446
    :try_start_c
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 447
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_16

    .line 450
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    goto :goto_19

    :catchall_16
    move-exception p0

    .line 447
    :try_start_17
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0

    :cond_19
    :goto_19
    return-void
.end method

.method public notifyBrightnessChanged(FZFZZLjava/lang/String;)V
    .registers 19

    move-object v0, p0

    .line 325
    iget-object v1, v0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 326
    new-instance v11, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    iget-object v0, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 328
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v8

    move-object v3, v11

    move v4, p1

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;-><init>(FFZZJLjava/lang/String;)V

    const/4 v0, 0x1

    move v3, p2

    .line 325
    invoke-virtual {v1, v0, p2, v2, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    .line 273
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    return-void
.end method

.method public persistBrightnessTrackerState()V
    .registers 1

    .line 312
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->scheduleWriteBrightnessTrackerState()V

    return-void
.end method

.method public final readAmbientBrightnessStats()V
    .registers 4

    .line 555
    new-instance v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker;-><init>(Landroid/os/UserManager;Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 556
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v1, "ambient_brightness_stats.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 557
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 560
    :try_start_1a
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 561
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {p0, v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->readStats(Ljava/io/InputStream;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_29
    .catchall {:try_start_1a .. :try_end_23} :catchall_27

    .line 566
    :goto_23
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_39

    :catchall_27
    move-exception p0

    goto :goto_35

    :catch_29
    move-exception p0

    .line 563
    :try_start_2a
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    const-string v0, "BrightnessTracker"

    const-string v1, "Failed to read ambient brightness stats."

    .line 564
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_27

    goto :goto_23

    .line 566
    :goto_35
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 567
    throw p0

    :cond_39
    :goto_39
    return-void
.end method

.method public final readEvents()V
    .registers 5

    .line 534
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 536
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 537
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 538
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v2, "brightness_events.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 539
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_3b

    if-eqz v2, :cond_39

    const/4 v2, 0x0

    .line 542
    :try_start_1c
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 543
    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessTracker;->readEventsLocked(Ljava/io/InputStream;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_29
    .catchall {:try_start_1c .. :try_end_23} :catchall_27

    .line 548
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

    .line 545
    :try_start_2a
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    const-string v1, "BrightnessTracker"

    const-string v3, "Failed to read change mEvents."

    .line 546
    invoke-static {v1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_27

    goto :goto_23

    .line 548
    :goto_35
    :try_start_35
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 549
    throw p0

    .line 551
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

    const-string v0, ","

    .line 655
    :try_start_4
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    .line 658
    :goto_8
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_13

    const/4 v5, 0x2

    if-eq v3, v5, :cond_13

    goto :goto_8

    .line 661
    :cond_13
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "events"

    .line 662
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17a

    .line 667
    iget-object v3, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    sub-long/2addr v5, v7

    .line 669
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 670
    :cond_2c
    :goto_2c
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v4, :cond_179

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3b

    .line 671
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_179

    :cond_3b
    if-eq v7, v8, :cond_2c

    const/4 v8, 0x4

    if-ne v7, v8, :cond_41

    goto :goto_2c

    .line 675
    :cond_41
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "event"

    .line 676
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 677
    new-instance v7, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    invoke-direct {v7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    const-string/jumbo v8, "nits"

    const/4 v9, 0x0

    .line 679
    invoke-interface {v2, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v8, "timestamp"

    .line 680
    invoke-interface {v2, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v8, "packageName"

    .line 681
    invoke-interface {v2, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 682
    iget-object v8, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v10, v1, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v11, "user"

    .line 683
    invoke-interface {v2, v9, v11}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 682
    invoke-virtual {v8, v10, v11}, Lcom/android/server/display/BrightnessTracker$Injector;->getUserId(Landroid/os/UserManager;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v8, "uniqueDisplayId"

    .line 684
    invoke-interface {v2, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8e

    const-string v8, ""

    .line 688
    :cond_8e
    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUniqueDisplayId(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string v8, "batteryLevel"

    .line 689
    invoke-interface {v2, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v8, "nightMode"

    .line 690
    invoke-interface {v2, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string v8, "colorTemperature"

    .line 692
    invoke-interface {v2, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 691
    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v8, "reduceBrightColors"

    .line 694
    invoke-interface {v2, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 693
    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColors(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v8, "reduceBrightColorsStrength"

    .line 696
    invoke-interface {v2, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 695
    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsStrength(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v8, "reduceBrightColorsOffset"

    .line 698
    invoke-interface {v2, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v8

    .line 697
    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsOffset(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v8, "lastNits"

    .line 699
    invoke-interface {v2, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v8, "lux"

    .line 701
    invoke-interface {v2, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "luxTimestamps"

    .line 702
    invoke-interface {v2, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 704
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 705
    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 706
    array-length v11, v8

    array-length v12, v10

    if-eq v11, v12, :cond_f1

    goto/16 :goto_2c

    .line 709
    :cond_f1
    array-length v11, v8

    new-array v12, v11, [F

    .line 710
    array-length v13, v8

    new-array v13, v13, [J

    const/4 v14, 0x0

    move v15, v14

    :goto_f9
    if-ge v15, v11, :cond_10e

    .line 712
    aget-object v16, v8, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    aput v16, v12, v15

    .line 713
    aget-object v16, v10, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v13, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_f9

    .line 715
    :cond_10e
    invoke-virtual {v7, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 716
    invoke-virtual {v7, v13}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string v8, "defaultConfig"

    .line 719
    invoke-interface {v2, v9, v8, v14}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 718
    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v8, "powerSaveFactor"

    const/high16 v10, 0x3f800000    # 1.0f

    .line 721
    invoke-interface {v2, v9, v8, v10}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v8

    .line 720
    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string/jumbo v8, "userPoint"

    .line 723
    invoke-interface {v2, v9, v8, v14}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 722
    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    const-string v8, "colorSampleDuration"

    const-wide/16 v10, -0x1

    .line 726
    invoke-interface {v2, v9, v8, v10, v11}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v12

    const-string v8, "colorValueBuckets"

    .line 728
    invoke-interface {v2, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    cmp-long v9, v12, v10

    if-eqz v9, :cond_15e

    if-eqz v8, :cond_15e

    .line 730
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 731
    array-length v9, v8

    new-array v10, v9, [J

    :goto_14e
    if-ge v14, v9, :cond_15b

    .line 733
    aget-object v11, v8, v14

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    aput-wide v15, v10, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_14e

    .line 735
    :cond_15b
    invoke-virtual {v7, v10, v12, v13}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 738
    :cond_15e
    invoke-virtual {v7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    move-result-object v7

    .line 744
    iget v8, v7, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2c

    iget-wide v8, v7, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    cmp-long v8, v8, v5

    if-lez v8, :cond_2c

    iget-object v8, v7, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v8, v8

    if-lez v8, :cond_2c

    .line 746
    iget-object v8, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v8, v7}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    goto/16 :goto_2c

    :cond_179
    return-void

    .line 663
    :cond_17a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Events not found in brightness tracker file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_191
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_191} :catch_191
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_191} :catch_191
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_191} :catch_191
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_191} :catch_191

    :catch_191
    move-exception v0

    .line 753
    new-instance v2, Lcom/android/internal/util/RingBuffer;

    const-class v3, Landroid/hardware/display/BrightnessChangeEvent;

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    const-string v1, "BrightnessTracker"

    const-string v2, "Failed to parse brightness event"

    .line 754
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    new-instance v1, Ljava/io/IOException;

    const-string v2, "failed to parse file"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final recordAmbientBrightnessStats(Landroid/hardware/SensorEvent;)V
    .registers 4

    .line 926
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    iget p0, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget p1, p1, v1

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->add(IF)V

    return-void
.end method

.method public final recordSensorEvent(Landroid/hardware/SensorEvent;)V
    .registers 9

    .line 896
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->elapsedRealtimeNanos()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/display/BrightnessTracker;->LUX_EVENT_HORIZON:J

    sub-long/2addr v0, v2

    .line 897
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 901
    :try_start_c
    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 902
    invoke-interface {v5}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v5, v5, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_26

    .line 904
    monitor-exit v2

    return-void

    :cond_26
    const/4 v3, 0x0

    move-object v4, v3

    .line 907
    :goto_28
    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_47

    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 908
    invoke-interface {v5}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v5, v5, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    cmp-long v5, v5, v0

    if-gez v5, :cond_47

    .line 910
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessTracker$LightData;

    goto :goto_28

    :cond_47
    if-eqz v4, :cond_4e

    .line 915
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v0, v4}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 918
    :cond_4e
    new-instance v0, Lcom/android/server/display/BrightnessTracker$LightData;

    invoke-direct {v0, v3}, Lcom/android/server/display/BrightnessTracker$LightData;-><init>(Lcom/android/server/display/BrightnessTracker$LightData-IA;)V

    .line 919
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v3, v0, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    .line 920
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget p1, p1, v1

    iput p1, v0, Lcom/android/server/display/BrightnessTracker$LightData;->lux:F

    .line 921
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {p0, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 922
    monitor-exit v2

    return-void

    :catchall_65
    move-exception p0

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_c .. :try_end_67} :catchall_65

    throw p0
.end method

.method public final scheduleWriteBrightnessTrackerState()V
    .registers 3

    .line 476
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    if-nez v0, :cond_11

    .line 477
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 482
    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    :cond_11
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 3

    .line 218
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setLightSensor(Landroid/hardware/Sensor;)V
    .registers 4

    .line 336
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 337
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public start(F)V
    .registers 3

    .line 210
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 211
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final startSensorListener()V
    .registers 5

    .line 455
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 458
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    .line 459
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 460
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->start()V

    const/4 v0, 0x1

    .line 461
    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    .line 462
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    .line 463
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v3

    .line 462
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->registerSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V

    :cond_37
    return-void
.end method

.method public stop()V
    .registers 5

    .line 256
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    .line 258
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    .line 259
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterBrightnessModeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 260
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->cancelIdleJob(Landroid/content/Context;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_2e
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 265
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_35

    .line 266
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    return-void

    :catchall_35
    move-exception p0

    .line 265
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final stopSensorListener()V
    .registers 4

    .line 468
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    if-eqz v0, :cond_15

    .line 469
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->stop()V

    .line 470
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 471
    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    :cond_15
    return-void
.end method

.method public final updateColorSampling()V
    .registers 3

    .line 867
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 870
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFrameRate(Landroid/content/Context;)F

    move-result v0

    .line 871
    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19

    .line 872
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    .line 873
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    :cond_19
    return-void
.end method

.method public final writeAmbientBrightnessStats()V
    .registers 3

    .line 518
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v1, "ambient_brightness_stats.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x0

    .line 524
    :try_start_c
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 525
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {p0, v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->writeStats(Ljava/io/OutputStream;)V

    .line 526
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_24

    :catch_19
    move-exception p0

    .line 528
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v0, "BrightnessTracker"

    const-string v1, "Failed to write ambient brightness stats."

    .line 529
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method public final writeEvents()V
    .registers 5

    .line 487
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    if-nez v1, :cond_9

    .line 490
    monitor-exit v0

    return-void

    .line 493
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v2, "brightness_events.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    if-nez v1, :cond_15

    .line 495
    monitor-exit v0

    return-void

    .line 497
    :cond_15
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    .line 498
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 499
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 501
    :cond_27
    iput-boolean v3, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_45

    goto :goto_43

    :cond_2a
    const/4 v2, 0x0

    .line 505
    :try_start_2b
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 506
    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessTracker;->writeEventsLocked(Ljava/io/OutputStream;)V

    .line 507
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 508
    iput-boolean v3, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_37} :catch_38
    .catchall {:try_start_2b .. :try_end_37} :catchall_45

    goto :goto_43

    :catch_38
    move-exception p0

    .line 510
    :try_start_39
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v1, "BrightnessTracker"

    const-string v2, "Failed to write change mEvents."

    .line 511
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
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

    .line 574
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 575
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v3, 0x1

    .line 576
    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "events"

    .line 578
    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 579
    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 581
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 585
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    sub-long/2addr v4, v6

    const/4 v6, 0x0

    move v7, v6

    .line 586
    :goto_2e
    array-length v8, v3

    if-ge v7, v8, :cond_174

    .line 587
    iget-object v8, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v9, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    aget-object v10, v3, v7

    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {v8, v9, v10}, Lcom/android/server/display/BrightnessTracker$Injector;->getUserSerialNumber(Landroid/os/UserManager;I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_170

    .line 588
    aget-object v9, v3, v7

    iget-wide v10, v9, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    cmp-long v10, v10, v4

    if-lez v10, :cond_170

    .line 589
    iget-object v10, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v10, v9}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    const-string v9, "event"

    .line 590
    invoke-interface {v0, v2, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 591
    aget-object v10, v3, v7

    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    const-string/jumbo v11, "nits"

    invoke-interface {v0, v2, v11, v10}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 592
    aget-object v10, v3, v7

    iget-wide v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    const-string/jumbo v12, "timestamp"

    invoke-interface {v0, v2, v12, v10, v11}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 593
    aget-object v10, v3, v7

    iget-object v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    const-string/jumbo v11, "packageName"

    invoke-interface {v0, v2, v11, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "user"

    .line 594
    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 595
    aget-object v8, v3, v7

    iget-object v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->uniqueDisplayId:Ljava/lang/String;

    if-nez v8, :cond_7e

    const-string v8, ""

    :cond_7e
    const-string/jumbo v10, "uniqueDisplayId"

    .line 599
    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 600
    aget-object v8, v3, v7

    iget v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    const-string v10, "batteryLevel"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 601
    aget-object v8, v3, v7

    iget-boolean v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    const-string/jumbo v10, "nightMode"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 602
    aget-object v8, v3, v7

    iget v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    const-string v10, "colorTemperature"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 604
    aget-object v8, v3, v7

    iget-boolean v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColors:Z

    const-string/jumbo v10, "reduceBrightColors"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 606
    aget-object v8, v3, v7

    iget v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsStrength:I

    const-string/jumbo v10, "reduceBrightColorsStrength"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 608
    aget-object v8, v3, v7

    iget v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsOffset:F

    const-string/jumbo v10, "reduceBrightColorsOffset"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 610
    aget-object v8, v3, v7

    iget v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    const-string/jumbo v10, "lastNits"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 612
    aget-object v8, v3, v7

    iget-boolean v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    const-string v10, "defaultConfig"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 614
    aget-object v8, v3, v7

    iget v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    const-string/jumbo v10, "powerSaveFactor"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 616
    aget-object v8, v3, v7

    iget-boolean v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    const-string/jumbo v10, "userPoint"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 618
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v11, v6

    .line 620
    :goto_f0
    aget-object v12, v3, v7

    iget-object v12, v12, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v12, v12

    const/16 v13, 0x2c

    if-ge v11, v12, :cond_11e

    if-lez v11, :cond_101

    .line 622
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    :cond_101
    aget-object v12, v3, v7

    iget-object v12, v12, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    aget v12, v12, v11

    invoke-static {v12}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    aget-object v12, v3, v7

    iget-object v12, v12, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    aget-wide v12, v12, v11

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_f0

    .line 628
    :cond_11e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "lux"

    invoke-interface {v0, v2, v11, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 629
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "luxTimestamps"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 630
    aget-object v8, v3, v7

    iget-object v10, v8, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    if-eqz v10, :cond_16d

    array-length v10, v10

    if-lez v10, :cond_16d

    .line 632
    iget-wide v10, v8, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    const-string v8, "colorSampleDuration"

    invoke-interface {v0, v2, v8, v10, v11}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 634
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v6

    .line 635
    :goto_148
    aget-object v11, v3, v7

    iget-object v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    array-length v11, v11

    if-ge v10, v11, :cond_164

    if-lez v10, :cond_154

    .line 637
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 639
    :cond_154
    aget-object v11, v3, v7

    iget-object v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    aget-wide v11, v11, v10

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_148

    .line 641
    :cond_164
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "colorValueBuckets"

    invoke-interface {v0, v2, v10, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 643
    :cond_16d
    invoke-interface {v0, v2, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_170
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2e

    .line 646
    :cond_174
    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 647
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 648
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
