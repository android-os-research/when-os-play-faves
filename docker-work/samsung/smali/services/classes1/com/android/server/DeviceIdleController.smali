.class public Lcom/android/server/DeviceIdleController;
.super Lcom/android/server/SystemService;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceIdleController$Shell;,
        Lcom/android/server/DeviceIdleController$Injector;,
        Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;,
        Lcom/android/server/DeviceIdleController$LocalService;,
        Lcom/android/server/DeviceIdleController$BinderService;,
        Lcom/android/server/DeviceIdleController$MyHandler;,
        Lcom/android/server/DeviceIdleController$Constants;,
        Lcom/android/server/DeviceIdleController$MotionListener;
    }
.end annotation


# static fields
.field public static final ACTIVE_REASON_ALARM:I = 0x7

.field public static final ACTIVE_REASON_CHARGING:I = 0x3

.field public static final ACTIVE_REASON_FORCED:I = 0x6

.field public static final ACTIVE_REASON_FROM_BINDER_CALL:I = 0x5

.field public static final ACTIVE_REASON_MOTION:I = 0x1

.field public static final ACTIVE_REASON_SCREEN:I = 0x2

.field public static final ACTIVE_REASON_UNKNOWN:I = 0x0

.field public static final ACTIVE_REASON_UNLOCKED:I = 0x4

.field public static final COMPRESS_TIME:Z = false

.field public static final DEBUG:Z = false

.field public static final EVENT_BUFFER_SIZE:I = 0x64

.field public static final EVENT_DEEP_IDLE:I = 0x4

.field public static final EVENT_DEEP_MAINTENANCE:I = 0x5

.field public static final EVENT_LIGHT_IDLE:I = 0x2

.field public static final EVENT_LIGHT_MAINTENANCE:I = 0x3

.field public static final EVENT_NORMAL:I = 0x1

.field public static final EVENT_NULL:I = 0x0

.field public static final LIGHT_STATE_ACTIVE:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LIGHT_STATE_IDLE:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LIGHT_STATE_IDLE_MAINTENANCE:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LIGHT_STATE_INACTIVE:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LIGHT_STATE_OVERRIDE:I = 0x7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LIGHT_STATE_WAITING_FOR_NETWORK:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MIN_PRE_IDLE_FACTOR_CHANGE:F = 0.05f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MIN_STATE_STEP_ALARM_CHANGE:J = 0xea60L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MSG_FINISH_IDLE_OP:I = 0x8

.field public static final MSG_REPORT_ACTIVE:I = 0x5

.field public static final MSG_REPORT_IDLE_OFF:I = 0x4

.field public static final MSG_REPORT_IDLE_ON:I = 0x2

.field public static final MSG_REPORT_IDLE_ON_LIGHT:I = 0x3

.field public static final MSG_REPORT_STATIONARY_STATUS:I = 0x7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MSG_REPORT_TEMP_APP_WHITELIST_ADDED_TO_NPMS:I = 0xe

.field public static final MSG_REPORT_TEMP_APP_WHITELIST_CHANGED:I = 0xd

.field public static final MSG_REPORT_TEMP_APP_WHITELIST_REMOVED_TO_NPMS:I = 0xf

.field public static final MSG_RESET_PRE_IDLE_TIMEOUT_FACTOR:I = 0xc
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MSG_SEND_CONSTRAINT_MONITORING:I = 0xa

.field public static final MSG_TEMP_APP_WHITELIST_TIMEOUT:I = 0x6

.field public static final MSG_UPDATE_PRE_IDLE_TIMEOUT_FACTOR:I = 0xb
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MSG_WRITE_CONFIG:I = 0x1

.field public static final SET_IDLE_FACTOR_RESULT_IGNORED:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_IDLE_FACTOR_RESULT_INVALID:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_IDLE_FACTOR_RESULT_NOT_SUPPORT:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_IDLE_FACTOR_RESULT_OK:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_IDLE_FACTOR_RESULT_UNINIT:I = -0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATE_ACTIVE:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATE_IDLE:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATE_IDLE_MAINTENANCE:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATE_IDLE_PENDING:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATE_INACTIVE:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATE_LOCATING:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATE_QUICK_DOZE_DELAY:I = 0x7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATE_SENSING:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "DeviceIdleController"


# instance fields
.field public mActiveIdleOpCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mActiveReason:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAlarmsActive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

.field public final mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

.field public mCharging:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mConfigFile:Landroid/util/AtomicFile;

.field public mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field public mConstraintController:Lcom/android/server/deviceidle/ConstraintController;

.field public final mConstraints:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/deviceidle/IDeviceIdleConstraint;",
            "Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;",
            ">;"
        }
    .end annotation
.end field

.field public mCurLightIdleBudget:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mDeepEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mEventCmds:[I

.field public final mEventReasons:[Ljava/lang/String;

.field public final mEventTimes:[J

.field public mForceIdle:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mGenericLocationListener:Landroid/location/LocationListener;

.field public mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mGpsLocationListener:Landroid/location/LocationListener;

.field public final mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

.field public mHasGps:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mHasNetworkLocation:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mIdleIntent:Landroid/content/Intent;

.field public mIdleStartTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

.field public mInactiveTimeout:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/DeviceIdleController$Injector;

.field public final mInteractivityReceiver:Landroid/content/BroadcastReceiver;

.field public mJobsActive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLastGenericLocation:Landroid/location/Location;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLastGpsLocation:Landroid/location/Location;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLastMotionEventElapsed:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLastPreIdleFactor:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public mLightEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLightIdleIntent:Landroid/content/Intent;

.field public final mLightMaintenanceAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public mLightState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLocalActivityManager:Landroid/app/ActivityManagerInternal;

.field public mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public mLocalService:Lcom/android/server/DeviceIdleInternal;

.field public mLocated:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLocating:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLocationRequest:Landroid/location/LocationRequest;

.field public mMaintenanceStartTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public mMotionSensor:Landroid/hardware/Sensor;

.field public final mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public mNetworkConnected:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

.field public mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

.field public mNextAlarmTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mNextIdleDelay:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mNextIdlePendingDelay:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mNextLightAlarmTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mNextLightIdleDelay:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mNextLightMaintenanceAlarmTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mNextSensingTimeoutAlarmTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mNotMoving:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mNumBlockingConstraints:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPowerSaveWhitelistAllAppIdArray:[I

.field public final mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

.field public final mPowerSaveWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPowerSaveWhitelistExceptIdleAppIdArray:[I

.field public final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field public final mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

.field public final mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

.field public mPowerSaveWhitelistUserAppIdArray:[I

.field public final mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

.field public final mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPreIdleFactor:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mQuickDozeActivated:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mQuickDozeActivatedWhileIdling:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenLocked:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

.field public mScreenOn:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mStationaryListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/DeviceIdleInternal$StationaryListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempAllowlistChangeListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public mTempWhitelistAppIdArray:[I

.field public final mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/util/MutableLong;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mUseMotionSensor:Z


# direct methods
.method public static synthetic $r8$lambda$-TfCd9-0bjmxj4uv-dtzTV-T-l4(Lcom/android/server/DeviceIdleController;IILjava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->lambda$getRemovedSystemPowerWhitelistAppsInternal$10(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CfvXYG_NuVI7ecpXUFD5wU3CcLs(Lcom/android/server/DeviceIdleController;Landroid/os/PowerSaveState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->lambda$onBootPhase$4(Landroid/os/PowerSaveState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EibVJrb6RluuwSrpupHJtRf6OBc(Lcom/android/server/DeviceIdleController;IILjava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->lambda$getFullPowerWhitelistExceptIdleInternal$14(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FkxkAXhN9Fa2KY1SyIwJhs7Fs68(Lcom/android/server/DeviceIdleController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Gocn5-thTsXR7259TCFZqMdI2FM(Lcom/android/server/DeviceIdleController;IILjava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->lambda$getFullPowerWhitelistInternal$16(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IIu04ZoXUjB5OxC66DdFagD2Llc(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->lambda$getUserPowerWhitelistInternal$11(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K4nFKHOpTumM50dRBZXMfU68qPQ(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->lambda$getSystemPowerWhitelistExceptIdleInternal$5(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T8_HaxHUw1qPxZX6kTKVT1Nlb9Q(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->lambda$getFullPowerWhitelistExceptIdleInternal$13(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$alPRGQFloHgtVmxTtk6JY1bPOX4(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->lambda$getRemovedSystemPowerWhitelistAppsInternal$9(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$brvXivBXP7yxuxnMCDJRIHOQtlg(Lcom/android/server/DeviceIdleController;IILjava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->lambda$getSystemPowerWhitelistInternal$8(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$itkZQA24y3NvMaQLe356DsAOJZ8(Lcom/android/server/DeviceIdleController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$kJe8ZLVV_yVhI16EXFz03fBog3E(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->lambda$getSystemPowerWhitelistInternal$7(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lxpykl3EqKPgngnURMeKcFFakBk(Lcom/android/server/DeviceIdleController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$pVpw2HAmILJkBkGEnZoQ3b5ivrw(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->lambda$getFullPowerWhitelistInternal$15(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$s2kO-eADyvjvQiO-ta0aN8p0EtU(Lcom/android/server/DeviceIdleController;IILjava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->lambda$getUserPowerWhitelistInternal$12(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$z6jwv_zcHBk6Ge4DE_7ormOxpPA(Lcom/android/server/DeviceIdleController;IILjava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->lambda$getSystemPowerWhitelistExceptIdleInternal$6(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zKKDrW1Y2C0guUcFbEW3iYl6FJ8(Lcom/android/server/DeviceIdleController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->lambda$new$2()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryStats(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConstants(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGoingIdleWakeLock(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIdleStartedDoneReceiver(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMotionSensor(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkPolicyManager(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkPolicyManagerInternal(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/DeviceIdleController;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerSaveWhitelistAppsExceptIdle(Lcom/android/server/DeviceIdleController;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmState(Lcom/android/server/DeviceIdleController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStationaryListeners(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempAllowlistChangeListeners(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mTempAllowlistChangeListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddPowerSaveWhitelistAppsInternal(Lcom/android/server/DeviceIdleController;Ljava/util/List;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppsInternal(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetFullPowerWhitelistExceptIdleInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->getFullPowerWhitelistExceptIdleInternal(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetFullPowerWhitelistInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->getFullPowerWhitelistInternal(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRemovedSystemPowerWhitelistAppsInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->getRemovedSystemPowerWhitelistAppsInternal(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSystemPowerWhitelistExceptIdleInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->getSystemPowerWhitelistExceptIdleInternal(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSystemPowerWhitelistInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->getSystemPowerWhitelistInternal(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTempAllowListType(Lcom/android/server/DeviceIdleController;II)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->getTempAllowListType(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserPowerWhitelistInternal(Lcom/android/server/DeviceIdleController;II)[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->getUserPowerWhitelistInternal(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misStationaryLocked(Lcom/android/server/DeviceIdleController;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeDoImmediateMaintenance(Lcom/android/server/DeviceIdleController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->maybeDoImmediateMaintenance()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monConstraintStateChangedLocked(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterDeviceIdleConstraintInternal(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->registerDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterTempAllowlistChangeListener(Lcom/android/server/DeviceIdleController;Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterDeviceIdleConstraintInternal(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->unregisterDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterStationaryListener(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->unregisterStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterTempAllowlistChangeListener(Lcom/android/server/DeviceIdleController;Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->unregisterTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePreIdleFactor(Lcom/android/server/DeviceIdleController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updatePreIdleFactor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 2264
    new-instance v0, Lcom/android/server/DeviceIdleController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/DeviceIdleController$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;-><init>(Landroid/content/Context;Lcom/android/server/DeviceIdleController$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/DeviceIdleController$Injector;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2253
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 355
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 364
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 534
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 540
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    .line 546
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 551
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 556
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    .line 562
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    .line 568
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    new-array v1, v0, [I

    .line 575
    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 580
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    new-array v1, v0, [I

    .line 586
    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 591
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    new-array v1, v0, [I

    .line 597
    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 603
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    new-array v0, v0, [I

    .line 611
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 617
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 619
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 622
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempAllowlistChangeListeners:Landroid/util/ArraySet;

    const/16 v0, 0x64

    new-array v1, v0, [I

    .line 632
    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    new-array v1, v0, [J

    .line 633
    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    new-array v0, v0, [Ljava/lang/String;

    .line 634
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    .line 647
    new-instance v0, Lcom/android/server/DeviceIdleController$1;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$1;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 673
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 682
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightMaintenanceAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 692
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 701
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 716
    new-instance v0, Lcom/android/server/DeviceIdleController$2;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$2;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 730
    new-instance v0, Lcom/android/server/DeviceIdleController$3;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$3;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 741
    new-instance v0, Lcom/android/server/DeviceIdleController$4;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$4;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    .line 756
    new-instance v0, Lcom/android/server/DeviceIdleController$5;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$5;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    .line 898
    new-instance v0, Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$MotionListener;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 900
    new-instance v0, Lcom/android/server/DeviceIdleController$6;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$6;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    .line 921
    new-instance v0, Lcom/android/server/DeviceIdleController$7;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$7;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    .line 2239
    new-instance v0, Lcom/android/server/DeviceIdleController$8;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$8;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    .line 2254
    iput-object p2, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 2255
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/DeviceIdleController;->getSystemDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "deviceidle.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    .line 2256
    invoke-virtual {p2, p0}, Lcom/android/server/DeviceIdleController$Injector;->getHandler(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MyHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2258
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->get()Lcom/android/server/JobSchedulerBackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2257
    invoke-virtual {p2, p1, v0}, Lcom/android/server/DeviceIdleController$Injector;->getAppStateTracker(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/AppStateTrackerImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 2259
    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2260
    invoke-virtual {p2}, Lcom/android/server/DeviceIdleController$Injector;->useMotionSensor()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    return-void
.end method

.method public static buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")[I"
        }
    .end annotation

    .line 4144
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1e

    move v2, v0

    .line 4146
    :goto_8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 4147
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1e
    if-eqz p1, :cond_37

    move p0, v0

    .line 4151
    :goto_21
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge p0, v2, :cond_37

    .line 4152
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_21

    .line 4155
    :cond_37
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    .line 4156
    new-array p1, p0, [I

    :goto_3d
    if-ge v0, p0, :cond_48

    .line 4158
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_48
    return-object p1
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2

    const-string v0, "Device idle controller (deviceidle) commands:"

    .line 4384
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 4385
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 4386
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  step [light|deep]"

    .line 4387
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Immediately step to next state, without waiting for alarm."

    .line 4388
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  force-idle [light|deep]"

    .line 4389
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Force directly into idle mode, regardless of other device state."

    .line 4390
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  force-inactive"

    .line 4391
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Force to be inactive, ready to freely step idle states."

    .line 4392
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  unforce"

    .line 4393
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Resume normal functioning after force-idle or force-inactive."

    .line 4394
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get [light|deep|force|screen|charging|network]"

    .line 4395
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Retrieve the current given state."

    .line 4396
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  disable [light|deep|all]"

    .line 4397
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Completely disable device idle mode."

    .line 4398
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  enable [light|deep|all]"

    .line 4399
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Re-enable device idle mode after it had previously been disabled."

    .line 4400
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  enabled [light|deep|all]"

    .line 4401
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print 1 if device idle mode is currently enabled, else 0."

    .line 4402
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  whitelist"

    .line 4403
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print currently whitelisted apps."

    .line 4404
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  whitelist [package ...]"

    .line 4405
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Add (prefix with +) or remove (prefix with -) packages."

    .line 4406
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  sys-whitelist [package ...|reset]"

    .line 4407
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prefix the package with \'-\' to remove it from the system whitelist or \'+\' to put it back in the system whitelist."

    .line 4408
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Note that only packages that were earlier removed from the system whitelist can be added back."

    .line 4410
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    reset will reset the whitelist to the original state"

    .line 4412
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prints the system whitelist if no arguments are specified"

    .line 4413
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  except-idle-whitelist [package ...|reset]"

    .line 4414
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prefix the package with \'+\' to add it to whitelist or \'=\' to check if it is already whitelisted"

    .line 4415
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [reset] will reset the whitelist to it\'s original state"

    .line 4417
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Note that unlike <whitelist> cmd, changes made using this won\'t be persisted across boots"

    .line 4418
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  tempwhitelist"

    .line 4420
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print packages that are temporarily whitelisted."

    .line 4421
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  tempwhitelist [-u USER] [-d DURATION] [-r] [package]"

    .line 4422
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Temporarily place package in whitelist for DURATION milliseconds."

    .line 4423
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    If no DURATION is specified, 10 seconds is used"

    .line 4424
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    If [-r] option is used, then the package is removed from temp whitelist and any [-d] is ignored"

    .line 4425
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  motion"

    .line 4427
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Simulate a motion event to bring the device out of deep doze"

    .line 4428
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  pre-idle-factor [0|1|2]"

    .line 4429
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Set a new factor to idle time before step to idle(inactive_to and idle_after_inactive_to)"

    .line 4430
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  reset-pre-idle-factor"

    .line 4432
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Reset factor to idle time to default"

    .line 4433
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static getSystemDir()Ljava/io/File;
    .registers 3

    .line 2280
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$getFullPowerWhitelistExceptIdleInternal$13(I)[Ljava/lang/String;
    .registers 1

    .line 2735
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getFullPowerWhitelistExceptIdleInternal$14(IILjava/lang/String;)Z
    .registers 4

    .line 2736
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getFullPowerWhitelistInternal$15(I)[Ljava/lang/String;
    .registers 1

    .line 2754
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getFullPowerWhitelistInternal$16(IILjava/lang/String;)Z
    .registers 4

    .line 2755
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$getRemovedSystemPowerWhitelistAppsInternal$10(IILjava/lang/String;)Z
    .registers 4

    .line 2702
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getRemovedSystemPowerWhitelistAppsInternal$9(I)[Ljava/lang/String;
    .registers 1

    .line 2701
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic lambda$getSystemPowerWhitelistExceptIdleInternal$5(I)[Ljava/lang/String;
    .registers 1

    .line 2673
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getSystemPowerWhitelistExceptIdleInternal$6(IILjava/lang/String;)Z
    .registers 4

    .line 2674
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getSystemPowerWhitelistInternal$7(I)[Ljava/lang/String;
    .registers 1

    .line 2687
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getSystemPowerWhitelistInternal$8(IILjava/lang/String;)Z
    .registers 4

    .line 2688
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getUserPowerWhitelistInternal$11(I)[Ljava/lang/String;
    .registers 1

    .line 2714
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getUserPowerWhitelistInternal$12(IILjava/lang/String;)Z
    .registers 4

    .line 2715
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 677
    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "s:progression"

    .line 678
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 679
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    .line 686
    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "s:maintenance"

    .line 687
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 688
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method private synthetic lambda$new$2()V
    .registers 2

    .line 693
    monitor-enter p0

    .line 694
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 695
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 696
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    .line 698
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private synthetic lambda$new$3()V
    .registers 3

    .line 702
    monitor-enter p0

    .line 703
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "motion timeout went off and device isn\'t stationary"

    .line 709
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    monitor-exit p0

    return-void

    .line 712
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    .line 713
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->postStationaryStatusUpdated()V

    return-void

    :catchall_16
    move-exception v0

    .line 712
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private synthetic lambda$onBootPhase$4(Landroid/os/PowerSaveState;)V
    .registers 2

    .line 2425
    monitor-enter p0

    .line 2426
    :try_start_1
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked(Z)V

    .line 2427
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public static synthetic lambda$stepIdleStateLocked$17(Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;)Z
    .registers 1

    .line 3518
    iget-boolean p0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    return p0
.end method

.method public static synthetic lambda$stepIdleStateLocked$18(Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;)Ljava/lang/String;
    .registers 1

    .line 3519
    iget-object p0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static lightStateToString(I)Ljava/lang/String;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x6

    if-eq p0, v0, :cond_19

    const/4 v0, 0x7

    if-eq p0, v0, :cond_16

    .line 463
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string p0, "OVERRIDE"

    return-object p0

    :cond_19
    const-string p0, "IDLE_MAINTENANCE"

    return-object p0

    :cond_1c
    const-string p0, "WAITING_FOR_NETWORK"

    return-object p0

    :cond_1f
    const-string p0, "IDLE"

    return-object p0

    :cond_22
    const-string p0, "INACTIVE"

    return-object p0

    :cond_25
    const-string p0, "ACTIVE"

    return-object p0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    packed-switch p0, :pswitch_data_20

    .line 430
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const-string p0, "QUICK_DOZE_DELAY"

    return-object p0

    :pswitch_b
    const-string p0, "IDLE_MAINTENANCE"

    return-object p0

    :pswitch_e
    const-string p0, "IDLE"

    return-object p0

    :pswitch_11
    const-string p0, "LOCATING"

    return-object p0

    :pswitch_14
    const-string p0, "SENSING"

    return-object p0

    :pswitch_17
    const-string p0, "IDLE_PENDING"

    return-object p0

    :pswitch_1a
    const-string p0, "INACTIVE"

    return-object p0

    :pswitch_1d
    const-string p0, "ACTIVE"

    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public final addEvent(ILjava/lang/String;)V
    .registers 7

    .line 637
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-eq v2, p1, :cond_27

    const/4 v2, 0x1

    const/16 v3, 0x63

    .line 638
    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aput p1, v0, v1

    .line 642
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 643
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aput-object p2, p0, v1

    :cond_27
    return-void
.end method

.method public addPowerSaveTempAllowlistAppChecked(Ljava/lang/String;JIILjava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2811
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v2, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2815
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2816
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "addPowerSaveTempWhitelistApp"

    const/4 v10, 0x0

    move v5, v0

    move/from16 v6, p4

    .line 2815
    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2822
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v4, p0

    move/from16 v11, p5

    .line 2824
    :try_start_2b
    invoke-virtual {p0, v11, v3}, Lcom/android/server/DeviceIdleController;->getTempAllowListType(II)I

    move-result v8

    const/4 v3, -0x1

    if-eq v8, v3, :cond_3e

    const/4 v10, 0x1

    move-object v3, p0

    move v4, v0

    move-object v5, p1

    move-wide v6, p2

    move/from16 v11, p5

    move-object/from16 v12, p6

    .line 2827
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppInternal(ILjava/lang/String;JIIZILjava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_42

    .line 2831
    :cond_3e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_42
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2832
    throw v0
.end method

.method public addPowerSaveTempAllowlistAppInternal(ILjava/lang/String;JIIZILjava/lang/String;)V
    .registers 20

    .line 2864
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v1, p2

    move/from16 v2, p6

    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 2865
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJIZILjava/lang/String;)V
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1c

    :catch_1c
    return-void
.end method

.method public addPowerSaveTempWhitelistAppDirectInternal(IIJIZILjava/lang/String;)V
    .registers 31

    move-object/from16 v10, p0

    move/from16 v0, p2

    move/from16 v15, p7

    move-object/from16 v14, p8

    .line 2878
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2880
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    .line 2881
    monitor-enter p0

    .line 2882
    :try_start_11
    iget-object v3, v10, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v3, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    move-wide/from16 v5, p3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2883
    iget-object v3, v10, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    const/16 v21, 0x0

    const/4 v12, 0x1

    if-nez v3, :cond_2a

    move v6, v12

    goto :goto_2c

    :cond_2a
    move/from16 v6, v21

    :goto_2c
    if-eqz v6, :cond_3f

    .line 2887
    new-instance v3, Landroid/util/Pair;

    new-instance v7, Landroid/util/MutableLong;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v8, v9}, Landroid/util/MutableLong;-><init>(J)V

    invoke-direct {v3, v7, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2888
    iget-object v7, v10, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v7, v13, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2890
    :cond_3f
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/MutableLong;

    add-long/2addr v1, v4

    iput-wide v1, v3, Landroid/util/MutableLong;->value:J
    :try_end_46
    .catchall {:try_start_11 .. :try_end_46} :catchall_9e

    if-eqz v6, :cond_7b

    .line 2897
    :try_start_48
    iget-object v1, v10, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const v2, 0x8011

    invoke-interface {v1, v2, v14, v0}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_50} :catch_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_9e

    .line 2901
    :catch_50
    :try_start_50
    invoke-virtual {v10, v0, v4, v5}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    const/4 v3, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p1

    .line 2902
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZJIILjava/lang/String;I)V

    if-eqz p6, :cond_68

    move/from16 v21, v12

    goto :goto_73

    .line 2910
    :cond_68
    iget-object v1, v10, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v13, v15, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2911
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2913
    :goto_73
    invoke-virtual {v10, v0, v12}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked(IZ)V

    :cond_76
    move v3, v12

    move v1, v13

    move-object v0, v14

    move v2, v15

    goto :goto_95

    .line 2917
    :cond_7b
    iget-object v11, v10, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v11, :cond_76

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v12

    move-object v12, v1

    move v1, v13

    move/from16 v13, p2

    move-object v0, v14

    move v14, v2

    move v2, v15

    move-wide v15, v4

    move/from16 v17, p5

    move/from16 v18, p7

    move-object/from16 v19, p8

    move/from16 v20, p1

    .line 2918
    invoke-virtual/range {v11 .. v20}, Landroid/app/ActivityManagerInternal;->updateDeviceIdleTempAllowlist([IIZJIILjava/lang/String;I)V

    .line 2922
    :goto_95
    monitor-exit p0
    :try_end_96
    .catchall {:try_start_50 .. :try_end_96} :catchall_9e

    if-eqz v21, :cond_9d

    .line 2924
    iget-object v4, v10, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {v4, v1, v3, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZILjava/lang/String;)V

    :cond_9d
    return-void

    :catchall_9e
    move-exception v0

    .line 2922
    :try_start_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v0
.end method

.method public final addPowerSaveWhitelistAppsInternal(Ljava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 2538
    monitor-enter p0

    .line 2539
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ltz v0, :cond_53

    .line 2540
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_65

    if-nez v3, :cond_16

    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 2546
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x400000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2548
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_34} :catch_39
    .catchall {:try_start_16 .. :try_end_34} :catchall_65

    if-nez v3, :cond_50

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :catch_39
    :try_start_39
    const-string v4, "DeviceIdleController"

    .line 2553
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to add unknown package to power save whitelist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_50
    :goto_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_53
    if-lez v1, :cond_5e

    .line 2558
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2559
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2560
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2562
    :cond_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_39 .. :try_end_5f} :catchall_65

    .line 2563
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v2

    return p0

    :catchall_65
    move-exception p1

    .line 2562
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p1
.end method

.method public addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .registers 4

    .line 2621
    monitor-enter p0

    .line 2623
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2625
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_38

    .line 2627
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2628
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2629
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {p1, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 2633
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_38} :catch_3d
    .catchall {:try_start_1 .. :try_end_38} :catchall_3b

    :cond_38
    const/4 p1, 0x1

    .line 2635
    :try_start_39
    monitor-exit p0

    return p1

    :catchall_3b
    move-exception p1

    goto :goto_40

    :catch_3d
    const/4 p1, 0x0

    .line 2637
    monitor-exit p0

    return p1

    .line 2639
    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_3b

    throw p1
.end method

.method public becomeActiveLocked(Ljava/lang/String;I)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3165
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;IJZ)V

    return-void
.end method

.method public final becomeActiveLocked(Ljava/lang/String;IJZ)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3175
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eqz v0, :cond_2d

    :cond_8
    const/4 v0, 0x0

    .line 3176
    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3177
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3178
    iput-wide p3, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 3179
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 3182
    iget p3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 p4, 0x6

    if-eq p3, p4, :cond_1c

    const-wide/16 p3, 0x0

    .line 3183
    iput-wide p3, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    :cond_1c
    if-eqz p5, :cond_2d

    .line 3187
    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3188
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3189
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 3191
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    const/4 p2, 0x1

    .line 3192
    invoke-virtual {p0, p2, p1}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public becomeInactiveIfAppropriateLocked()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3234
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->verifyAlarmStateLocked()V

    .line 3236
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-nez v0, :cond_15

    :cond_13
    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    .line 3248
    :goto_16
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v3, :cond_21

    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-nez v3, :cond_20

    if-eqz v0, :cond_21

    :cond_20
    return-void

    .line 3252
    :cond_21
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    const-string/jumbo v3, "no activity"

    if-eqz v0, :cond_9d

    .line 3253
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    if-eqz v0, :cond_67

    .line 3254
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v4, 0x7

    if-eq v0, v4, :cond_66

    const/4 v5, 0x5

    if-eq v0, v5, :cond_66

    const/4 v5, 0x6

    if-ne v0, v5, :cond_38

    goto :goto_66

    .line 3265
    :cond_38
    iput v4, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3267
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 3268
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isUpcomingAlarmClock()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 3272
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3273
    invoke-virtual {v0}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    add-long/2addr v4, v6

    .line 3272
    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    goto :goto_60

    .line 3278
    :cond_59
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3280
    :goto_60
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0, v3}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    goto :goto_9d

    :cond_66
    :goto_66
    return-void

    .line 3281
    :cond_67
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v0, :cond_9d

    .line 3282
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3284
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 3285
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 3286
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->shouldUseIdleTimeoutFactorLocked()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 3287
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    long-to-float v4, v4

    mul-float/2addr v0, v4

    float-to-long v4, v0

    .line 3289
    :cond_7d
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isUpcomingAlarmClock()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 3293
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3294
    invoke-virtual {v0}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long/2addr v6, v4

    .line 3293
    invoke-virtual {p0, v6, v7, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    goto :goto_98

    .line 3297
    :cond_95
    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3299
    :goto_98
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0, v3}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3302
    :cond_9d
    :goto_9d
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-nez v0, :cond_c2

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v0, :cond_c2

    .line 3303
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3305
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 3306
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(JJ)V

    .line 3310
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    add-long/2addr v1, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->scheduleLightMaintenanceAlarmLocked(J)V

    .line 3312
    iget p0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {p0, v3}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    :cond_c2
    return-void
.end method

.method public cancelAlarmLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3947
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3948
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 3949
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_11
    return-void
.end method

.method public final cancelAllLightAlarmsLocked()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3955
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 3956
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLightMaintenanceAlarmLocked()V

    return-void
.end method

.method public final cancelLightAlarmLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3961
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3962
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 3963
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_11
    return-void
.end method

.method public final cancelLightMaintenanceAlarmLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3969
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightMaintenanceAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3970
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightMaintenanceAlarmTime:J

    .line 3971
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mLightMaintenanceAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_11
    return-void
.end method

.method public cancelLocatingLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3977
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v0, :cond_17

    .line 3978
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    .line 3979
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3980
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    .line 3981
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    :cond_17
    return-void
.end method

.method public final cancelMotionRegistrationAlarmLocked()V
    .registers 2

    .line 3990
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method public final cancelMotionTimeoutAlarmLocked()V
    .registers 2

    .line 3986
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method public cancelSensingTimeoutAlarmLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3995
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3996
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 3997
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_11
    return-void
.end method

.method public checkTempAppWhitelistTimeout(I)V
    .registers 9

    .line 2964
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2965
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 2969
    monitor-enter p0

    .line 2970
    :try_start_9
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 2971
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-nez v3, :cond_15

    .line 2974
    monitor-exit p0

    return-void

    .line 2976
    :cond_15
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Landroid/util/MutableLong;

    iget-wide v5, v5, Landroid/util/MutableLong;->value:J

    cmp-long v5, v0, v5

    if-ltz v5, :cond_2d

    .line 2977
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 2978
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    goto :goto_35

    .line 2984
    :cond_2d
    check-cast v4, Landroid/util/MutableLong;

    iget-wide v2, v4, Landroid/util/MutableLong;->value:J

    sub-long/2addr v2, v0

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 2986
    :goto_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public decActiveIdleOps()V
    .registers 2

    .line 3658
    monitor-enter p0

    .line 3659
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v0, :cond_11

    .line 3661
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3662
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3664
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 4909
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_85

    move v2, v1

    move v3, v2

    .line 4913
    :goto_13
    array-length v4, p3

    if-ge v2, v4, :cond_85

    .line 4914
    aget-object v4, p3, v2

    const-string v5, "-h"

    .line 4915
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 4916
    invoke-static {p2}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_24
    const-string v5, "-u"

    .line 4918
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    add-int/lit8 v2, v2, 0x1

    .line 4920
    array-length v4, p3

    if-ge v2, v4, :cond_40

    .line 4921
    aget-object v3, p3, v2

    .line 4922
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_40

    :cond_38
    const-string v5, "-a"

    .line 4924
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    :cond_40
    :goto_40
    add-int/2addr v2, v0

    goto :goto_13

    .line 4926
    :cond_42
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_65

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_65

    .line 4927
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown option: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 4930
    :cond_65
    new-instance v0, Lcom/android/server/DeviceIdleController$Shell;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$Shell;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 4931
    iput v3, v0, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 4932
    array-length p2, p3

    sub-int/2addr p2, v2

    new-array v5, p2, [Ljava/lang/String;

    .line 4933
    array-length p2, p3

    sub-int/2addr p2, v2

    invoke-static {p3, v2, v5, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4934
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v7, Landroid/os/ResultReceiver;

    const/4 p0, 0x0

    invoke-direct {v7, p0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void

    .line 4941
    :cond_85
    monitor-enter p0

    .line 4942
    :try_start_86
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {p1, p2}, Lcom/android/server/DeviceIdleController$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 4944
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget p1, p1, v1

    if-eqz p1, :cond_f6

    const-string p1, "  Idling history:"

    .line 4945
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4946
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 p1, 0x63

    :goto_9c
    if-ltz p1, :cond_f6

    .line 4948
    iget-object p3, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget p3, p3, p1

    if-nez p3, :cond_a5

    goto :goto_f3

    :cond_a5
    if-eq p3, v0, :cond_c3

    const/4 v4, 0x2

    if-eq p3, v4, :cond_c0

    const/4 v4, 0x3

    if-eq p3, v4, :cond_bc

    const/4 v4, 0x4

    if-eq p3, v4, :cond_b9

    const/4 v4, 0x5

    if-eq p3, v4, :cond_b6

    const-string p3, "         ??"

    goto :goto_c5

    :cond_b6
    const-string p3, " deep-maint"

    goto :goto_c5

    :cond_b9
    const-string p3, "  deep-idle"

    goto :goto_c5

    :cond_bc
    const-string/jumbo p3, "light-maint"

    goto :goto_c5

    :cond_c0
    const-string p3, " light-idle"

    goto :goto_c5

    :cond_c3
    const-string p3, "     normal"

    :goto_c5
    const-string v4, "    "

    .line 4961
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4962
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, ": "

    .line 4963
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4964
    iget-object p3, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    aget-wide v4, p3, p1

    invoke-static {v4, v5, v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4965
    iget-object p3, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aget-object p3, p3, p1

    if-eqz p3, :cond_f0

    const-string p3, " ("

    .line 4966
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4967
    iget-object p3, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aget-object p3, p3, p1

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, ")"

    .line 4968
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4970
    :cond_f0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_f3
    add-int/lit8 p1, p1, -0x1

    goto :goto_9c

    .line 4975
    :cond_f6
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-lez p1, :cond_119

    const-string p3, "  Whitelist (except idle) system apps:"

    .line 4977
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v1

    :goto_104
    if-ge p3, p1, :cond_119

    const-string v2, "    "

    .line 4979
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4980
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_104

    .line 4983
    :cond_119
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-lez p1, :cond_13c

    const-string p3, "  Whitelist system apps:"

    .line 4985
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v1

    :goto_127
    if-ge p3, p1, :cond_13c

    const-string v2, "    "

    .line 4987
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4988
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_127

    .line 4991
    :cond_13c
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-lez p1, :cond_15f

    const-string p3, "  Removed from whitelist system apps:"

    .line 4993
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v1

    :goto_14a
    if-ge p3, p1, :cond_15f

    const-string v2, "    "

    .line 4995
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4996
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_14a

    .line 4999
    :cond_15f
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-lez p1, :cond_182

    const-string p3, "  Whitelist user apps:"

    .line 5001
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v1

    :goto_16d
    if-ge p3, p1, :cond_182

    const-string v2, "    "

    .line 5003
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5004
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_16d

    .line 5007
    :cond_182
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-lez p1, :cond_1a6

    const-string p3, "  Whitelist (except idle) all app ids:"

    .line 5009
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v1

    :goto_190
    if-ge p3, p1, :cond_1a6

    const-string v2, "    "

    .line 5011
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5012
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5013
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_190

    .line 5016
    :cond_1a6
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-lez p1, :cond_1ca

    const-string p3, "  Whitelist user app ids:"

    .line 5018
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v1

    :goto_1b4
    if-ge p3, p1, :cond_1ca

    const-string v2, "    "

    .line 5020
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5021
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5022
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1b4

    .line 5025
    :cond_1ca
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-lez p1, :cond_1ee

    const-string p3, "  Whitelist all app ids:"

    .line 5027
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v1

    :goto_1d8
    if-ge p3, p1, :cond_1ee

    const-string v2, "    "

    .line 5029
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5030
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5031
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1d8

    .line 5034
    :cond_1ee
    invoke-virtual {p0, p2, v0}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    .line 5036
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    if-eqz p1, :cond_1f7

    array-length p1, p1

    goto :goto_1f8

    :cond_1f7
    move p1, v1

    :goto_1f8
    if-lez p1, :cond_214

    const-string p3, "  Temp whitelist app ids:"

    .line 5038
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v1

    :goto_200
    if-ge p3, p1, :cond_214

    const-string v0, "    "

    .line 5040
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5041
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    aget v0, v0, p3

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5042
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_200

    :cond_214
    const-string p1, "  mLightEnabled="

    .line 5046
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, "  mDeepEnabled="

    .line 5047
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mForceIdle="

    .line 5048
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mUseMotionSensor="

    .line 5049
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 5050
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz p1, :cond_24b

    const-string p1, " mMotionSensor="

    .line 5051
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_24e

    .line 5053
    :cond_24b
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_24e
    const-string p1, "  mScreenOn="

    .line 5055
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mScreenLocked="

    .line 5056
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mNetworkConnected="

    .line 5057
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mCharging="

    .line 5058
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 5059
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-eqz p1, :cond_2ca

    const-string p1, "  mConstraints={"

    .line 5060
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5061
    :goto_283
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-ge v1, p1, :cond_2c5

    .line 5062
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    const-string p3, "    \""

    .line 5063
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "\"="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5064
    iget p3, p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne p3, v0, :cond_2ae

    .line 5065
    iget-boolean p1, p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_2c2

    :cond_2ae
    const-string/jumbo p3, "ignored <mMinState="

    .line 5067
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ">"

    .line 5068
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2c2
    add-int/lit8 v1, v1, 0x1

    goto :goto_283

    :cond_2c5
    const-string p1, "  }"

    .line 5071
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5073
    :cond_2ca
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-nez p1, :cond_2d6

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_315

    :cond_2d6
    const-string p1, "  mMotionActive="

    .line 5074
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean p1, p1, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mNotMoving="

    .line 5075
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mMotionListener.activatedTimeElapsed="

    .line 5076
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5077
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-wide v0, p1, Lcom/android/server/DeviceIdleController$MotionListener;->activatedTimeElapsed:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string p1, "  mLastMotionEventElapsed="

    .line 5078
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string p1, "  "

    .line 5079
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " stationary listeners registered"

    .line 5080
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_315
    const-string p1, "  mLocating="

    .line 5082
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mHasGps="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5083
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mHasNetwork="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5084
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mLocated="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 5085
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    if-eqz p1, :cond_34b

    const-string p1, "  mLastGenericLocation="

    .line 5086
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5088
    :cond_34b
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    if-eqz p1, :cond_359

    const-string p1, "  mLastGpsLocation="

    .line 5089
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_359
    const-string p1, "  mState="

    .line 5091
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " mLightState="

    .line 5092
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5093
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mInactiveTimeout="

    .line 5094
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5095
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5096
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-eqz p1, :cond_390

    const-string p1, "  mActiveIdleOpCount="

    .line 5097
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 5099
    :cond_390
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3a9

    const-string p1, "  mNextAlarmTime="

    .line 5100
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5101
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 5102
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5104
    :cond_3a9
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3bc

    const-string p1, "  mNextIdlePendingDelay="

    .line 5105
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5106
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5107
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5109
    :cond_3bc
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3cf

    const-string p1, "  mNextIdleDelay="

    .line 5110
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5111
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5112
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5114
    :cond_3cf
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3e2

    const-string p1, "  mNextLightIdleDelay="

    .line 5115
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5116
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5117
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5119
    :cond_3e2
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3f9

    const-string p1, "  mNextLightAlarmTime="

    .line 5120
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5121
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 5122
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5124
    :cond_3f9
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightMaintenanceAlarmTime:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_410

    const-string p1, "  mNextLightMaintenanceAlarmTime="

    .line 5125
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5126
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightMaintenanceAlarmTime:J

    .line 5127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 5126
    invoke-static {v0, v1, v4, v5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 5128
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5130
    :cond_410
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_423

    const-string p1, "  mCurLightIdleBudget="

    .line 5131
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5132
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5133
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5135
    :cond_423
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_43a

    const-string p1, "  mMaintenanceStartTime="

    .line 5136
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5137
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 5138
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5140
    :cond_43a
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-eqz p1, :cond_448

    const-string p1, "  mJobsActive="

    .line 5141
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 5143
    :cond_448
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-eqz p1, :cond_456

    const-string p1, "  mAlarmsActive="

    .line 5144
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 5146
    :cond_456
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p3, 0x3d4ccccd    # 0.05f

    cmpl-float p1, p1, p3

    if-lez p1, :cond_470

    const-string p1, "  mPreIdleFactor="

    .line 5147
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(F)V

    .line 5149
    :cond_470
    monitor-exit p0

    return-void

    :catchall_472
    move-exception p1

    monitor-exit p0
    :try_end_474
    .catchall {:try_start_86 .. :try_end_474} :catchall_472

    throw p1
.end method

.method public dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V
    .registers 10

    .line 5153
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_51

    if-eqz p2, :cond_12

    const-string p2, "  Temp whitelist schedule:"

    .line 5157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    "

    goto :goto_14

    :cond_12
    const-string p2, ""

    .line 5160
    :goto_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v0, :cond_51

    .line 5162
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "UID="

    .line 5163
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5164
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 5165
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5166
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 5167
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/MutableLong;

    iget-wide v5, v5, Landroid/util/MutableLong;->value:J

    invoke-static {v5, v6, v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v5, " - "

    .line 5168
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5169
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_51
    return-void
.end method

.method public exitForceIdleLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3340
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 3341
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 3342
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_1b

    :cond_f
    const/4 v0, 0x6

    .line 3343
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3344
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "exit-force"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    :cond_1b
    return-void
.end method

.method public exitIdleInternal(Ljava/lang/String;)V
    .registers 3

    .line 3008
    monitor-enter p0

    const/4 v0, 0x5

    .line 3009
    :try_start_2
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3010
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 3011
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public exitMaintenanceEarlyIfNeededLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3832
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v1, :cond_21

    .line 3833
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3834
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 3843
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-string/jumbo v2, "s:early"

    if-ne v0, v1, :cond_1d

    .line 3844
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    goto :goto_21

    :cond_1d
    const/4 v0, 0x1

    .line 3846
    invoke-virtual {p0, v2, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;Z)V

    :cond_21
    :goto_21
    return-void
.end method

.method public getAppIdTempWhitelistInternal()[I
    .registers 2

    .line 2791
    monitor-enter p0

    .line 2792
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    .line 2793
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdUserWhitelistInternal()[I
    .registers 2

    .line 2785
    monitor-enter p0

    .line 2786
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    .line 2787
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdWhitelistExceptIdleInternal()[I
    .registers 2

    .line 2773
    monitor-enter p0

    .line 2774
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    .line 2775
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdWhitelistInternal()[I
    .registers 2

    .line 2779
    monitor-enter p0

    .line 2780
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    .line 2781
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final getFullPowerWhitelistExceptIdleInternal(II)[Ljava/lang/String;
    .registers 8

    .line 2721
    monitor-enter p0

    .line 2722
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 2723
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2724
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 2726
    :goto_13
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_2a

    .line 2727
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2730
    :cond_2a
    :goto_2a
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 2731
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 2734
    :cond_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_53

    .line 2735
    new-instance v1, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;-><init>()V

    new-instance v2, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/DeviceIdleController;II)V

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catchall_53
    move-exception p1

    .line 2734
    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public final getFullPowerWhitelistInternal(II)[Ljava/lang/String;
    .registers 8

    .line 2741
    monitor-enter p0

    .line 2742
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2743
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 2745
    :goto_13
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_2a

    .line 2746
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2749
    :cond_2a
    :goto_2a
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 2750
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 2753
    :cond_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_53

    .line 2754
    new-instance v1, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda6;-><init>()V

    new-instance v2, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/DeviceIdleController;II)V

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catchall_53
    move-exception p1

    .line 2753
    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public getLightState()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3363
    monitor-enter p0

    .line 3364
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 3365
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getNextAlarmTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3820
    monitor-enter p0

    .line 3821
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    .line 3822
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getNextLightAlarmTimeForTesting()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4084
    monitor-enter p0

    .line 4085
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    .line 4086
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getNextLightMaintenanceAlarmTimeForTesting()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4091
    monitor-enter p0

    .line 4092
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightMaintenanceAlarmTime:J

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    .line 4093
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3

    .line 2579
    monitor-enter p0

    .line 2580
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    .line 2581
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .registers 3

    .line 2658
    monitor-enter p0

    .line 2659
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    .line 2660
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public getPowerSaveWhitelistUserAppIds()[I
    .registers 2

    .line 2274
    monitor-enter p0

    .line 2275
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    .line 2276
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getPreIdleTimeoutByMode(I)F
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2b

    const/4 v1, 0x1

    if-eq p1, v1, :cond_26

    const/4 v1, 0x2

    if-eq p1, v1, :cond_21

    .line 3711
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid time out factor mode: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceIdleController"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3705
    :cond_21
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget p0, p0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_SHORT:F

    return p0

    .line 3702
    :cond_26
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget p0, p0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_LONG:F

    return p0

    :cond_2b
    return v0
.end method

.method public getPreIdleTimeoutFactor()F
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3719
    monitor-enter p0

    .line 3720
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 3721
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final getRemovedSystemPowerWhitelistAppsInternal(II)[Ljava/lang/String;
    .registers 7

    .line 2694
    monitor-enter p0

    .line 2695
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2696
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_19

    .line 2698
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2700
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2b

    .line 2701
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda10;-><init>()V

    new-instance v2, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/DeviceIdleController;II)V

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catchall_2b
    move-exception p1

    .line 2700
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public getState()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3483
    monitor-enter p0

    .line 3484
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 3485
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final getSystemPowerWhitelistExceptIdleInternal(II)[Ljava/lang/String;
    .registers 7

    .line 2666
    monitor-enter p0

    .line 2667
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2668
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_19

    .line 2670
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2672
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2b

    .line 2673
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda8;-><init>()V

    new-instance v2, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/DeviceIdleController;II)V

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catchall_2b
    move-exception p1

    .line 2672
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public final getSystemPowerWhitelistInternal(II)[Ljava/lang/String;
    .registers 7

    .line 2680
    monitor-enter p0

    .line 2681
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2682
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_19

    .line 2684
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2686
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2b

    .line 2687
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/DeviceIdleController;II)V

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catchall_2b
    move-exception p1

    .line 2686
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public final getTempAllowListType(II)I
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    const/16 v0, 0x66

    if-eq p1, v0, :cond_8

    return p2

    .line 2800
    :cond_8
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getPushMessagingOverQuotaBehavior()I

    move-result p0

    return p0

    :cond_f
    return v0
.end method

.method public final getUserPowerWhitelistInternal(II)[Ljava/lang/String;
    .registers 6

    .line 2707
    monitor-enter p0

    .line 2708
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2709
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2710
    :goto_a
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 2711
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2713
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_31

    .line 2714
    new-instance v1, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda12;-><init>()V

    new-instance v2, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/DeviceIdleController;II)V

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catchall_31
    move-exception p1

    .line 2713
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public handleMotionDetectedLocked(JLjava/lang/String;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3861
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 3862
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->postStationaryStatusUpdated()V

    .line 3863
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelMotionTimeoutAlarmLocked()V

    .line 3867
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionRegistrationAlarmLocked()V

    .line 3869
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    if-nez v0, :cond_1a

    return-void

    .line 3876
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->maybeStopMonitoringMotionLocked()V

    .line 3880
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-nez v0, :cond_2b

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v2, :cond_29

    goto :goto_2b

    :cond_29
    move v0, v1

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v0, v3

    .line 3883
    :goto_2c
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget v4, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v4, v2, :cond_36

    move v9, v3

    goto :goto_37

    :cond_36
    move v9, v1

    :goto_37
    move-object v4, p0

    move-object v5, p3

    move-wide v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;IJZ)V

    if-eqz v0, :cond_42

    .line 3885
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    :cond_42
    return-void
.end method

.method public handleWriteConfigFile()V
    .registers 6

    .line 4341
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4344
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_1c

    .line 4345
    :try_start_6
    new-instance v1, Lcom/android/internal/util/jobs/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;-><init>()V

    .line 4346
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4347
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4348
    monitor-exit p0

    goto :goto_1c

    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 4352
    :catch_1c
    :goto_1c
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    monitor-enter v1

    const/4 v2, 0x0

    .line 4355
    :try_start_20
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 4356
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 4357
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2e} :catch_31
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2f

    goto :goto_3e

    :catchall_2f
    move-exception p0

    goto :goto_40

    :catch_31
    move-exception v0

    :try_start_32
    const-string v3, "DeviceIdleController"

    const-string v4, "Error writing config file"

    .line 4359
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4360
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 4362
    :goto_3e
    monitor-exit v1

    return-void

    :goto_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_2f

    throw p0
.end method

.method public hasMotionSensor()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2444
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public incActiveIdleOps()V
    .registers 2

    .line 3652
    monitor-enter p0

    .line 3653
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3654
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public isAppOnWhitelistInternal(I)Z
    .registers 3

    .line 2268
    monitor-enter p0

    .line 2269
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    .line 2270
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public isCharging()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3088
    monitor-enter p0

    .line 3089
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 3090
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public isKeyguardShowing()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3138
    monitor-enter p0

    .line 3139
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 3140
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public isNetworkConnected()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3016
    monitor-enter p0

    .line 3017
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 3018
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public isOpsInactiveLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3827
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-nez v0, :cond_e

    iget-boolean p0, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3

    .line 2766
    monitor-enter p0

    .line 2767
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 2768
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p1, 0x1

    :goto_15
    monitor-exit p0

    return p1

    :catchall_17
    move-exception p1

    .line 2769
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z
    .registers 3

    .line 2759
    monitor-enter p0

    .line 2760
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 2761
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p1, 0x1

    :goto_15
    monitor-exit p0

    return p1

    :catchall_17
    move-exception p1

    .line 2762
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public isQuickDozeEnabled()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3112
    monitor-enter p0

    .line 3113
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 3114
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public isScreenOn()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3060
    monitor-enter p0

    .line 3061
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 3062
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final isStationaryLocked()Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 778
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v3, v2, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v3, :cond_1f

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$MotionListener;->activatedTimeElapsed:J

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    .line 780
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method public final isUpcomingAlarmClock()Z
    .registers 5

    .line 3493
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    add-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3494
    invoke-virtual {p0}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-ltz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public keyguardShowingLocked(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3147
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-eq v0, p1, :cond_1d

    .line 3148
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 3149
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_1d

    if-nez p1, :cond_1d

    const/4 p1, 0x4

    .line 3150
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3151
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    const-string/jumbo v0, "unlocked"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    :cond_1d
    return-void
.end method

.method public final maybeDoImmediateMaintenance()V
    .registers 5

    .line 3788
    monitor-enter p0

    .line 3789
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    .line 3790
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    sub-long/2addr v0, v2

    .line 3793
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 3794
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3797
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public final maybeStopMonitoringMotionLocked()V
    .registers 3

    .line 3936
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1b

    .line 3937
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v1, :cond_18

    .line 3938
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->unregisterLocked()V

    .line 3939
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelMotionTimeoutAlarmLocked()V

    .line 3941
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelMotionRegistrationAlarmLocked()V

    :cond_1b
    return-void
.end method

.method public motionLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3855
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    .line 3856
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "motion"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    return-void
.end method

.method public final moveToStateLocked(ILjava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3642
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3647
    invoke-static {p1, p2}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3648
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    return-void
.end method

.method public onAnyMotionResult(I)V
    .registers 4

    .line 1594
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 1596
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    goto :goto_a

    :catchall_8
    move-exception p1

    goto :goto_3c

    :cond_a
    :goto_a
    const/4 v1, 0x1

    if-eq p1, v1, :cond_30

    if-ne p1, v0, :cond_10

    goto :goto_30

    :cond_10
    if-nez p1, :cond_3a

    .line 1602
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_20

    .line 1604
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    const-string/jumbo p1, "s:stationary"

    .line 1605
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    goto :goto_3a

    :cond_20
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3a

    .line 1609
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 1610
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    if-eqz p1, :cond_3a

    const-string/jumbo p1, "s:stationary"

    .line 1611
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    goto :goto_3a

    .line 1600
    :cond_30
    :goto_30
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, p1, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const-string/jumbo p1, "non_stationary"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 1615
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    :goto_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_8

    throw p1
.end method

.method public final onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 2994
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    move-object v1, p0

    move v2, p1

    move-object v8, p2

    .line 2995
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZJIILjava/lang/String;I)V

    .line 2997
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2998
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2999
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked(IZ)V

    .line 3001
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 p1, 0x4011

    invoke-interface {p0, p1, p2, v0}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_25

    :catch_25
    return-void
.end method

.method public onBootPhase(I)V
    .registers 6

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1a3

    .line 2349
    monitor-enter p0

    .line 2350
    :try_start_5
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$Injector;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2351
    const-class p1, Lcom/android/server/AlarmManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AlarmManagerInternal;

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

    .line 2352
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 2353
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 2354
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2355
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2356
    const-class p1, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManagerInternal;

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 2357
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "deviceidle_maint"

    const/4 v1, 0x1

    .line 2358
    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    .line 2360
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2361
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "deviceidle_going_idle"

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2363
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string/jumbo p1, "netpolicy"

    .line 2365
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 2364
    invoke-static {p1}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 2366
    const-class p1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 2367
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$Injector;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2369
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz p1, :cond_92

    .line 2370
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$Injector;->getMotionSensor()Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 2373
    :cond_92
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110032

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 2375
    new-instance p1, Landroid/location/LocationRequest$Builder;

    const-wide/16 v2, 0x0

    invoke-direct {p1, v2, v3}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const/16 v0, 0x64

    .line 2376
    invoke-virtual {p1, v0}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    .line 2377
    invoke-virtual {p1, v1}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    .line 2378
    invoke-virtual {p1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 2381
    :cond_ba
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-class v1, Lcom/android/server/DeviceIdleController$LocalService;

    .line 2382
    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleInternal;

    .line 2381
    invoke-virtual {p1, v0, v1}, Lcom/android/server/DeviceIdleController$Injector;->getConstraintController(Landroid/os/Handler;Lcom/android/server/DeviceIdleInternal;)Lcom/android/server/deviceidle/ConstraintController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstraintController:Lcom/android/server/deviceidle/ConstraintController;

    if-eqz p1, :cond_d1

    .line 2384
    invoke-interface {p1}, Lcom/android/server/deviceidle/ConstraintController;->start()V

    .line 2387
    :cond_d1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0033

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 2389
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/server/DeviceIdleController$Injector;->getAnyMotionDetector(Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)Lcom/android/server/AnyMotionDetector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 2392
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {p1}, Lcom/android/server/AppStateTrackerImpl;->onSystemServicesReady()V

    .line 2394
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    const/high16 v0, 0x50000000

    .line 2395
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2397
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 2398
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2401
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 2402
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2403
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2405
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 2406
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 2407
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2408
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2410
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2411
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2412
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2414
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 2415
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 2416
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2417
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2419
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-virtual {p1, v0, v1}, Landroid/app/ActivityManagerInternal;->setDeviceIdleAllowlist([I[I)V

    .line 2421
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {p1, v0}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 2423
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/DeviceIdleController;)V

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 2429
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 2430
    invoke-virtual {p1, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 2429
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked(Z)V

    .line 2433
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 2435
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 2436
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateInteractivityLocked()V

    .line 2437
    monitor-exit p0
    :try_end_19b
    .catchall {:try_start_5 .. :try_end_19b} :catchall_1a0

    const/4 p1, 0x0

    .line 2438
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    goto :goto_1a3

    :catchall_1a0
    move-exception p1

    .line 2437
    :try_start_1a1
    monitor-exit p0
    :try_end_1a2
    .catchall {:try_start_1a1 .. :try_end_1a2} :catchall_1a0

    throw p1

    :cond_1a3
    :goto_1a3
    return-void
.end method

.method public final onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 2485
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    if-nez v0, :cond_26

    .line 2487
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "device-idle constraint "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has not been registered."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceIdleController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2490
    :cond_26
    iget-boolean p1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    if-eq p2, p1, :cond_6b

    iget-boolean p1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eqz p1, :cond_6b

    .line 2491
    iput-boolean p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 2492
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    if-eqz p2, :cond_36

    const/4 p2, 0x1

    goto :goto_37

    :cond_36
    const/4 p2, -0x1

    :goto_37
    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    if-nez p1, :cond_6b

    .line 2494
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez p1, :cond_44

    .line 2495
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_6b

    .line 2496
    :cond_44
    iget-wide p1, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_54

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-gez p1, :cond_6b

    .line 2497
    :cond_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "s:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public onShellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;)I
    .registers 18

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 4452
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    const-string/jumbo v4, "step"

    .line 4453
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 4654
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v4, :cond_8d

    .line 4454
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4456
    monitor-enter p0

    .line 4457
    :try_start_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4458
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_89

    if-eqz v2, :cond_69

    :try_start_2d
    const-string v5, "deep"

    .line 4460
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    goto :goto_69

    :cond_36
    const-string/jumbo v5, "light"

    .line 4464
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    const-string/jumbo v2, "s:shell"

    .line 4465
    invoke-virtual {p0, v2, v7}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;Z)V

    const-string v2, "Stepped to light: "

    .line 4466
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7d

    .line 4468
    :cond_54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7d

    :cond_69
    :goto_69
    const-string/jumbo v2, "s:shell"

    .line 4461
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    const-string v2, "Stepped to deep: "

    .line 4462
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4463
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_2d .. :try_end_7d} :catchall_83

    .line 4471
    :goto_7d
    :try_start_7d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4473
    monitor-exit p0

    goto/16 :goto_8ce

    :catchall_83
    move-exception v0

    move-object v2, v0

    .line 4471
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4472
    throw v2

    :catchall_89
    move-exception v0

    move-object v2, v0

    .line 4473
    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_7d .. :try_end_8c} :catchall_89

    throw v2

    :cond_8d
    const-string v4, "force-idle"

    .line 4474
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v10, 0x4

    const/4 v11, 0x5

    const/4 v12, -0x1

    if-eqz v4, :cond_152

    .line 4475
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4477
    monitor-enter p0

    .line 4478
    :try_start_a2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4479
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_14e

    if-eqz v2, :cond_104

    :try_start_ac
    const-string v5, "deep"

    .line 4481
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b5

    goto :goto_104

    :cond_b5
    const-string/jumbo v5, "light"

    .line 4500
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ef

    .line 4501
    iput-boolean v7, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 4502
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 4503
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    :goto_c5
    if-eq v2, v10, :cond_e9

    const-string/jumbo v5, "s:shell"

    .line 4505
    invoke-virtual {p0, v5, v7}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;Z)V

    .line 4506
    iget v5, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v2, v5, :cond_e7

    const-string v2, "Unable to go light idle; stopped at "

    .line 4507
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4508
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4509
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_e2
    .catchall {:try_start_ac .. :try_end_e2} :catchall_148

    .line 4519
    :try_start_e2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_e6
    .catchall {:try_start_e2 .. :try_end_e6} :catchall_14e

    return v12

    :cond_e7
    move v2, v5

    goto :goto_c5

    :cond_e9
    :try_start_e9
    const-string v2, "Now forced in to light idle mode"

    .line 4514
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_142

    .line 4516
    :cond_ef
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_142

    .line 4482
    :cond_104
    :goto_104
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v2, :cond_112

    const-string v2, "Unable to go deep idle; not enabled"

    .line 4483
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10d
    .catchall {:try_start_e9 .. :try_end_10d} :catchall_148

    .line 4519
    :try_start_10d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_111
    .catchall {:try_start_10d .. :try_end_111} :catchall_14e

    return v12

    .line 4486
    :cond_112
    :try_start_112
    iput-boolean v7, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 4487
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 4488
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mState:I

    :goto_119
    if-eq v2, v11, :cond_13d

    const-string/jumbo v5, "s:shell"

    .line 4490
    invoke-virtual {p0, v5}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 4491
    iget v5, v1, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v2, v5, :cond_13b

    const-string v2, "Unable to go deep idle; stopped at "

    .line 4492
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4493
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4494
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_136
    .catchall {:try_start_112 .. :try_end_136} :catchall_148

    .line 4519
    :try_start_136
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_13a
    .catchall {:try_start_136 .. :try_end_13a} :catchall_14e

    return v12

    :cond_13b
    move v2, v5

    goto :goto_119

    :cond_13d
    :try_start_13d
    const-string v2, "Now forced in to deep idle mode"

    .line 4499
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_142
    .catchall {:try_start_13d .. :try_end_142} :catchall_148

    .line 4519
    :goto_142
    :try_start_142
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4521
    monitor-exit p0

    goto/16 :goto_8ce

    :catchall_148
    move-exception v0

    move-object v2, v0

    .line 4519
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4520
    throw v2

    :catchall_14e
    move-exception v0

    move-object v2, v0

    .line 4521
    monitor-exit p0
    :try_end_151
    .catchall {:try_start_142 .. :try_end_151} :catchall_14e

    throw v2

    :cond_152
    const-string v4, "force-inactive"

    .line 4522
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_199

    .line 4523
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4525
    monitor-enter p0

    .line 4526
    :try_start_164
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_168
    .catchall {:try_start_164 .. :try_end_168} :catchall_195

    .line 4528
    :try_start_168
    iput-boolean v7, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 4529
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    const-string v4, "Light state: "

    .line 4530
    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4531
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ", deep state: "

    .line 4532
    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4533
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_189
    .catchall {:try_start_168 .. :try_end_189} :catchall_18f

    .line 4535
    :try_start_189
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4537
    monitor-exit p0

    goto/16 :goto_8ce

    :catchall_18f
    move-exception v0

    move-object v4, v0

    .line 4535
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4536
    throw v4

    :catchall_195
    move-exception v0

    move-object v2, v0

    .line 4537
    monitor-exit p0
    :try_end_198
    .catchall {:try_start_189 .. :try_end_198} :catchall_195

    throw v2

    :cond_199
    const-string/jumbo v4, "unforce"

    .line 4538
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1df

    .line 4539
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4541
    monitor-enter p0

    .line 4542
    :try_start_1ac
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1b0
    .catchall {:try_start_1ac .. :try_end_1b0} :catchall_1db

    .line 4544
    :try_start_1b0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    const-string v4, "Light state: "

    .line 4545
    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4546
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ", deep state: "

    .line 4547
    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4548
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1cf
    .catchall {:try_start_1b0 .. :try_end_1cf} :catchall_1d5

    .line 4550
    :try_start_1cf
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4552
    monitor-exit p0

    goto/16 :goto_8ce

    :catchall_1d5
    move-exception v0

    move-object v4, v0

    .line 4550
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4551
    throw v4

    :catchall_1db
    move-exception v0

    move-object v2, v0

    .line 4552
    monitor-exit p0
    :try_end_1de
    .catchall {:try_start_1cf .. :try_end_1de} :catchall_1db

    throw v2

    :cond_1df
    const-string v4, "get"

    .line 4553
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v13, 0x6

    const/4 v14, 0x2

    if-eqz v4, :cond_2af

    .line 4554
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4556
    monitor-enter p0

    .line 4557
    :try_start_1f3
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2a3

    .line 4559
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1fd
    .catchall {:try_start_1f3 .. :try_end_1fd} :catchall_2ab

    .line 4561
    :try_start_1fd
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_8de

    goto :goto_24e

    :sswitch_205
    const-string/jumbo v5, "network"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24e

    move v7, v13

    goto :goto_24f

    :sswitch_210
    const-string v5, "charging"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24e

    move v7, v11

    goto :goto_24f

    :sswitch_21a
    const-string/jumbo v5, "quick"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24e

    const/4 v7, 0x3

    goto :goto_24f

    :sswitch_225
    const-string/jumbo v5, "light"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24e

    move v7, v9

    goto :goto_24f

    :sswitch_230
    const-string v5, "force"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24e

    move v7, v14

    goto :goto_24f

    :sswitch_23a
    const-string v5, "deep"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24e

    goto :goto_24f

    :sswitch_243
    const-string/jumbo v5, "screen"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24e

    move v7, v10

    goto :goto_24f

    :cond_24e
    :goto_24e
    move v7, v12

    :goto_24f
    packed-switch v7, :pswitch_data_8fc

    .line 4569
    new-instance v5, Ljava/lang/StringBuilder;

    goto :goto_287

    .line 4568
    :pswitch_255
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_299

    .line 4567
    :pswitch_25b
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_299

    .line 4566
    :pswitch_261
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_299

    .line 4565
    :pswitch_267
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_299

    .line 4564
    :pswitch_26d
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_299

    .line 4563
    :pswitch_273
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_299

    .line 4562
    :pswitch_27d
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_299

    .line 4569
    :goto_287
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown get option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_299
    .catchall {:try_start_1fd .. :try_end_299} :catchall_29d

    .line 4572
    :goto_299
    :try_start_299
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2a8

    :catchall_29d
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4573
    throw v2

    :cond_2a3
    const-string v2, "Argument required"

    .line 4575
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4577
    :goto_2a8
    monitor-exit p0

    goto/16 :goto_8ce

    :catchall_2ab
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_2ae
    .catchall {:try_start_299 .. :try_end_2ae} :catchall_2ab

    throw v2

    :cond_2af
    const-string v4, "disable"

    .line 4578
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_358

    .line 4579
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4581
    monitor-enter p0

    .line 4582
    :try_start_2c1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4583
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2
    :try_end_2c9
    .catchall {:try_start_2c1 .. :try_end_2c9} :catchall_354

    if-eqz v2, :cond_2de

    :try_start_2cb
    const-string v5, "deep"

    .line 4587
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2de

    const-string v5, "all"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2dc

    goto :goto_2de

    :cond_2dc
    move v5, v9

    goto :goto_2ea

    .line 4589
    :cond_2de
    :goto_2de
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v5, :cond_2ec

    .line 4590
    iput-boolean v9, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    const-string v5, "Deep idle mode disabled"

    .line 4592
    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v5, v7

    :goto_2ea
    move v6, v5

    goto :goto_2ee

    :cond_2ec
    move v6, v7

    move v5, v9

    :goto_2ee
    if-eqz v2, :cond_301

    const-string/jumbo v10, "light"

    .line 4595
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_301

    const-string v10, "all"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30f

    .line 4597
    :cond_301
    iget-boolean v6, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v6, :cond_30e

    .line 4598
    iput-boolean v9, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    const-string v5, "Light idle mode disabled"

    .line 4600
    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v6, v7

    goto :goto_310

    :cond_30e
    move v6, v7

    :cond_30f
    move v7, v5

    :goto_310
    if-eqz v7, :cond_332

    .line 4604
    iput v13, v1, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 4605
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_31e

    const-string v7, "all"

    goto :goto_31f

    :cond_31e
    move-object v7, v2

    :goto_31f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-disabled"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4606
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    .line 4605
    invoke-virtual {p0, v5, v7}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    :cond_332
    if-nez v6, :cond_348

    .line 4609
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_348
    .catchall {:try_start_2cb .. :try_end_348} :catchall_34e

    .line 4612
    :cond_348
    :try_start_348
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4614
    monitor-exit p0

    goto/16 :goto_8ce

    :catchall_34e
    move-exception v0

    move-object v2, v0

    .line 4612
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4613
    throw v2

    :catchall_354
    move-exception v0

    move-object v2, v0

    .line 4614
    monitor-exit p0
    :try_end_357
    .catchall {:try_start_348 .. :try_end_357} :catchall_354

    throw v2

    :cond_358
    const-string v4, "enable"

    .line 4615
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e4

    .line 4616
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4618
    monitor-enter p0

    .line 4619
    :try_start_36a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4620
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2
    :try_end_372
    .catchall {:try_start_36a .. :try_end_372} :catchall_3e0

    if-eqz v2, :cond_387

    :try_start_374
    const-string v5, "deep"

    .line 4624
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_387

    const-string v5, "all"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_385

    goto :goto_387

    :cond_385
    move v5, v9

    goto :goto_393

    .line 4626
    :cond_387
    :goto_387
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v5, :cond_395

    .line 4627
    iput-boolean v7, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    const-string v5, "Deep idle mode enabled"

    .line 4629
    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v5, v7

    :goto_393
    move v6, v5

    goto :goto_397

    :cond_395
    move v6, v7

    move v5, v9

    :goto_397
    if-eqz v2, :cond_3aa

    const-string/jumbo v10, "light"

    .line 4632
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3aa

    const-string v10, "all"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3b8

    .line 4634
    :cond_3aa
    iget-boolean v6, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-nez v6, :cond_3b7

    .line 4635
    iput-boolean v7, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    const-string v5, "Light idle mode enable"

    .line 4637
    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v6, v7

    goto :goto_3b9

    :cond_3b7
    move v6, v7

    :cond_3b8
    move v7, v5

    :goto_3b9
    if-eqz v7, :cond_3be

    .line 4641
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    :cond_3be
    if-nez v6, :cond_3d4

    .line 4644
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3d4
    .catchall {:try_start_374 .. :try_end_3d4} :catchall_3da

    .line 4647
    :cond_3d4
    :try_start_3d4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4649
    monitor-exit p0

    goto/16 :goto_8ce

    :catchall_3da
    move-exception v0

    move-object v2, v0

    .line 4647
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4648
    throw v2

    :catchall_3e0
    move-exception v0

    move-object v2, v0

    .line 4649
    monitor-exit p0
    :try_end_3e3
    .catchall {:try_start_3d4 .. :try_end_3e3} :catchall_3e0

    throw v2

    :cond_3e4
    const-string v4, "enabled"

    .line 4650
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44a

    .line 4651
    monitor-enter p0

    .line 4652
    :try_start_3ed
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_436

    const-string v3, "all"

    .line 4653
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3fc

    goto :goto_436

    :cond_3fc
    const-string v3, "deep"

    .line 4655
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40e

    .line 4656
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v2, :cond_40a

    const-string v6, "1"

    :cond_40a
    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_443

    :cond_40e
    const-string/jumbo v3, "light"

    .line 4657
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_421

    .line 4658
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v2, :cond_41d

    const-string v6, "1"

    :cond_41d
    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_443

    .line 4660
    :cond_421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown idle mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_443

    .line 4654
    :cond_436
    :goto_436
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v2, :cond_440

    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v2, :cond_440

    const-string v6, "1"

    :cond_440
    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4662
    :goto_443
    monitor-exit p0

    goto/16 :goto_8ce

    :catchall_446
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_449
    .catchall {:try_start_3ed .. :try_end_449} :catchall_446

    throw v2

    :cond_44a
    const-string/jumbo v4, "whitelist"

    .line 4663
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x3d

    const/16 v10, 0x2d

    const/16 v11, 0x2b

    if-eqz v4, :cond_599

    .line 4664
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_510

    .line 4666
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v13, "android.permission.DEVICE_POWER"

    invoke-virtual {v4, v13, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4668
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4671
    :cond_46c
    :try_start_46c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v13, v7, :cond_4f2

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v10, :cond_485

    .line 4672
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v11, :cond_485

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v6, :cond_485

    goto :goto_4f2

    .line 4676
    :cond_485
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 4677
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    if-ne v13, v11, :cond_4c3

    .line 4679
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppsInternal(Ljava/util/List;)I

    move-result v13

    if-ne v13, v7, :cond_4ae

    .line 4681
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Added: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e7

    .line 4683
    :cond_4ae
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown package: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e7

    :cond_4c3
    if-ne v13, v10, :cond_4e0

    .line 4686
    invoke-virtual {p0, v3}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4e7

    .line 4687
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Removed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e7

    .line 4690
    :cond_4e0
    invoke-virtual {p0, v3}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 4692
    :cond_4e7
    :goto_4e7
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3
    :try_end_4eb
    .catchall {:try_start_46c .. :try_end_4eb} :catchall_50a

    if-nez v3, :cond_46c

    .line 4694
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_8ce

    .line 4673
    :cond_4f2
    :goto_4f2
    :try_start_4f2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_506
    .catchall {:try_start_4f2 .. :try_end_506} :catchall_50a

    .line 4694
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :catchall_50a
    move-exception v0

    move-object v1, v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4695
    throw v1

    .line 4697
    :cond_510
    monitor-enter p0

    move v2, v9

    .line 4698
    :goto_512
    :try_start_512
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_53c

    const-string/jumbo v3, "system-excidle,"

    .line 4699
    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4700
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ","

    .line 4701
    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4702
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_512

    :cond_53c
    move v2, v9

    .line 4704
    :goto_53d
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_567

    const-string/jumbo v3, "system,"

    .line 4705
    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4706
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ","

    .line 4707
    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4708
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_53d

    :cond_567
    move v2, v9

    .line 4710
    :goto_568
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_592

    const-string/jumbo v3, "user,"

    .line 4711
    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4712
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ","

    .line 4713
    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4714
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_568

    .line 4716
    :cond_592
    monitor-exit p0

    goto/16 :goto_8ce

    :catchall_595
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_598
    .catchall {:try_start_512 .. :try_end_598} :catchall_595

    throw v2

    :cond_599
    const-string/jumbo v4, "tempwhitelist"

    .line 4718
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62c

    const-wide/16 v3, 0x2710

    move v5, v9

    .line 4722
    :cond_5a5
    :goto_5a5
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5e9

    const-string v10, "-u"

    .line 4723
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5c6

    .line 4724
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5bf

    const-string v1, "-u requires a user number"

    .line 4726
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v12

    .line 4729
    :cond_5bf
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    goto :goto_5a5

    :cond_5c6
    const-string v10, "-d"

    .line 4730
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5df

    .line 4731
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5da

    const-string v1, "-d requires a duration"

    .line 4733
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v12

    .line 4736
    :cond_5da
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_5a5

    :cond_5df
    const-string v10, "-r"

    .line 4737
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a5

    move v5, v7

    goto :goto_5a5

    .line 4741
    :cond_5e9
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_61f

    if-eqz v5, :cond_5f8

    .line 4745
    :try_start_5f1
    iget v2, v2, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    invoke-virtual {p0, v6, v2}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempAllowlistAppChecked(Ljava/lang/String;I)V

    goto/16 :goto_8ce

    .line 4747
    :cond_5f8
    iget v5, v2, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    const/16 v7, 0x13c

    const-string/jumbo v10, "shell"

    move-object v1, p0

    move-object v2, v6

    move v6, v7

    move-object v7, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppChecked(Ljava/lang/String;JIILjava/lang/String;)V
    :try_end_606
    .catch Ljava/lang/Exception; {:try_start_5f1 .. :try_end_606} :catch_608

    goto/16 :goto_8ce

    :catch_608
    move-exception v0

    move-object v1, v0

    .line 4751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v12

    :cond_61f
    if-eqz v5, :cond_627

    const-string v1, "[-r] requires a package name"

    .line 4755
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v12

    .line 4758
    :cond_627
    invoke-virtual {p0, v8, v9}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    goto/16 :goto_8ce

    :cond_62c
    const-string v4, "except-idle-whitelist"

    .line 4760
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6fa

    .line 4761
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4763
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4765
    :try_start_641
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_650

    const-string v1, "No arguments given"

    .line 4767
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_64c
    .catchall {:try_start_641 .. :try_end_64c} :catchall_6f4

    .line 4795
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :cond_650
    :try_start_650
    const-string/jumbo v13, "reset"

    .line 4769
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_65d

    .line 4770
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetPowerSaveWhitelistExceptIdleInternal()V

    goto :goto_6bf

    .line 4773
    :cond_65d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v13, v7, :cond_6dc

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v10, :cond_676

    .line 4774
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v11, :cond_676

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v6, :cond_676

    goto :goto_6dc

    .line 4778
    :cond_676
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 4779
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    if-ne v13, v11, :cond_6b0

    .line 4781
    invoke-virtual {p0, v14}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_69b

    .line 4782
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Added: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6b9

    .line 4784
    :cond_69b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown package: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6b9

    :cond_6b0
    if-ne v13, v6, :cond_6c4

    .line 4787
    invoke-virtual {p0, v14}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4792
    :goto_6b9
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5
    :try_end_6bd
    .catchall {:try_start_650 .. :try_end_6bd} :catchall_6f4

    if-nez v5, :cond_65d

    .line 4795
    :goto_6bf
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_8ce

    .line 4789
    :cond_6c4
    :try_start_6c4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6d8
    .catchall {:try_start_6c4 .. :try_end_6d8} :catchall_6f4

    .line 4795
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    .line 4775
    :cond_6dc
    :goto_6dc
    :try_start_6dc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6f0
    .catchall {:try_start_6dc .. :try_end_6f0} :catchall_6f4

    .line 4795
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :catchall_6f4
    move-exception v0

    move-object v1, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4796
    throw v1

    :cond_6fa
    const-string/jumbo v4, "sys-whitelist"

    .line 4797
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7ce

    .line 4798
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7a1

    .line 4800
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "android.permission.DEVICE_POWER"

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4802
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_716
    const-string/jumbo v6, "reset"

    .line 4804
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_723

    .line 4805
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetSystemPowerWhitelistInternal()V

    goto :goto_77e

    .line 4808
    :cond_723
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v7, :cond_783

    .line 4809
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v10, :cond_736

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v11, :cond_736

    goto :goto_783

    .line 4813
    :cond_736
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 4814
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    if-eq v6, v11, :cond_75e

    if-eq v6, v10, :cond_743

    goto :goto_778

    .line 4822
    :cond_743
    invoke-virtual {p0, v3}, Lcom/android/server/DeviceIdleController;->removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_778

    .line 4823
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removed "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_778

    .line 4817
    :cond_75e
    invoke-virtual {p0, v3}, Lcom/android/server/DeviceIdleController;->restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_778

    .line 4818
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Restored "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4827
    :cond_778
    :goto_778
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3
    :try_end_77c
    .catchall {:try_start_716 .. :try_end_77c} :catchall_79b

    if-nez v3, :cond_723

    .line 4830
    :goto_77e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_8ce

    .line 4810
    :cond_783
    :goto_783
    :try_start_783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package must be prefixed with + or - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_797
    .catchall {:try_start_783 .. :try_end_797} :catchall_79b

    .line 4830
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :catchall_79b
    move-exception v0

    move-object v1, v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4831
    throw v1

    .line 4833
    :cond_7a1
    monitor-enter p0

    move v2, v9

    .line 4834
    :goto_7a3
    :try_start_7a3
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_7c7

    .line 4835
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ","

    .line 4836
    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4837
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7a3

    .line 4839
    :cond_7c7
    monitor-exit p0

    goto/16 :goto_8ce

    :catchall_7ca
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_7cd
    .catchall {:try_start_7a3 .. :try_end_7cd} :catchall_7ca

    throw v2

    :cond_7ce
    const-string/jumbo v4, "motion"

    .line 4841
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_814

    .line 4842
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4844
    monitor-enter p0

    .line 4845
    :try_start_7e1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_7e5
    .catchall {:try_start_7e1 .. :try_end_7e5} :catchall_810

    .line 4847
    :try_start_7e5
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->motionLocked()V

    const-string v4, "Light state: "

    .line 4848
    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4849
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ", deep state: "

    .line 4850
    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4851
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_804
    .catchall {:try_start_7e5 .. :try_end_804} :catchall_80a

    .line 4853
    :try_start_804
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4855
    monitor-exit p0

    goto/16 :goto_8ce

    :catchall_80a
    move-exception v0

    move-object v4, v0

    .line 4853
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4854
    throw v4

    :catchall_810
    move-exception v0

    move-object v2, v0

    .line 4855
    monitor-exit p0
    :try_end_813
    .catchall {:try_start_804 .. :try_end_813} :catchall_810

    throw v2

    :cond_814
    const-string/jumbo v4, "pre-idle-factor"

    .line 4856
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b0

    .line 4857
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4859
    monitor-enter p0

    .line 4860
    :try_start_827
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_82b
    .catchall {:try_start_827 .. :try_end_82b} :catchall_8ac

    .line 4863
    :try_start_82b
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_861

    .line 4867
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4868
    invoke-virtual {p0, v5}, Lcom/android/server/DeviceIdleController;->setPreIdleTimeoutMode(I)I

    move-result v12

    if-ne v12, v7, :cond_851

    .line 4870
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pre-idle-factor: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_862

    :cond_851
    if-ne v12, v14, :cond_859

    const-string v5, "Deep idle not supported"

    .line 4874
    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_862

    :cond_859
    if-nez v12, :cond_861

    const-string v5, "Idle timeout factor not changed"

    .line 4877
    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_862

    :cond_861
    move v7, v9

    :goto_862
    if-nez v7, :cond_885

    .line 4881
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle timeout factor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",(error code: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_885
    .catch Ljava/lang/NumberFormatException; {:try_start_82b .. :try_end_885} :catch_88c
    .catchall {:try_start_82b .. :try_end_885} :catchall_889

    .line 4888
    :cond_885
    :goto_885
    :try_start_885
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_888
    .catchall {:try_start_885 .. :try_end_888} :catchall_8ac

    goto :goto_8a6

    :catchall_889
    move-exception v0

    move-object v2, v0

    goto :goto_8a8

    .line 4885
    :catch_88c
    :try_start_88c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown idle timeout factor,(error code: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8a5
    .catchall {:try_start_88c .. :try_end_8a5} :catchall_889

    goto :goto_885

    .line 4890
    :goto_8a6
    :try_start_8a6
    monitor-exit p0

    goto :goto_8ce

    .line 4888
    :goto_8a8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4889
    throw v2

    :catchall_8ac
    move-exception v0

    move-object v2, v0

    .line 4890
    monitor-exit p0
    :try_end_8af
    .catchall {:try_start_8a6 .. :try_end_8af} :catchall_8ac

    throw v2

    :cond_8b0
    const-string/jumbo v4, "reset-pre-idle-factor"

    .line 4891
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d9

    .line 4892
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4894
    monitor-enter p0

    .line 4895
    :try_start_8c3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_8c7
    .catchall {:try_start_8c3 .. :try_end_8c7} :catchall_8d5

    .line 4897
    :try_start_8c7
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetPreIdleTimeoutMode()V
    :try_end_8ca
    .catchall {:try_start_8c7 .. :try_end_8ca} :catchall_8cf

    .line 4899
    :try_start_8ca
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4901
    monitor-exit p0

    :goto_8ce
    return v9

    :catchall_8cf
    move-exception v0

    move-object v4, v0

    .line 4899
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4900
    throw v4

    :catchall_8d5
    move-exception v0

    move-object v2, v0

    .line 4901
    monitor-exit p0
    :try_end_8d8
    .catchall {:try_start_8ca .. :try_end_8d8} :catchall_8d5

    throw v2

    .line 4903
    :cond_8d9
    invoke-virtual/range {p1 .. p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    :sswitch_data_8de
    .sparse-switch
        -0x361a3f94 -> :sswitch_243
        0x2efcec -> :sswitch_23a
        0x5d18aeb -> :sswitch_230
        0x6233516 -> :sswitch_225
        0x66f25ed -> :sswitch_21a
        0x55996271 -> :sswitch_210
        0x6de15a2e -> :sswitch_205
    .end sparse-switch

    :pswitch_data_8fc
    .packed-switch 0x0
        :pswitch_27d
        :pswitch_273
        :pswitch_26d
        :pswitch_267
        :pswitch_261
        :pswitch_25b
        :pswitch_255
    .end packed-switch
.end method

.method public onStart()V
    .registers 12

    .line 2285
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2287
    monitor-enter p0

    .line 2288
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 2290
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 2291
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 2292
    :goto_26
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/high16 v6, 0x100000

    const/4 v7, 0x1

    if-ge v4, v5, :cond_52

    .line 2293
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_dd

    .line 2295
    :try_start_35
    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 2297
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 2298
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2299
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_4f} :catch_4f
    .catchall {:try_start_35 .. :try_end_4f} :catchall_dd

    :catch_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 2303
    :cond_52
    :try_start_52
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v1

    move v2, v3

    .line 2304
    :goto_57
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_90

    .line 2305
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_52 .. :try_end_63} :catchall_dd

    .line 2307
    :try_start_63
    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2309
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 2312
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2313
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v5, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2314
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2315
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_8d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_63 .. :try_end_8d} :catch_8d
    .catchall {:try_start_63 .. :try_end_8d} :catchall_dd

    :catch_8d
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 2320
    :cond_90
    :try_start_90
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0, p0}, Lcom/android/server/DeviceIdleController$Injector;->getConstants(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 2322
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked()V

    .line 2323
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2325
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 2326
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 2327
    iput-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 2330
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 2331
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2332
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2333
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2334
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2335
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    .line 2336
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    .line 2337
    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_90 .. :try_end_b9} :catchall_dd

    .line 2339
    new-instance v0, Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$BinderService-IA;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    const-string v2, "deviceidle"

    .line 2340
    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2341
    new-instance v0, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$LocalService-IA;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    .line 2342
    const-class v2, Lcom/android/server/DeviceIdleInternal;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2343
    const-class v0, Lcom/android/server/PowerAllowlistInternal;

    new-instance v2, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService-IA;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :catchall_dd
    move-exception v0

    .line 2337
    :try_start_de
    monitor-exit p0
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    throw v0
.end method

.method public final passWhiteListsToForceAppStandbyTrackerLocked()V
    .registers 4

    .line 4240
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/AppStateTrackerImpl;->setPowerSaveExemptionListAppIds([I[I[I)V

    return-void
.end method

.method public final postResetPreIdleTimeoutFactor()V
    .registers 2

    .line 3762
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final postStationaryStatus(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .registers 3

    .line 767
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final postStationaryStatusUpdated()V
    .registers 2

    .line 772
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final postTempActiveTimeoutMessage(IJ)V
    .registers 6

    .line 2959
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 2960
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2959
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final postUpdatePreIdleFactor()V
    .registers 2

    .line 3758
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public readConfigFileLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 4249
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4252
    :try_start_5
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_b} :catch_24

    .line 4257
    :try_start_b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 4258
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4259
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1b} :catch_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_1f

    .line 4263
    :catch_1b
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_24

    goto :goto_24

    :catchall_1f
    move-exception p0

    :try_start_20
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_23

    .line 4266
    :catch_23
    throw p0

    :catch_24
    :goto_24
    return-void
.end method

.method public final readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    const-string v0, "Failed parsing config "

    const-string v1, "DeviceIdleController"

    .line 4271
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4275
    :goto_c
    :try_start_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_17

    if-eq v3, v5, :cond_17

    goto :goto_c

    :cond_17
    if-ne v3, v4, :cond_b7

    .line 4284
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 4285
    :catch_1d
    :cond_1d
    :goto_1d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v5, :cond_137

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2c

    .line 4286
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_137

    :cond_2c
    if-eq v4, v6, :cond_1d

    const/4 v6, 0x4

    if-ne v4, v6, :cond_32

    goto :goto_1d

    .line 4291
    :cond_32
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    .line 4292
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0xed5

    if-eq v7, v8, :cond_50

    const v8, 0x6a37689

    if-eq v7, v8, :cond_45

    goto :goto_5a

    :cond_45
    const-string/jumbo v7, "un-wl"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    move v6, v5

    goto :goto_5a

    :cond_50
    const-string/jumbo v7, "wl"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_57
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_57} :catch_124
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_57} :catch_110
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_57} :catch_fc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_57} :catch_e8
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_57} :catch_d4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_57} :catch_c0

    if-eqz v4, :cond_5a

    const/4 v6, 0x0

    :cond_5a
    :goto_5a
    const-string/jumbo v4, "n"

    const/4 v7, 0x0

    if-eqz v6, :cond_98

    if-eq v6, v5, :cond_7e

    .line 4313
    :try_start_62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <config>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4314
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4313
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4315
    invoke-static {p1}, Lcom/android/internal/util/jobs/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1d

    .line 4306
    :cond_7e
    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4307
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 4308
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 4309
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 4308
    invoke-virtual {v6, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 4294
    :cond_98
    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_9c
    .catch Ljava/lang/IllegalStateException; {:try_start_62 .. :try_end_9c} :catch_124
    .catch Ljava/lang/NullPointerException; {:try_start_62 .. :try_end_9c} :catch_110
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_9c} :catch_fc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_9c} :catch_e8
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_9c} :catch_d4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_62 .. :try_end_9c} :catch_c0

    if-eqz v4, :cond_1d

    const/high16 v6, 0x400000

    .line 4297
    :try_start_a0
    invoke-virtual {v2, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 4299
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4300
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4299
    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a0 .. :try_end_b5} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_a0 .. :try_end_b5} :catch_124
    .catch Ljava/lang/NullPointerException; {:try_start_a0 .. :try_end_b5} :catch_110
    .catch Ljava/lang/NumberFormatException; {:try_start_a0 .. :try_end_b5} :catch_fc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a0 .. :try_end_b5} :catch_e8
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_b5} :catch_d4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a0 .. :try_end_b5} :catch_c0

    goto/16 :goto_1d

    .line 4281
    :cond_b7
    :try_start_b7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "no start tag found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_c0
    .catch Ljava/lang/IllegalStateException; {:try_start_b7 .. :try_end_c0} :catch_124
    .catch Ljava/lang/NullPointerException; {:try_start_b7 .. :try_end_c0} :catch_110
    .catch Ljava/lang/NumberFormatException; {:try_start_b7 .. :try_end_c0} :catch_fc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b7 .. :try_end_c0} :catch_e8
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_c0} :catch_d4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b7 .. :try_end_c0} :catch_c0

    :catch_c0
    move-exception p0

    .line 4331
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_137

    :catch_d4
    move-exception p0

    .line 4329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_137

    :catch_e8
    move-exception p0

    .line 4327
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_137

    :catch_fc
    move-exception p0

    .line 4325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_137

    :catch_110
    move-exception p0

    .line 4323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_137

    :catch_124
    move-exception p0

    .line 4321
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_137
    :goto_137
    return-void
.end method

.method public receivedGenericLocationLocked(Landroid/location/Location;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3891
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 3892
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    return-void

    .line 3896
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 3897
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_21

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    if-eqz p1, :cond_21

    return-void

    :cond_21
    const/4 p1, 0x1

    .line 3900
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3901
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz p1, :cond_2e

    const-string/jumbo p1, "s:location"

    .line 3902
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public receivedGpsLocationLocked(Landroid/location/Location;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3908
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 3909
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    return-void

    .line 3913
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 3914
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1d

    return-void

    :cond_1d
    const/4 p1, 0x1

    .line 3917
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3918
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz p1, :cond_2a

    const-string/jumbo p1, "s:gps"

    .line 3919
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public final registerDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
    .registers 5

    if-eqz p3, :cond_1e

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1c

    const-string p0, "DeviceIdleController"

    .line 2458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Registering device-idle constraint with invalid type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    const/4 p3, 0x3

    goto :goto_1f

    :cond_1e
    const/4 p3, 0x0

    .line 2461
    :goto_1f
    monitor-enter p0

    .line 2462
    :try_start_20
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string p2, "DeviceIdleController"

    .line 2463
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Re-registering device-idle constraint: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    monitor-exit p0

    return-void

    .line 2466
    :cond_45
    new-instance v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    invoke-direct {v0, p2, p3}, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;-><init>(Ljava/lang/String;I)V

    .line 2467
    iget-object p2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2468
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 2469
    monitor-exit p0

    return-void

    :catchall_54
    move-exception p1

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_20 .. :try_end_56} :catchall_54

    throw p1
.end method

.method public registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 786
    monitor-enter p0

    .line 787
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 789
    monitor-exit p0

    return-void

    .line 791
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->postStationaryStatus(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    .line 792
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean p1, p1, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz p1, :cond_27

    .line 793
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    move-result p1

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2d

    .line 796
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    goto :goto_2d

    .line 799
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 800
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    .line 802
    :cond_2d
    :goto_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public final registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V
    .registers 3

    .line 820
    monitor-enter p0

    .line 821
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempAllowlistChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 822
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public removePowerSaveTempAllowlistAppChecked(Ljava/lang/String;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2837
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v2, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2841
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2842
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "removePowerSaveTempWhitelistApp"

    const/4 v10, 0x0

    move v6, p2

    .line 2841
    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2848
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2850
    :try_start_26
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempAllowlistAppInternal(Ljava/lang/String;I)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2d

    .line 2852
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2853
    throw p0
.end method

.method public final removePowerSaveTempAllowlistAppInternal(Ljava/lang/String;I)V
    .registers 4

    .line 2934
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1

    .line 2936
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppDirectInternal(I)V
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method

.method public final removePowerSaveTempWhitelistAppDirectInternal(I)V
    .registers 5

    .line 2942
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2943
    monitor-enter p0

    .line 2944
    :try_start_5
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_f

    .line 2947
    monitor-exit p0

    return-void

    .line 2949
    :cond_f
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2950
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2951
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    .line 2952
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3

    .line 2567
    monitor-enter p0

    .line 2568
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 2569
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2570
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2571
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    const/4 p1, 0x1

    .line 2572
    monitor-exit p0

    return p1

    .line 2574
    :cond_15
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_18
    move-exception p1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 4

    .line 2608
    monitor-enter p0

    .line 2609
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    .line 2610
    monitor-exit p0

    return p1

    .line 2612
    :cond_c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2613
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2614
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2615
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    const/4 p1, 0x1

    .line 2616
    monitor-exit p0

    return p1

    :catchall_25
    move-exception p1

    .line 2617
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public final reportPowerSaveWhitelistChangedLocked()V
    .registers 3

    .line 4226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 4227
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4228
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final reportTempWhitelistChangedLocked(IZ)V
    .registers 5

    .line 4232
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 4233
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4234
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 4235
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4236
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final resetIdleManagementLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 3318
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3319
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3320
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    const/4 v0, 0x0

    .line 3321
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    .line 3322
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 3323
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 3324
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3325
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->maybeStopMonitoringMotionLocked()V

    .line 3326
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 3327
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    return-void
.end method

.method public final resetLightIdleManagementLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3332
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    const-wide/16 v1, 0x0

    .line 3333
    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3334
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 3335
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAllLightAlarmsLocked()V

    return-void
.end method

.method public resetPowerSaveWhitelistExceptIdleInternal()V
    .registers 4

    .line 2643
    monitor-enter p0

    .line 2644
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2646
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2647
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 2650
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2652
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 2654
    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public resetPreIdleTimeoutMode()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3749
    monitor-enter p0

    .line 3750
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3751
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    .line 3752
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 3754
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->postResetPreIdleTimeoutFactor()V

    return-void

    :catchall_e
    move-exception v0

    .line 3752
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public resetSystemPowerWhitelistInternal()V
    .registers 3

    .line 2585
    monitor-enter p0

    .line 2586
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 2587
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2588
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2589
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2590
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2591
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 4

    .line 2595
    monitor-enter p0

    .line 2596
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    .line 2597
    monitor-exit p0

    return p1

    .line 2599
    :cond_c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2600
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2601
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2602
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    const/4 p1, 0x1

    .line 2603
    monitor-exit p0

    return p1

    :catchall_25
    move-exception p1

    .line 2604
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public scheduleAlarmLocked(JZ)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 4005
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_14

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_14

    const/4 v1, 0x5

    if-eq v0, v1, :cond_14

    const/4 v1, 0x6

    if-eq v0, v1, :cond_14

    return-void

    .line 4018
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v4, v0, p1

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    if-eqz p3, :cond_2b

    .line 4020
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v6, "DeviceIdleController.deep.maintenance"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_5e

    .line 4022
    :cond_2b
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3d

    .line 4024
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v6, "DeviceIdleController.deep.locating"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_5e

    .line 4027
    :cond_3d
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean p2, p1, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    if-eqz p2, :cond_52

    .line 4028
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-wide v6, p1, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v8, "DeviceIdleController.deep.progression"

    invoke-virtual/range {v2 .. v10}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_5e

    .line 4032
    :cond_52
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v6, "DeviceIdleController.deep.progression"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :goto_5e
    return-void
.end method

.method public scheduleLightAlarmLocked(JJ)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4046
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    add-long v4, v0, p1

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 4047
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean p1, p1, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    if-eqz p1, :cond_1e

    .line 4048
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v8, "DeviceIdleController.light.progression"

    move-wide v6, p3

    invoke-virtual/range {v2 .. v10}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_2a

    .line 4053
    :cond_1e
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v6, "DeviceIdleController.light.progression"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :goto_2a
    return-void
.end method

.method public scheduleLightMaintenanceAlarmLocked(J)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4066
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    add-long v4, v0, p1

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightMaintenanceAlarmTime:J

    .line 4069
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean p2, p1, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eqz p2, :cond_27

    .line 4070
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 4071
    iget-boolean p2, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz p2, :cond_1a

    move v3, v0

    goto :goto_1b

    :cond_1a
    move v3, v1

    :goto_1b
    iget-wide v6, p1, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mLightMaintenanceAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v8, "DeviceIdleController.light.maintenance"

    .line 4070
    invoke-virtual/range {v2 .. v10}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_39

    .line 4075
    :cond_27
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 4076
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz p1, :cond_2f

    move v3, v0

    goto :goto_30

    :cond_2f
    move v3, v1

    :goto_30
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mLightMaintenanceAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v6, "DeviceIdleController.light.maintenance"

    .line 4075
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :goto_39
    return-void
.end method

.method public final scheduleMotionRegistrationAlarmLocked()V
    .registers 15

    .line 4098
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 4099
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    add-long v7, v0, v3

    .line 4100
    iget-boolean v0, v2, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    if-eqz v0, :cond_22

    .line 4101
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    iget-wide v9, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    iget-object v12, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v13, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v11, "DeviceIdleController.motion_registration"

    invoke-virtual/range {v5 .. v13}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_2e

    .line 4106
    :cond_22
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v9, "DeviceIdleController.motion_registration"

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :goto_2e
    return-void
.end method

.method public final scheduleMotionTimeoutAlarmLocked()V
    .registers 15

    .line 4114
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 4115
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    add-long v7, v0, v3

    .line 4116
    iget-boolean v0, v2, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    if-eqz v0, :cond_1f

    .line 4117
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    iget-wide v9, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    iget-object v12, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v13, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v11, "DeviceIdleController.motion"

    invoke-virtual/range {v5 .. v13}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_2b

    .line 4122
    :cond_1f
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v9, "DeviceIdleController.motion"

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :goto_2b
    return-void
.end method

.method public scheduleReportActiveLocked(Ljava/lang/String;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3159
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3160
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleSensingTimeoutAlarmLocked(J)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 4130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v4, v0, p1

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 4131
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean p2, p1, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    if-eqz p2, :cond_1d

    .line 4132
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-wide v6, p1, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v8, "DeviceIdleController.sensing"

    invoke-virtual/range {v2 .. v10}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_29

    .line 4137
    :cond_1d
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v6, "DeviceIdleController.sensing"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :goto_29
    return-void
.end method

.method public setActiveIdleOpsForTest(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3670
    monitor-enter p0

    .line 3671
    :try_start_1
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3672
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setAlarmsActive(Z)V
    .registers 2

    .line 3685
    monitor-enter p0

    .line 3686
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-nez p1, :cond_8

    .line 3688
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3690
    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 2505
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 2506
    iget-boolean v1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eq v1, p2, :cond_1d

    .line 2507
    iput-boolean p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 2508
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 2511
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v0, 0xa

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2514
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1d
    return-void
.end method

.method public setDeepEnabledForTest(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3200
    monitor-enter p0

    .line 3201
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 3202
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setIdleStartTimeForTest(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3812
    monitor-enter p0

    .line 3813
    :try_start_1
    iput-wide p1, p0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    .line 3814
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->maybeDoImmediateMaintenance()V

    .line 3815
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public setJobsActive(Z)V
    .registers 2

    .line 3676
    monitor-enter p0

    .line 3677
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-nez p1, :cond_8

    .line 3679
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3681
    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public setLightEnabledForTest(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3208
    monitor-enter p0

    .line 3209
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 3210
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setLightStateForTest(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3356
    monitor-enter p0

    .line 3357
    :try_start_1
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3358
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setPreIdleTimeoutFactor(F)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3726
    monitor-enter p0

    .line 3727
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v0, :cond_8

    const/4 p1, 0x2

    .line 3729
    monitor-exit p0

    return p1

    :cond_8
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_12

    const/4 p1, 0x3

    .line 3732
    monitor-exit p0

    return p1

    .line 3733
    :cond_12
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_21

    const/4 p1, 0x0

    .line 3737
    monitor-exit p0

    return p1

    .line 3739
    :cond_21
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    .line 3740
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    .line 3741
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2d

    .line 3743
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->postUpdatePreIdleFactor()V

    const/4 p0, 0x1

    return p0

    :catchall_2d
    move-exception p1

    .line 3741
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public setPreIdleTimeoutMode(I)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3695
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->getPreIdleTimeoutByMode(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->setPreIdleTimeoutFactor(F)I

    move-result p0

    return p0
.end method

.method public final shouldUseIdleTimeoutFactorLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3803
    iget p0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    return v0
.end method

.method public startMonitoringMotionLocked()V
    .registers 2

    .line 3925
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-nez v0, :cond_d

    .line 3926
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$MotionListener;->registerLocked()Z

    :cond_d
    return-void
.end method

.method public stepIdleStateLocked(Ljava/lang/String;)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3501
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleStep()V

    .line 3503
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->isUpcomingAlarmClock()Z

    move-result v2

    const/4 v3, 0x7

    if-eqz v2, :cond_21

    .line 3505
    iget v1, v0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v1, :cond_20

    .line 3506
    iput v3, v0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3507
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "alarm"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 3508
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    :cond_20
    return-void

    .line 3513
    :cond_21
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    if-eqz v2, :cond_2a

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v2, :cond_2a

    return-void

    .line 3525
    :cond_2a
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_176

    goto/16 :goto_175

    .line 3621
    :pswitch_37
    iput v8, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3622
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3623
    iget-wide v2, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-virtual {v0, v2, v3, v9}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3626
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3627
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v2, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    long-to-float v8, v8

    iget v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    mul-float/2addr v8, v2

    float-to-long v8, v8

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3629
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_64

    .line 3630
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    :cond_64
    const/4 v2, 0x6

    .line 3632
    invoke-virtual {v0, v2, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3633
    invoke-virtual {v0, v5, v7}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3634
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_175

    :pswitch_72
    const/4 v2, 0x3

    .line 3538
    invoke-virtual {v0, v2, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3539
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3540
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3541
    iput-object v7, v0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 3542
    iput-object v7, v0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 3543
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 3546
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v2, :cond_9e

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector;->hasSensor()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 3547
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v1, v1, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->scheduleSensingTimeoutAlarmLocked(J)V

    .line 3548
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 3549
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->checkForAnyMotion()V

    goto/16 :goto_175

    .line 3551
    :cond_9e
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    if-eqz v2, :cond_a7

    .line 3552
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    goto/16 :goto_175

    .line 3556
    :cond_a7
    iput-boolean v8, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 3559
    :pswitch_a9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 3560
    invoke-virtual {v0, v6, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3561
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v2, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-virtual {v0, v10, v11, v9}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3562
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController$Injector;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v10

    if-eqz v10, :cond_d7

    const-string/jumbo v2, "network"

    .line 3564
    invoke-virtual {v10, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    if-eqz v2, :cond_d7

    .line 3565
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    iget-object v12, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 3566
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    .line 3565
    invoke-virtual {v10, v2, v11, v12}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3567
    iput-boolean v8, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_d9

    .line 3569
    :cond_d7
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    :goto_d9
    if-eqz v10, :cond_fb

    const-string/jumbo v2, "gps"

    .line 3572
    invoke-virtual {v10, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    if-eqz v2, :cond_fb

    .line 3573
    iput-boolean v8, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    const-wide/16 v12, 0x3e8

    const/high16 v14, 0x40a00000    # 5.0f

    .line 3574
    iget-object v15, v0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 3575
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    const-string/jumbo v11, "gps"

    .line 3574
    invoke-virtual/range {v10 .. v16}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3576
    iput-boolean v8, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_fd

    .line 3578
    :cond_fb
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 3582
    :goto_fd
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v2, :cond_102

    goto :goto_175

    .line 3588
    :cond_102
    :pswitch_102
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 3589
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3590
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 3595
    :pswitch_10d
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3596
    iget-wide v9, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3600
    :pswitch_117
    iget-wide v9, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {v0, v9, v10, v8}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3603
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    long-to-float v2, v8

    iget-object v8, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v8, v8, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    mul-float/2addr v2, v8

    float-to-long v8, v2

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3605
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    .line 3606
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v2, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3607
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_143

    .line 3608
    iput-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3610
    :cond_143
    invoke-virtual {v0, v5, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3611
    iget v1, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eq v1, v3, :cond_14f

    .line 3612
    iput v3, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3613
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAllLightAlarmsLocked()V

    .line 3615
    :cond_14f
    invoke-virtual {v0, v6, v7}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3616
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3617
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_175

    .line 3529
    :pswitch_15d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 3530
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 3531
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->shouldUseIdleTimeoutFactorLocked()Z

    move-result v5

    if-eqz v5, :cond_16f

    .line 3532
    iget v5, v0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    long-to-float v2, v2

    mul-float/2addr v5, v2

    float-to-long v2, v5

    .line 3534
    :cond_16f
    invoke-virtual {v0, v2, v3, v9}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3535
    invoke-virtual {v0, v4, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    :goto_175
    return-void

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_15d
        :pswitch_72
        :pswitch_a9
        :pswitch_102
        :pswitch_37
        :pswitch_117
        :pswitch_10d
    .end packed-switch
.end method

.method public final stepLightIdleStateLocked(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3370
    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method public stepLightIdleStateLocked(Ljava/lang/String;Z)V
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WakelockTimeout"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3377
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eqz v0, :cond_137

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    goto/16 :goto_137

    .line 3384
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stepLightIdleStateLocked: mLightState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleLightStep()V

    .line 3389
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v2

    .line 3390
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightMaintenanceAlarmTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v0, :cond_47

    cmp-long v0, v2, v4

    if-ltz v0, :cond_47

    move v0, v9

    goto :goto_48

    :cond_47
    move v0, v8

    .line 3392
    :goto_48
    iget-wide v10, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long v12, v10, v6

    if-lez v12, :cond_54

    cmp-long v2, v2, v10

    if-ltz v2, :cond_54

    move v2, v9

    goto :goto_55

    :cond_54
    move v2, v8

    :goto_55
    const/4 v3, 0x5

    const/4 v12, 0x4

    if-eqz v0, :cond_61

    if-eqz v2, :cond_5f

    cmp-long p2, v10, v4

    if-gtz p2, :cond_6d

    :cond_5f
    :goto_5f
    move v8, v9

    goto :goto_6d

    :cond_61
    if-eqz v2, :cond_64

    goto :goto_6d

    :cond_64
    if-eqz p2, :cond_120

    .line 3406
    iget p2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eq p2, v12, :cond_5f

    if-ne p2, v3, :cond_6d

    goto :goto_5f

    :cond_6d
    :goto_6d
    const/4 p2, 0x3

    const/4 v0, 0x0

    if-eqz v8, :cond_da

    .line 3415
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-nez v1, :cond_89

    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v1, v3, :cond_7a

    goto :goto_89

    .line 3444
    :cond_7a
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightMaintenanceAlarmLocked(J)V

    .line 3445
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 3447
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3448
    invoke-static {v3, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    goto/16 :goto_11f

    .line 3417
    :cond_89
    :goto_89
    iput v9, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3418
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3420
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v3, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v6, v1, v4

    if-gez v6, :cond_a3

    .line 3421
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    goto :goto_ab

    .line 3422
    :cond_a3
    iget-wide v4, v3, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_ab

    .line 3423
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 3425
    :cond_ab
    :goto_ab
    iget-wide v1, v3, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    long-to-float v4, v4

    iget v3, v3, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    mul-float/2addr v4, v3

    float-to-long v3, v4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 3430
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v3, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(JJ)V

    .line 3431
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->scheduleLightMaintenanceAlarmLocked(J)V

    const/4 v1, 0x6

    .line 3436
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3437
    invoke-static {v1, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3438
    invoke-virtual {p0, p2, v0}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3439
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {p0, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_11f

    .line 3451
    :cond_da
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_102

    .line 3455
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 3456
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v8, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    sub-long/2addr v3, v8

    .line 3455
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 3457
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v3, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_fc

    .line 3459
    iget-wide v8, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    sub-long/2addr v3, v1

    add-long/2addr v8, v3

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    goto :goto_102

    .line 3463
    :cond_fc
    iget-wide v8, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    sub-long/2addr v1, v3

    sub-long/2addr v8, v1

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 3467
    :cond_102
    :goto_102
    iput-wide v6, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3470
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->scheduleLightMaintenanceAlarmLocked(J)V

    .line 3471
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 3473
    iput v12, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3474
    invoke-static {v12, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    const/4 p1, 0x2

    .line 3475
    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3476
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3477
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_11f
    return-void

    .line 3410
    :cond_120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "stepLightIdleStateLocked called in invalid state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_137
    :goto_137
    return-void
.end method

.method public final unregisterDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
    .registers 3

    .line 2473
    monitor-enter p0

    const/4 v0, 0x0

    .line 2475
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2478
    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2479
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2480
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public final unregisterStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .registers 3

    .line 806
    monitor-enter p0

    .line 807
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_1f

    iget p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1c

    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    if-eqz p1, :cond_1f

    .line 813
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->maybeStopMonitoringMotionLocked()V

    .line 815
    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public final unregisterTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V
    .registers 3

    .line 827
    monitor-enter p0

    .line 828
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempAllowlistChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 829
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public final updateActiveConstraintsLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2520
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    move v1, v0

    .line 2521
    :goto_4
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 2522
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 2523
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 2524
    iget v4, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_25

    move v4, v6

    goto :goto_26

    :cond_25
    move v4, v0

    .line 2525
    :goto_26
    iget-boolean v5, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eq v4, v5, :cond_2f

    .line 2526
    invoke-virtual {p0, v2, v4}, Lcom/android/server/DeviceIdleController;->setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2527
    iput-boolean v4, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 2529
    :cond_2f
    iget-boolean v2, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eqz v2, :cond_3c

    iget-boolean v2, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    if-eqz v2, :cond_3c

    .line 2530
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3f
    return-void
.end method

.method public updateChargingLocked(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    if-nez p1, :cond_11

    .line 3096
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_11

    const/4 p1, 0x0

    .line 3097
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 3098
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez p1, :cond_25

    .line 3099
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_25

    :cond_11
    if-eqz p1, :cond_25

    .line 3102
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 3103
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez p1, :cond_25

    const/4 p1, 0x3

    .line 3104
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3105
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    const-string v0, "charging"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    :cond_25
    :goto_25
    return-void
.end method

.method public updateConnectivityState(Landroid/content/Intent;)V
    .registers 7

    .line 3023
    monitor-enter p0

    .line 3024
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 3025
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4d

    if-nez v0, :cond_b

    return-void

    .line 3030
    :cond_b
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3031
    monitor-enter p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_15

    goto :goto_35

    :cond_15
    if-nez p1, :cond_1c

    .line 3037
    :try_start_17
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_35

    :cond_1c
    const-string/jumbo v3, "networkType"

    const/4 v4, -0x1

    .line 3040
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 3042
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v3, :cond_2c

    .line 3043
    monitor-exit p0

    return-void

    :cond_2c
    const-string/jumbo v0, "noConnectivity"

    .line 3045
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/lit8 v2, p1, 0x1

    .line 3049
    :goto_35
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-eq v2, p1, :cond_48

    .line 3050
    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-eqz v2, :cond_48

    .line 3051
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_48

    const-string/jumbo p1, "network"

    .line 3052
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;Z)V

    .line 3055
    :cond_48
    monitor-exit p0

    return-void

    :catchall_4a
    move-exception p1

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_17 .. :try_end_4c} :catchall_4a

    throw p1

    :catchall_4d
    move-exception p1

    .line 3025
    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public updateInteractivityLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3070
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_17

    .line 3072
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v1, :cond_17

    const/4 v0, 0x0

    .line 3073
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 3074
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_37

    .line 3075
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_37

    :cond_17
    if-eqz v0, :cond_37

    const/4 v0, 0x1

    .line 3078
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 3079
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    if-nez v0, :cond_37

    :cond_2a
    const/4 v0, 0x2

    .line 3080
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3081
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string/jumbo v1, "screen"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    :cond_37
    :goto_37
    return-void
.end method

.method public final updatePreIdleFactor()V
    .registers 7

    .line 3766
    monitor-enter p0

    .line 3767
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->shouldUseIdleTimeoutFactorLocked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3768
    monitor-exit p0

    return-void

    .line 3770
    :cond_9
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const/4 v1, 0x2

    if-ne v0, v1, :cond_40

    .line 3771
    :cond_11
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1b

    .line 3772
    monitor-exit p0

    return-void

    .line 3774
    :cond_1b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-gez v4, :cond_29

    .line 3776
    monitor-exit p0

    return-void

    :cond_29
    long-to-float v4, v0

    .line 3778
    iget v5, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    mul-float/2addr v4, v5

    float-to-long v4, v4

    sub-long/2addr v0, v4

    .line 3779
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3c

    .line 3780
    monitor-exit p0

    return-void

    :cond_3c
    const/4 v0, 0x0

    .line 3782
    invoke-virtual {p0, v4, v5, v0}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3784
    :cond_40
    monitor-exit p0

    return-void

    :catchall_42
    move-exception v0

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public updateQuickDozeFlagLocked(Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3122
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    if-eqz p1, :cond_e

    .line 3123
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    if-eqz p1, :cond_16

    .line 3127
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    :cond_16
    return-void
.end method

.method public final updateTempWhitelistAppIdsLocked(IZJIILjava/lang/String;I)V
    .registers 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    move-object v0, p0

    .line 4200
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4201
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v2, v2

    if-eq v2, v1, :cond_10

    .line 4202
    new-array v2, v1, [I

    iput-object v2, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    :cond_10
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_20

    .line 4205
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 4207
    :cond_20
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v3, :cond_35

    .line 4212
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    move v5, p1

    move v6, p2

    move-wide/from16 v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v3 .. v12}, Landroid/app/ActivityManagerInternal;->updateDeviceIdleTempAllowlist([IIZJIILjava/lang/String;I)V

    .line 4215
    :cond_35
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_3e

    .line 4220
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleTempWhitelist([I)V

    .line 4222
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    return-void
.end method

.method public final updateWhitelistAppIdsLocked()V
    .registers 4

    .line 4164
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 4166
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 4168
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 4170
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_2e

    .line 4171
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->setDeviceIdleAllowlist([I[I)V

    .line 4174
    :cond_2e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_37

    .line 4179
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 4181
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    return-void
.end method

.method public final verifyAlarmStateLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 3216
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-wide/16 v1, 0x0

    const-string v3, "DeviceIdleController"

    if-nez v0, :cond_25

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_25

    .line 3217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mState=ACTIVE but mNextAlarmTime="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    :cond_25
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_52

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v0}, Lcom/android/server/AlarmManagerInternal;->isIdling()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mState="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but AlarmManager is idling"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    :cond_52
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v0, v4, :cond_64

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v0}, Lcom/android/server/AlarmManagerInternal;->isIdling()Z

    move-result v0

    if-nez v0, :cond_64

    const-string/jumbo v0, "mState=IDLE but AlarmManager is not idling"

    .line 3223
    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    :cond_64
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-nez v0, :cond_93

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_93

    .line 3226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLightState=ACTIVE but mNextLightAlarmTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 3227
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from now"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3226
    invoke-static {v3, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    return-void
.end method

.method public writeConfigFileLocked()V
    .registers 5

    .line 4336
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4337
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4366
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "config"

    .line 4367
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    move v3, v2

    .line 4368
    :goto_d
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const-string/jumbo v5, "n"

    if-ge v3, v4, :cond_2f

    .line 4369
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "wl"

    .line 4370
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4371
    invoke-interface {p1, v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4372
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 4374
    :cond_2f
    :goto_2f
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4e

    const-string/jumbo v3, "un-wl"

    .line 4375
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4376
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4377
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 4379
    :cond_4e
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4380
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void
.end method
