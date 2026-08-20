.class public final Lcom/android/server/am/AppRestrictionController;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppRestrictionController$Injector;,
        Lcom/android/server/am/AppRestrictionController$BgHandler;,
        Lcom/android/server/am/AppRestrictionController$NotificationHelper;,
        Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;,
        Lcom/android/server/am/AppRestrictionController$TrackerInfo;,
        Lcom/android/server/am/AppRestrictionController$ConstantsObserver;,
        Lcom/android/server/am/AppRestrictionController$RestrictionSettings;,
        Lcom/android/server/am/AppRestrictionController$TrackerType;
    }
.end annotation


# static fields
.field public static final APP_RESTRICTION_SETTINGS_DIRNAME:Ljava/lang/String; = "apprestriction"

.field public static final APP_RESTRICTION_SETTINGS_FILENAME:Ljava/lang/String; = "settings.xml"

.field public static final ATTR_CUR_LEVEL:Ljava/lang/String; = "curlevel"

.field public static final ATTR_LEVEL_TS:Ljava/lang/String; = "levelts"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field public static final ATTR_REASON:Ljava/lang/String; = "reason"

.field public static final ATTR_UID:Ljava/lang/String; = "uid"

.field public static final DEBUG_BG_RESTRICTION_CONTROLLER:Z = false

.field public static final DEVICE_CONFIG_SUBNAMESPACE_PREFIX:Ljava/lang/String; = "bg_"

.field public static final ENABLE_SHOW_FGS_MANAGER_ACTION_ON_BG_RESTRICTION:Z = false

.field public static final ENABLE_SHOW_FOREGROUND_SERVICE_MANAGER:Z = true

.field public static final ROLES_IN_INTEREST:[Ljava/lang/String;

.field public static final STOCK_PM_FLAGS:I = 0xc8000

.field public static final TAG:Ljava/lang/String; = "ActivityManager"

.field public static final TAG_SETTINGS:Ljava/lang/String; = "settings"

.field public static final TRACKER_TYPE_BATTERY:I = 0x1

.field public static final TRACKER_TYPE_BATTERY_EXEMPTION:I = 0x2

.field public static final TRACKER_TYPE_BIND_SERVICE_EVENTS:I = 0x7

.field public static final TRACKER_TYPE_BROADCAST_EVENTS:I = 0x6

.field public static final TRACKER_TYPE_FGS:I = 0x3

.field public static final TRACKER_TYPE_MEDIA_SESSION:I = 0x4

.field public static final TRACKER_TYPE_PERMISSION:I = 0x5

.field public static final TRACKER_TYPE_UNKNOWN:I


# instance fields
.field public final mActiveUids:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public final mAppIdleStateChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

.field public final mAppStateTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BaseAppStateTracker;",
            ">;"
        }
    .end annotation
.end field

.field public final mBackgroundRestrictionListener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

.field public final mBgExecutor:Landroid/os/HandlerExecutor;

.field public final mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

.field public final mBgHandlerThread:Landroid/os/HandlerThread;

.field public mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mBootReceiver:Landroid/content/BroadcastReceiver;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCarrierPrivilegedApps:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCarrierPrivilegedLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mCarrierPrivilegedLock:Ljava/lang/Object;

.field public final mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

.field public final mContext:Landroid/content/Context;

.field public mDeviceIdleAllowlist:[I

.field public mDeviceIdleExceptIdleAllowlist:[I

.field public final mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

.field public final mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

.field public final mLock:Ljava/lang/Object;

.field public mMARsExemptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

.field public final mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

.field public final mSettingsLock:Ljava/lang/Object;

.field public final mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemModulesCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mUidObserver:Landroid/app/IUidObserver;

.field public final mUidRolesMapping:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8QkLV4crZm0A21he8V4-0vwXGs0(ZLandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController;->lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$7(ZLandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BwI2bIWNnuH1Po9UAErb-kJVTqA(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;ILjava/lang/Integer;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->lambda$handleUidActive$8(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FCQknS-rln1NbsfrSCwNo3WyQeM(Lcom/android/server/am/AppRestrictionController;Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/AppRestrictionController;->lambda$applyRestrictionLevel$1(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GWFuRFCRblDPeUK23JILT_Qr87M(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$3(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JBVI1E3t3qyr4dgfGmeoosSYr5k(ILjava/lang/String;ILandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->lambda$dispatchAppRestrictionLevelChanges$2(ILjava/lang/String;ILandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OW1IprpCpg1pLOMOsBN0vCspEJY(Lcom/android/server/am/AppRestrictionController;Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppRestrictionController;->lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$6(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZoVJBQICfCZ5LJm9eN0cldTt4SQ(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/server/am/AppRestrictionController;->lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$5(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l6R_w00NarVifoQOJzN2AbO6woc(Lcom/android/server/am/AppRestrictionController;ILcom/android/server/usage/AppStandbyInternal;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/AppRestrictionController;->lambda$handleUidActive$9(ILcom/android/server/usage/AppStandbyInternal;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mhD3Z9W6qq77PhQ6TE6pGfjAr3g(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xYfOCuSw21RWEOy1twLWwU9lca0(Lcom/android/server/am/AppRestrictionController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->lambda$onSystemReady$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$zew5pm1MTLKTNHhQs2ZKvj_UhVw(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$4(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConstantsObserver(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$ConstantsObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/am/AppRestrictionController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEmptyTrackerInfo(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationHelper(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$NotificationHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mapplyRestrictionLevel(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V
    .registers 9

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearCarrierPrivilegedApps(Lcom/android/server/am/AppRestrictionController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->clearCarrierPrivilegedApps()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchAppRestrictionLevelChanges(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->dispatchAppRestrictionLevelChanges(ILjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/am/AppRestrictionController;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->dispatchAutoRestrictedBucketFeatureFlagChanged(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAppStandbyBucketChanged(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->handleAppStandbyBucketChanged(ILjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBackgroundRestrictionChanged(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->handleBackgroundRestrictionChanged(ILjava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monLockedBootCompleted(Lcom/android/server/am/AppRestrictionController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->onLockedBootCompleted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageRemoved(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->onPackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPropertiesChanged(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onPropertiesChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUidAdded(Lcom/android/server/am/AppRestrictionController;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUidAdded(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUidRemoved(Lcom/android/server/am/AppRestrictionController;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUidRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserAdded(Lcom/android/server/am/AppRestrictionController;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUserAdded(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserInteractionStarted(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->onUserInteractionStarted(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/am/AppRestrictionController;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUserRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStarted(Lcom/android/server/am/AppRestrictionController;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUserStarted(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopped(Lcom/android/server/am/AppRestrictionController;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUserStopped(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "android.app.role.DIALER"

    const-string v1, "android.app.role.EMERGENCY"

    .line 231
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppRestrictionController;->ROLES_IN_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 4

    .line 1512
    new-instance v0, Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/AppRestrictionController$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/AppRestrictionController;-><init>(Lcom/android/server/am/AppRestrictionController$Injector;Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppRestrictionController$Injector;Lcom/android/server/am/ActivityManagerService;)V
    .registers 6

    .line 1515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 244
    new-instance v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 248
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 255
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mTmpRunnables:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 264
    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    new-array v0, v0, [I

    .line 269
    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    .line 276
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    .line 283
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    .line 286
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 290
    new-instance v0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    .line 296
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    .line 315
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    .line 326
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 350
    new-instance v0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$TrackerInfo;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 352
    new-instance v0, Lcom/android/server/am/AppRestrictionController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$1;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 423
    new-instance v0, Lcom/android/server/am/AppRestrictionController$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$2;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 1442
    new-instance v0, Lcom/android/server/am/AppRestrictionController$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$3;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBackgroundRestrictionListener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    .line 1452
    new-instance v0, Lcom/android/server/am/AppRestrictionController$4;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$4;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppIdleStateChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 1468
    new-instance v0, Lcom/android/server/am/AppRestrictionController$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$5;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Landroid/app/IUidObserver;

    .line 2868
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getFgsExemptionList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mMARsExemptionList:Ljava/util/ArrayList;

    .line 1516
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 1517
    invoke-virtual {p1}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    .line 1518
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1519
    new-instance p2, Landroid/os/HandlerThread;

    const-string v1, "bgres-controller"

    const/16 v2, 0xa

    invoke-direct {p2, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandlerThread:Landroid/os/HandlerThread;

    .line 1520
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 1521
    new-instance v1, Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lcom/android/server/am/AppRestrictionController$BgHandler;-><init>(Landroid/os/Looper;Lcom/android/server/am/AppRestrictionController$Injector;)V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 1522
    new-instance p2, Landroid/os/HandlerExecutor;

    invoke-direct {p2, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mBgExecutor:Landroid/os/HandlerExecutor;

    .line 1523
    new-instance p2, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    invoke-direct {p2, p0, v1, v0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;-><init>(Lcom/android/server/am/AppRestrictionController;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 1524
    new-instance p2, Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-direct {p2, p0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    .line 1525
    invoke-virtual {p1, p0}, Lcom/android/server/am/AppRestrictionController$Injector;->initAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)V

    return-void
.end method

.method private synthetic lambda$applyRestrictionLevel$1(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V
    .registers 16

    .line 2219
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {p1, p2, v0, p4, p5}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p6

    move v4, p7

    move-object v5, p8

    move v6, p4

    .line 2221
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V

    return-void
.end method

.method public static synthetic lambda$dispatchAppRestrictionLevelChanges$2(ILjava/lang/String;ILandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .registers 4

    .line 2308
    invoke-interface {p3, p0, p1, p2}, Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;->onRestrictionLevelChanged(ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$3(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 6

    .line 2320
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    .line 2321
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    and-int/lit16 p3, p3, 0xff

    .line 2319
    invoke-interface {p0, p1, p2, v0, p3}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    return-void
.end method

.method public static synthetic lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$4(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 11

    .line 2323
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const v0, 0xff00

    and-int v3, p2, v0

    .line 2324
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/lit16 v4, p2, 0xff

    const/16 v5, 0x300

    const/4 v6, 0x6

    move-object v0, p0

    move-object v1, p1

    .line 2322
    invoke-interface/range {v0 .. v6}, Lcom/android/server/usage/AppStandbyInternal;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    return-void
.end method

.method public static synthetic lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$5(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 8

    .line 2317
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    const/16 v0, 0x32

    if-ne p5, v0, :cond_18

    if-eqz p1, :cond_10

    .line 2319
    new-instance p1, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2, p4, p3, p6}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_15

    .line 2322
    :cond_10
    new-instance p1, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2, p4, p3, p6}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2318
    :goto_15
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method private synthetic lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$6(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V
    .registers 7

    .line 2316
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;-><init>(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V

    return-void
.end method

.method public static synthetic lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$7(ZLandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .registers 2

    .line 2334
    invoke-interface {p1, p0}, Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;->onAutoRestrictedBucketFeatureFlagChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$handleUidActive$8(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;ILjava/lang/Integer;)V
    .registers 6

    .line 2752
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    and-int/lit16 p3, p3, 0xff

    .line 2751
    invoke-interface {p0, p1, p2, v0, p3}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    return-void
.end method

.method private synthetic lambda$handleUidActive$9(ILcom/android/server/usage/AppStandbyInternal;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 8

    .line 2749
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    if-eqz v0, :cond_19

    .line 2750
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    const/16 v0, 0x32

    if-ne p5, v0, :cond_19

    .line 2751
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    new-instance p5, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda4;

    invoke-direct {p5, p2, p4, p3, p6}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;ILjava/lang/Integer;)V

    invoke-virtual {p0, p1, p4, p5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1f

    .line 2754
    :cond_19
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p4, p2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_1f
    return-void
.end method

.method private synthetic lambda$onSystemReady$0()V
    .registers 4

    .line 1545
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 1546
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public static standbyBucketToRestrictionLevel(I)I
    .registers 4

    const/4 v0, 0x5

    const/16 v1, 0x14

    if-eq p0, v0, :cond_1f

    const/16 v0, 0xa

    const/16 v2, 0x1e

    if-eq p0, v0, :cond_1e

    if-eq p0, v1, :cond_1e

    if-eq p0, v2, :cond_1e

    const/16 v0, 0x28

    if-eq p0, v0, :cond_1e

    const/16 v1, 0x2d

    if-eq p0, v1, :cond_1d

    const/16 v0, 0x32

    if-eq p0, v0, :cond_1d

    const/4 p0, 0x0

    return p0

    :cond_1d
    return v0

    :cond_1e
    return v2

    :cond_1f
    return v1
.end method


# virtual methods
.method public addAppBackgroundRestrictionListener(Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .registers 2

    .line 1508
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAppStateTracker(Lcom/android/server/am/BaseAppStateTracker;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2997
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v7, p5

    .line 2161
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v14

    if-nez p4, :cond_16

    .line 2163
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move-object v15, v1

    goto :goto_18

    :cond_16
    move-object/from16 v15, p4

    .line 2165
    :goto_18
    iget-object v8, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2166
    :try_start_1b
    invoke-virtual {v0, v12, v11}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(ILjava/lang/String;)I

    move-result v10

    if-ne v10, v13, :cond_23

    .line 2169
    monitor-exit v8

    return-void

    .line 2171
    :cond_23
    invoke-static/range {p5 .. p5}, Lcom/android/server/am/AppRestrictionController;->standbyBucketToRestrictionLevel(I)I

    move-result v1

    const v9, 0xff00

    if-ne v1, v13, :cond_41

    .line 2175
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2174
    invoke-interface {v14, v11, v1, v2, v3}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucketReason(Ljava/lang/String;IJ)I

    move-result v1

    if-eqz v1, :cond_41

    and-int v2, v1, v9

    and-int/lit16 v1, v1, 0xff

    move v5, v1

    move v6, v2

    goto :goto_45

    :cond_41
    move/from16 v6, p7

    move/from16 v5, p8

    .line 2188
    :goto_45
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1, v11, v12}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getReason(Ljava/lang/String;I)I

    move-result v4

    .line 2189
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v16, v4

    move/from16 v4, p3

    move/from16 p4, v5

    move v5, v6

    move/from16 p7, v6

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->update(Ljava/lang/String;IIII)I

    .line 2190
    monitor-exit v8
    :try_end_60
    .catchall {:try_start_1b .. :try_end_60} :catchall_118

    if-eqz p6, :cond_117

    const/4 v1, 0x5

    if-ne v7, v1, :cond_67

    goto/16 :goto_117

    :cond_67
    const/16 v1, 0x28

    if-lt v13, v1, :cond_d7

    if-ge v10, v1, :cond_d7

    .line 2197
    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v2, v2, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mRestrictedBucketEnabled:Z

    if-nez v2, :cond_74

    return-void

    :cond_74
    const/16 v2, 0x2d

    if-eq v7, v2, :cond_117

    .line 2206
    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v2, v2, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    if-nez v2, :cond_80

    if-ne v13, v1, :cond_117

    :cond_80
    const/4 v1, 0x1

    .line 2211
    iget-object v9, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2212
    :try_start_84
    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v12, v11}, Landroid/util/SparseArrayMap;->indexOfKey(ILjava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_ae

    .line 2218
    iget-object v8, v0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    new-instance v7, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda10;
    :try_end_90
    .catchall {:try_start_84 .. :try_end_90} :catchall_d0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v3, v14

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p7

    move-object v0, v7

    move/from16 v7, p4

    move-object v13, v8

    move v8, v10

    move-object/from16 v16, v9

    move/from16 v9, p3

    move/from16 p5, v10

    move-object v10, v15

    :try_start_a6
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/AppRestrictionController;Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V

    invoke-virtual {v13, v12, v11, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_b2

    :cond_ae
    move-object/from16 v16, v9

    move/from16 p5, v10

    .line 2226
    :goto_b2
    monitor-exit v16
    :try_end_b3
    .catchall {:try_start_a6 .. :try_end_b3} :catchall_d5

    if-eqz v1, :cond_117

    .line 2228
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move/from16 v7, p4

    move/from16 v8, p7

    invoke-interface {v14, v11, v0, v8, v7}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p5

    move/from16 v5, p3

    move-object v6, v15

    move v7, v8

    .line 2230
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppRestrictionController;->logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V

    goto :goto_117

    :catchall_d0
    move-exception v0

    move-object/from16 v16, v9

    .line 2226
    :goto_d3
    :try_start_d3
    monitor-exit v16
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d5

    throw v0

    :catchall_d5
    move-exception v0

    goto :goto_d3

    :cond_d7
    move/from16 v7, p4

    move/from16 v8, p7

    move v0, v10

    if-lt v0, v1, :cond_117

    move/from16 v10, p3

    if-ge v10, v1, :cond_117

    move-object/from16 v13, p0

    .line 2237
    iget-object v1, v13, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2238
    :try_start_e7
    iget-object v2, v13, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v12, v11}, Landroid/util/SparseArrayMap;->indexOfKey(ILjava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_f5

    .line 2240
    iget-object v2, v13, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v11, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2242
    :cond_f5
    monitor-exit v1
    :try_end_f6
    .catchall {:try_start_e7 .. :try_end_f6} :catchall_114

    .line 2243
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move/from16 v1, v16

    and-int v4, v1, v9

    and-int/lit16 v5, v1, 0xff

    move-object v1, v14

    move-object/from16 v2, p1

    move v6, v8

    invoke-interface/range {v1 .. v7}, Lcom/android/server/usage/AppStandbyInternal;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    move-object/from16 v1, p0

    move/from16 v3, p2

    move v4, v0

    move/from16 v5, p3

    move-object v6, v15

    move v7, v8

    .line 2246
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppRestrictionController;->logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V

    goto :goto_117

    :catchall_114
    move-exception v0

    .line 2242
    :try_start_115
    monitor-exit v1
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_114

    throw v0

    :cond_117
    :goto_117
    return-void

    :catchall_118
    move-exception v0

    .line 2190
    :try_start_119
    monitor-exit v8
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_118

    throw v0
.end method

.method public final calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "IZZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/AppRestrictionController$TrackerInfo;",
            ">;"
        }
    .end annotation

    .line 1745
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppHibernationInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p3, p1}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1746
    new-instance p1, Landroid/util/Pair;

    const/16 p2, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1a
    const/4 p1, 0x0

    const/4 v0, 0x5

    const/16 v1, 0x14

    const/16 v2, 0x32

    if-eq p4, v0, :cond_98

    if-eq p4, v2, :cond_97

    .line 1763
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStateTracker()Lcom/android/server/AppStateTracker;

    move-result-object v0

    .line 1764
    invoke-interface {v0, p2, p3}, Lcom/android/server/AppStateTracker;->isAppBackgroundRestricted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1765
    new-instance p1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 1768
    :cond_3c
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mRestrictedBucketEnabled:Z

    if-eqz v0, :cond_49

    const/16 v0, 0x2d

    if-ne p4, v0, :cond_49

    const/16 p4, 0x28

    goto :goto_4b

    :cond_49
    const/16 p4, 0x1e

    :goto_4b
    if-eqz p6, :cond_95

    const/16 p6, 0x64

    .line 1772
    invoke-virtual {p0, p2, p3, p6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevelFromTackers(ILjava/lang/String;I)Landroid/util/Pair;

    move-result-object p6

    .line 1774
    iget-object v0, p6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_6b

    .line 1776
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_6b
    if-le v0, p4, :cond_73

    .line 1780
    iget-object p1, p6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move v1, v0

    goto :goto_74

    :cond_73
    move v1, p4

    :goto_74
    if-ne v1, v2, :cond_98

    if-eqz p5, :cond_83

    .line 1785
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/4 p4, 0x4

    const/4 p5, 0x0

    invoke-virtual {p1, p4, p2, p5, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1786
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1789
    :cond_83
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevelFromTackers(ILjava/lang/String;I)Landroid/util/Pair;

    move-result-object p0

    .line 1791
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1792
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    goto :goto_98

    :cond_95
    move v1, p4

    goto :goto_98

    :cond_97
    move v1, v2

    .line 1797
    :cond_98
    :goto_98
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final calcAppRestrictionLevelFromTackers(ILjava/lang/String;I)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/AppRestrictionController$TrackerInfo;",
            ">;"
        }
    .end annotation

    .line 1815
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mRestrictedBucketEnabled:Z

    .line 1816
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_10
    if-ltz v1, :cond_3d

    .line 1817
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v5}, Lcom/android/server/am/BaseAppStateTracker;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v5

    .line 1818
    invoke-virtual {v5, p2, p1, p3}, Lcom/android/server/am/BaseAppStatePolicy;->getProposedRestrictionLevel(Ljava/lang/String;II)I

    move-result v5

    if-nez v0, :cond_2a

    const/16 v6, 0x28

    if-ne v5, v6, :cond_2a

    const/16 v5, 0x1e

    .line 1822
    :cond_2a
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v2, v3, :cond_3a

    .line 1824
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTracker;

    move-object v4, v3

    move v3, v2

    :cond_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_3d
    if-nez v4, :cond_42

    .line 1829
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    goto :goto_50

    .line 1830
    :cond_42
    new-instance p2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-virtual {v4}, Lcom/android/server/am/BaseAppStateTracker;->getType()I

    move-result p3

    .line 1831
    invoke-virtual {v4, p1}, Lcom/android/server/am/BaseAppStateTracker;->getTrackerInfoForStatsd(I)[B

    move-result-object p1

    invoke-direct {p2, p0, p3, p1}, Lcom/android/server/am/AppRestrictionController$TrackerInfo;-><init>(Lcom/android/server/am/AppRestrictionController;I[B)V

    move-object p0, p2

    .line 1832
    :goto_50
    new-instance p1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public cancelLongRunningFGSNotificationIfNecessary(Ljava/lang/String;I)V
    .registers 3

    .line 3017
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->cancelLongRunningFGSNotificationIfNecessary(Ljava/lang/String;I)V

    return-void
.end method

.method public final clearCarrierPrivilegedApps()V
    .registers 3

    .line 2899
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2900
    :try_start_4
    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 2901
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final dispatchAppRestrictionLevelChanges(ILjava/lang/String;I)V
    .registers 5

    .line 2307
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final dispatchAutoRestrictedBucketFeatureFlagChanged(Z)V
    .registers 7

    .line 2312
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v0

    .line 2313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2314
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2315
    :try_start_e
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    new-instance v4, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v1, p1, v0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/AppRestrictionController;Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->forEachUidLocked(Ljava/util/function/Consumer;)V

    .line 2329
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_37

    const/4 v0, 0x0

    .line 2330
    :goto_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 2331
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 2333
    :cond_2c
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda9;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_37
    move-exception p0

    .line 2329
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 2034
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "APP BACKGROUND RESTRICTIONS"

    .line 2035
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2037
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "BACKGROUND RESTRICTION LEVEL SETTINGS"

    .line 2038
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2039
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2040
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2041
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_50
    if-ge v1, v0, :cond_63

    .line 2042
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2043
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_63
    return-void
.end method

.method public dumpAsProto(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 6

    .line 2048
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 2049
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;->dumpAsProto(Landroid/util/proto/ProtoOutputStream;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public final fetchCarrierPrivilegedAppsCPL()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCarrierPrivilegedLock"
        }
    .end annotation

    .line 2906
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 2908
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCarrierPrivilegedPackagesForAllActiveSubscriptions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Ljava/util/List;

    return-void
.end method

.method public forEachTracker(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/BaseAppStateTracker;",
            ">;)V"
        }
    .end annotation

    .line 3299
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 3300
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public getAppStateTracker(Ljava/lang/Class;)Lcom/android/server/am/BaseAppStateTracker;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/BaseAppStateTracker;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3004
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseAppStateTracker;

    .line 3005
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackgroundHandler()Landroid/os/Handler;
    .registers 1

    .line 2977
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    return-object p0
.end method

.method public getBackgroundHandlerThread()Landroid/os/HandlerThread;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2985
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public getBackgroundRestrictionExemptionReason(I)I
    .registers 14

    .line 2789
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, 0x33

    return p0

    .line 2792
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->isOnSystemDeviceIdleAllowlist(I)Z

    move-result v0

    const/16 v1, 0x12c

    if-eqz v0, :cond_12

    return v1

    .line 2795
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 p0, 0x3f

    return p0

    .line 2798
    :cond_1d
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2799
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    const-string/jumbo v3, "no_control_apps"

    .line 2800
    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_33

    const/16 p0, 0x143

    return p0

    .line 2803
    :cond_33
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v2

    .line 2804
    invoke-virtual {v2, p1}, Landroid/app/ActivityManagerInternal;->isDeviceOwner(I)Z

    move-result v3

    if-eqz v3, :cond_42

    const/16 p0, 0x37

    return p0

    .line 2807
    :cond_42
    invoke-virtual {v2, p1}, Landroid/app/ActivityManagerInternal;->isProfileOwner(I)Z

    move-result v3

    if-eqz v3, :cond_4b

    const/16 p0, 0x38

    return p0

    .line 2810
    :cond_4b
    invoke-virtual {v2, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v3

    if-gtz v3, :cond_54

    const/16 p0, 0xa

    return p0

    :cond_54
    const/4 v4, 0x1

    if-gt v3, v4, :cond_5a

    const/16 p0, 0xb

    return p0

    .line 2816
    :cond_5a
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_df

    .line 2818
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v4

    .line 2819
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    .line 2820
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v6

    .line 2822
    array-length v7, v3

    const/4 v8, 0x0

    move v9, v8

    :goto_7b
    if-ge v9, v7, :cond_c1

    aget-object v10, v3, v9

    .line 2823
    invoke-virtual {p0, v10}, Lcom/android/server/am/AppRestrictionController;->isSystemModule(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_88

    const/16 p0, 0x140

    return p0

    .line 2825
    :cond_88
    invoke-virtual {p0, v10}, Lcom/android/server/am/AppRestrictionController;->isCarrierApp(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_91

    const/16 p0, 0x141

    return p0

    .line 2827
    :cond_91
    invoke-virtual {p0, v10}, Lcom/android/server/am/AppRestrictionController;->isExemptedFromSysConfig(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_98

    return v1

    .line 2829
    :cond_98
    iget-object v11, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-object v11, v11, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a3

    return v1

    .line 2831
    :cond_a3
    invoke-virtual {v5, v10, v0}, Landroid/content/pm/PackageManagerInternal;->isPackageStateProtected(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_ac

    const/16 p0, 0x142

    return p0

    .line 2833
    :cond_ac
    invoke-interface {v6, v10, v0}, Lcom/android/server/usage/AppStandbyInternal;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_b5

    const/16 p0, 0x144

    return p0

    .line 2836
    :cond_b5
    invoke-virtual {p0, v10}, Lcom/android/server/am/AppRestrictionController;->isExemptedFromMARs(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_be

    const/16 p0, 0x15e

    return p0

    :cond_be
    add-int/lit8 v9, v9, 0x1

    goto :goto_7b

    .line 2842
    :cond_c1
    array-length v0, v3

    :goto_c2
    if-ge v8, v0, :cond_df

    aget-object v1, v3, v8

    const/16 v5, 0x2f

    .line 2843
    invoke-virtual {v4, v5, p1, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_d1

    const/16 p0, 0x44

    return p0

    :cond_d1
    const/16 v5, 0x5e

    .line 2846
    invoke-virtual {v4, v5, p1, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_dc

    const/16 p0, 0x45

    return p0

    :cond_dc
    add-int/lit8 v8, v8, 0x1

    goto :goto_c2

    :cond_df
    const-string v0, "android.app.role.DIALER"

    .line 2852
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppRestrictionController;->isRoleHeldByUid(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_ea

    const/16 p0, 0x13e

    return p0

    :cond_ea
    const-string v0, "android.app.role.EMERGENCY"

    .line 2855
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppRestrictionController;->isRoleHeldByUid(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f5

    const/16 p0, 0x13f

    return p0

    .line 2858
    :cond_f5
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->isOnDeviceIdleAllowlist(I)Z

    move-result p0

    if-eqz p0, :cond_fe

    const/16 p0, 0x41

    return p0

    .line 2861
    :cond_fe
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-virtual {v2, p0, p1}, Landroid/app/ActivityManagerInternal;->isAssociatedCompanionApp(II)Z

    move-result p0

    if-eqz p0, :cond_10b

    const/16 p0, 0x39

    return p0

    :cond_10b
    const/4 p0, -0x1

    return p0
.end method

.method public getCompositeMediaPlaybackDurations(IJJ)J
    .registers 15

    sub-long p4, p2, p4

    const-wide/16 v0, 0x0

    .line 1973
    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    move-object v2, p0

    move v3, p1

    move-wide v4, p4

    move-wide v6, p2

    .line 1975
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppRestrictionController;->getMediaSessionTotalDurationsSince(IJJ)J

    move-result-wide v0

    const/4 v8, 0x2

    .line 1976
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppRestrictionController;->getForegroundServiceTotalDurationsSince(IJJI)J

    move-result-wide p0

    .line 1974
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getCompositeMediaPlaybackDurations(Ljava/lang/String;IJJ)J
    .registers 19

    sub-long v0, p3, p5

    const-wide/16 v2, 0x0

    .line 1960
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, v7

    move-wide v5, p3

    .line 1962
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->getMediaSessionTotalDurationsSince(Ljava/lang/String;IJJ)J

    move-result-wide v9

    const/4 v11, 0x2

    move v7, v11

    .line 1963
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/AppRestrictionController;->getForegroundServiceTotalDurationsSince(Ljava/lang/String;IJJI)J

    move-result-wide v0

    .line 1961
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getExemptionReasonStatsd(II)I
    .registers 4

    const/16 v0, 0x14

    if-eq p2, v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 2111
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result p0

    .line 2112
    invoke-static {p0}, Landroid/os/PowerExemptionManager;->getExemptionReasonForStatsd(I)I

    move-result p0

    return p0
.end method

.method public getForegroundServiceTotalDurations(IJI)J
    .registers 5

    .line 1900
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object p0

    .line 1901
    invoke-static {p4}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result p4

    .line 1900
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(IJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getForegroundServiceTotalDurations(Ljava/lang/String;IJI)J
    .registers 12

    .line 1890
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v0

    .line 1891
    invoke-static {p5}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v5

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 1890
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(Ljava/lang/String;IJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getForegroundServiceTotalDurationsSince(IJJI)J
    .registers 14

    .line 1921
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v0

    .line 1922
    invoke-static {p6}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 1921
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IJJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getForegroundServiceTotalDurationsSince(Ljava/lang/String;IJJI)J
    .registers 16

    .line 1911
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v0

    .line 1912
    invoke-static {p7}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v7

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 1911
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(Ljava/lang/String;IJJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLock()Ljava/lang/Object;
    .registers 1

    .line 2992
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getMediaSessionTotalDurations(IJ)J
    .registers 4

    .line 1936
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMediaSessionTotalDurations(Ljava/lang/String;IJ)J
    .registers 5

    .line 1929
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(Ljava/lang/String;IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMediaSessionTotalDurationsSince(IJJ)J
    .registers 12

    .line 1952
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMediaSessionTotalDurationsSince(Ljava/lang/String;IJJ)J
    .registers 14

    .line 1944
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(Ljava/lang/String;IJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getOptimizationLevelStatsd(I)I
    .registers 2

    const/16 p0, 0xa

    if-eq p1, p0, :cond_12

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_10

    const/16 p0, 0x32

    if-eq p1, p0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 p0, 0x2

    return p0

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x3

    return p0
.end method

.method public getPackageName(I)Ljava/lang/String;
    .registers 2

    .line 3021
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRestrictionLevel(I)I
    .registers 2

    .line 1859
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    move-result p0

    return p0
.end method

.method public getRestrictionLevel(ILjava/lang/String;)I
    .registers 3

    .line 1866
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRestrictionLevel(Ljava/lang/String;I)I
    .registers 3

    .line 1873
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getRestrictionLevelStatsd(I)I
    .registers 2

    const/16 p0, 0xa

    if-eq p1, p0, :cond_24

    const/16 p0, 0x14

    if-eq p1, p0, :cond_22

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_20

    const/16 p0, 0x28

    if-eq p1, p0, :cond_1e

    const/16 p0, 0x32

    if-eq p1, p0, :cond_1c

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p0, 0x6

    return p0

    :cond_1c
    const/4 p0, 0x5

    return p0

    :cond_1e
    const/4 p0, 0x4

    return p0

    :cond_20
    const/4 p0, 0x3

    return p0

    :cond_22
    const/4 p0, 0x2

    return p0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public final getTargetSdkStatsd(Ljava/lang/String;)I
    .registers 3

    .line 2132
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    .line 2137
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 2138
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_15

    goto :goto_27

    .line 2141
    :cond_15
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_17} :catch_27

    const/16 p1, 0x1f

    if-ge p0, p1, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/16 p1, 0x21

    if-ge p0, p1, :cond_23

    const/4 p0, 0x2

    return p0

    :cond_23
    if-ne p0, p1, :cond_27

    const/4 p0, 0x3

    return p0

    :catch_27
    :cond_27
    :goto_27
    return v0
.end method

.method public final getThresholdStatsd(I)I
    .registers 2

    const/16 p0, 0x400

    if-eq p1, p0, :cond_c

    const/16 p0, 0x600

    if-eq p1, p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x2

    return p0
.end method

.method public final getTrackerTypeStatsd(I)I
    .registers 2
    .param p1    # I
        .annotation build Lcom/android/server/am/AppRestrictionController$TrackerType;
        .end annotation
    .end param

    packed-switch p1, :pswitch_data_14

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x7

    return p0

    :pswitch_7
    const/4 p0, 0x6

    return p0

    :pswitch_9
    const/4 p0, 0x5

    return p0

    :pswitch_b
    const/4 p0, 0x4

    return p0

    :pswitch_d
    const/4 p0, 0x3

    return p0

    :pswitch_f
    const/4 p0, 0x2

    return p0

    :pswitch_11
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public getUidBatteryExemptedUsageSince(IJJI)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .registers 14

    .line 2015
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppBatteryExemptionTracker()Lcom/android/server/am/AppBatteryExemptionTracker;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 2016
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppBatteryExemptionTracker;->getUidBatteryExemptedUsageSince(IJJI)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object p0

    return-object p0
.end method

.method public getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .registers 2

    .line 2023
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUidBatteryUsageProvider()Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;->getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object p0

    return-object p0
.end method

.method public final handleAppStandbyBucketChanged(ILjava/lang/String;I)V
    .registers 16

    .line 2339
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/32 v1, 0xc8000

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move v4, p3

    move v5, v0

    move-object v6, p2

    move v7, p1

    .line 2341
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;

    move-result-object p3

    .line 2343
    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, p3

    check-cast v7, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    const/16 v10, 0x100

    const/4 v11, 0x0

    move-object v4, p2

    move v8, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    return-void
.end method

.method public final handleBackgroundRestrictionChanged(ILjava/lang/String;Z)V
    .registers 18

    move-object v9, p0

    move v10, p1

    move-object/from16 v11, p2

    move/from16 v6, p3

    .line 2271
    iget-object v0, v9, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v12, 0x0

    move v1, v12

    :goto_e
    if-ge v1, v0, :cond_1e

    .line 2272
    iget-object v2, v9, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    .line 2273
    invoke-virtual {v2, p1, v11, v6}, Lcom/android/server/am/BaseAppStateTracker;->onBackgroundRestrictionChanged(ILjava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2276
    :cond_1e
    iget-object v0, v9, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v0

    .line 2277
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object/from16 v1, p2

    .line 2279
    invoke-interface/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v7

    if-eqz v6, :cond_53

    const/16 v3, 0x32

    .line 2283
    iget-object v4, v9, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    const/4 v6, 0x1

    const/16 v8, 0x400

    const/4 v13, 0x2

    move-object v0, p0

    move-object/from16 v1, p2

    move v2, p1

    move v5, v7

    move v7, v8

    move v8, v13

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 2286
    iget-object v0, v9, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, v12, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2287
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8e

    .line 2291
    :cond_53
    iget-object v0, v9, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 2292
    invoke-static {v0, p1, v11}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->-$$Nest$mgetLastRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;ILjava/lang/String;)I

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x5

    if-ne v7, v2, :cond_60

    move v4, v2

    goto :goto_67

    :cond_60
    if-ne v0, v1, :cond_66

    const/16 v0, 0x2d

    move v4, v0

    goto :goto_67

    :cond_66
    move v4, v1

    .line 2298
    :goto_67
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move-object/from16 v3, p2

    .line 2297
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;

    move-result-object v0

    .line 2300
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    const/16 v8, 0x300

    const/4 v12, 0x3

    move-object v0, p0

    move-object/from16 v1, p2

    move v5, v7

    move v7, v8

    move v8, v12

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    :goto_8e
    return-void
.end method

.method public handleCancelRequestBgRestricted(Ljava/lang/String;I)V
    .registers 3

    .line 2360
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->cancelRequestBgRestrictedIfNecessary(Ljava/lang/String;I)V

    return-void
.end method

.method public handleRequestBgRestricted(Ljava/lang/String;I)V
    .registers 3

    .line 2352
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->postRequestBgRestrictedIfNecessary(Ljava/lang/String;I)V

    return-void
.end method

.method public handleUidActive(I)V
    .registers 7

    .line 2745
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2746
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v1

    .line 2747
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2748
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    new-instance v4, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/AppRestrictionController;ILcom/android/server/usage/AppStandbyInternal;I)V

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V

    .line 2757
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public handleUidGone(I)V
    .registers 5

    .line 2370
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 2371
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUidGone(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public handleUidInactive(IZ)V
    .registers 8

    .line 2723
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mTmpRunnables:Ljava/util/ArrayList;

    .line 2724
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2725
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_f

    .line 2727
    monitor-exit v0

    return-void

    .line 2729
    :cond_f
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_29

    .line 2731
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    if-eqz v4, :cond_26

    .line 2733
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 2736
    :cond_29
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 2737
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_45

    .line 2738
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_33
    if-ge v2, p0, :cond_41

    .line 2739
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 2741
    :cond_41
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_45
    move-exception p0

    .line 2737
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public handleUidProcStateChanged(II)V
    .registers 6

    .line 2364
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 2365
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;->onUidProcStateChanged(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public hasForegroundServiceNotifications(I)Z
    .registers 2

    .line 2006
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotifications(I)Z

    move-result p0

    return p0
.end method

.method public hasForegroundServiceNotifications(Ljava/lang/String;I)Z
    .registers 3

    .line 1999
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotifications(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public hasForegroundServices(I)Z
    .registers 2

    .line 1992
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServices(I)Z

    move-result p0

    return p0
.end method

.method public hasForegroundServices(Ljava/lang/String;I)Z
    .registers 3

    .line 1985
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServices(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final initBgRestrictionExemptioFromSysConfig()V
    .registers 4

    .line 1568
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 1569
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getBgRestrictionExemption()Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    .line 1576
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 1578
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppRestrictionController;->loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    return-void
.end method

.method public final initRestrictionStates()V
    .registers 8

    .line 1603
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 1604
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_1a

    aget v4, v0, v3

    const/16 v5, 0x400

    const/4 v6, 0x2

    .line 1605
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUser(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1608
    :cond_1a
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->isTest()Z

    move-result v1

    if-nez v1, :cond_34

    .line 1610
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->scheduleLoadFromXml()V

    .line 1612
    array-length v1, v0

    :goto_28
    if-ge v2, v1, :cond_34

    aget v3, v0, v2

    .line 1613
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_34
    return-void
.end method

.method public final initRolesInInterest()V
    .registers 10

    .line 2922
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 2923
    sget-object v1, Lcom/android/server/am/AppRestrictionController;->ROLES_IN_INTEREST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_32

    aget-object v5, v1, v4

    .line 2924
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 2925
    array-length v6, v0

    move v7, v3

    :goto_21
    if-ge v7, v6, :cond_2f

    aget v8, v0, v7

    .line 2926
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 2927
    invoke-virtual {p0, v5, v8}, Lcom/android/server/am/AppRestrictionController;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_32
    return-void
.end method

.method public final initSystemModuleNames()V
    .registers 6

    .line 1619
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 1620
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 1624
    :cond_e
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1625
    :try_start_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ModuleInfo;

    .line 1626
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 1628
    :cond_2d
    monitor-exit v1

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public isAutoRestrictAbusiveAppEnabled()Z
    .registers 1

    .line 1881
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    return p0
.end method

.method public isBgAutoRestrictedBucketFeatureFlagEnabled()Z
    .registers 1

    .line 3357
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    return p0
.end method

.method public final isCarrierApp(Ljava/lang/String;)Z
    .registers 4

    .line 2884
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2885
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Ljava/util/List;

    if-nez v1, :cond_a

    .line 2886
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->fetchCarrierPrivilegedAppsCPL()V

    .line 2888
    :cond_a
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Ljava/util/List;

    if-eqz p0, :cond_14

    .line 2889
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_14
    const/4 p0, 0x0

    .line 2891
    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    .line 2892
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final isExemptedFromMARs(Ljava/lang/String;)Z
    .registers 3

    .line 2871
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mMARsExemptionList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2872
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final isExemptedFromSysConfig(Ljava/lang/String;)Z
    .registers 2

    .line 1598
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    if-eqz p0, :cond_c

    .line 1599
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isOnDeviceIdleAllowlist(I)Z
    .registers 3

    .line 2761
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 2763
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_17

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    .line 2764
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public isOnSystemDeviceIdleAllowlist(I)Z
    .registers 4

    .line 2768
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 2770
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    .line 2771
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method public final isRoleHeldByUid(Ljava/lang/String;I)Z
    .registers 4

    .line 2915
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2916
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_15

    .line 2917
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 2918
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final isSystemModule(Ljava/lang/String;)Z
    .registers 7

    .line 1632
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1633
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_13

    .line 1635
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1637
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_53

    .line 1640
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1643
    :try_start_1c
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v3
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_20} :catch_24

    if-eqz v3, :cond_24

    move v3, v1

    goto :goto_25

    :catch_24
    :cond_24
    move v3, v2

    :goto_25
    if-nez v3, :cond_42

    .line 1649
    :try_start_27
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 1654
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1655
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1654
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_3d} :catch_42

    if-eqz v0, :cond_40

    goto :goto_41

    :cond_40
    move v1, v2

    :goto_41
    move v3, v1

    .line 1660
    :catch_42
    :cond_42
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1661
    :try_start_45
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    monitor-exit v1

    return v3

    :catchall_50
    move-exception p0

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_50

    throw p0

    :catchall_53
    move-exception p0

    .line 1637
    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public final loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1582
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1583
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_2d

    .line 1584
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/high16 v2, 0x100000

    .line 1586
    :try_start_16
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_1d

    goto :goto_2a

    .line 1591
    :cond_1d
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_2a} :catch_2a

    :catch_2a
    :goto_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_2d
    return-void
.end method

.method public final logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    .line 2255
    invoke-virtual {v0, v1}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevelStatsd(I)I

    move-result v3

    move/from16 v4, p6

    .line 2256
    invoke-virtual {v0, v4}, Lcom/android/server/am/AppRestrictionController;->getThresholdStatsd(I)I

    move-result v4

    iget v5, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    .line 2257
    invoke-virtual {v0, v5}, Lcom/android/server/am/AppRestrictionController;->getTrackerTypeStatsd(I)I

    move-result v5

    .line 2258
    iget v6, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-ne v6, v8, :cond_1f

    iget-object v8, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    goto :goto_20

    :cond_1f
    move-object v8, v7

    :goto_20
    const/4 v9, 0x1

    if-ne v6, v9, :cond_26

    .line 2259
    iget-object v9, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    goto :goto_27

    :cond_26
    move-object v9, v7

    :goto_27
    const/4 v10, 0x6

    if-ne v6, v10, :cond_2d

    .line 2260
    iget-object v10, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    goto :goto_2e

    :cond_2d
    move-object v10, v7

    :goto_2e
    const/4 v11, 0x7

    if-ne v6, v11, :cond_37

    .line 2261
    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    move-object v11, v2

    move/from16 v2, p2

    goto :goto_3a

    :cond_37
    move/from16 v2, p2

    move-object v11, v7

    .line 2262
    :goto_3a
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/AppRestrictionController;->getExemptionReasonStatsd(II)I

    move-result v12

    .line 2263
    invoke-virtual {v0, v1}, Lcom/android/server/am/AppRestrictionController;->getOptimizationLevelStatsd(I)I

    move-result v13

    .line 2264
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/AppRestrictionController;->getTargetSdkStatsd(Ljava/lang/String;)I

    move-result v14

    .line 2265
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v15

    move/from16 v1, p3

    .line 2266
    invoke-virtual {v0, v1}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevelStatsd(I)I

    move-result v16

    const/16 v0, 0x1b9

    move/from16 v1, p2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    move v9, v12

    move v10, v13

    move v11, v14

    move v12, v15

    move/from16 v13, v16

    .line 2254
    invoke-static/range {v0 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII[B[B[B[BIIIZI)V

    return-void
.end method

.method public final onLockedBootCompleted()V
    .registers 4

    .line 3351
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 3352
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker;->onLockedBootCompleted()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .registers 3

    .line 3340
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removePackage(Ljava/lang/String;I)V

    return-void
.end method

.method public final onPropertiesChanged(Ljava/lang/String;)V
    .registers 5

    .line 3361
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 3362
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onPropertiesChanged(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 10

    .line 2934
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 2936
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2937
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    if-eqz v0, :cond_3a

    .line 2939
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    .line 2940
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide/32 v4, 0xc8000

    .line 2941
    invoke-virtual {v2, v3, v4, v5, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 2944
    :cond_3a
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2945
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_45
    if-ltz v2, :cond_8a

    .line 2946
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2947
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eq v4, p2, :cond_54

    goto :goto_87

    .line 2950
    :cond_54
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2951
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2952
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-ltz v5, :cond_7b

    if-nez v6, :cond_87

    .line 2955
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2956
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 2957
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_87

    :cond_7b
    if-eqz v6, :cond_87

    .line 2961
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2962
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_87
    :goto_87
    add-int/lit8 v2, v2, -0x1

    goto :goto_45

    .line 2965
    :cond_8a
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_90
    if-ltz p2, :cond_ac

    .line 2966
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2967
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2968
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_90

    .line 2970
    :cond_ac
    monitor-exit v0

    return-void

    :catchall_ae
    move-exception p0

    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_3d .. :try_end_b0} :catchall_ae

    throw p0
.end method

.method public onSystemReady()V
    .registers 5

    .line 1529
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBgExecutor:Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1531
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->start()V

    .line 1532
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->initBgRestrictionExemptioFromSysConfig()V

    .line 1533
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->initRestrictionStates()V

    .line 1534
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->initSystemModuleNames()V

    .line 1535
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->initRolesInInterest()V

    .line 1536
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->registerForUidObservers()V

    .line 1537
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->registerForSystemBroadcasts()V

    .line 1538
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->onSystemReady()V

    .line 1539
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStateTracker()Lcom/android/server/AppStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBackgroundRestrictionListener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    invoke-interface {v0, v1}, Lcom/android/server/AppStateTracker;->addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V

    .line 1541
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppIdleStateChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    invoke-interface {v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 1542
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgExecutor:Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 1544
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    new-instance v2, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController$Injector;->scheduleInitTrackers(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onUidAdded(I)V
    .registers 5

    const/16 v0, 0x600

    const/4 v1, 0x0

    .line 3332
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    .line 3334
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    if-ge v1, v0, :cond_1c

    .line 3335
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUidAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public final onUidRemoved(I)V
    .registers 5

    .line 3344
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 3345
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUidRemoved(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3347
    :cond_17
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeUid(I)V

    return-void
.end method

.method public final onUserAdded(I)V
    .registers 5

    .line 3305
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 3306
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public final onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 6

    .line 3367
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/32 v1, 0xc8000

    .line 3368
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    .line 3369
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_24

    .line 3370
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;->onUserInteractionStarted(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_24
    return-void
.end method

.method public final onUserRemoved(I)V
    .registers 5

    .line 3325
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 3326
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserRemoved(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3328
    :cond_17
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeUser(I)V

    return-void
.end method

.method public final onUserStarted(I)V
    .registers 5

    const/16 v0, 0x400

    const/4 v1, 0x2

    .line 3311
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUser(III)V

    .line 3313
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1d

    .line 3314
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserStarted(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public final onUserStopped(I)V
    .registers 5

    .line 3319
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 3320
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserStopped(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public postLongRunningFgsIfNecessary(Ljava/lang/String;I)V
    .registers 3

    .line 3013
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->postLongRunningFgsIfNecessary(Ljava/lang/String;I)V

    return-void
.end method

.method public refreshAppRestrictionLevelForUid(IIIZ)V
    .registers 23

    move-object/from16 v9, p0

    .line 1721
    iget-object v0, v9, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move/from16 v10, p1

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    .line 1722
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 1725
    :cond_15
    iget-object v0, v9, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v12

    .line 1726
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 1727
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1728
    array-length v8, v11

    const/4 v0, 0x0

    move v7, v0

    :goto_26
    if-ge v7, v8, :cond_67

    aget-object v16, v11, v7

    const/4 v6, 0x0

    move-object v1, v12

    move-object/from16 v2, v16

    move v3, v13

    move-wide v4, v14

    .line 1729
    invoke-interface/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v17

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, p1

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, p4

    .line 1730
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;

    move-result-object v0

    .line 1737
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v5, v17

    move/from16 v16, v7

    move/from16 v7, p2

    move/from16 v17, v8

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    add-int/lit8 v7, v16, 0x1

    move/from16 v8, v17

    goto :goto_26

    :cond_67
    return-void
.end method

.method public final refreshAppRestrictionLevelForUser(III)V
    .registers 17

    move-object v9, p0

    move v10, p1

    .line 1689
    iget-object v0, v9, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v0

    .line 1690
    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBuckets(I)Ljava/util/List;

    move-result-object v0

    .line 1691
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_13

    return-void

    .line 1698
    :cond_13
    iget-object v1, v9, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v11

    .line 1699
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/usage/AppStandbyInfo;

    .line 1700
    iget-object v0, v7, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    const-wide/32 v1, 0xc8000

    invoke-virtual {v11, v0, v1, v2, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    if-gez v8, :cond_56

    .line 1703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1706
    :cond_56
    iget-object v3, v7, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    iget v4, v7, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;

    move-result-object v0

    .line 1714
    iget-object v1, v7, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    iget v5, v7, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v8

    move v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    goto :goto_1d

    :cond_7e
    return-void
.end method

.method public final registerForSystemBroadcasts()V
    .registers 12

    .line 3276
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 3277
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 3278
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 3279
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 3280
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3281
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3282
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    .line 3283
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 3284
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.UID_REMOVED"

    .line 3285
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3286
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3287
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 3288
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3289
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget-object v10, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final registerForUidObservers()V
    .registers 5

    .line 1668
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getIActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v1, 0xf

    const/4 v2, 0x4

    const-string v3, "android"

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_10

    :catch_10
    return-void
.end method

.method public resetRestrictionSettings()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1553
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1554
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->reset()V

    .line 1555
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 1556
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->initRestrictionStates()V

    return-void

    :catchall_d
    move-exception p0

    .line 1555
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method

.method public setDeviceIdleAllowlist([I[I)V
    .registers 3

    .line 2775
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    .line 2776
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    return-void
.end method

.method public tearDown()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1561
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1562
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->unregisterForUidObservers()V

    .line 1563
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->unregisterForSystemBroadcasts()V

    .line 1564
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeXml()V

    return-void
.end method

.method public final unregisterForSystemBroadcasts()V
    .registers 3

    .line 3294
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3295
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final unregisterForUidObservers()V
    .registers 2

    .line 1678
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getIActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Landroid/app/IUidObserver;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
