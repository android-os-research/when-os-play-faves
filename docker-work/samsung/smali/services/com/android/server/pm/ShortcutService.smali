.class public Lcom/android/server/pm/ShortcutService;
.super Landroid/content/pm/IShortcutService$Stub;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutService$MyShellCommand;,
        Lcom/android/server/pm/ShortcutService$CommandException;,
        Lcom/android/server/pm/ShortcutService$DumpFilter;,
        Lcom/android/server/pm/ShortcutService$LocalService;,
        Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;,
        Lcom/android/server/pm/ShortcutService$Lifecycle;,
        Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;,
        Lcom/android/server/pm/ShortcutService$ShortcutOperation;,
        Lcom/android/server/pm/ShortcutService$Stats;,
        Lcom/android/server/pm/ShortcutService$SettingChangeObserver;,
        Lcom/android/server/pm/ShortcutService$ConfigConstants;
    }
.end annotation


# static fields
.field public static ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static ACTIVITY_NOT_INSTALLED:Ljava/util/function/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final CALLBACK_DELAY:J = 0x64L

.field public static final DEBUG:Z = false

.field public static final DEBUG_LOAD:Z = false

.field public static final DEBUG_PROCSTATE:Z = false

.field public static final DEBUG_REBOOT:Z = false

.field public static final DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_ICON_PERSIST_QUALITY:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_MAX_ICON_DIMENSION_DP:I = 0x60
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP:I = 0x30
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_MAX_SHORTCUTS_PER_ACTIVITY:I = 0xf
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_MAX_SHORTCUTS_PER_APP:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_MAX_UPDATES_PER_INTERVAL:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_RESET_INTERVAL_SEC:J = 0x15180L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_SAVE_DELAY_MS:I = 0xbb8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DIRECTORY_BITMAPS:Ljava/lang/String; = "bitmaps"

.field public static final DIRECTORY_DUMP:Ljava/lang/String; = "shortcut_dump"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DIRECTORY_PER_USER:Ljava/lang/String; = "shortcut_service"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DUMMY_MAIN_ACTIVITY:Ljava/lang/String; = "android.__dummy__"

.field public static EMPTY_RESOLVE_INFO:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILENAME_BASE_STATE:Ljava/lang/String; = "shortcut_service.xml"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FILENAME_USER_PACKAGES:Ljava/lang/String; = "shortcuts.xml"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_ICON_SIZE:Ljava/lang/String; = "iconSize"

.field public static final KEY_LOW_RAM:Ljava/lang/String; = "lowRam"

.field public static final KEY_SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final LAUNCHER_INTENT_CATEGORY:Ljava/lang/String; = "android.intent.category.LAUNCHER"

.field public static final OPERATION_ADD:I = 0x1

.field public static final OPERATION_SET:I = 0x0

.field public static final OPERATION_UPDATE:I = 0x2

.field public static final PACKAGE_MATCH_FLAGS:I = 0x200c2200

.field public static PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROCESS_STATE_FOREGROUND_THRESHOLD:I = 0x5

.field public static final SYSTEM_APP_MASK:I = 0x81

.field public static final TAG:Ljava/lang/String; = "ShortcutService"

.field public static final TAG_LAST_RESET_TIME:Ljava/lang/String; = "last_reset_time"

.field public static final TAG_ROOT:Ljava/lang/String; = "root"

.field public static final sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mChooserActivity:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mDirtyUserIds:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mIPackageManager:Landroid/content/pm/IPackageManager;

.field public mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public mIconPersistQuality:I

.field public final mIsAppSearchEnabled:Z

.field public mLastLockedUser:I

.field public mLastWtfStacktrace:Ljava/lang/Exception;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mMaxIconDimension:I

.field public mMaxShortcuts:I

.field public mMaxShortcutsPerApp:I

.field public mMaxUpdatesPerInterval:I

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mNonPersistentUsersLock:Ljava/lang/Object;

.field public final mOnRoleHoldersChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageMonitor:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mRawLastResetTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mResetInterval:J

.field public final mRoleManager:Landroid/app/role/RoleManager;

.field public mSaveDelayMillis:I

.field public final mSaveDirtyInfoRunner:Ljava/lang/Runnable;

.field public mSettingChangeObserver:Lcom/android/server/pm/ShortcutService$SettingChangeObserver;

.field public final mShortcutChangeCallbacks:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/LauncherApps$ShortcutChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

.field public final mShortcutNonPersistentUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNonPersistentUsersLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/ShortcutNonPersistentUser;",
            ">;"
        }
    .end annotation
.end field

.field public final mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

.field public final mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mStatLogger:Lcom/android/internal/util/StatLogger;

.field public final mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mUidObserver:Landroid/app/IUidObserver;

.field public final mUidState:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mUnlockedUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUnlockedUsers"
        }
    .end annotation
.end field

.field public final mUriGrantsManager:Landroid/app/IUriGrantsManager;

.field public final mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public final mUriPermissionOwner:Landroid/os/IBinder;

.field public final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;"
        }
    .end annotation
.end field

.field public mWtfCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-2tWlosft7JAuH_bTw_sajaTbJ8(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->lambda$getBackupPayload$17(Lcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1tH63nY-sgyyGqikQMHMlmUedNo(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Landroid/content/pm/ShortcutInfo;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutService;->lambda$updateShortcuts$5(Landroid/content/pm/ShortcutInfo;Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3xoH0Z4Jh1RmDA23RI0q8s0hVb0(Lcom/android/server/pm/ShortcutService;JI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->lambda$handleUnlockUser$1(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$98qMFDRLcAaMpLcaHxqfweCzLu4(Landroid/content/pm/ResolveInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->lambda$static$0(Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AgXABlGFLI6Ihc6IKGOP_utAX_w(Landroid/util/ArraySet;Landroid/content/pm/ShortcutInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->lambda$prepareChangedShortcuts$24(Landroid/util/ArraySet;Landroid/content/pm/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$C-jrGsS__lrknDdah250gi46ojo(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->lambda$getBackupShortcut$27(Lcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CS7ZblwITawe-Ziv9iQgLqP7uMg(Lcom/android/server/pm/ShortcutService;ILandroid/content/pm/ResolveInfo;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->lambda$queryActivities$16(ILandroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DVlclTb8XXOMuM2yYmogpc2NJeA(Ljava/util/List;Landroid/content/IntentFilter;Lcom/android/server/pm/ShortcutPackage;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->lambda$getShareTargets$8(Ljava/util/List;Landroid/content/IntentFilter;Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FVsIuyWiSP5Fdz0W4p2w_58Xh9c(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->lambda$applyRestore$21(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J8Vx3SGt3YaCk-d2v40uymKEys0(Lcom/android/server/pm/ShortcutPackage;Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->lambda$cleanUpPackageLocked$12(Lcom/android/server/pm/ShortcutPackage;Lcom/android/server/pm/ShortcutLauncher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L7M8jQORN5Qfb9Ko6qECTY66-Oo(Landroid/content/pm/ShortcutInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->lambda$setDynamicShortcuts$4(Landroid/content/pm/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LucJpHgHaWFfXOmpRNNkySX-X1E(Lcom/android/server/pm/ShortcutService;ILjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ShortcutService;->lambda$notifyShortcutChangeCallbacks$3(ILjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MK7qwMYvx5oq-mBcoIvNy7BghpQ(Lcom/android/server/pm/ShortcutService;Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->lambda$checkPackageChanges$14(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RuXfBaTXLIYNxLiHJ3rAeCiDspc(ILandroid/content/pm/ShortcutInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->lambda$getShortcuts$7(ILandroid/content/pm/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Uq4xkry_E3aTrGmgDxecqUPPX1A(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZLcom/android/server/pm/ShortcutUser;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutService;->lambda$cleanUpPackageForAllLoadedUsers$9(Ljava/lang/String;IZLcom/android/server/pm/ShortcutUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_o721apLd4m1LuuKrk5gsKdbKlQ(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->lambda$cleanUpPackageLocked$11(Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b_9Gr6LR-i79oux3LnAsLoxMukY(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bsZqd2FDinA3NLxn8r-Qy0ovA-0(Lcom/android/server/pm/ShortcutUser;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->lambda$waitForBitmapSavesForTest$23(Lcom/android/server/pm/ShortcutUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eogKiPC6Yfai5DjMiDpgEB-TMcw(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->lambda$getBackupPayload$19(Lcom/android/server/pm/ShortcutLauncher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hXvzXAFW_7d13VfDpm2Xlo_CHiI(Lcom/android/server/pm/ShortcutUser;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->lambda$verifyStatesInner$22(Lcom/android/server/pm/ShortcutUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i1jD6WSwItPf7gRKHpEHZwqjukg(Lcom/android/server/pm/ShortcutUser;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->lambda$handleLocaleChanged$13(Lcom/android/server/pm/ShortcutUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lUVf8O-q_LxMcFG9uJOIJqKzgmE(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackage;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->lambda$getBitmapPathList$26(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pEtfLZ-rabO3tW624bxRaDwpwl0(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->lambda$getBackupPayload$18(Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$suU3gahhXmjBjkXNs1NpUtetoFY(Landroid/util/ArraySet;Landroid/content/pm/ShortcutInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->lambda$prepareChangedShortcuts$25(Landroid/util/ArraySet;Landroid/content/pm/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tcttSpgJ-nArv73eLFTM5eGiCq8(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->lambda$applyRestore$20(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u3FOxqGBnNkJQphxurehYp7pJsw(Ljava/lang/String;ILcom/android/server/pm/ShortcutLauncher;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->lambda$cleanUpPackageLocked$10(Ljava/lang/String;ILcom/android/server/pm/ShortcutLauncher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ukPbXRXhb-nZtBOQtbLDQsKXKw8(Landroid/content/pm/ShortcutInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->lambda$removeAllDynamicShortcuts$6(Landroid/content/pm/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wJzh0BwgFQVbqRjl-RxAK1Tvz1o(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->lambda$getBackupShortcut$28(Lcom/android/server/pm/ShortcutLauncher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xzx_7n_mrcSi1GqSkswffUdehX8(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;ILandroid/content/pm/ApplicationInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->lambda$rescanUpdatedPackagesLocked$15(Lcom/android/server/pm/ShortcutUser;ILandroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zijvvwSyhVkExww_yiUjY4-zTQw(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->lambda$notifyListenerRunnable$2(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/android/server/pm/ShortcutService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/ShortcutService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIPackageManager(Lcom/android/server/pm/ShortcutService;)Landroid/content/pm/IPackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/pm/ShortcutService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRoleManager(Lcom/android/server/pm/ShortcutService;)Landroid/app/role/RoleManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mRoleManager:Landroid/app/role/RoleManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSaveDirtyInfoRunner(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortcutChangeCallbacks(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutChangeCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShutdown(Lcom/android/server/pm/ShortcutService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUriGrantsManager(Lcom/android/server/pm/ShortcutService;)Landroid/app/IUriGrantsManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManager:Landroid/app/IUriGrantsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUriPermissionOwner(Lcom/android/server/pm/ShortcutService;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUriPermissionOwner:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcleanUpPackageForAllLoadedUsers(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageAdded(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageChanged(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageDataCleared(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageDataCleared(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageRemoved(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageUpdateFinished(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageUpdateFinished(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mloadConfigurationLocked(Lcom/android/server/pm/ShortcutService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprepareChangedShortcuts(Lcom/android/server/pm/ShortcutService;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutService;->prepareChangedShortcuts(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mrequestPinItem(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetReturnedByServer(Lcom/android/server/pm/ShortcutService;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->setReturnedByServer(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mverifyStatesForce(Lcom/android/server/pm/ShortcutService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesForce()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsIsEmergencyMode()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smisInstalled(Landroid/content/pm/PackageInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisSystem(Landroid/content/pm/ApplicationInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isSystem(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 222
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    .line 318
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    .line 355
    new-instance v0, Lcom/android/server/pm/ShortcutService$1;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate;

    .line 361
    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda25;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_INSTALLED:Ljava/util/function/Predicate;

    .line 365
    new-instance v0, Lcom/android/server/pm/ShortcutService$2;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 540
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 30
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 544
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;-><init>()V

    .line 344
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-direct {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 349
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    .line 350
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mNonPersistentUsersLock:Ljava/lang/Object;

    .line 373
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    .line 376
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mShortcutChangeCallbacks:Ljava/util/ArrayList;

    .line 386
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 394
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    .line 441
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    .line 444
    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    .line 447
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    .line 450
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 451
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 456
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 483
    new-instance v2, Lcom/android/internal/util/StatLogger;

    const-string v9, "getHomeActivities()"

    const-string v10, "Launcher permission check"

    const-string/jumbo v11, "getPackageInfo()"

    const-string/jumbo v12, "getPackageInfo(SIG)"

    const-string v13, "getApplicationInfo"

    const-string v14, "cleanupDanglingBitmaps"

    const-string v15, "getActivity+metadata"

    const-string v16, "getInstalledPackages"

    const-string v17, "checkPackageChanges"

    const-string v18, "getApplicationResources"

    const-string/jumbo v19, "resourceNameLookup"

    const-string v20, "getLauncherActivity"

    const-string v21, "checkLauncherActivity"

    const-string/jumbo v22, "isActivityEnabled"

    const-string/jumbo v23, "packageUpdateCheck"

    const-string v24, "asyncPreloadUserDelay"

    const-string v25, "getDefaultLauncher()"

    filled-new-array/range {v9 .. v25}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 520
    iput v8, v0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    .line 526
    new-instance v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 624
    new-instance v9, Lcom/android/server/pm/ShortcutService$3;

    invoke-direct {v9, v0}, Lcom/android/server/pm/ShortcutService$3;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v9, v0, Lcom/android/server/pm/ShortcutService;->mOnRoleHoldersChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    .line 663
    new-instance v10, Lcom/android/server/pm/ShortcutService$4;

    invoke-direct {v10, v0}, Lcom/android/server/pm/ShortcutService$4;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v10, v0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1273
    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    const/4 v2, -0x1

    .line 1395
    iput v2, v0, Lcom/android/server/pm/ShortcutService;->mLastLockedUser:I

    .line 3807
    new-instance v11, Lcom/android/server/pm/ShortcutService$5;

    invoke-direct {v11, v0}, Lcom/android/server/pm/ShortcutService$5;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v11, v0, Lcom/android/server/pm/ShortcutService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3842
    new-instance v2, Lcom/android/server/pm/ShortcutService$6;

    invoke-direct {v2, v0}, Lcom/android/server/pm/ShortcutService$6;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    .line 545
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, Landroid/content/Context;

    iput-object v7, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 546
    const-class v4, Landroid/content/pm/ShortcutServiceInternal;

    new-instance v5, Lcom/android/server/pm/ShortcutService$LocalService;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$LocalService-IA;)V

    invoke-static {v4, v5}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 547
    new-instance v12, Landroid/os/Handler;

    move-object/from16 v4, p2

    invoke-direct {v12, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v12, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    .line 548
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 549
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 550
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 549
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 551
    const-class v4, Lcom/android/server/pm/UserManagerInternal;

    .line 552
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerInternal;

    .line 551
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 553
    const-class v4, Landroid/app/usage/UsageStatsManagerInternal;

    .line 554
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStatsManagerInternal;

    .line 553
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 555
    const-class v4, Landroid/app/ActivityManagerInternal;

    .line 556
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal;

    .line 555
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Landroid/app/ActivityManagerInternal;

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 558
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Landroid/app/IUriGrantsManager;

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManager:Landroid/app/IUriGrantsManager;

    .line 559
    const-class v4, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 560
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 559
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const-string v5, "ShortcutService"

    .line 561
    invoke-interface {v4, v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mUriPermissionOwner:Landroid/os/IBinder;

    .line 562
    const-class v4, Landroid/app/role/RoleManager;

    invoke-virtual {v7, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/role/RoleManager;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Landroid/app/role/RoleManager;

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 564
    new-instance v4, Lcom/android/server/pm/ShortcutRequestPinProcessor;

    invoke-direct {v4, v0, v1}, Lcom/android/server/pm/ShortcutRequestPinProcessor;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 565
    new-instance v1, Lcom/android/server/pm/ShortcutDumpFiles;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutDumpFiles;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v1, "systemui"

    const-string/jumbo v4, "shortcut_appsearch_integration"

    .line 566
    invoke-static {v1, v4, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_171

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    move-result v1

    if-nez v1, :cond_171

    goto :goto_172

    :cond_171
    move v3, v8

    :goto_172
    iput-boolean v3, v0, Lcom/android/server/pm/ShortcutService;->mIsAppSearchEnabled:Z

    if-eqz p3, :cond_177

    return-void

    .line 578
    :cond_177
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 579
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 580
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 581
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 582
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 583
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/16 v13, 0x3e8

    .line 584
    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 585
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 588
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 589
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 591
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v1, p1

    move-object v2, v11

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 595
    new-instance v1, Lcom/android/server/pm/ShortcutService$SettingChangeObserver;

    invoke-direct {v1, v0, v7}, Lcom/android/server/pm/ShortcutService$SettingChangeObserver;-><init>(Lcom/android/server/pm/ShortcutService;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mSettingChangeObserver:Lcom/android/server/pm/ShortcutService$SettingChangeObserver;

    .line 596
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_mode"

    .line 597
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/pm/ShortcutService;->mSettingChangeObserver:Lcom/android/server/pm/ShortcutService$SettingChangeObserver;

    .line 596
    invoke-virtual {v1, v2, v8, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v1, 0x3

    .line 601
    invoke-virtual {v0, v10, v1}, Lcom/android/server/pm/ShortcutService;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    .line 604
    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutService;->injectRegisterRoleHoldersListener(Landroid/app/role/OnRoleHoldersChangedListener;)V

    return-void
.end method

.method public static formatTime(J)Ljava/lang/String;
    .registers 2

    .line 4963
    invoke-static {p0, p1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isClockValid(J)Z
    .registers 4

    const-wide/32 v0, 0x54a48e00

    cmp-long p0, p0, v0

    if-ltz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static isEphemeralApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 4322
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isInstalled(Landroid/content/pm/ActivityInfo;)Z
    .registers 1

    if-eqz p0, :cond_c

    .line 4330
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isInstalled(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    if-eqz p0, :cond_17

    .line 4314
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_e
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public static isInstalled(Landroid/content/pm/PackageInfo;)Z
    .registers 1

    if-eqz p0, :cond_c

    .line 4326
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isInstalledOrNull(Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;
    .registers 2

    .line 4342
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static isInstalledOrNull(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 4334
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static isInstalledOrNull(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .registers 2

    .line 4338
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static isSystem(Landroid/content/pm/ActivityInfo;)Z
    .registers 1

    if-eqz p0, :cond_c

    .line 4305
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isSystem(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isSystem(Landroid/content/pm/ApplicationInfo;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 4309
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x81

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic lambda$applyRestore$20(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "Start time: "

    .line 4635
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4636
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->dumpCurrentTime(Ljava/io/PrintWriter;)V

    .line 4637
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private synthetic lambda$applyRestore$21(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "Finish time: "

    .line 4658
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4659
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->dumpCurrentTime(Ljava/io/PrintWriter;)V

    .line 4660
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private synthetic lambda$checkPackageChanges$14(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 5

    .line 3940
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 3943
    :cond_b
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_20

    .line 3948
    invoke-static {p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(Lcom/android/server/pm/ShortcutPackageItem;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method

.method private synthetic lambda$cleanUpPackageForAllLoadedUsers$9(Ljava/lang/String;IZLcom/android/server/pm/ShortcutUser;)V
    .registers 5

    .line 2941
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result p4

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public static synthetic lambda$cleanUpPackageLocked$10(Ljava/lang/String;ILcom/android/server/pm/ShortcutLauncher;)V
    .registers 3

    .line 2972
    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/ShortcutLauncher;->cleanUpPackage(Ljava/lang/String;I)Z

    return-void
.end method

.method public static synthetic lambda$cleanUpPackageLocked$11(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 1

    .line 2976
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    return-void
.end method

.method public static synthetic lambda$cleanUpPackageLocked$12(Lcom/android/server/pm/ShortcutPackage;Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 2

    if-eqz p0, :cond_5

    .line 2992
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->removeShortcutPackageItem()V

    :cond_5
    if-eqz p1, :cond_a

    .line 2995
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->removeShortcutPackageItem()V

    :cond_a
    return-void
.end method

.method public static synthetic lambda$getBackupPayload$17(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 1

    .line 4590
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->refreshPackageSignatureAndSave()V

    return-void
.end method

.method public static synthetic lambda$getBackupPayload$18(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4593
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutPackage;->rescanPackageIfNeeded(ZZ)Z

    return-void
.end method

.method public static synthetic lambda$getBackupPayload$19(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 1

    .line 4597
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->ensurePackageInfo()V

    return-void
.end method

.method public static synthetic lambda$getBackupShortcut$27(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 1

    .line 5700
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->refreshPackageSignatureAndSave()V

    return-void
.end method

.method public static synthetic lambda$getBackupShortcut$28(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 1

    .line 5701
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->ensurePackageInfo()V

    return-void
.end method

.method public static synthetic lambda$getBitmapPathList$26(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackage;)V
    .registers 6

    .line 5667
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->semGetUsedBitmapFiles()Landroid/util/ArraySet;

    move-result-object v0

    .line 5669
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5671
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_30
    return-void
.end method

.method public static synthetic lambda$getShareTargets$8(Ljava/util/List;Landroid/content/IntentFilter;Lcom/android/server/pm/ShortcutPackage;)V
    .registers 3

    .line 2640
    invoke-virtual {p2, p1}, Lcom/android/server/pm/ShortcutPackage;->getMatchingShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic lambda$getShortcuts$7(ILandroid/content/pm/ShortcutInfo;)Z
    .registers 3

    .line 2621
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2622
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public static synthetic lambda$handleLocaleChanged$13(Lcom/android/server/pm/ShortcutUser;)V
    .registers 1

    .line 3832
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange()V

    return-void
.end method

.method private synthetic lambda$handleUnlockUser$1(JI)V
    .registers 8

    const-string/jumbo v0, "shortcutHandleUnlockUser"

    const-wide/32 v1, 0x80000

    .line 801
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v3, 0xf

    .line 803
    :try_start_e
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 804
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 805
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 806
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_19
    move-exception p0

    .line 805
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method private synthetic lambda$notifyListenerRunnable$2(ILjava/lang/String;)V
    .registers 5

    .line 1893
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_2a

    .line 1894
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1895
    monitor-exit v0

    return-void

    .line 1898
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1899
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_27

    .line 1901
    :try_start_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_19
    if-ltz p0, :cond_2a

    .line 1902
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    invoke-interface {v0, p2, p1}, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;->onShortcutChanged(Ljava/lang/String;I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_2a

    add-int/lit8 p0, p0, -0x1

    goto :goto_19

    :catchall_27
    move-exception p0

    .line 1899
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2a} :catch_2a

    :catch_2a
    :cond_2a
    return-void
.end method

.method private synthetic lambda$notifyShortcutChangeCallbacks$3(ILjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .registers 7

    .line 1919
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3f

    .line 1920
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1921
    monitor-exit v0

    return-void

    .line 1924
    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutChangeCallbacks:Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1925
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_3c

    .line 1926
    :try_start_13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_19
    if-ltz p0, :cond_3f

    .line 1927
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1928
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    invoke-interface {v0, p3, p2, p4}, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;->onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 1930
    :cond_2a
    invoke-static {p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1931
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    invoke-interface {v0, p3, p5, p4}, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;->onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_39} :catch_3f

    :cond_39
    add-int/lit8 p0, p0, -0x1

    goto :goto_19

    :catchall_3c
    move-exception p0

    .line 1925
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw p0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3f} :catch_3f

    :catch_3f
    :cond_3f
    return-void
.end method

.method public static synthetic lambda$prepareChangedShortcuts$24(Landroid/util/ArraySet;Landroid/content/pm/ShortcutInfo;)Z
    .registers 2

    .line 5528
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$prepareChangedShortcuts$25(Landroid/util/ArraySet;Landroid/content/pm/ShortcutInfo;)Z
    .registers 2

    .line 5532
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$queryActivities$16(ILandroid/content/pm/ResolveInfo;)Z
    .registers 4

    .line 4415
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4416
    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->isSystem(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->isEnabled(Landroid/content/pm/ActivityInfo;I)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static synthetic lambda$removeAllDynamicShortcuts$6(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2

    .line 2555
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2556
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p0

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private synthetic lambda$rescanUpdatedPackagesLocked$15(Lcom/android/server/pm/ShortcutUser;ILandroid/content/pm/ApplicationInfo;)V
    .registers 5

    .line 3982
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 3984
    iget-object p0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$setDynamicShortcuts$4(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2

    .line 2104
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2105
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p0

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static synthetic lambda$static$0(Landroid/content/pm/ResolveInfo;)Z
    .registers 1

    .line 362
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$updateShortcuts$5(Landroid/content/pm/ShortcutInfo;Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Landroid/content/pm/ShortcutInfo;)V
    .registers 8

    if-eqz p4, :cond_64

    .line 2175
    invoke-virtual {p4}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_64

    .line 2179
    :cond_9
    invoke-virtual {p4}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    const-string v2, "ShortcutService"

    if-eq v0, v1, :cond_1a

    const-string v0, "ShortcutInfo.enabled cannot be changed with updateShortcuts()"

    .line 2180
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    :cond_1a
    invoke-virtual {p4}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v1

    if-eq v0, v1, :cond_29

    const-string v0, "ShortcutInfo.longLived cannot be changed with updateShortcuts()"

    .line 2185
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :cond_29
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasRank()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2194
    invoke-virtual {p4}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    .line 2195
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    .line 2198
    :cond_39
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    if-eqz v0, :cond_47

    .line 2200
    invoke-virtual {p2, p4}, Lcom/android/server/pm/ShortcutPackageItem;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 2204
    :cond_47
    invoke-virtual {p4, p1}, Landroid/content/pm/ShortcutInfo;->copyNonNullFieldsFrom(Landroid/content/pm/ShortcutInfo;)V

    .line 2205
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    if-eqz v0, :cond_56

    .line 2208
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcutLocked(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V

    :cond_56
    if-nez v0, :cond_5e

    .line 2213
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result p1

    if-eqz p1, :cond_61

    .line 2214
    :cond_5e
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 2217
    :cond_61
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_64
    :goto_64
    return-void
.end method

.method public static synthetic lambda$verifyStatesInner$22(Lcom/android/server/pm/ShortcutUser;)V
    .registers 2

    .line 5489
    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda29;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$waitForBitmapSavesForTest$23(Lcom/android/server/pm/ShortcutUser;)V
    .registers 2

    .line 5497
    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda28;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static parseBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Z
    .registers 4

    .line 939
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static parseBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z
    .registers 5

    int-to-long v0, p2

    .line 943
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide p0

    const-wide/16 v0, 0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static parseComponentNameAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 2

    .line 973
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 974
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 977
    :cond_c
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static parseDumpArgs([Ljava/lang/String;)Lcom/android/server/pm/ShortcutService$DumpFilter;
    .registers 7

    .line 4698
    new-instance v0, Lcom/android/server/pm/ShortcutService$DumpFilter;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    const/4 v1, 0x0

    move v2, v1

    .line 4704
    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_fe

    add-int/lit8 v3, v2, 0x1

    .line 4705
    aget-object v2, p0, v2

    const-string v4, "-c"

    .line 4707
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1f

    .line 4708
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpCheckIn(Z)V

    goto/16 :goto_fb

    :cond_1f
    const-string v4, "--checkin"

    .line 4711
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 4712
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpCheckIn(Z)V

    .line 4713
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setCheckInClear(Z)V

    goto/16 :goto_fb

    :cond_2f
    const-string v4, "-a"

    .line 4716
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f5

    const-string v4, "--all"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    goto/16 :goto_f5

    :cond_41
    const-string v4, "-u"

    .line 4721
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f1

    const-string v4, "--uid"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    goto/16 :goto_f1

    :cond_53
    const-string v4, "-f"

    .line 4725
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ed

    const-string v4, "--files"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    goto/16 :goto_ed

    :cond_65
    const-string v4, "-n"

    .line 4729
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e9

    const-string v4, "--no-main"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    goto/16 :goto_e9

    :cond_77
    const-string v4, "--user"

    .line 4733
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 4734
    array-length v2, p0

    if-ge v3, v2, :cond_98

    add-int/lit8 v2, v3, 0x1

    .line 4738
    :try_start_84
    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addUser(I)V
    :try_end_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_84 .. :try_end_8d} :catch_8f

    goto/16 :goto_a

    :catch_8f
    move-exception p0

    .line 4740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid user ID"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 4735
    :cond_98
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing user ID for --user"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a0
    const-string v4, "-p"

    .line 4744
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d2

    const-string v4, "--package"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    goto :goto_d2

    :cond_b1
    const-string v1, "-"

    .line 4752
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_bb

    move v2, v3

    goto :goto_fe

    .line 4753
    :cond_bb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4745
    :cond_d2
    :goto_d2
    array-length v2, p0

    if-ge v3, v2, :cond_e1

    add-int/lit8 v2, v3, 0x1

    .line 4748
    aget-object v3, p0, v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addPackageRegex(Ljava/lang/String;)V

    .line 4749
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpDetails(Z)V

    goto/16 :goto_a

    .line 4746
    :cond_e1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing package name for --package"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4730
    :cond_e9
    :goto_e9
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpMain(Z)V

    goto :goto_fb

    .line 4726
    :cond_ed
    :goto_ed
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpFiles(Z)V

    goto :goto_fb

    .line 4722
    :cond_f1
    :goto_f1
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpUid(Z)V

    goto :goto_fb

    .line 4717
    :cond_f5
    :goto_f5
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpUid(Z)V

    .line 4718
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpFiles(Z)V

    :goto_fb
    move v2, v3

    goto/16 :goto_a

    .line 4757
    :cond_fe
    :goto_fe
    array-length v1, p0

    if-ge v2, v1, :cond_10a

    add-int/lit8 v1, v2, 0x1

    .line 4758
    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addPackage(Ljava/lang/String;)V

    move v2, v1

    goto :goto_fe

    :cond_10a
    return-object v0
.end method

.method public static parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I
    .registers 2

    .line 947
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I
    .registers 5

    int-to-long v0, p2

    .line 951
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static parseIntentAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    .line 996
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_d

    .line 999
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.VIEW"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_d
    return-object p0
.end method

.method public static parseIntentAttributeNoDefault(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 982
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 984
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x0

    .line 986
    :try_start_b
    invoke-static {p0, p1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0
    :try_end_f
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_f} :catch_10

    goto :goto_19

    :catch_10
    move-exception p0

    const-string p1, "ShortcutService"

    const-string v0, "Error parsing intent"

    .line 988
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return-object p0
.end method

.method public static parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    .line 955
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;J)J
    .registers 5

    .line 959
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 960
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-wide p2

    .line 964
    :cond_b
    :try_start_b
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_f} :catch_10

    return-wide p0

    .line 966
    :catch_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error parsing long "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p2
.end method

.method public static parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 935
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shouldBackupApp(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    .line 4568
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 7

    .line 1641
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1642
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, p1, :cond_d

    if-gt v1, p1, :cond_d

    return-object p0

    .line 1649
    :cond_d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/2addr v0, p1

    .line 1652
    div-int/2addr v0, v2

    mul-int/2addr v1, p1

    .line 1653
    div-int/2addr v1, v2

    .line 1659
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1660
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1662
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x0

    .line 1664
    invoke-virtual {v2, p0, v0, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object p1
.end method

.method public static throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1195
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "Invalid tag \'%s\' found at depth %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static warnForInvalidTag(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1199
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "Invalid tag \'%s\' found at depth %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1039
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 1053
    :cond_3
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 1059
    invoke-virtual {p2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1033
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 1035
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v0, p1, p2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_8

    const-string p2, "1"

    .line 1044
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_8
    const-string p2, "0"

    .line 1046
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_d
    return-void
.end method

.method public static writeTagExtra(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 1026
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1027
    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 1028
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeTagValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1013
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static writeTagValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 1019
    :cond_3
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static writeTagValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1005
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 1007
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    .line 1008
    invoke-interface {p0, v0, v1, p2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1009
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 11

    .line 2234
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2237
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    .line 2236
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v0

    .line 2239
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    .line 2240
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 2241
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 2246
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2247
    :try_start_1d
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2249
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    const/4 p3, 0x1

    .line 2251
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V

    .line 2252
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V

    .line 2254
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    .line 2256
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    .line 2259
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 2260
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    .line 2263
    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_40

    .line 2264
    monitor-exit v2

    return v3

    :cond_40
    const/4 v0, 0x0

    move-object v5, v0

    move v4, v3

    :goto_43
    if-ge v4, v1, :cond_61

    .line 2267
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    .line 2270
    invoke-virtual {p0, v6, v3}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    .line 2274
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    .line 2277
    invoke-virtual {p1, v6}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)Z

    if-nez v5, :cond_5b

    .line 2280
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2282
    :cond_5b
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 2286
    :cond_61
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2287
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_1d .. :try_end_65} :catchall_6c

    .line 2288
    invoke-virtual {p0, p1, v5, v0}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2289
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return p3

    :catchall_6c
    move-exception p0

    .line 2287
    :try_start_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw p0
.end method

.method public final addShortcutIdsToSet(Landroid/util/ArraySet;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 5549
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 5552
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_c
    if-ge v0, p0, :cond_1e

    .line 5554
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1e
    return-void
.end method

.method public allowSmartSwitchBackup(Z)V
    .registers 2

    .line 5575
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public applyRestore([BI)V
    .registers 7

    .line 4623
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    .line 4627
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4628
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 4629
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t restore: user "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is locked or not running"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 4630
    monitor-exit v0

    return-void

    .line 4634
    :cond_27
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v2, "restore-0-start.txt"

    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 4639
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v2, "restore-1-payload.xml"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;[B)Z

    .line 4642
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_95

    const/4 p1, 0x1

    .line 4644
    :try_start_42
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    move-result-object p1
    :try_end_46
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_46} :catch_8b
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_8b
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_42 .. :try_end_46} :catch_8b
    .catchall {:try_start_42 .. :try_end_46} :catchall_95

    .line 4649
    :try_start_46
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v2, "restore-2.txt"

    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 4650
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V

    .line 4651
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v1, "restore-3.txt"

    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    const-wide/16 v1, 0x0

    .line 4653
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    .line 4656
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v1, "restore-4.txt"

    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 4657
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v1, "restore-5-finish.txt"

    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 4662
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V

    .line 4663
    monitor-exit v0

    return-void

    :catch_8b
    move-exception p0

    const-string p1, "ShortcutService"

    const-string p2, "Restoration failed."

    .line 4646
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4647
    monitor-exit v0

    return-void

    :catchall_95
    move-exception p0

    .line 4663
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_46 .. :try_end_97} :catchall_95

    throw p0
.end method

.method public applyRestoreSmartSwitch(Landroid/os/ParcelFileDescriptor;I)I
    .registers 8

    .line 5746
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    .line 5748
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5749
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_26

    const-string p0, "ShortcutService"

    .line 5750
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user locked - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5751
    monitor-exit v0

    return v2

    .line 5754
    :cond_26
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 5755
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_76

    const/4 v3, 0x0

    .line 5761
    :try_start_2e
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_65
    .catchall {:try_start_2e .. :try_end_33} :catchall_63

    .line 5773
    :try_start_33
    invoke-virtual {p0, p2, v4, v2}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    move-result-object p1

    .line 5774
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V
    :try_end_3a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_3a} :catch_4f
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_4f
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_33 .. :try_end_3a} :catch_4f
    .catchall {:try_start_33 .. :try_end_3a} :catchall_4d

    .line 5779
    :try_start_3a
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5782
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V

    const-wide/16 v1, 0x0

    .line 5784
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    .line 5788
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_63

    .line 5790
    :try_start_48
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    .line 5792
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_76

    return v3

    :catchall_4d
    move-exception p1

    goto :goto_5f

    :catch_4f
    move-exception p1

    :try_start_50
    const-string p2, "ShortcutService"

    const-string v1, "Restoration failed."

    .line 5776
    invoke-static {p2, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_4d

    .line 5779
    :try_start_57
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_63

    .line 5790
    :try_start_5a
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_76

    return v2

    .line 5779
    :goto_5f
    :try_start_5f
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5780
    throw p1

    :catchall_63
    move-exception p1

    goto :goto_72

    :catch_65
    move-exception p1

    const-string p2, "ShortcutService"

    const-string v1, "Restoration failed."

    .line 5763
    invoke-static {p2, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_63

    .line 5790
    :try_start_6d
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    monitor-exit v0

    return v2

    :goto_72
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    .line 5791
    throw p1

    :catchall_76
    move-exception p0

    .line 5792
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_76

    throw p0
.end method

.method public final assignImplicitRanks(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 2047
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_6
    if-ltz p0, :cond_14

    .line 2048
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0, p0}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z
    .registers 5

    .line 2844
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/ShortcutService;->injectHasAccessShortcutsPermission(II)Z

    move-result p3

    if-eqz p3, :cond_8

    const/4 p0, 0x1

    return p0

    .line 2847
    :cond_8
    iget-object p3, p0, Lcom/android/server/pm/ShortcutService;->mNonPersistentUsersLock:Ljava/lang/Object;

    monitor-enter p3

    .line 2848
    :try_start_b
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getNonPersistentUserLocked(I)Lcom/android/server/pm/ShortcutNonPersistentUser;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutNonPersistentUser;->hasHostPackage(Ljava/lang/String;)Z

    move-result p0

    monitor-exit p3

    return p0

    :catchall_15
    move-exception p0

    .line 2849
    monitor-exit p3
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw p0
.end method

.method public checkPackageChanges(I)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3926
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "ShortcutService"

    const-string p1, "Safe mode, skipping checkPackageChanges()"

    .line 3927
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3931
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    const/16 v2, 0x8

    .line 3933
    :try_start_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3935
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_59

    .line 3936
    :try_start_1c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v5

    .line 3939
    new-instance v6, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda31;

    invoke-direct {v6, p0, v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 3951
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_47

    .line 3952
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_34
    if-ltz v6, :cond_47

    .line 3953
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 3954
    iget-object v8, v7, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    iget v7, v7, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    const/4 v9, 0x0

    invoke-virtual {p0, v8, p1, v7, v9}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_34

    .line 3959
    :cond_47
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutUser;->getLastAppScanTime()J

    move-result-wide v5

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    .line 3960
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_1c .. :try_end_4f} :catchall_56

    .line 3962
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3964
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_56
    move-exception p1

    .line 3960
    :try_start_57
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    :try_start_58
    throw p1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception p1

    .line 3962
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3963
    throw p1
.end method

.method public final cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V
    .registers 6

    .line 2939
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2940
    :try_start_3
    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 2943
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public cleanUpPackageLocked(Ljava/lang/String;IIZ)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2957
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserLoadedLocked(I)Z

    move-result v0

    .line 2959
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    if-ne p3, p2, :cond_f

    .line 2963
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->removePackage(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    const/4 v3, 0x1

    if-eqz v2, :cond_15

    move v4, v3

    goto :goto_16

    :cond_15
    const/4 v4, 0x0

    .line 2969
    :goto_16
    invoke-virtual {v1, p3, p1}, Lcom/android/server/pm/ShortcutUser;->removeLauncher(ILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v5

    .line 2972
    new-instance v6, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;

    invoke-direct {v6, p1, p3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 2976
    new-instance v6, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda23;

    invoke-direct {v6}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {v1, v6}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    if-eqz v4, :cond_2f

    .line 2979
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->notifyListeners(Ljava/lang/String;I)V

    :cond_2f
    if-eqz p4, :cond_36

    if-ne p3, p2, :cond_36

    .line 2986
    invoke-virtual {v1, p1, v3}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    :cond_36
    if-nez p4, :cond_42

    if-ne p3, p2, :cond_42

    .line 2990
    new-instance p1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda24;

    invoke-direct {p1, v2, v5}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/pm/ShortcutPackage;Lcom/android/server/pm/ShortcutLauncher;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    :cond_42
    if-nez v0, :cond_47

    .line 3002
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    :cond_47
    return-void
.end method

.method public cleanupBitmapsForPackage(ILjava/lang/String;)V
    .registers 4

    .line 1477
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1478
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_10

    return-void

    .line 1482
    :cond_10
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_32

    .line 1483
    :cond_1c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to remove directory "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-void
.end method

.method public final cleanupDanglingBitmapDirectoriesLocked(I)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1499
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 1501
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2

    .line 1503
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v3

    .line 1504
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_13

    return-void

    .line 1508
    :cond_13
    array-length v4, v3

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v4, :cond_38

    aget-object v6, v3, v5

    .line 1509
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_20

    goto :goto_35

    .line 1512
    :cond_20
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1516
    invoke-virtual {v2, v7}, Lcom/android/server/pm/ShortcutUser;->hasPackage(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2e

    .line 1520
    invoke-virtual {p0, p1, v7}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    goto :goto_35

    .line 1522
    :cond_2e
    invoke-virtual {v2, v7}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/pm/ShortcutPackage;->cleanupDanglingBitmapFiles(Ljava/io/File;)V

    :goto_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_38
    const/4 p1, 0x5

    .line 1525
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-void
.end method

.method public createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            "I",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2363
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2364
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string v1, "Shortcut must be enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2365
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2366
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 2368
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2369
    :try_start_15
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2371
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;

    move-result-object p2

    .line 2372
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_26

    .line 2373
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2374
    invoke-virtual {p4, p2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :catchall_26
    move-exception p0

    .line 2372
    :try_start_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    .line 2436
    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    const-string/jumbo v4, "shortcutIds must be provided"

    .line 2437
    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2441
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2442
    :try_start_14
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2443
    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    const/4 v3, 0x1

    .line 2444
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    const/4 v5, 0x0

    if-nez p3, :cond_24

    move-object v12, v5

    goto :goto_29

    .line 2447
    :cond_24
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    .line 2448
    :goto_29
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    move-object v13, v5

    move-object v14, v13

    move v15, v6

    :goto_31
    if-ltz v15, :cond_78

    .line 2449
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/lang/String;

    .line 2450
    invoke-virtual {v1, v11}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_47

    goto :goto_75

    :cond_47
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v16, 0x1

    move-object v5, v1

    move-object v6, v11

    move-object v7, v12

    move/from16 v8, p4

    move-object/from16 v17, v11

    move/from16 v11, v16

    .line 2453
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    if-nez v5, :cond_6b

    if-nez v13, :cond_61

    .line 2459
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_61
    move-object/from16 v5, v17

    .line 2461
    invoke-virtual {v1, v5}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_75

    :cond_6b
    if-nez v14, :cond_72

    .line 2464
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2466
    :cond_72
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_75
    add-int/lit8 v15, v15, -0x1

    goto :goto_31

    .line 2470
    :cond_78
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2471
    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_14 .. :try_end_7c} :catchall_83

    .line 2472
    invoke-virtual {v0, v1, v13, v14}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2473
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_83
    move-exception v0

    .line 2471
    :try_start_84
    monitor-exit v4
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 4670
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string v1, "ShortcutService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 4671
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->dumpNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final dumpCheckin(Ljava/io/PrintWriter;Z)V
    .registers 7

    .line 4977
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4979
    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 4981
    :goto_9
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 4982
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutUser;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/ShortcutUser;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4985
    :cond_23
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "shortcut"

    .line 4987
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "lowRam"

    .line 4988
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "iconSize"

    .line 4989
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    invoke-virtual {p2, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 p0, 0x1

    .line 4991
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_48} :catch_4b
    .catchall {:try_start_3 .. :try_end_48} :catchall_49

    goto :goto_53

    :catchall_49
    move-exception p0

    goto :goto_55

    :catch_4b
    move-exception p0

    :try_start_4c
    const-string p1, "ShortcutService"

    const-string p2, "Unable to write in json"

    .line 4993
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4995
    :goto_53
    monitor-exit v0

    return-void

    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_49

    throw p0
.end method

.method public final dumpCurrentTime(Ljava/io/PrintWriter;)V
    .registers 4

    .line 4967
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpDumpFiles(Ljava/io/PrintWriter;)V
    .registers 4

    .line 4999
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "** SHORTCUT MANAGER FILES (dumpsys shortcut -n -f)"

    .line 5000
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5001
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutDumpFiles;->dumpAll(Ljava/io/PrintWriter;)V

    .line 5002
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final dumpInner(Ljava/io/PrintWriter;)V
    .registers 3

    .line 4861
    new-instance v0, Lcom/android/server/pm/ShortcutService$DumpFilter;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    return-void
.end method

.method public final dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 8

    .line 4865
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4866
    :try_start_3
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 4867
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    const-string v3, "Now: ["

    .line 4868
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4869
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v3, "] "

    .line 4870
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4871
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Raw last reset: ["

    .line 4873
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4874
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, "] "

    .line 4875
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4876
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4878
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    move-result-wide v1

    const-string v3, "  Last reset: ["

    .line 4879
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4880
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v3, "] "

    .line 4881
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4882
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4884
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getNextResetTimeLocked()J

    move-result-wide v1

    const-string v3, "  Next reset: ["

    .line 4885
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4886
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v3, "] "

    .line 4887
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4888
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4889
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4890
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  Config:"

    .line 4892
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    Max icon dim: "

    .line 4893
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4894
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "    Icon format: "

    .line 4895
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4896
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "    Icon quality: "

    .line 4897
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4898
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "    saveDelayMillis: "

    .line 4899
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4900
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "    resetInterval: "

    .line 4901
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4902
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string v1, "    maxUpdatesPerInterval: "

    .line 4903
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4904
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "    maxShortcutsPerActivity: "

    .line 4905
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4906
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4907
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4909
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const-string v2, "  "

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/util/StatLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4911
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  #Failures: "

    .line 4912
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4913
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4915
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    if-eqz v1, :cond_e3

    const-string v1, "  Last failure stack trace: "

    .line 4916
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4917
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4920
    :cond_e3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_e6
    const/4 v1, 0x0

    move v2, v1

    .line 4923
    :goto_e8
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_10d

    .line 4924
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutUser;

    .line 4925
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isUserMatch(I)Z

    move-result v4

    if-eqz v4, :cond_10a

    const-string v4, "  "

    .line 4926
    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/pm/ShortcutUser;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 4927
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_10a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e8

    .line 4931
    :cond_10d
    :goto_10d
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_132

    .line 4932
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutNonPersistentUser;

    .line 4933
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->getUserId()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isUserMatch(I)Z

    move-result v3

    if-eqz v3, :cond_12f

    const-string v3, "  "

    .line 4934
    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 4935
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_12f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10d

    .line 4938
    :cond_132
    monitor-exit v0

    return-void

    :catchall_134
    move-exception p0

    monitor-exit v0
    :try_end_136
    .catchall {:try_start_3 .. :try_end_136} :catchall_134

    throw p0
.end method

.method public dumpNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4676
    invoke-static {p3}, Lcom/android/server/pm/ShortcutService;->parseDumpArgs([Ljava/lang/String;)Lcom/android/server/pm/ShortcutService$DumpFilter;

    move-result-object p1

    .line 4678
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpCheckIn()Z

    move-result p3

    if-eqz p3, :cond_12

    .line 4680
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldCheckInClear()Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->dumpCheckin(Ljava/io/PrintWriter;Z)V

    goto :goto_36

    .line 4682
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpMain()Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 4683
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 4684
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4686
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpUid()Z

    move-result p3

    if-eqz p3, :cond_2a

    .line 4687
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->dumpUid(Ljava/io/PrintWriter;)V

    .line 4688
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4690
    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpFiles()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 4691
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->dumpDumpFiles(Ljava/io/PrintWriter;)V

    .line 4692
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_36
    :goto_36
    return-void
.end method

.method public final dumpUid(Ljava/io/PrintWriter;)V
    .registers 7

    .line 4942
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "** SHORTCUT MANAGER UID STATES (dumpsys shortcut -n -u)"

    .line 4943
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4945
    :goto_9
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 4946
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 4947
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const-string v4, "    UID="

    .line 4948
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4949
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " state="

    .line 4950
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4951
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4952
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v3

    if-eqz v3, :cond_38

    const-string v3, "  [FG]"

    .line 4953
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_38
    const-string v3, "  last FG="

    .line 4955
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4956
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 4957
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 4959
    :cond_4c
    monitor-exit v0

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 10

    .line 2478
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    const-string/jumbo v0, "shortcutIds must be provided"

    .line 2479
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2482
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2483
    :try_start_c
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2484
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    const/4 p3, 0x1

    .line 2485
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    .line 2487
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p3

    const/4 v2, 0x0

    move-object v3, v2

    :goto_1e
    if-ltz v1, :cond_47

    .line 2488
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2489
    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_33

    goto :goto_44

    .line 2492
    :cond_33
    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutPackage;->enableWithId(Ljava/lang/String;)V

    if-nez v3, :cond_3d

    .line 2494
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2496
    :cond_3d
    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 2498
    :cond_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_c .. :try_end_48} :catchall_4f

    .line 2499
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2500
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_4f
    move-exception p0

    .line 2498
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public final enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1747
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1750
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enforceMaxActivityShortcuts(I)V
    .registers 2

    .line 1841
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    if-gt p1, p0, :cond_5

    return-void

    .line 1842
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Max number of dynamic shortcuts exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceResetThrottlingPermission()V
    .registers 3

    .line 1738
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    const-string v1, "android.permission.RESET_SHORTCUT_MANAGER_THROTTLING"

    .line 1741
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceShell()V
    .registers 2

    .line 1726
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerShell()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 1727
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller must be shell"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceSystem()V
    .registers 2

    .line 1732
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 1733
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller must be system"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceSystemOrShell()V
    .registers 2

    .line 1720
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerShell()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_15

    .line 1721
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller must be system or shell"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    return-void
.end method

.method public final fillInDefaultActivity(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 2032
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_7
    if-ltz v0, :cond_46

    .line 2033
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 2034
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_43

    if-nez v2, :cond_40

    .line 2037
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v4

    .line 2036
    invoke-virtual {p0, v2, v4}, Lcom/android/server/pm/ShortcutService;->injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_27

    move v4, v1

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    .line 2038
    :goto_28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launcher activity not found for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2039
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2038
    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 2041
    :cond_40
    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    :cond_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_46
    return-void
.end method

.method public final fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 2020
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    return-void
.end method

.method public final fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V
    .registers 8

    .line 1967
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isReturnedByServer()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "ShortcutService"

    const-string v1, "Re-publishing ShortcutInfo returned by server is not supported. Some information such as icon may lost from shortcut."

    .line 1968
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_d
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 1975
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot publish shortcut: activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1976
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not belong to package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1974
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1979
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not main activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1978
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    :cond_6e
    if-nez p2, :cond_83

    .line 1985
    invoke-virtual {p1, p3}, Landroid/content/pm/ShortcutInfo;->enforceMandatoryFields(Z)V

    if-nez p3, :cond_83

    .line 1987
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_7d

    const/4 p2, 0x1

    goto :goto_7e

    :cond_7d
    const/4 p2, 0x0

    :goto_7e
    const-string p3, "Cannot publish shortcut: target activity is not set"

    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1991
    :cond_83
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    if-eqz p2, :cond_93

    .line 1992
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    invoke-static {p2}, Landroid/content/pm/ShortcutInfo;->validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 1993
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->validateIconURI(Landroid/content/pm/ShortcutInfo;)V

    .line 1996
    :cond_93
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x2000

    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->replaceFlags(I)V

    return-void
.end method

.method public fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V
    .registers 6

    .line 1675
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    .line 1674
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1677
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v1

    const/16 v3, 0xa

    .line 1679
    :try_start_14
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceNames(Landroid/content/res/Resources;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1e

    .line 1681
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1683
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    goto :goto_23

    :catchall_1e
    move-exception p1

    .line 1681
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1682
    throw p1

    :cond_23
    :goto_23
    return-void
.end method

.method public forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;)V"
        }
    .end annotation

    .line 1439
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1440
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final forUpdatedPackages(IJZLjava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZ",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 4255
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 4256
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_a
    if-ltz p1, :cond_22

    .line 4257
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    if-nez p4, :cond_1a

    .line 4262
    iget-wide v1, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v1, v1, p2

    if-ltz v1, :cond_1f

    .line 4267
    :cond_1a
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {p5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1f
    add-int/lit8 p1, p1, -0x1

    goto :goto_a

    :cond_22
    return-void
.end method

.method public final getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 3

    .line 4182
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4152
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getBackupPayload(I)[B
    .registers 6

    .line 4573
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    .line 4577
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4578
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_28

    .line 4579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t backup: user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is locked or not running"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 4580
    monitor-exit v0

    return-object v2

    .line 4583
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    if-nez v1, :cond_44

    .line 4585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t backup: user not found: id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 4586
    monitor-exit v0

    return-object v2

    .line 4590
    :cond_44
    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 4593
    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 4597
    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 4600
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 4601
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    .line 4607
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const v3, 0x8000

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_6a
    .catchall {:try_start_6 .. :try_end_6a} :catchall_85

    const/4 v3, 0x1

    .line 4609
    :try_start_6b
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    :try_end_6e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6b .. :try_end_6e} :catch_7b
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_7b
    .catchall {:try_start_6b .. :try_end_6e} :catchall_85

    .line 4615
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 4616
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string v1, "backup-1-payload.txt"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;[B)Z

    .line 4617
    monitor-exit v0

    return-object p1

    :catch_7b
    move-exception p0

    const-string p1, "ShortcutService"

    const-string v1, "Backup failed."

    .line 4612
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4613
    monitor-exit v0

    return-object v2

    :catchall_85
    move-exception p0

    .line 4618
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_6e .. :try_end_87} :catchall_85

    throw p0
.end method

.method public getBackupShortcut(I)Landroid/os/ParcelFileDescriptor;
    .registers 9

    .line 5684
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    .line 5686
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5687
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_26

    const-string p0, "ShortcutService"

    .line 5688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user locked - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5689
    monitor-exit v0

    return-object v2

    .line 5692
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    if-nez v1, :cond_44

    const-string p0, "ShortcutService"

    .line 5694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t backup: user not found: id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5695
    monitor-exit v0

    return-object v2

    :cond_44
    const/4 v3, 0x1

    .line 5698
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V
    :try_end_48
    .catchall {:try_start_6 .. :try_end_48} :catchall_d7

    const/4 v4, 0x0

    .line 5700
    :try_start_49
    new-instance v5, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda8;

    invoke-direct {v5}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v1, v5}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 5701
    new-instance v5, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;

    invoke-direct {v5}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v1, v5}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 5703
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 5704
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    .line 5706
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/misc/shortcutbnr"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5707
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "shortcut.br"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_49 .. :try_end_6e} :catchall_d2

    .line 5710
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_77

    .line 5711
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5714
    :cond_77
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 5715
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_80} :catch_c5
    .catchall {:try_start_6e .. :try_end_80} :catchall_d2

    .line 5723
    :cond_80
    :try_start_80
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_85
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_80 .. :try_end_85} :catch_b8
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_85} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_85} :catch_ab
    .catchall {:try_start_80 .. :try_end_85} :catchall_d2

    .line 5724
    :try_start_85
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V

    .line 5725
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    const/16 v5, 0x192

    invoke-static {p1, v3, v5}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_94
    .catchall {:try_start_85 .. :try_end_94} :catchall_a1

    .line 5726
    :try_start_94
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_97
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_94 .. :try_end_97} :catch_b8
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_ab
    .catchall {:try_start_94 .. :try_end_97} :catchall_d2

    .line 5733
    :try_start_97
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_d2

    .line 5735
    :try_start_9c
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_d7

    return-object v1

    :catchall_a1
    move-exception p1

    .line 5723
    :try_start_a2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a6

    goto :goto_aa

    :catchall_a6
    move-exception v1

    :try_start_a7
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_aa
    throw p1
    :try_end_ab
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a7 .. :try_end_ab} :catch_b8
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_ab} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ab} :catch_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_d2

    :catch_ab
    move-exception p1

    :try_start_ac
    const-string v1, "ShortcutService"

    const-string v3, "Backup failed."

    .line 5730
    invoke-static {v1, v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b3
    .catchall {:try_start_ac .. :try_end_b3} :catchall_d2

    .line 5735
    :try_start_b3
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_d7

    return-object v2

    :catch_b8
    move-exception p1

    :try_start_b9
    const-string v1, "ShortcutService"

    const-string v3, "Backup failed."

    .line 5727
    invoke-static {v1, v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c0
    .catchall {:try_start_b9 .. :try_end_c0} :catchall_d2

    .line 5735
    :try_start_c0
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_d7

    return-object v2

    :catch_c5
    move-exception p1

    :try_start_c6
    const-string v1, "ShortcutService"

    const-string v3, "Backup failed."

    .line 5718
    invoke-static {v1, v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cd
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_d2

    .line 5735
    :try_start_cd
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    monitor-exit v0

    return-object v2

    :catchall_d2
    move-exception p1

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    .line 5736
    throw p1

    :catchall_d7
    move-exception p0

    .line 5737
    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_cd .. :try_end_d9} :catchall_d7

    throw p0
.end method

.method public final getBaseStateFile()Landroid/util/AtomicFile;
    .registers 3

    .line 843
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectSystemDataPath()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "shortcut_service.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 844
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 845
    new-instance p0, Landroid/util/AtomicFile;

    invoke-direct {p0, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public getBitmapPathList(I)[Ljava/lang/String;
    .registers 3

    .line 5661
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    .line 5663
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5664
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    .line 5666
    new-instance p1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;

    invoke-direct {p1, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 5675
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final getCallingUserId()I
    .registers 1

    .line 5303
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public getDefaultLauncher(I)Ljava/lang/String;
    .registers 13

    .line 2892
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 2893
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    const/16 v4, 0x10

    .line 2895
    :try_start_a
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_59

    .line 2896
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2898
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v6

    .line 2899
    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutUser;->getCachedLauncher()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_22

    .line 2901
    monitor-exit v5
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_56

    .line 2923
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2924
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v7

    .line 2905
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v7

    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getParentOrSelfUserId(I)I

    move-result v9

    .line 2906
    invoke-virtual {p0, v9}, Lcom/android/server/pm/ShortcutService;->injectGetHomeRoleHolderAsUser(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 2908
    invoke-virtual {p0, v10, v7, v8}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    if-eqz v9, :cond_38

    .line 2915
    invoke-virtual {v6, v9}, Lcom/android/server/pm/ShortcutUser;->setCachedLauncher(Ljava/lang/String;)V

    goto :goto_4e

    :cond_38
    const-string v6, "ShortcutService"

    .line 2917
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Default launcher not found. user: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    :goto_4e
    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_22 .. :try_end_4f} :catchall_56

    .line 2923
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2924
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v9

    :catchall_56
    move-exception p1

    .line 2921
    :try_start_57
    monitor-exit v5
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    :try_start_58
    throw p1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception p1

    .line 2923
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2924
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2925
    throw p1
.end method

.method public getDummyMainActivity(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 3

    .line 4470
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "android.__dummy__"

    invoke-direct {p0, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getDumpPath()Ljava/io/File;
    .registers 3

    .line 5350
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "shortcut_dump"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getIconMaxDimensions(Ljava/lang/String;I)I
    .registers 3

    .line 2730
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2732
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2733
    :try_start_6
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    monitor-exit p1

    return p0

    :catchall_a
    move-exception p0

    .line 2734
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public getIconPersistFormatForTest()Landroid/graphics/Bitmap$CompressFormat;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5411
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public getIconPersistQualityForTest()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5416
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    return p0
.end method

.method public final getInstalledPackages(I)Ljava/util/List;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 4215
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 4216
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x7

    .line 4218
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectGetPackagesWithUninstalled(I)Ljava/util/List;

    move-result-object p1

    .line 4220
    sget-object v5, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate;

    invoke-interface {p1, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_1b
    .catchall {:try_start_9 .. :try_end_12} :catchall_19

    .line 4228
    :goto_12
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4230
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object p1

    :catchall_19
    move-exception p1

    goto :goto_25

    :catch_1b
    move-exception p1

    :try_start_1c
    const-string v5, "ShortcutService"

    const-string v6, "RemoteException"

    .line 4225
    invoke-static {v5, v6, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    const/4 p1, 0x0

    goto :goto_12

    .line 4228
    :goto_25
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4230
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4231
    throw p1
.end method

.method public getLastResetTimeLocked()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1320
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    .line 1321
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    return-wide v0
.end method

.method public getLauncherShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5451
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5452
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ShortcutUser;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 5453
    monitor-exit v0

    return-object p0

    .line 5455
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getAllLaunchersForTest()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ShortcutLauncher;

    monitor-exit v0

    return-object p0

    :catchall_20
    move-exception p0

    .line 5456
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1470
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    .line 1471
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutUser;->getLauncherShortcuts(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object p0

    return-object p0
.end method

.method public final getMainActivityIntent()Landroid/content/Intent;
    .registers 2

    .line 4377
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 4378
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public getMaxActivityShortcuts()I
    .registers 1

    .line 1850
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return p0
.end method

.method public getMaxAppShortcuts()I
    .registers 1

    .line 1857
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcutsPerApp:I

    return p0
.end method

.method public getMaxIconDimensionForTest()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5406
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    return p0
.end method

.method public getMaxShortcutCountPerActivity(Ljava/lang/String;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2697
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2699
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return p0
.end method

.method public getMaxShortcutsForTest()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5391
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return p0
.end method

.method public getMaxUpdatesPerIntervalForTest()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5396
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    return p0
.end method

.method public getNextResetTimeLocked()J
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1327
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    .line 1328
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    iget-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getNonPersistentUserLocked(I)Lcom/android/server/pm/ShortcutNonPersistentUser;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNonPersistentUsersLock"
        }
    .end annotation

    .line 1429
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutNonPersistentUser;

    if-nez v0, :cond_14

    .line 1431
    new-instance v0, Lcom/android/server/pm/ShortcutNonPersistentUser;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutNonPersistentUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    .line 1432
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4

    const/4 v0, 0x0

    .line 4078
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4101
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInfoAsUser(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 8

    .line 4108
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 4110
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v3, 0x0

    invoke-interface {v2, p1, v3, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_12
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 4116
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_1f

    :catch_12
    move-exception p1

    :try_start_13
    const-string p2, "ShortcutService"

    const-string v2, "RemoteException"

    .line 4113
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_10

    const/4 p1, 0x0

    .line 4116
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-object p1

    :goto_1f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4117
    throw p1
.end method

.method public final getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4

    const/4 v0, 0x1

    .line 4070
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPackageShortcutForTest(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5431
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5432
    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    .line 5433
    monitor-exit v0

    return-object p0

    .line 5435
    :cond_c
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 5436
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5421
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5422
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ShortcutUser;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 5423
    monitor-exit v0

    return-object p0

    .line 5425
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getAllPackagesForTest()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ShortcutPackage;

    monitor-exit v0

    return-object p0

    :catchall_1c
    move-exception p0

    .line 5426
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1460
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    .line 1461
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getUser()Lcom/android/server/pm/ShortcutUser;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/ShortcutUser;->onCalledByPublisher(Ljava/lang/String;)V

    return-object p0
.end method

.method public getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1452
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    return-object p0
.end method

.method public getParentOrSelfUserId(I)I
    .registers 2

    .line 4546
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    return p0
.end method

.method public getRateLimitResetTime(Ljava/lang/String;I)J
    .registers 5

    .line 2719
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2721
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2722
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2724
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getNextResetTimeLocked()J

    move-result-wide v0

    monitor-exit p1

    return-wide v0

    :catchall_f
    move-exception p0

    .line 2725
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getRemainingCallCount(Ljava/lang/String;I)I
    .registers 5

    .line 2704
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2707
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    .line 2706
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v0

    .line 2709
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2710
    :try_start_12
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2712
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    .line 2713
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result p1

    sub-int/2addr p0, p1

    monitor-exit v1

    return p0

    :catchall_22
    move-exception p0

    .line 2714
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public getResetIntervalForTest()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5401
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    return-wide v0
.end method

.method public getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Landroid/content/pm/ParceledListSlice;
    .registers 5

    const-string/jumbo v0, "packageName"

    .line 2629
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v0, "intentFilter"

    .line 2630
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2631
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerChooserActivity()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2632
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    :cond_15
    const-string p1, "android.permission.MANAGE_APP_PREDICTIONS"

    const-string/jumbo v0, "getShareTargets"

    .line 2634
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2637
    :try_start_20
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2639
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    .line 2640
    new-instance p3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda18;

    invoke-direct {p3, v0, p2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda18;-><init>(Ljava/util/List;Landroid/content/IntentFilter;)V

    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 2641
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit p1

    return-object p0

    :catchall_3b
    move-exception p0

    .line 2642
    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public getShortcutBitmapsFileDescriptor()Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .registers 2

    .line 5621
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    .line 5623
    new-instance v0, Lcom/android/server/pm/ShortcutService$7;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutService$7;-><init>(Lcom/android/server/pm/ShortcutService;)V

    return-object v0
.end method

.method public getShortcutRequestPinProcessorForTest()Lcom/android/server/pm/ShortcutRequestPinProcessor;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5461
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    return-object p0
.end method

.method public getShortcuts(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2607
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2608
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2609
    :try_start_6
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    move v1, v3

    :goto_12
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_18

    move v4, v2

    goto :goto_19

    :cond_18
    move v4, v3

    :goto_19
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_1f

    move v5, v2

    goto :goto_20

    :cond_1f
    move v5, v3

    :goto_20
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    :goto_26
    if-eqz v4, :cond_2a

    const/4 p2, 0x2

    goto :goto_2b

    :cond_2a
    move p2, v3

    :goto_2b
    or-int/2addr p2, v1

    if-eqz v5, :cond_31

    const/16 v1, 0x20

    goto :goto_32

    :cond_31
    move v1, v3

    :goto_32
    or-int/2addr p2, v1

    if-eqz v2, :cond_38

    const v3, 0x60004000

    :cond_38
    or-int/2addr p2, v3

    const/16 v1, 0x9

    .line 2618
    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda32;

    invoke-direct {v2, p2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda32;-><init>(I)V

    invoke-virtual {p0, p1, p3, v1, v2}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_46
    move-exception p0

    .line 2623
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_6 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public getShortcutsForTest()Landroid/util/SparseArray;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;"
        }
    .end annotation

    .line 5386
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2689
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    .line 2690
    invoke-virtual {p1, v0, p4, p3}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 2691
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->setReturnedByServer(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public getStatStartTime()J
    .registers 3

    .line 612
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {p0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUidLastForegroundElapsedTimeLocked(I)J
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 730
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getUserBitmapFilePath(I)Ljava/io/File;
    .registers 3

    .line 5381
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object p0

    const-string p1, "bitmaps"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUserFile(I)Ljava/io/File;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1143
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo p1, "shortcuts.xml"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1401
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1403
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mLastLockedUser:I

    if-eq p1, v0, :cond_15

    const-string v0, "User still locked"

    .line 1404
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1405
    iput p1, p0, Lcom/android/server/pm/ShortcutService;->mLastLockedUser:I

    goto :goto_15

    :cond_12
    const/4 v0, -0x1

    .line 1408
    iput v0, p0, Lcom/android/server/pm/ShortcutService;->mLastLockedUser:I

    .line 1411
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutUser;

    if-nez v0, :cond_32

    .line 1413
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 1415
    new-instance v0, Lcom/android/server/pm/ShortcutUser;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    .line 1417
    :cond_2a
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1420
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->checkPackageChanges(I)V

    :cond_32
    return-object v0
.end method

.method public handleLocaleChanged()V
    .registers 5

    .line 3827
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    .line 3829
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3830
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_1c

    .line 3832
    :try_start_a
    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;

    invoke-direct {v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_17

    .line 3834
    :try_start_12
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3836
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v3

    .line 3834
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3835
    throw v3

    :catchall_1c
    move-exception p0

    .line 3836
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public handleOnDefaultLauncherChanged(I)V
    .registers 7

    .line 652
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUriPermissionOwner:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 654
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 657
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserLoadedLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 658
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutUser;->setCachedLauncher(Ljava/lang/String;)V

    .line 660
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public handleOnUidStateChanged(II)V
    .registers 8

    const-string/jumbo v0, "shortcutHandleOnUidStateChanged"

    const-wide/32 v1, 0x80000

    .line 694
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    :try_start_c
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 701
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 702
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p2, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 704
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_25

    .line 705
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_25
    move-exception p0

    .line 704
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final handlePackageAdded(Ljava/lang/String;I)V
    .registers 5

    .line 3998
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3999
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 4000
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    const/4 p2, 0x1

    .line 4001
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 4002
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 4003
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_13
    move-exception p0

    .line 4002
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final handlePackageChanged(Ljava/lang/String;I)V
    .registers 5

    .line 4043
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4045
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V

    return-void

    .line 4054
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4055
    :try_start_d
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p2

    const/4 v1, 0x1

    .line 4057
    invoke-virtual {p2, p1, v1}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 4058
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    .line 4060
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_1a
    move-exception p0

    .line 4058
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final handlePackageDataCleared(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x1

    .line 4037
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    .line 4039
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void
.end method

.method public final handlePackageRemoved(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 4027
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    .line 4029
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void
.end method

.method public final handlePackageUpdateFinished(Ljava/lang/String;I)V
    .registers 5

    .line 4011
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4012
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 4013
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 4015
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_14

    const/4 p2, 0x1

    .line 4016
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 4018
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    .line 4019
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_19
    move-exception p0

    .line 4018
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public handleStopUser(I)V
    .registers 7

    const-string/jumbo v0, "shortcutHandleStopUser"

    const-wide/32 v1, 0x80000

    .line 815
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    .line 819
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v3
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_21

    .line 820
    :try_start_12
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 821
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1e

    .line 822
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_21

    .line 823
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1e
    move-exception p0

    .line 821
    :try_start_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw p0

    :catchall_21
    move-exception p0

    .line 822
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public handleUnlockUser(I)V
    .registers 5

    .line 788
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 789
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 790
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_17

    .line 799
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 800
    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/ShortcutService;JI)V

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->injectRunOnNewThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_17
    move-exception p0

    .line 790
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public hasShareTargets(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 2648
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    const-string p1, "android.permission.MANAGE_APP_PREDICTIONS"

    const-string/jumbo v0, "hasShareTargets"

    .line 2649
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2652
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2653
    :try_start_e
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2655
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->hasShareTargets()Z

    move-result p0

    monitor-exit p1

    return p0

    :catchall_1b
    move-exception p0

    .line 2656
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public hasShortcutHostPermission(Ljava/lang/String;III)Z
    .registers 6

    .line 2831
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result p3

    if-eqz p3, :cond_8

    const/4 p0, 0x1

    return p0

    .line 2834
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide p3

    const/4 v0, 0x4

    .line 2836
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermissionInner(Ljava/lang/String;I)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 2838
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return p1

    :catchall_15
    move-exception p1

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2839
    throw p1
.end method

.method public hasShortcutHostPermissionInner(Ljava/lang/String;I)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2874
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2875
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2877
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 2883
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_12
    const/4 p0, 0x0

    .line 2885
    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 2887
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final initialize()V
    .registers 2

    .line 852
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 853
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V

    .line 854
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->loadBaseStateLocked()V

    .line 855
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4162
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 4163
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x3

    .line 4165
    :try_start_9
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v6, 0x200c2200

    invoke-interface {v5, p1, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_1b
    .catchall {:try_start_9 .. :try_end_12} :catchall_19

    .line 4171
    :goto_12
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4173
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object p1

    :catchall_19
    move-exception p1

    goto :goto_25

    :catch_1b
    move-exception p1

    :try_start_1c
    const-string p2, "ShortcutService"

    const-string v5, "RemoteException"

    .line 4168
    invoke-static {p2, v5, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    const/4 p1, 0x0

    goto :goto_12

    .line 4171
    :goto_25
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4173
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4174
    throw p1
.end method

.method public injectBinderCallingPid()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5299
    invoke-static {}, Landroid/content/pm/IShortcutService$Stub;->getCallingPid()I

    move-result p0

    return p0
.end method

.method public injectBinderCallingUid()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5294
    invoke-static {}, Landroid/content/pm/IShortcutService$Stub;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public injectBuildFingerprint()Ljava/lang/String;
    .registers 1

    .line 5320
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object p0
.end method

.method public injectChooserActivity()Landroid/content/ComponentName;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1701
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mChooserActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_17

    .line 1702
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 1703
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040303

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1702
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mChooserActivity:Landroid/content/ComponentName;

    .line 1705
    :cond_17
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mChooserActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public injectClearCallingIdentity()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5309
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public injectCurrentTimeMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public injectDipToPixel(I)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    int-to-float p1, p1

    .line 927
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 928
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 927
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public injectElapsedRealtime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1760
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4193
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 4194
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x6

    .line 4196
    :try_start_9
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v6, 0x200c2280

    invoke-interface {v5, p1, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_1b
    .catchall {:try_start_9 .. :try_end_12} :catchall_19

    .line 4203
    :goto_12
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4205
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object p1

    :catchall_19
    move-exception p1

    goto :goto_25

    :catch_1b
    move-exception p1

    :try_start_1c
    const-string p2, "ShortcutService"

    const-string v5, "RemoteException"

    .line 4200
    invoke-static {p2, v5, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    const/4 p1, 0x0

    goto :goto_12

    .line 4203
    :goto_25
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4205
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4206
    throw p1
.end method

.method public injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 8

    .line 4430
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    const/16 v2, 0xb

    .line 4433
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object p1

    .line 4434
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_16

    goto :goto_23

    :cond_16
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_27

    .line 4436
    :goto_23
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v4

    :catchall_27
    move-exception p1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4437
    throw p1
.end method

.method public injectGetHomeRoleHolderAsUser(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5375
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 5376
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const-string v0, "android.app.role.HOME"

    .line 5375
    invoke-virtual {p0, v0, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 5377
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p0, 0x0

    goto :goto_1b

    :cond_14
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_1b
    return-object p0
.end method

.method public injectGetLocaleTagsForUser(I)Ljava/lang/String;
    .registers 2

    .line 621
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 4483
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    const/16 v2, 0xc

    .line 4485
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_13

    .line 4487
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object p1

    :catchall_13
    move-exception p1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4488
    throw p1
.end method

.method public injectGetPackageUid(Ljava/lang/String;I)I
    .registers 8

    .line 4082
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 4084
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v3, 0x200c2200

    invoke-interface {v2, p1, v3, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 4090
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return p1

    :catchall_11
    move-exception p1

    goto :goto_20

    :catch_13
    move-exception p1

    :try_start_14
    const-string p2, "ShortcutService"

    const-string v2, "RemoteException"

    .line 4087
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    const/4 p1, -0x1

    .line 4090
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return p1

    :goto_20
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4091
    throw p1
.end method

.method public injectGetPackagesWithUninstalled(I)Ljava/util/List;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4241
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v0, 0x200c2200

    .line 4242
    invoke-interface {p0, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    if-nez p0, :cond_10

    .line 4244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4246
    :cond_10
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public injectGetPinConfirmationActivity(Ljava/lang/String;II)Landroid/content/ComponentName;
    .registers 5

    .line 4514
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-ne p3, v0, :cond_9

    const-string p3, "android.content.pm.action.CONFIRM_PIN_SHORTCUT"

    goto :goto_b

    :cond_9
    const-string p3, "android.content.pm.action.CONFIRM_PIN_APPWIDGET"

    .line 4519
    :goto_b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p3, 0x0

    .line 4520
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object p0

    .line 4522
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 4523
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .registers 11

    .line 4360
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 4361
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    const/16 v4, 0x9

    .line 4363
    :try_start_a
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    .line 4364
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_1d} :catch_26
    .catchall {:try_start_a .. :try_end_1d} :catchall_24

    .line 4370
    :goto_1d
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4372
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object p1

    :catchall_24
    move-exception p1

    goto :goto_4b

    :catch_26
    :try_start_26
    const-string v5, "ShortcutService"

    .line 4366
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resources of package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_24

    const/4 p1, 0x0

    goto :goto_1d

    .line 4370
    :goto_4b
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4372
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4373
    throw p1
.end method

.method public injectHasAccessShortcutsPermission(II)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2857
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_SHORTCUTS"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public injectHasUnlimitedShortcutsApiCallsPermission(II)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2866
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.UNLIMITED_SHORTCUTS_API_CALLS"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4497
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    const/16 v2, 0xd

    .line 4499
    :try_start_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object p1

    .line 4500
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_20

    if-lez p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 4502
    :goto_1c
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return p1

    :catchall_20
    move-exception p1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4503
    throw p1
.end method

.method public injectIsLowRamDevice()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5355
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p0

    return p0
.end method

.method public injectIsMainActivity(Landroid/content/ComponentName;I)Z
    .registers 10

    .line 4444
    sget-object v0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 4447
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v2

    const/4 v0, 0x0

    const/16 v4, 0xc

    if-nez p1, :cond_1d

    :try_start_13
    const-string/jumbo p1, "null activity detected"

    .line 4450
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_45

    .line 4460
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v0

    :cond_1d
    :try_start_1d
    const-string v5, "android.__dummy__"

    .line 4453
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_45

    if-eqz v5, :cond_2d

    .line 4460
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v1

    .line 4457
    :cond_2d
    :try_start_2d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4456
    invoke-virtual {p0, v5, v6, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object p1

    .line 4458
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_45

    if-lez p1, :cond_40

    goto :goto_41

    :cond_40
    move v1, v0

    .line 4460
    :goto_41
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v1

    :catchall_45
    move-exception p1

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4461
    throw p1
.end method

.method public injectIsSafeModeEnabled()Z
    .registers 4

    .line 4529
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string/jumbo v2, "window"

    .line 4532
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 4533
    invoke-interface {v2}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_1c
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 4537
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return v2

    :catchall_17
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4538
    throw v2

    :catch_1c
    const/4 v2, 0x0

    .line 4537
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return v2
.end method

.method public injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4128
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 4129
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 4131
    :try_start_a
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v7, 0x200c2200

    if-eqz p3, :cond_14

    const/high16 v8, 0x8000000

    goto :goto_15

    :cond_14
    const/4 v8, 0x0

    :goto_15
    or-int/2addr v7, v8

    int-to-long v7, v7

    invoke-interface {v6, p1, v7, v8, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1b} :catch_28
    .catchall {:try_start_a .. :try_end_1b} :catchall_26

    .line 4138
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    if-eqz p3, :cond_21

    goto :goto_22

    :cond_21
    move v4, v5

    .line 4140
    :goto_22
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object p1

    :catchall_26
    move-exception p1

    goto :goto_3c

    :catch_28
    move-exception p1

    :try_start_29
    const-string p2, "ShortcutService"

    const-string v6, "RemoteException"

    .line 4135
    invoke-static {p2, v6, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_26

    const/4 p1, 0x0

    .line 4138
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    if-eqz p3, :cond_37

    goto :goto_38

    :cond_37
    move v4, v5

    .line 4140
    :goto_38
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object p1

    .line 4138
    :goto_3c
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    if-eqz p3, :cond_42

    goto :goto_43

    :cond_42
    move v4, v5

    .line 4140
    :goto_43
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4143
    throw p1
.end method

.method public injectPostToHandler(Ljava/lang/Runnable;)V
    .registers 2

    .line 1820
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public injectPostToHandlerDebounced(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 6

    .line 1828
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1830
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1831
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1832
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, p2, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 1833
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public injectRegisterRoleHoldersListener(Landroid/app/role/OnRoleHoldersChangedListener;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5369
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mRoleManager:Landroid/app/role/RoleManager;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, p1, v1}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    return-void
.end method

.method public injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5361
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v0, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public injectRestoreCallingIdentity(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5315
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public injectRunOnNewThread(Ljava/lang/Runnable;)V
    .registers 2

    .line 1824
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public injectSendIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 4554
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_d} :catch_e

    goto :goto_17

    :catch_e
    move-exception p0

    const-string p1, "ShortcutService"

    const-string/jumbo p2, "sendIntent failed()."

    .line 4557
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-void
.end method

.method public injectShortcutManagerConstants()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 920
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 921
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "shortcut_manager_constants"

    .line 920
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public injectShouldPerformVerification()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public injectSystemDataPath()Ljava/io/File;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5341
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public injectUptimeMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5288
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public injectUserDataPath(I)Ljava/io/File;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5346
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v0, "shortcut_service"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public injectValidateIconResPackage(Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)V
    .registers 3

    .line 1633
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    return-void

    .line 1634
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Icon resource must reside in shortcut owner package"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 3

    .line 4355
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0
.end method

.method public isAppSearchEnabled()Z
    .registers 1

    .line 608
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutService;->mIsAppSearchEnabled:Z

    return p0
.end method

.method public final isApplicationFlagSet(Ljava/lang/String;II)Z
    .registers 4

    .line 4273
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 4274
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p0, p3

    if-ne p0, p3, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public final isCallerChooserActivity()Z
    .registers 4

    .line 1710
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1711
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectChooserActivity()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 1715
    :cond_c
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_17

    const/4 v2, 0x1

    :cond_17
    return v2
.end method

.method public final isCallerShell()Z
    .registers 2

    .line 1695
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result p0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_d

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public final isCallerSystem()Z
    .registers 2

    .line 1690
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    .line 1691
    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    return p0
.end method

.method public isDummyMainActivity(Landroid/content/ComponentName;)Z
    .registers 2

    if-eqz p1, :cond_10

    .line 4474
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.__dummy__"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final isEnabled(Landroid/content/pm/ActivityInfo;I)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 4285
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v1

    .line 4287
    :try_start_8
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 4288
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 4287
    invoke-interface {v3, v4, p2}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result p2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_22
    .catchall {:try_start_8 .. :try_end_12} :catchall_20

    .line 4294
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    const/4 p0, 0x1

    if-nez p2, :cond_1c

    .line 4297
    iget-boolean p1, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez p1, :cond_1e

    :cond_1c
    if-ne p2, p0, :cond_1f

    :cond_1e
    return p0

    :cond_1f
    return v0

    :catchall_20
    move-exception p1

    goto :goto_2e

    :catch_22
    move-exception p1

    :try_start_23
    const-string p2, "ShortcutService"

    const-string v3, "RemoteException"

    .line 4291
    invoke-static {p2, v3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 4294
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return v0

    :goto_2e
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4295
    throw p1
.end method

.method public isEphemeralApp(Ljava/lang/String;I)Z
    .registers 3

    .line 4350
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isEphemeralApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public isPackageInstalled(Ljava/lang/String;I)Z
    .registers 3

    .line 4346
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isProcessStateForeground(I)Z
    .registers 2

    const/4 p0, 0x5

    if-gt p1, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public isRequestPinItemSupported(II)Z
    .registers 6

    .line 2768
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->verifyCallerUserId(I)V

    .line 2770
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 2772
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 2773
    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->isRequestPinItemSupported(II)Z

    move-result p1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 2775
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return p1

    :catchall_11
    move-exception p1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2776
    throw p1
.end method

.method public isSharingShortcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentFilter;)Z
    .registers 8

    .line 2662
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    const-string p2, "android.permission.MANAGE_APP_PREDICTIONS"

    const-string/jumbo v0, "isSharingShortcut"

    .line 2663
    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2667
    :try_start_e
    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2668
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2671
    invoke-virtual {p0, p3, p5}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    .line 2672
    invoke-virtual {p0, p6}, Lcom/android/server/pm/ShortcutPackage;->getMatchingShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object p0

    .line 2673
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    move p5, p3

    :goto_22
    if-ge p5, p1, :cond_3e

    .line 2675
    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {p6}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_3b

    .line 2676
    monitor-exit p2

    const/4 p0, 0x1

    return p0

    :cond_3b
    add-int/lit8 p5, p5, 0x1

    goto :goto_22

    .line 2679
    :cond_3e
    monitor-exit p2

    return p3

    :catchall_40
    move-exception p0

    monitor-exit p2
    :try_end_42
    .catchall {:try_start_e .. :try_end_42} :catchall_40

    throw p0
.end method

.method public isSmartSwitchBackupAllowed()Z
    .registers 1

    .line 5579
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isUidForegroundLocked(I)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_6

    return v0

    .line 720
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v1

    if-eqz v1, :cond_15

    return v0

    .line 725
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result p0

    return p0
.end method

.method public final isUserLoadedLocked(I)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1392
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isUserUnlockedL(I)Z
    .registers 4

    .line 1369
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1370
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x1

    .line 1371
    monitor-exit v0

    return p0

    .line 1373
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_16

    .line 1379
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result p0

    return p0

    :catchall_16
    move-exception p0

    .line 1373
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final loadBaseStateLocked()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "ShortcutService"

    const-wide/16 v1, 0x0

    .line 1096
    iput-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 1098
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Landroid/util/AtomicFile;

    move-result-object v3

    .line 1102
    :try_start_a
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_e} :catch_ad
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_e} :catch_92

    .line 1103
    :try_start_e
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v5

    .line 1106
    :cond_12
    :goto_12
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_80

    const/4 v8, 0x2

    if-eq v6, v8, :cond_1d

    goto :goto_12

    .line 1110
    :cond_1d
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6

    .line 1112
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-ne v6, v7, :cond_4a

    const-string/jumbo v6, "root"

    .line 1114
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid root tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_e .. :try_end_44} :catchall_86

    if-eqz v4, :cond_49

    .line 1130
    :try_start_46
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_49} :catch_ad
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_49} :catch_92

    :cond_49
    return-void

    :cond_4a
    const/4 v6, -0x1

    .line 1121
    :try_start_4b
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v9, -0x418aefa

    if-eq v7, v9, :cond_55

    goto :goto_5f

    :cond_55
    const-string/jumbo v7, "last_reset_time"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    const/4 v6, 0x0

    :cond_5f
    :goto_5f
    if-eqz v6, :cond_76

    .line 1126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_76
    const-string/jumbo v6, "value"

    .line 1123
    invoke-static {v5, v6}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J
    :try_end_7f
    .catchall {:try_start_4b .. :try_end_7f} :catchall_86

    goto :goto_12

    :cond_80
    if-eqz v4, :cond_ad

    .line 1130
    :try_start_82
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/io/FileNotFoundException; {:try_start_82 .. :try_end_85} :catch_ad
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_82 .. :try_end_85} :catch_92

    goto :goto_ad

    :catchall_86
    move-exception v5

    if-eqz v4, :cond_91

    .line 1102
    :try_start_89
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    goto :goto_91

    :catchall_8d
    move-exception v4

    :try_start_8e
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_91
    :goto_91
    throw v5
    :try_end_92
    .catch Ljava/io/FileNotFoundException; {:try_start_8e .. :try_end_92} :catch_ad
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_92} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8e .. :try_end_92} :catch_92

    :catch_92
    move-exception v4

    .line 1133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1135
    iput-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 1138
    :catch_ad
    :cond_ad
    :goto_ad
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    return-void
.end method

.method public final loadConfigurationLocked()V
    .registers 2

    .line 862
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShortcutManagerConstants()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->updateConfigurationLocked(Ljava/lang/String;)Z

    return-void
.end method

.method public final loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_11

    .line 1237
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 1238
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_15

    .line 1240
    :cond_11
    invoke-static {p2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 1244
    :goto_15
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result p2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3c

    const/4 v3, 0x2

    if-eq p2, v3, :cond_20

    goto :goto_15

    .line 1248
    :cond_20
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result p2

    .line 1250
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-ne p2, v2, :cond_38

    const-string/jumbo v2, "user"

    .line 1255
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1256
    invoke-static {p0, v1, p1, p3}, Lcom/android/server/pm/ShortcutUser;->loadFromXml(Lcom/android/server/pm/ShortcutService;Landroid/util/TypedXmlPullParser;IZ)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    goto :goto_15

    .line 1259
    :cond_38
    invoke-static {p2, v3}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    goto :goto_15

    :cond_3c
    return-object v0
.end method

.method public final loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;
    .registers 7

    .line 1204
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Ljava/io/File;

    move-result-object v0

    .line 1208
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 1212
    :try_start_a
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_e} :catch_3c

    const/4 v3, 0x0

    .line 1220
    :try_start_f
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_13} :catch_19
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_f .. :try_end_13} :catch_19
    .catchall {:try_start_f .. :try_end_13} :catchall_17

    .line 1226
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :catchall_17
    move-exception p0

    goto :goto_38

    :catch_19
    move-exception p0

    :try_start_1a
    const-string p1, "ShortcutService"

    .line 1223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_17

    .line 1226
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :goto_38
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1227
    throw p0

    :catch_3c
    return-object v0
.end method

.method public logDurationStat(IJ)V
    .registers 4

    .line 616
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    return-void
.end method

.method public final notifyListenerRunnable(Ljava/lang/String;I)Ljava/lang/Runnable;
    .registers 4

    .line 1890
    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;)V

    return-object v0
.end method

.method public final notifyListeners(Ljava/lang/String;I)V
    .registers 3

    .line 1885
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->notifyListenerRunnable(Ljava/lang/String;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final notifyShortcutChangeCallbacks(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1912
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->removeNonKeyFields(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1913
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ShortcutService;->removeNonKeyFields(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 1915
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 1916
    new-instance p3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;

    move-object v0, p3

    move-object v1, p0

    move v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/ShortcutService;ILjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onApplicationActive(Ljava/lang/String;I)V
    .registers 5

    .line 2816
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->enforceResetThrottlingPermission()V

    .line 2817
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2818
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2820
    monitor-exit v0

    return-void

    .line 2822
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    .line 2823
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimitingForCommandLineNoSaving()V

    .line 2824
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V

    .line 2825
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_10

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_9

    goto :goto_13

    .line 778
    :cond_9
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_13

    .line 775
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->initialize()V

    :goto_13
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 19

    move-object v9, p0

    .line 5011
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->enforceShell()V

    .line 5013
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v10

    .line 5015
    :try_start_8
    new-instance v1, Lcom/android/server/pm/ShortcutService$MyShellCommand;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$MyShellCommand-IA;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    move-result v1

    move-object/from16 v2, p6

    .line 5017
    invoke-virtual {v2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_25

    .line 5019
    invoke-virtual {p0, v10, v11}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    :catchall_25
    move-exception v0

    invoke-virtual {p0, v10, v11}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 5020
    throw v0
.end method

.method public openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1549
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object p1

    .line 1550
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1551
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_37

    .line 1552
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1553
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 1556
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    goto :goto_37

    .line 1554
    :cond_20
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to create directory "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1559
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 1561
    :goto_40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_49

    move-object v1, p0

    goto :goto_5d

    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5d
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1562
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_7a

    .line 1567
    new-instance p0, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;-><init>(Ljava/io/File;)V

    return-object p0

    :cond_7a
    add-int/lit8 p1, p1, 0x1

    goto :goto_40
.end method

.method public final openIconFileForWriteSmartSwitch(ILjava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 5600
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5601
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const-string p1, "ShortcutService"

    if-nez p0, :cond_47

    .line 5602
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 5603
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 5607
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    goto :goto_47

    .line 5604
    :cond_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to create directory "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5605
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5610
    :cond_47
    :goto_47
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5611
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_58

    .line 5616
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object p1

    .line 5612
    :cond_58
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to create file - already exists "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5613
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutPackage;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1868
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1870
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v1

    .line 1875
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->notifyListenerRunnable(Ljava/lang/String;I)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/ShortcutService;->injectPostToHandlerDebounced(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 1876
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/pm/ShortcutService;->notifyShortcutChangeCallbacks(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 1877
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    return-void
.end method

.method public final prepareChangedShortcuts(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p4, :cond_4

    return-object p0

    .line 5515
    :cond_4
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p0

    .line 5519
    :cond_11
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 5520
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 5521
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 5523
    :cond_1f
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 5524
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 5527
    :cond_28
    invoke-static {p3}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_36

    .line 5528
    new-instance p1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {p3, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 5531
    :cond_36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5532
    new-instance p2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;-><init>(Landroid/util/ArraySet;)V

    const/4 p0, 0x4

    invoke-virtual {p4, p1, p2, p0}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    return-object p1
.end method

.method public final prepareChangedShortcuts(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 5539
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 5540
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/ShortcutService;->addShortcutIdsToSet(Landroid/util/ArraySet;Ljava/util/List;)V

    .line 5542
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 5543
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->addShortcutIdsToSet(Landroid/util/ArraySet;Ljava/util/List;)V

    .line 5545
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/pm/ShortcutService;->prepareChangedShortcuts(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public pushDynamicShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)V
    .registers 9

    .line 2296
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2297
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 2299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2303
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2304
    :try_start_e
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2306
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    .line 2308
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;Z)V

    new-array v3, v4, [Landroid/content/pm/ShortcutInfo;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 2309
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    .line 2311
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasRank()Z

    move-result v3

    if-nez v3, :cond_32

    .line 2312
    invoke-virtual {p2, v4}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 2315
    :cond_32
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 2316
    invoke-virtual {p2, v4}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    .line 2319
    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    .line 2323
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    .line 2326
    invoke-virtual {v2, p2, v0}, Lcom/android/server/pm/ShortcutPackage;->pushDynamicShortcut(Landroid/content/pm/ShortcutInfo;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2329
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 2330
    monitor-exit v1

    return-void

    .line 2332
    :cond_4c
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 2333
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x0

    .line 2335
    :goto_5b
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2338
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2339
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_e .. :try_end_62} :catchall_70

    .line 2341
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2343
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->reportShortcutUsedInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2345
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_70
    move-exception p0

    .line 2339
    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0
.end method

.method public queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 4402
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 4404
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0x200c2200

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_35

    .line 4407
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    if-eqz p1, :cond_32

    .line 4409
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_32

    .line 4413
    :cond_1d
    sget-object v0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_INSTALLED:Ljava/util/function/Predicate;

    invoke-interface {p1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 4414
    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    if-eqz p3, :cond_31

    .line 4419
    sget-object p0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate;

    invoke-interface {p1, p0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_31
    return-object p1

    .line 4410
    :cond_32
    :goto_32
    sget-object p0, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    return-object p0

    :catchall_35
    move-exception p1

    .line 4407
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4408
    throw p1
.end method

.method public queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 4391
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_b

    .line 4393
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_b
    const/4 p2, 0x1

    .line 4395
    invoke-virtual {p0, p1, p4, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeAllDynamicShortcuts(Ljava/lang/String;I)V
    .registers 6

    .line 2546
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2550
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2551
    :try_start_b
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2552
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    .line 2554
    new-instance p2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda30;

    invoke-direct {p2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda30;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {p1, v0, p2, v2}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 2558
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts()Ljava/util/List;

    move-result-object p2

    const/4 v2, 0x0

    .line 2559
    invoke-virtual {p0, v0, v2, p2, p1}, Lcom/android/server/pm/ShortcutService;->prepareChangedShortcuts(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;

    move-result-object v0

    .line 2561
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_2c

    .line 2562
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2563
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_2c
    move-exception p0

    .line 2561
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 2507
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    const-string/jumbo v0, "shortcutIds must be provided"

    .line 2508
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2512
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2513
    :try_start_c
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2514
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    const/4 p3, 0x1

    .line 2515
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    .line 2517
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p3

    const/4 v2, 0x0

    move-object v3, v2

    :goto_1e
    if-ltz v1, :cond_56

    .line 2519
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2518
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2520
    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_33

    goto :goto_53

    :cond_33
    const/4 v5, 0x0

    .line 2523
    invoke-virtual {p1, v4, p3, v5}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    if-nez v5, :cond_49

    if-nez v2, :cond_41

    .line 2527
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2529
    :cond_41
    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_49
    if-nez v3, :cond_50

    .line 2532
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2534
    :cond_50
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_53
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 2538
    :cond_56
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2539
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_c .. :try_end_5a} :catchall_61

    .line 2540
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2541
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_61
    move-exception p0

    .line 2539
    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public removeLongLivedShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 10

    .line 2569
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    const-string/jumbo v0, "shortcutIds must be provided"

    .line 2570
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2574
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2575
    :try_start_c
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2576
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    const/4 p3, 0x1

    .line 2577
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    .line 2579
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p3

    const/4 v2, 0x0

    move-object v3, v2

    :goto_1e
    if-ltz v1, :cond_55

    .line 2580
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2581
    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_33

    goto :goto_52

    .line 2584
    :cond_33
    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/ShortcutPackage;->deleteLongLivedWithId(Ljava/lang/String;Z)Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    if-eqz v5, :cond_44

    if-nez v3, :cond_40

    .line 2587
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2589
    :cond_40
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_44
    if-nez v2, :cond_4b

    .line 2592
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2594
    :cond_4b
    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_52
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 2598
    :cond_55
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2599
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_c .. :try_end_59} :catchall_60

    .line 2600
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2601
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_60
    move-exception p0

    .line 2599
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p0
.end method

.method public final removeNonKeyFields(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1940
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-object p1

    .line 1944
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 1945
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_11
    if-ge v1, p0, :cond_2e

    .line 1948
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1949
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1950
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_23
    const/4 v3, 0x4

    .line 1952
    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2e
    return-object v0
.end method

.method public reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 2739
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2740
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2745
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2746
    :try_start_9
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2747
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2748
    invoke-virtual {v1, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-nez v1, :cond_2d

    const-string p0, "ShortcutService"

    const-string/jumbo p3, "reportShortcutUsed: package %s doesn\'t have shortcut %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 2749
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    monitor-exit v0

    return-void

    .line 2753
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_32

    .line 2754
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->reportShortcutUsedInternal(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_32
    move-exception p0

    .line 2753
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public final reportShortcutUsedInternal(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 2758
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 2760
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v2, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->reportShortcutUsage(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 2762
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2763
    throw p1
.end method

.method public final requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .registers 17

    .line 2385
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v8

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    .line 2384
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;III)Z

    move-result v0

    return v0
.end method

.method public final requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;III)Z
    .registers 19

    move-object v0, p0

    move v5, p2

    move-object v2, p3

    move/from16 v1, p8

    .line 2392
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    if-eqz v2, :cond_12

    move/from16 v3, p7

    .line 2393
    invoke-virtual {p0, v3, v1}, Lcom/android/server/pm/ShortcutService;->injectHasAccessShortcutsPermission(II)Z

    move-result v3

    if-nez v3, :cond_16

    :cond_12
    move-object v3, p1

    .line 2396
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 2400
    :cond_16
    iget-object v8, v0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2401
    :try_start_19
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2403
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v1

    const-string v3, "Calling application must have a foreground activity or a foreground service"

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    if-eqz v2, :cond_44

    .line 2411
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 2412
    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2414
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2415
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndInvisibleToPublisher(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 2417
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutPackage;->updateInvisibleShortcutForPinRequestWith(Landroid/content/pm/ShortcutInfo;)V

    .line 2419
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2424
    :cond_44
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p2

    move-object v6, p6

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinItemLocked(Landroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;ILandroid/content/IntentSender;I)Z

    move-result v1

    .line 2426
    monitor-exit v8
    :try_end_52
    .catchall {:try_start_19 .. :try_end_52} :catchall_56

    .line 2428
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return v1

    :catchall_56
    move-exception v0

    .line 2426
    :try_start_57
    monitor-exit v8
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v0
.end method

.method public requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            "Landroid/content/IntentSender;",
            "I",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2351
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string v1, "Shortcut must be enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    .line 2354
    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    move-result v1

    xor-int/2addr v0, v1

    const-string v1, "Shortcut excluded from launcher cannot be pinned"

    .line 2353
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p2

    move-object v8, p3

    .line 2356
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestPinShortcutAsDisplay(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;IILcom/android/internal/infra/AndroidFuture;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            "Landroid/content/IntentSender;",
            "II",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5562
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5563
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string v1, "Shortcut must be enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    move-object v4, p2

    .line 5565
    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    move-result v1

    xor-int/2addr v0, v1

    const-string v1, "Shortcut excluded from launcher cannot be pinned"

    .line 5564
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5569
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p2

    move-object v7, p3

    move/from16 v10, p5

    .line 5567
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;III)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p6

    invoke-virtual {v1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final rescanUpdatedPackagesLocked(IJ)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3972
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 3976
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    .line 3978
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->getLastAppScanOsFingerprint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v8, v3, 0x1

    .line 3981
    new-instance v9, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda26;

    invoke-direct {v9, p0, v0, p1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;I)V

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ShortcutService;->forUpdatedPackages(IJZLjava/util/function/Consumer;)V

    .line 3989
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutUser;->setLastAppScanTime(J)V

    .line 3990
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutUser;->setLastAppScanOsFingerprint(Ljava/lang/String;)V

    .line 3991
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    return-void
.end method

.method public resetAllThrottlingInner()V
    .registers 4

    .line 2804
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2805
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 2806
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 2807
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    const-string p0, "ShortcutService"

    const-string v0, "ShortcutManager: throttling counter reset for all users"

    .line 2808
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_15
    move-exception p0

    .line 2806
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public resetThrottling()V
    .registers 2

    .line 2785
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystemOrShell()V

    .line 2787
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V

    return-void
.end method

.method public resetThrottlingInner(I)V
    .registers 5

    .line 2791
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2792
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_26

    const-string p0, "ShortcutService"

    .line 2793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is locked or not running"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    monitor-exit v0

    return-void

    .line 2797
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->resetThrottling()V

    .line 2798
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_48

    .line 2799
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    const-string p0, "ShortcutService"

    .line 2800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutManager: throttling counter reset for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_48
    move-exception p0

    .line 2798
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public restoreBitmapsFromBackupService(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 5585
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    .line 5586
    :try_start_3
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_3a

    const/4 p1, 0x0

    .line 5587
    :try_start_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->openIconFileForWriteSmartSwitch(ILjava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_30

    const/16 p2, 0x400

    :try_start_f
    new-array p2, p2, [B

    .line 5590
    :goto_11
    invoke-virtual {v0, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result p3

    if-lez p3, :cond_1b

    .line 5591
    invoke-virtual {p0, p2, p1, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_24

    goto :goto_11

    :cond_1b
    if-eqz p0, :cond_20

    .line 5593
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_30

    :cond_20
    :try_start_20
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_3a

    goto :goto_3a

    :catchall_24
    move-exception p1

    if-eqz p0, :cond_2f

    .line 5586
    :try_start_27
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception p0

    :try_start_2c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    throw p1
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    :try_start_31
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception p1

    :try_start_36
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_39
    throw p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3a} :catch_3a

    :catch_3a
    :goto_3a
    return-void
.end method

.method public saveBaseStateLocked()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "root"

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    const/4 v2, 0x0

    .line 1072
    :try_start_8
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_2d

    .line 1075
    :try_start_c
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4

    .line 1076
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v5}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1077
    invoke-interface {v4, v2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "last_reset_time"

    .line 1080
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1083
    invoke-interface {v4, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1084
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1087
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_29} :catch_2a

    goto :goto_4b

    :catch_2a
    move-exception p0

    move-object v2, v3

    goto :goto_2e

    :catch_2d
    move-exception p0

    .line 1089
    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write to file "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ShortcutService"

    invoke-static {v3, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1090
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_4b
    return-void
.end method

.method public saveDirtyInfo()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1294
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const-wide/32 v0, 0x80000

    :try_start_c
    const-string/jumbo v2, "shortcutSaveDirtyInfo"

    .line 1298
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1299
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_45
    .catchall {:try_start_c .. :try_end_15} :catchall_43

    .line 1300
    :try_start_15
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1d
    if-ltz v3, :cond_39

    .line 1301
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, -0x2710

    if-ne v4, v5, :cond_33

    .line 1303
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveBaseStateLocked()V

    goto :goto_36

    .line 1305
    :cond_33
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V

    :goto_36
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 1308
    :cond_39
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1309
    monitor-exit v2

    goto :goto_4b

    :catchall_40
    move-exception v3

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_40

    :try_start_42
    throw v3
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_43} :catch_45
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p0

    goto :goto_4f

    :catch_45
    move-exception v2

    :try_start_46
    const-string v3, "Exception in saveDirtyInfo"

    .line 1311
    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_43

    .line 1313
    :goto_4b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_4f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1314
    throw p0
.end method

.method public saveIconAndFixUpShortcutLocked(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V
    .registers 10

    .line 1573
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-nez v0, :cond_a7

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-nez v0, :cond_a7

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_a7

    .line 1577
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 1580
    :try_start_18
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackageItem;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 1582
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_a2

    if-nez v2, :cond_25

    .line 1625
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    .line 1586
    :cond_25
    :try_start_25
    iget v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_a2

    .line 1589
    :try_start_27
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8c

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq v4, v5, :cond_78

    if-eq v4, v6, :cond_64

    const/4 v5, 0x5

    if-eq v4, v5, :cond_53

    const/4 p1, 0x6

    if-ne v4, p1, :cond_4e

    .line 1602
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/pm/ShortcutInfo;->setIconUri(Ljava/lang/String;)V

    const p1, 0x8200

    .line 1603
    invoke-virtual {p2, p1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_47
    .catchall {:try_start_27 .. :try_end_47} :catchall_9d

    .line 1622
    :try_start_47
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_a2

    .line 1625
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    .line 1617
    :cond_4e
    :try_start_4e
    invoke-static {}, Landroid/content/pm/ShortcutInfo;->getInvalidIconException()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 1610
    :cond_53
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    int-to-float v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 1611
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v5

    mul-float/2addr v5, v4

    add-float/2addr v5, v3

    mul-float/2addr v2, v5

    float-to-int v3, v2

    goto :goto_8f

    .line 1598
    :cond_64
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/pm/ShortcutInfo;->setIconUri(Ljava/lang/String;)V

    const p1, 0x8000

    .line 1599
    invoke-virtual {p2, p1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_71
    .catchall {:try_start_4e .. :try_end_71} :catchall_9d

    .line 1622
    :try_start_71
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_a2

    .line 1625
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    .line 1591
    :cond_78
    :try_start_78
    invoke-virtual {p0, p2, v2}, Lcom/android/server/pm/ShortcutService;->injectValidateIconResPackage(Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)V

    .line 1593
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    .line 1594
    invoke-virtual {p2, v6}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_9d

    .line 1622
    :try_start_85
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_a2

    .line 1625
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    .line 1607
    :cond_8c
    :try_start_8c
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    .line 1619
    :goto_8f
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v4, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    invoke-virtual {p1, p2, v3, v2, v4}, Lcom/android/server/pm/ShortcutPackageItem;->saveBitmap(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    :try_end_96
    .catchall {:try_start_8c .. :try_end_96} :catchall_9d

    .line 1622
    :try_start_96
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_a2

    .line 1625
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    :catchall_9d
    move-exception p1

    .line 1622
    :try_start_9e
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V

    .line 1623
    throw p1
    :try_end_a2
    .catchall {:try_start_9e .. :try_end_a2} :catchall_a2

    :catchall_a2
    move-exception p1

    .line 1625
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1626
    throw p1

    :cond_a7
    :goto_a7
    return-void
.end method

.method public final saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-eqz p3, :cond_10

    .line 1180
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 1181
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_14

    .line 1183
    :cond_10
    invoke-static {p2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    :goto_14
    const/4 v1, 0x0

    .line 1185
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1187
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/ShortcutUser;->saveToXml(Landroid/util/TypedXmlSerializer;Z)V

    .line 1189
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1191
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final saveUserLocked(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1148
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Ljava/io/File;

    move-result-object v0

    .line 1153
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1154
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 1157
    :try_start_11
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    const/4 v2, 0x0

    .line 1159
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V

    .line 1161
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 1164
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->cleanupDanglingBitmapDirectoriesLocked(I)V
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_1f} :catch_20
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1f} :catch_20

    goto :goto_3e

    :catch_20
    move-exception v2

    .line 1166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ShortcutService"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1170
    :goto_3e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutUser;->logSharingShortcutStats(Lcom/android/internal/logging/MetricsLogger;)V

    return-void
.end method

.method public final scheduleSaveBaseState()V
    .registers 2

    const/16 v0, -0x2710

    .line 1265
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    return-void
.end method

.method public final scheduleSaveInner(I)V
    .registers 5

    .line 1279
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1280
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1281
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1283
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2b

    .line 1285
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1286
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_2b
    move-exception p0

    .line 1283
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public scheduleSaveUser(I)V
    .registers 2

    .line 1269
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    return-void
.end method

.method public setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 10

    .line 2064
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2067
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    .line 2066
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v0

    .line 2069
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    .line 2070
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 2071
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 2077
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2078
    :try_start_1d
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2080
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    const/4 p3, 0x1

    .line 2082
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V

    .line 2083
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V

    .line 2085
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    const/4 v3, 0x0

    .line 2087
    invoke-virtual {p1, p2, v3}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    .line 2090
    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 2091
    monitor-exit v2

    return v3

    .line 2095
    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 2096
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    move v0, v3

    :goto_41
    if-ge v0, v1, :cond_4f

    .line 2099
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 2102
    :cond_4f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2103
    new-instance v4, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;-><init>()V

    const/4 v5, 0x4

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 2109
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts()Ljava/util/List;

    move-result-object v4

    :goto_61
    if-ge v3, v1, :cond_6f

    .line 2113
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 2114
    invoke-virtual {p1, v5}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 2118
    :cond_6f
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2120
    invoke-virtual {p0, v0, p2, v4, p1}, Lcom/android/server/pm/ShortcutService;->prepareChangedShortcuts(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;

    move-result-object p2

    .line 2122
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_1d .. :try_end_77} :catchall_7e

    .line 2124
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2126
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return p3

    :catchall_7e
    move-exception p0

    .line 2122
    :try_start_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw p0
.end method

.method public final setReturnedByServer(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2053
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_6
    if-ltz p0, :cond_14

    .line 2054
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->setReturnedByServer()V

    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_14
    return-object p1
.end method

.method public setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 2930
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mNonPersistentUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2931
    :try_start_3
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getNonPersistentUserLocked(I)Lcom/android/server/pm/ShortcutNonPersistentUser;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public shouldBackupApp(Ljava/lang/String;I)Z
    .registers 4

    const v0, 0x8000

    .line 4564
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->isApplicationFlagSet(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public throwIfUserLockedL(I)V
    .registers 4

    .line 1384
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 1385
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is locked or not running"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final unloadUserLocked(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 832
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->cancelAllInFlightTasks()V

    .line 835
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    .line 838
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public updateConfigurationLocked(Ljava/lang/String;)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 872
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 874
    :try_start_9
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_c} :catch_e

    move p1, v1

    goto :goto_17

    :catch_e
    move-exception p1

    const-string v3, "ShortcutService"

    const-string v4, "Bad shortcut manager settings"

    .line 878
    invoke-static {v3, v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, v2

    :goto_17
    const-wide/16 v3, 0xbb8

    const-string/jumbo v5, "save_delay_ms"

    .line 882
    invoke-virtual {v0, v5, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    const-wide/16 v3, 0x1

    const-wide/32 v5, 0x15180

    const-string/jumbo v7, "reset_interval_sec"

    .line 885
    invoke-virtual {v0, v7, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    const-wide/16 v3, 0xa

    const-string/jumbo v5, "max_updates_per_interval"

    .line 889
    invoke-virtual {v0, v5, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    const-wide/16 v3, 0xf

    const-string/jumbo v5, "max_shortcuts"

    .line 892
    invoke-virtual {v0, v5, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    const-string/jumbo v3, "max_shortcuts_per_app"

    const-wide/16 v4, 0x64

    .line 895
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    long-to-int v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcutsPerApp:I

    .line 898
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    move-result v2

    if-eqz v2, :cond_7c

    const-wide/16 v2, 0x30

    const-string/jumbo v6, "max_icon_dimension_dp_lowram"

    .line 899
    invoke-virtual {v0, v6, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_85

    :cond_7c
    const-wide/16 v2, 0x60

    const-string/jumbo v6, "max_icon_dimension_dp"

    .line 902
    invoke-virtual {v0, v6, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    :goto_85
    long-to-int v2, v2

    .line 898
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 906
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->injectDipToPixel(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    .line 908
    sget-object v1, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    const-string/jumbo v2, "icon_format"

    .line 909
    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 908
    invoke-static {v1}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    const-string/jumbo v1, "icon_quality"

    .line 911
    invoke-virtual {v0, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    return p1
.end method

.method public updatePackageShortcutForTest(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 5442
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5443
    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    if-nez p0, :cond_b

    .line 5444
    monitor-exit v0

    return-void

    .line 5445
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5446
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 12

    .line 2134
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2137
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    .line 2136
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v0

    .line 2139
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    .line 2140
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 2141
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 2143
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2146
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2147
    :try_start_23
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2149
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    .line 2151
    invoke-virtual {p1, p2, v3}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V

    .line 2152
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V

    .line 2153
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureAllShortcutsVisibleToLauncher(Ljava/util/List;)V

    const/4 p3, 0x2

    .line 2158
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    .line 2161
    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_40

    .line 2162
    monitor-exit v4

    return v0

    .line 2166
    :cond_40
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 2167
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    :goto_46
    const/4 p3, 0x0

    if-ge v0, v1, :cond_61

    .line 2170
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 2171
    invoke-virtual {p0, v5, v3}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    .line 2173
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda16;

    invoke-direct {v7, p0, v5, p1, v2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;)V

    invoke-virtual {p1, v6, p3, v7}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 2222
    :cond_61
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2223
    monitor-exit v4
    :try_end_65
    .catchall {:try_start_23 .. :try_end_65} :catchall_73

    .line 2224
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6c

    move-object v2, p3

    :cond_6c
    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2226
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return v3

    :catchall_73
    move-exception p0

    .line 2223
    :try_start_74
    monitor-exit v4
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw p0
.end method

.method public final updateTimesLocked()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1341
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    .line 1343
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_f

    .line 1347
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    goto :goto_32

    :cond_f
    cmp-long v4, v0, v2

    if-gez v4, :cond_23

    .line 1350
    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    move-result v4

    if-eqz v4, :cond_32

    const-string v4, "ShortcutService"

    const-string v5, "Clock rewound"

    .line 1351
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    goto :goto_32

    .line 1356
    :cond_23
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    add-long v6, v2, v4

    cmp-long v6, v6, v0

    if-gtz v6, :cond_32

    .line 1357
    rem-long v6, v2, v4

    .line 1358
    div-long/2addr v0, v4

    mul-long/2addr v0, v4

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 1361
    :cond_32
    :goto_32
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_3b

    .line 1362
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    :cond_3b
    return-void
.end method

.method public final validateIconURI(Landroid/content/pm/ShortcutInfo;)V
    .registers 8

    .line 2001
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    .line 2002
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 2007
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_16

    const/4 v3, 0x6

    if-eq v2, v3, :cond_16

    return-void

    .line 2012
    :cond_16
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 2013
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 2014
    invoke-static {v0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    .line 2016
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    move-object v0, p0

    .line 2013
    invoke-interface/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    return-void
.end method

.method public validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2024
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    return-void
.end method

.method public final verifyCaller(Ljava/lang/String;I)V
    .registers 5

    const-string/jumbo v0, "packageName"

    .line 1777
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 1779
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 1783
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1786
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p2, :cond_31

    .line 1789
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_29

    .line 1792
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isEphemeralApp(Ljava/lang/String;I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string p1, "Ephemeral apps can\'t use ShortcutManager"

    invoke-static {p0, p1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void

    .line 1790
    :cond_29
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Calling package name mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1787
    :cond_31
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid user-ID"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyCallerUserId(I)V
    .registers 3

    .line 1764
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1768
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result p0

    .line 1771
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    if-ne p0, p1, :cond_12

    return-void

    .line 1772
    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid user-ID"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 1800
    :cond_3
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 1804
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result p0

    .line 1805
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result p1

    if-ne p0, p1, :cond_1c

    return-void

    .line 1806
    :cond_1c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "User-ID in shortcut doesn\'t match the caller"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    const p0, 0x534e4554

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "109824443"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const/4 v0, -0x1

    .line 1801
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, ""

    aput-object v0, p1, p2

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1802
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Shortcut package name mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1812
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 1814
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method public final verifyStates()V
    .registers 2

    .line 5478
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShouldPerformVerification()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5479
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesInner()V

    :cond_9
    return-void
.end method

.method public final verifyStatesForce()V
    .registers 1

    .line 5484
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesInner()V

    return-void
.end method

.method public final verifyStatesInner()V
    .registers 3

    .line 5488
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5489
    :try_start_3
    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 5490
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public waitForBitmapSavesForTest()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5495
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5496
    :try_start_3
    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 5498
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final wtf(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 5324
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    if-nez p2, :cond_9

    .line 5330
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Stacktrace"

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 5332
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5333
    :try_start_c
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    .line 5334
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Last failure was logged here:"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    .line 5335
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_22

    const-string p0, "ShortcutService"

    .line 5336
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_22
    move-exception p0

    .line 5335
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method
