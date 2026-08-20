.class public final Lcom/android/server/vibrator/VibrationSettings;
.super Ljava/lang/Object;
.source "VibrationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibrationSettings$UidObserver;,
        Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;,
        Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;,
        Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;
    }
.end annotation


# static fields
.field public static final BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_RINGER_MODE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

.field public static final POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "VibrationSettings"

.field public static final USER_SWITCHED_INTENT_FILTER:Landroid/content/IntentFilter;

.field public static final VIBRATE_ON_DISABLED_USAGE_ALLOWED:I = 0x42


# instance fields
.field public LEVEL_TO_FORCE_MAGNITUDE:[I

.field public LEVEL_TO_MAGNITUDE:[I

.field public LEVEL_TO_TOUCH_MAGNITUDE:[I

.field public mAudioManager:Landroid/media/AudioManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mBatterySaverMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mCallMagnitude:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentVibrationIntensities:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mFallbackEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field public mForceMagnitude:I

.field public mIsEnableIntensity:Z

.field public mIsHapticEngineSupported:Z

.field public mIsHapticSupported:Z

.field public final mListeners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mManagerService:Lcom/android/server/vibrator/VibratorManagerService;

.field public mMaxMagnitude:I

.field public mMediaMagnitude:I

.field public mMinMagnitude:I

.field public mMotorType:I

.field public mNotiMagnitude:I

.field public mOnlyWatchConnected:Z

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mRingerMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mSettingChangeReceiver:Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mSystemUiPackage:Ljava/lang/String;

.field public mTouchMagnitude:I

.field public final mUidObserver:Lcom/android/server/vibrator/VibrationSettings$UidObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mVibrateInputDevices:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mVibrateOn:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

.field public final mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/vibrator/VibrationSettings;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDefaultVibratorController(Lcom/android/server/vibrator/VibrationSettings;)Lcom/android/server/vibrator/VibratorController;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyListeners(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRingerMode(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateRingerMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSettings(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 13

    .line 101
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x21

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v4, 0x11

    .line 104
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/16 v6, 0x31

    .line 105
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const/16 v6, 0x41

    .line 106
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v1, v8

    const/16 v9, 0x32

    .line 107
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v1, v10

    const/16 v11, 0x22

    .line 108
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x5

    aput-object v11, v1, v12

    .line 102
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 116
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v12, [Ljava/lang/Integer;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    aput-object v6, v1, v7

    aput-object v11, v1, v8

    aput-object v9, v1, v10

    .line 117
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 140
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/Integer;

    const/16 v2, 0x12

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object v11, v1, v5

    aput-object v9, v1, v7

    .line 141
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 154
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v7, [Ljava/lang/Integer;

    const/16 v2, 0x9

    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 157
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 155
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->USER_SWITCHED_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->INTERNAL_RINGER_MODE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    .line 205
    new-instance v0, Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/vibrator/VibrationConfig;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/vibrator/VibrationSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    .line 195
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 839
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsEnableIntensity:Z

    .line 840
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsHapticSupported:Z

    .line 841
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsHapticEngineSupported:Z

    const/16 v1, 0xa

    new-array v2, v1, [I

    .line 843
    iput-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    new-array v2, v1, [I

    .line 844
    iput-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    new-array v1, v1, [I

    .line 845
    iput-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_FORCE_MAGNITUDE:[I

    const/16 v1, 0x270f

    .line 847
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mTouchMagnitude:I

    .line 848
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mCallMagnitude:I

    .line 849
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mNotiMagnitude:I

    .line 850
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mForceMagnitude:I

    .line 851
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mMaxMagnitude:I

    .line 852
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mMinMagnitude:I

    .line 853
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mMediaMagnitude:I

    .line 855
    iput v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mMotorType:I

    .line 856
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnlyWatchConnected:Z

    .line 210
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    .line 211
    iput-object p3, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 212
    new-instance p1, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    invoke-direct {p1, p0, p2}, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    .line 213
    new-instance p1, Lcom/android/server/vibrator/VibrationSettings$UidObserver;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibrationSettings$UidObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$UidObserver;

    .line 214
    new-instance p1, Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingChangeReceiver:Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;

    .line 216
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 217
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mSystemUiPackage:Ljava/lang/String;

    const p1, 0x1070186

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object p1

    const p2, 0x10700bd

    .line 221
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object p2

    const p3, 0x10700eb

    .line 223
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object p3

    const v1, 0x1070094

    .line 225
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 228
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    .line 229
    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 230
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    .line 231
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x5

    .line 232
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    invoke-static {p1, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p1

    const/16 p2, 0x15

    .line 233
    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    invoke-static {}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getInstance()Lcom/samsung/android/server/vibrator/VibratorHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 241
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 4

    .line 871
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibrationSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 872
    iput-object p3, p0, Lcom/android/server/vibrator/VibrationSettings;->mManagerService:Lcom/android/server/vibrator/VibratorManagerService;

    return-void
.end method

.method public static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .registers 4

    if-eqz p0, :cond_18

    .line 742
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_18

    .line 744
    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    .line 745
    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 747
    :cond_13
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 5

    .line 752
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 756
    :cond_8
    array-length p1, p0

    new-array p1, p1, [J

    const/4 v0, 0x0

    .line 757
    :goto_c
    array-length v1, p0

    if-ge v0, v1, :cond_17

    .line 758
    aget v1, p0, v0

    int-to-long v1, v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_17
    return-object p1
.end method

.method public static intensityToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_32

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_29

    const/4 v0, 0x4

    if-eq p0, v0, :cond_26

    const/4 v0, 0x5

    if-eq p0, v0, :cond_23

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN INTENSITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const-string p0, "HIGH"

    return-object p0

    :cond_26
    const-string p0, "MEDIUM_HIGH"

    return-object p0

    :cond_29
    const-string p0, "MEDIUM"

    return-object p0

    :cond_2c
    const-string p0, "MEDIUM_LOW"

    return-object p0

    :cond_2f
    const-string p0, "LOW"

    return-object p0

    :cond_32
    const-string p0, "OFF"

    return-object p0
.end method

.method public static loadMagnitudeList(Z[I[I)[I
    .registers 3

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    move-object p1, p2

    :goto_4
    return-object p1
.end method

.method public static loadTouchMagnitudeList(Z[I[I)[I
    .registers 3

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    move-object p1, p2

    :goto_4
    return-object p1
.end method


# virtual methods
.method public addCustomDump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "  VibrationSettings information"

    .line 898
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsHapticSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsHapticSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsEnableIntensity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsEnableIntensity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mTouchMagnitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mTouchMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCallMagnitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mCallMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mNotiMagnitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mNotiMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mForceMagnitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mForceMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mMediaMagnitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mMediaMagnitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    LEVEL_TO_MAGNITUDE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    LEVEL_TO_TOUCH_MAGNITUDE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public addListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V
    .registers 4

    .line 327
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 329
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public bootCompleteReady()V
    .registers 1

    .line 318
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->registerFoldStateListener()V

    return-void
.end method

.method public final createEffectFromResource(I)Landroid/os/VibrationEffect;
    .registers 2

    .line 736
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object p0

    .line 737
    invoke-static {p0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    .line 638
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide v1, 0x10800000018L

    .line 639
    :try_start_8
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000006L

    .line 640
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10500000012L

    const/16 v3, 0x11

    .line 642
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v4

    .line 641
    invoke-virtual {p1, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000013L

    .line 644
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 643
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000016L

    const/16 v3, 0x32

    .line 646
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v4

    .line 645
    invoke-virtual {p1, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000017L

    .line 648
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 647
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000007L

    const/16 v3, 0x12

    .line 650
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v4

    .line 649
    invoke-virtual {p1, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000008L

    .line 652
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 651
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000014L

    const/16 v3, 0x13

    .line 654
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v4

    .line 653
    invoke-virtual {p1, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000015L

    .line 656
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 655
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000009L

    const/16 v3, 0x31

    .line 658
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v4

    .line 657
    invoke-virtual {p1, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1050000000aL

    .line 660
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 659
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1050000000bL

    const/16 v3, 0x21

    .line 662
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v4

    .line 661
    invoke-virtual {p1, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1050000000cL

    .line 664
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result p0

    .line 663
    invoke-virtual {p1, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 665
    monitor-exit v0

    return-void

    :catchall_b5
    move-exception p0

    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_8 .. :try_end_b7} :catchall_b5

    throw p0
.end method

.method public getCurrentIntensity(I)I
    .registers 4

    .line 375
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v0

    .line 376
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_7
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_f
    move-exception p0

    .line 378
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getCurrentMagnitude(I)I
    .registers 3

    const/16 v0, 0x11

    if-eq p1, v0, :cond_24

    const/16 v0, 0x12

    if-eq p1, v0, :cond_21

    const/16 v0, 0x21

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x22

    if-eq p1, v0, :cond_21

    const/16 v0, 0x31

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x32

    if-eq p1, v0, :cond_21

    .line 1138
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mMediaMagnitude:I

    return p0

    .line 1134
    :cond_1b
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mNotiMagnitude:I

    return p0

    .line 1126
    :cond_1e
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCallMagnitude:I

    return p0

    .line 1130
    :cond_21
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mTouchMagnitude:I

    return p0

    .line 1132
    :cond_24
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mMaxMagnitude:I

    return p0
.end method

.method public getDefaultIntensity(I)I
    .registers 2

    .line 365
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result p0

    return p0
.end method

.method public final getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;
    .registers 1

    .line 862
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mManagerService:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object p0

    return-object p0
.end method

.method public getFallbackEffect(I)Landroid/os/VibrationEffect;
    .registers 2

    .line 389
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method

.method public getMagnitude(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1065
    invoke-static {p1}, Landroid/os/VibrationEffect$SemMagnitudeType;->valueOf(Ljava/lang/String;)Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object p1

    .line 1067
    sget-object v0, Lcom/android/server/vibrator/VibrationSettings$3;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    invoke-virtual {p1}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_32

    const/4 p0, 0x0

    return p0

    .line 1083
    :pswitch_11
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mMinMagnitude:I

    return p0

    .line 1081
    :pswitch_14
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mMaxMagnitude:I

    return p0

    .line 1079
    :pswitch_17
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCallMagnitude:I

    return p0

    .line 1077
    :pswitch_1a
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mNotiMagnitude:I

    return p0

    .line 1072
    :pswitch_1d
    sget-boolean p1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ALWAYS_VIBRATE:Z

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->isAllowedPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 1073
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mMaxMagnitude:I

    return p0

    .line 1075
    :cond_2c
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mNotiMagnitude:I

    return p0

    .line 1070
    :pswitch_2f
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mTouchMagnitude:I

    return p0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2f
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public getManagerService()Lcom/android/server/vibrator/VibratorManagerService;
    .registers 1

    .line 866
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mManagerService:Lcom/android/server/vibrator/VibratorManagerService;

    return-object p0
.end method

.method public getMaxMagnitude()I
    .registers 1

    .line 1215
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mMaxMagnitude:I

    return p0
.end method

.method public getMinMagnitude()I
    .registers 1

    .line 1219
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mMinMagnitude:I

    return p0
.end method

.method public getRampDownDuration()I
    .registers 1

    .line 355
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRampDownDurationMs()I

    move-result p0

    return p0
.end method

.method public getRampStepDuration()I
    .registers 1

    .line 347
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRampStepDurationMs()I

    move-result p0

    return p0
.end method

.method public getRingtoneVolumeScale()F
    .registers 3

    .line 1199
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    .line 1200
    invoke-virtual {p0, v1, v0}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result p0

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method

.method public final initializeVibrationState()V
    .registers 14

    .line 913
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 915
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 917
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070137

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 919
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070138

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 921
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107013a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 923
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070134

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 929
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_68

    .line 930
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/server/vibrator/VibratorController;->getAmplitudeList(I)[I

    move-result-object v7

    .line 932
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/server/vibrator/VibratorController;->getAmplitudeList(I)[I

    move-result-object v6

    goto :goto_69

    :cond_68
    move-object v6, v7

    .line 936
    :goto_69
    sget-boolean v10, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    const-string v11, "VibrationSettings"

    if-eqz v10, :cond_81

    iget v10, p0, Lcom/android/server/vibrator/VibrationSettings;->mMotorType:I

    if-ne v10, v9, :cond_81

    if-eqz v6, :cond_8c

    if-eqz v5, :cond_8c

    .line 937
    array-length v10, v6

    array-length v12, v5

    if-ne v10, v12, :cond_8c

    const-string v10, "HAL DC touch amplitude list is used!!"

    .line 940
    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    :cond_81
    if-eqz v7, :cond_8c

    if-eqz v6, :cond_8c

    const-string v10, "HAL amplitude list is used!!"

    .line 945
    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8a
    move v10, v9

    goto :goto_8d

    :cond_8c
    move v10, v8

    .line 949
    :goto_8d
    iget v11, p0, Lcom/android/server/vibrator/VibrationSettings;->mMotorType:I

    if-ne v11, v9, :cond_a3

    .line 950
    sget-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v1, :cond_115

    .line 952
    invoke-static {v10, v7, v0}, Lcom/android/server/vibrator/VibrationSettings;->loadMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 954
    invoke-static {v10, v6, v5}, Lcom/android/server/vibrator/VibrationSettings;->loadTouchMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    goto/16 :goto_115

    :cond_a3
    const/4 v5, 0x2

    if-ne v11, v5, :cond_b7

    .line 958
    iput-boolean v9, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsEnableIntensity:Z

    .line 959
    iput-boolean v9, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsHapticSupported:Z

    .line 960
    invoke-static {v10, v7, v0}, Lcom/android/server/vibrator/VibrationSettings;->loadMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 962
    invoke-static {v10, v6, v6}, Lcom/android/server/vibrator/VibrationSettings;->loadTouchMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    goto :goto_115

    :cond_b7
    const/4 v5, 0x3

    if-ne v11, v5, :cond_cb

    .line 965
    invoke-static {v10, v7, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 967
    invoke-static {v10, v6, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadTouchMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 969
    iput-boolean v9, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsEnableIntensity:Z

    .line 970
    iput-boolean v8, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsHapticSupported:Z

    goto :goto_115

    :cond_cb
    const/4 v4, 0x5

    if-ne v11, v4, :cond_e2

    .line 972
    invoke-static {v10, v7, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 974
    invoke-static {v10, v6, v3}, Lcom/android/server/vibrator/VibrationSettings;->loadTouchMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 976
    invoke-static {v9}, Lcom/samsung/android/vibrator/VibRune;->SET_CIRRUS_HAPTIC(Z)V

    .line 977
    iput-boolean v9, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsEnableIntensity:Z

    .line 978
    iput-boolean v9, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsHapticSupported:Z

    goto :goto_115

    :cond_e2
    const/4 v3, 0x6

    if-eq v11, v3, :cond_105

    const/4 v3, 0x7

    if-ne v11, v3, :cond_e9

    goto :goto_105

    :cond_e9
    const/16 v1, 0x8

    if-eq v11, v1, :cond_f1

    const/16 v1, 0x9

    if-ne v11, v1, :cond_115

    .line 987
    :cond_f1
    invoke-static {v10, v7, v0}, Lcom/android/server/vibrator/VibrationSettings;->loadMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 989
    invoke-static {v10, v6, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadTouchMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 991
    invoke-static {v9}, Lcom/samsung/android/vibrator/VibRune;->SET_CIRRUS_HAPTIC(Z)V

    .line 992
    iput-boolean v9, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsEnableIntensity:Z

    .line 993
    iput-boolean v9, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsHapticSupported:Z

    goto :goto_115

    .line 980
    :cond_105
    :goto_105
    invoke-static {v10, v7, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 982
    invoke-static {v10, v6, v6}, Lcom/android/server/vibrator/VibrationSettings;->loadTouchMagnitudeList(Z[I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 984
    iput-boolean v9, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsEnableIntensity:Z

    .line 985
    iput-boolean v9, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsHapticSupported:Z

    :cond_115
    :goto_115
    return-void
.end method

.method public final isVibrationSoundEnabled()Z
    .registers 3

    const-string/jumbo v0, "vibration_sound_enabled"

    const/4 v1, 0x0

    .line 1148
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_c

    move v1, v0

    :cond_c
    return v1
.end method

.method public final loadBooleanSetting(Ljava/lang/String;)Z
    .registers 4

    .line 715
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public final loadSystemSetting(Ljava/lang/String;I)I
    .registers 4

    .line 720
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final notifyListeners()V
    .registers 3

    .line 670
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 671
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 672
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 673
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;

    .line 674
    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;->onChange()V

    goto :goto_f

    :cond_1f
    return-void

    :catchall_20
    move-exception p0

    .line 672
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public onSystemReady()V
    .registers 7

    .line 245
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 246
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 247
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    .line 249
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 250
    :try_start_19
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 251
    iput-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 252
    iput v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 253
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_9c

    .line 256
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$UidObserver;

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2c} :catch_2c

    .line 263
    :catch_2c
    new-instance v1, Lcom/android/server/vibrator/VibrationSettings$1;

    invoke-direct {v1, p0}, Lcom/android/server/vibrator/VibrationSettings$1;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 286
    sget-object v0, Lcom/android/server/vibrator/VibrationSettings;->USER_SWITCHED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsChangeReceiver(Landroid/content/IntentFilter;)V

    .line 287
    sget-object v0, Lcom/android/server/vibrator/VibrationSettings;->INTERNAL_RINGER_MODE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsChangeReceiver(Landroid/content/IntentFilter;)V

    const-string/jumbo v0, "vibrate_input_devices"

    .line 290
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v0, "vibrate_on"

    .line 291
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string v0, "haptic_feedback_enabled"

    .line 292
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string v0, "alarm_vibration_intensity"

    .line 295
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 294
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string v0, "haptic_feedback_intensity"

    .line 297
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string v0, "hardware_haptic_feedback_intensity"

    .line 299
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 298
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string v0, "media_vibration_intensity"

    .line 301
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 300
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string v0, "notification_vibration_intensity"

    .line 303
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v0, "ring_vibration_intensity"

    .line 305
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 304
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->registerCustomSettingsObserver()V

    .line 309
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateSupportedHalFeature()V

    .line 313
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    return-void

    :catchall_9c
    move-exception p0

    .line 253
    :try_start_9d
    monitor-exit v3
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw p0
.end method

.method public final registerCustomSettingsObserver()V
    .registers 2

    const-string v0, "VIB_FEEDBACK_MAGNITUDE"

    .line 877
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 876
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string v0, "hardware_haptic_feedback_intensity"

    .line 879
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 878
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string v0, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    .line 881
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 880
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string v0, "VIB_RECVCALL_MAGNITUDE"

    .line 883
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 882
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    return-void
.end method

.method public registerFoldStateListener()V
    .registers 3

    .line 1092
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1095
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->supportsFoldState()Z

    move-result v0

    if-nez v0, :cond_19

    const-string p0, "VibrationSettings"

    const-string v0, "Fold mode is not supported"

    .line 1096
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1100
    :cond_19
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/vibrator/VibrationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/server/vibrator/VibrationSettings$2;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final registerSettingsChangeReceiver(Landroid/content/IntentFilter;)V
    .registers 3

    .line 731
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingChangeReceiver:Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final registerSettingsObserver(Landroid/net/Uri;)V
    .registers 5

    .line 725
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public removeListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 338
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public shouldCancelVibrationOnScreenOff(ILjava/lang/String;IJ)Z
    .registers 10

    .line 457
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 459
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_66

    const/4 v0, 0x0

    if-eqz v1, :cond_48

    .line 465
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->getLastGoToSleep()Landroid/os/PowerManager$SleepData;

    move-result-object v1

    .line 466
    iget-wide v2, v1, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    cmp-long p4, v2, p4

    if-ltz p4, :cond_21

    sget-object p4, Lcom/android/server/vibrator/VibrationSettings;->POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

    iget p5, v1, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    .line 467
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_48

    :cond_21
    const-string p0, "VibrationSettings"

    .line 470
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring screen off event triggered at uptime "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, v1, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " for reason "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    .line 472
    invoke-static {p2}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 470
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 476
    :cond_48
    sget-object p4, Lcom/android/server/vibrator/VibrationSettings;->SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_56

    return p4

    :cond_56
    const/16 p3, 0x3e8

    if-eq p1, p3, :cond_65

    if-eqz p1, :cond_65

    .line 481
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSystemUiPackage:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    move v0, p4

    :cond_65
    return v0

    :catchall_66
    move-exception p0

    .line 459
    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p0
.end method

.method public shouldIgnoreVibration(ILandroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;
    .registers 6

    .line 405
    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 406
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_7
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$UidObserver;

    invoke-virtual {v2, p1}, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->isUidForeground(I)Z

    move-result p1

    if-nez p1, :cond_27

    sget-object p1, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 408
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    const-string p1, "ALLOWED_IN_BACKGROUND_PROCESS"

    .line 410
    invoke-virtual {p2, p1}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 411
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v1

    return-object p0

    .line 418
    :cond_27
    iget-boolean p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    if-eqz p1, :cond_3b

    sget-object p1, Lcom/android/server/vibrator/VibrationSettings;->BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 419
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v1

    return-object p0

    :cond_3b
    const/4 p1, 0x2

    .line 422
    invoke-virtual {p2, p1}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p1

    if-nez p1, :cond_68

    .line 423
    iget-boolean p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    if-nez p1, :cond_4e

    const/16 p1, 0x42

    if-eq p1, v0, :cond_4e

    .line 424
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v1

    return-object p0

    .line 426
    :cond_4e
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result p1

    if-nez p1, :cond_68

    const-string p1, "INTENSITY_MAX"

    .line 428
    invoke-virtual {p2, p1}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_68

    const-string p1, "INTENSITY_MIN"

    invoke-virtual {p2, p1}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_68

    .line 429
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v1

    return-object p0

    :cond_68
    const/4 p1, 0x1

    .line 435
    invoke-virtual {p2, p1}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p1

    if-nez p1, :cond_79

    .line 436
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForRingerModeLocked(I)Z

    move-result p0

    if-nez p0, :cond_79

    .line 437
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v1

    return-object p0

    .line 440
    :cond_79
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :catchall_7c
    move-exception p0

    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_7 .. :try_end_7e} :catchall_7c

    throw p0
.end method

.method public shouldSoundForRingerMode(I)Z
    .registers 11

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->isVibrationSoundEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const-string p0, "VibrationSettings"

    const-string/jumbo p1, "shouldSoundForRingerMode false"

    .line 1162
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_10
    const/16 v0, 0x21

    if-eq p1, v0, :cond_15

    return v1

    .line 1170
    :cond_15
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1171
    :try_start_18
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1e

    .line 1172
    monitor-exit p1

    return v1

    .line 1174
    :cond_1e
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_27

    .line 1175
    monitor-exit p1

    return v1

    .line 1178
    :cond_27
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 1179
    array-length v3, v0

    move v4, v1

    move v5, v4

    :goto_31
    if-ge v4, v3, :cond_5c

    aget-object v6, v0, v4

    .line 1180
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_52

    .line 1181
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v7

    const/16 v8, 0x16

    if-ne v7, v8, :cond_46

    goto :goto_52

    .line 1184
    :cond_46
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_4f

    add-int/lit8 v5, v5, 0x1

    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_52
    :goto_52
    const-string p0, "VibrationSettings"

    const-string/jumbo v0, "skip virtual sound: connected A2DP or USB_HEADSET"

    .line 1182
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    monitor-exit p1

    return v1

    :cond_5c
    const-string v0, "VibrationSettings"

    .line 1188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sco Devices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", only watch connected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnlyWatchConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_85

    if-ne v5, v2, :cond_86

    .line 1189
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnlyWatchConnected:Z

    if-eqz p0, :cond_86

    :cond_85
    move v1, v2

    :cond_86
    monitor-exit p1

    return v1

    :catchall_88
    move-exception p0

    .line 1190
    monitor-exit p1
    :try_end_8a
    .catchall {:try_start_18 .. :try_end_8a} :catchall_88

    throw p0
.end method

.method public final shouldVibrateForRingerModeLocked(I)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x21

    if-eq p1, v1, :cond_a

    const/16 v1, 0x31

    if-eq p1, v1, :cond_a

    return v0

    .line 496
    :cond_a
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public shouldVibrateInputDevices()Z
    .registers 1

    .line 394
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    return p0
.end method

.method public final toIntensity(II)I
    .registers 3

    if-ltz p1, :cond_7

    const/4 p0, 0x5

    if-le p1, p0, :cond_6

    goto :goto_7

    :cond_6
    return p1

    :cond_7
    :goto_7
    return p2
.end method

.method public final toPositiveIntensity(II)I
    .registers 3

    if-nez p1, :cond_3

    return p2

    .line 702
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 614
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 616
    :goto_c
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 617
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 618
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 619
    invoke-static {v3}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=("

    .line 620
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",default:"

    .line 621
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), "

    .line 622
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_4b
    const/16 v2, 0x7d

    .line 624
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VibrationSettings{mVibratorConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrateInputDevices="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mBatterySaverMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrateOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrationIntensities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProcStatesCache="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$UidObserver;

    invoke-static {p0}, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->-$$Nest$fgetmProcStatesCache(Lcom/android/server/vibrator/VibrationSettings$UidObserver;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9c
    move-exception p0

    .line 633
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_3 .. :try_end_9e} :catchall_9c

    throw p0
.end method

.method public update()V
    .registers 1

    .line 501
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings()V

    .line 502
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateRingerMode()V

    .line 503
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    return-void
.end method

.method public final updateAmplitudeLevel()V
    .registers 8

    .line 998
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsEnableIntensity:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c2

    .line 999
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    array-length v2, v0

    sub-int/2addr v2, v1

    .line 1000
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v4, v3

    sub-int/2addr v4, v1

    const-string v5, "VibrationSettings"

    const/4 v6, 0x2

    if-lt v2, v6, :cond_a5

    if-ge v4, v6, :cond_16

    goto/16 :goto_a5

    .line 1006
    :cond_16
    aget v3, v3, v4

    iput v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mTouchMagnitude:I

    .line 1007
    aget v3, v0, v2

    iput v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCallMagnitude:I

    .line 1008
    iput v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mNotiMagnitude:I

    .line 1009
    iput v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mMaxMagnitude:I

    .line 1010
    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mMinMagnitude:I

    .line 1011
    iput v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mMediaMagnitude:I

    const-string v0, "VIB_FEEDBACK_MAGNITUDE"

    .line 1013
    invoke-virtual {p0, v0, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v4, :cond_31

    goto :goto_35

    .line 1016
    :cond_31
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v0, v3, v0

    :goto_35
    iput v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mTouchMagnitude:I

    const-string v0, "VIB_RECVCALL_MAGNITUDE"

    .line 1018
    invoke-virtual {p0, v0, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v2, :cond_40

    goto :goto_44

    .line 1021
    :cond_40
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v3, v0

    :goto_44
    iput v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCallMagnitude:I

    const-string v0, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    .line 1023
    invoke-virtual {p0, v0, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v2, :cond_4f

    goto :goto_53

    .line 1026
    :cond_4f
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v3, v0

    :goto_53
    iput v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mNotiMagnitude:I

    const-string v0, "media_vibration_intensity"

    .line 1028
    invoke-virtual {p0, v0, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v2, :cond_5e

    goto :goto_62

    .line 1030
    :cond_5e
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v2, v0

    :goto_62
    iput v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mMediaMagnitude:I

    .line 1032
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsHapticEngineSupported:Z

    if-eqz v0, :cond_cd

    .line 1033
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1070139

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_FORCE_MAGNITUDE:[I

    .line 1035
    array-length v2, v0

    sub-int/2addr v2, v1

    .line 1036
    aget v0, v0, v2

    iput v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mForceMagnitude:I

    if-ge v2, v6, :cond_95

    .line 1039
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "touchForceMagnitudeMaxLevel : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_95
    const-string v0, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    .line 1042
    invoke-virtual {p0, v0, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v2, :cond_9e

    goto :goto_a2

    .line 1046
    :cond_9e
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v0, v1, v0

    :goto_a2
    iput v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mForceMagnitude:I

    goto :goto_cd

    .line 1002
    :cond_a5
    :goto_a5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "magnitudeMaxLevel : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", touchMagnitudeMaxLevel : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1049
    :cond_c2
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v0, :cond_cd

    iget v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mMotorType:I

    if-ne v0, v1, :cond_cd

    .line 1050
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateDcHapticFeedbackMagnitude()V

    :cond_cd
    :goto_cd
    return-void
.end method

.method public final updateCustomSettings()V
    .registers 7

    .line 572
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 573
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 574
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_FORCE_MAGNITUDE:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const-string v3, "VibrationSettings"

    const/4 v4, 0x2

    if-lt v0, v4, :cond_7a

    if-ge v1, v4, :cond_17

    goto :goto_7a

    :cond_17
    const-string v5, "VIB_FEEDBACK_MAGNITUDE"

    .line 582
    invoke-virtual {p0, v5, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v5

    if-le v5, v1, :cond_20

    goto :goto_24

    .line 583
    :cond_20
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v5, v1, v5

    :goto_24
    iput v5, p0, Lcom/android/server/vibrator/VibrationSettings;->mTouchMagnitude:I

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    .line 585
    invoke-virtual {p0, v1, v0}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v0, :cond_2f

    goto :goto_33

    .line 586
    :cond_2f
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v1, v5, v1

    :goto_33
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mCallMagnitude:I

    const-string v1, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    .line 588
    invoke-virtual {p0, v1, v0}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v0, :cond_3e

    goto :goto_42

    .line 589
    :cond_3e
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v1, v5, v1

    :goto_42
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mNotiMagnitude:I

    if-ge v2, v4, :cond_5b

    .line 592
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forceTouchMagnitudeMaxLevel : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5b
    const-string v1, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    .line 595
    invoke-virtual {p0, v1, v2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v2, :cond_64

    goto :goto_68

    .line 596
    :cond_64
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_FORCE_MAGNITUDE:[I

    aget v1, v2, v1

    :goto_68
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mForceMagnitude:I

    const-string v1, "media_vibration_intensity"

    .line 598
    invoke-virtual {p0, v1, v0}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v0, :cond_73

    goto :goto_77

    .line 599
    :cond_73
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v1, v0, v1

    :goto_77
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mMediaMagnitude:I

    return-void

    .line 577
    :cond_7a
    :goto_7a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "magnitudeMaxLevel : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", touchMagnitudeMaxLevel : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateDcHapticFeedbackMagnitude()V
    .registers 3

    .line 1058
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    .line 1059
    invoke-virtual {p0, v1, v0}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v0

    .line 1060
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v0, v1, v0

    iput v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mTouchMagnitude:I

    return-void
.end method

.method public final updateRingerMode()V
    .registers 3

    .line 603
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 606
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_d

    .line 608
    :cond_9
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    :goto_d
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 609
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final updateSettings()V
    .registers 17

    move-object/from16 v0, p0

    .line 507
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    const-string/jumbo v2, "vibrate_input_devices"

    const/4 v3, 0x0

    .line 508
    invoke-virtual {v0, v2, v3}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-lez v2, :cond_12

    move v2, v4

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    iput-boolean v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    const-string/jumbo v2, "vibrate_on"

    .line 509
    invoke-virtual {v0, v2, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1f

    goto :goto_20

    :cond_1f
    move v4, v3

    :goto_20
    iput-boolean v4, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    const-string v2, "alarm_vibration_intensity"

    const/4 v4, -0x1

    .line 512
    invoke-virtual {v0, v2, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v2

    const/16 v5, 0x11

    .line 513
    invoke-virtual {v0, v5}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v6

    .line 511
    invoke-virtual {v0, v2, v6}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v2

    const/16 v6, 0x12

    .line 514
    invoke-virtual {v0, v6}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v7

    .line 516
    invoke-static {}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getHapticFeedbackSettingName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v8

    .line 515
    invoke-virtual {v0, v8, v7}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v8

    .line 518
    invoke-virtual {v0, v8, v7}, Lcom/android/server/vibrator/VibrationSettings;->toPositiveIntensity(II)I

    move-result v7

    const-string v9, "hardware_haptic_feedback_intensity"

    .line 521
    invoke-virtual {v0, v9, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v9

    .line 520
    invoke-virtual {v0, v9, v7}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v9

    const-string v10, "media_vibration_intensity"

    .line 524
    invoke-virtual {v0, v10, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v10

    const/16 v11, 0x13

    .line 525
    invoke-virtual {v0, v11}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v12

    .line 523
    invoke-virtual {v0, v10, v12}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v10

    const/16 v12, 0x31

    .line 526
    invoke-virtual {v0, v12}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v13

    .line 528
    invoke-static {}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getNotificationVibrationSettingName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v14

    .line 527
    invoke-virtual {v0, v14, v13}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v14

    .line 530
    invoke-virtual {v0, v14, v13}, Lcom/android/server/vibrator/VibrationSettings;->toPositiveIntensity(II)I

    move-result v13

    .line 533
    invoke-static {}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getRingVibrationSettingName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v4

    const/16 v15, 0x21

    .line 534
    invoke-virtual {v0, v15}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v6

    .line 532
    invoke-virtual {v0, v4, v6}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v4

    .line 536
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 537
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 538
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v12, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 539
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v11, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 540
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 541
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v15, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 544
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v3, 0x41

    invoke-virtual {v2, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 549
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v3, 0x32

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 550
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v3, 0x22

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 557
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v3, 0x12

    invoke-virtual {v2, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 561
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v3, 0x42

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibrationSettings;->updateAmplitudeLevel()V

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibrationSettings;->updateCustomSettings()V

    .line 567
    monitor-exit v1

    return-void

    :catchall_d4
    move-exception v0

    monitor-exit v1
    :try_end_d6
    .catchall {:try_start_5 .. :try_end_d6} :catchall_d4

    throw v0
.end method

.method public final updateSupportedHalFeature()V
    .registers 3

    .line 887
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mManagerService:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService;->getSupportedMotorType()I

    move-result v0

    iput v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mMotorType:I

    .line 889
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->initializeVibrationState()V

    .line 891
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 892
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->supportsHapticEngine()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsHapticEngineSupported:Z

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsHapticEngineSupported : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mIsHapticEngineSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VibrationSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void
.end method

.method public updateWatchConnectionState(Z)V
    .registers 4

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update only watch connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibrationSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnlyWatchConnected:Z

    return-void
.end method
