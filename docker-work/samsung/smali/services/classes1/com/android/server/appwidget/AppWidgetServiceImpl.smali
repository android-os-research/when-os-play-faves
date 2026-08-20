.class public Lcom/android/server/appwidget/AppWidgetServiceImpl;
.super Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Lcom/android/server/WidgetBackupProvider;
.implements Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;
    }
.end annotation


# static fields
.field public static final CHAR_NUM_0:I = 0x30

.field public static final CHAR_NUM_9:I = 0x39

.field public static final CURRENT_VERSION:I = 0x1

.field public static final DEBUG:Z = false

.field public static final DEBUG_PROVIDER_INFO_CACHE:Z = true

.field public static final FD_COUNT_LIMIT:I = 0x40

.field public static final ID_PROVIDER_CHANGED:I = 0x1

.field public static final ID_VIEWS_UPDATE:I = 0x0

.field public static final KEYGUARD_HOST_ID:I = 0x4b455947

.field public static final LAUNCHER_UNBIND_WIDGET:Ljava/lang/String; = "com.sec.android.launcher.action.UNBIND_WIDGET"

.field public static final MAX_ALARM_HISTORY:I = 0x7

.field public static final MAX_HOST_HISTORY:I = 0x7

.field public static final MAX_PROVIDERS_HISTORY:I = 0x7

.field public static final MIN_UPDATE_PERIOD:I = 0x1b7740

.field public static final NEW_KEYGUARD_HOST_PACKAGE:Ljava/lang/String; = "com.android.keyguard"

.field public static final OLD_KEYGUARD_HOST_PACKAGE:Ljava/lang/String; = "android"

.field public static final OPTION_APPWIDGET_ID_FORCE_ALLOC_HOST_ID:Ljava/lang/String; = "appWidgetIdForceAllocHostId"

.field public static final OPTION_APPWIDGET_ID_FORCE_ALLOC_MODE:Ljava/lang/String; = "appWidgetIdForceAllocMode"

.field public static final SEC_LAUNCHER_HOST_PACKAGE:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final STATE_FILENAME:Ljava/lang/String; = "appwidgets.xml"

.field public static final TAG:Ljava/lang/String; = "AppWidgetServiceImpl"

.field public static final TAG_UNDEFINED:I = -0x1

.field public static final UNKNOWN_UID:I = -0x1

.field public static final UNKNOWN_USER_ID:I = -0xa

.field public static final UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

.field public static sSProtectPolicy:Z = false

.field public static final sSwitchDeviceWhenFold:Z = false


# instance fields
.field public isProductDEV:Z

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAlarmHistory:[Ljava/lang/String;

.field public mAlarmHistoryIndex:I

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

.field public mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCallbackHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public mEmergencyState:I

.field public final mFdFile:Ljava/io/File;

.field public mHostHistory:[Ljava/lang/String;

.field public mHostHistoryIdx:I

.field public final mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;",
            ">;"
        }
    .end annotation
.end field

.field public mIsProviderInfoPersisted:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mLastSeqNumber:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mLoadedUserIds:Landroid/util/SparseBooleanArray;

.field public mLocale:Ljava/util/Locale;

.field public final mLock:Ljava/lang/Object;

.field public mMaxWidgetBitmapMemory:I

.field public final mNextAppWidgetIds:Landroid/util/SparseIntArray;

.field public mPackageManager:Landroid/content/pm/IPackageManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageToPidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mPidToPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;",
            ">;"
        }
    .end annotation
.end field

.field public mProvidersHistory:[Ljava/lang/String;

.field public mProvidersHistoryIndex:I

.field public final mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSafeMode:Z

.field public mSaveStateHandler:Landroid/os/Handler;

.field public mScreenDensity:I

.field public mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

.field public mSmallestWidth:I

.field public mThemePkg:Ljava/lang/String;

.field public mThemeSeq:I

.field public final mUpdateScreenSizeProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;",
            ">;"
        }
    .end annotation
.end field

.field public mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public mUserManager:Landroid/os/UserManager;

.field public final mWidgetPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mWidgetPackagesLock:Ljava/lang/Object;

.field public final mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-pnuBD8zEDJkMKRCYlnAO-tgGlg(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/app/PendingIntent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lambda$cancelBroadcastsLocked$0(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ne2lj53L5f59QDS01mljI3cXX8k(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lambda$handleUserUnlocked$2(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vJfmIaWcZKrw7hJuNaOQ9QpCQtY(Lcom/android/server/appwidget/AppWidgetServiceImpl;JLandroid/app/PendingIntent;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lambda$registerForBroadcastsLocked$1(JLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsManager(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/AppOpsManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDevicePolicyManagerInternal(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHosts(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackagesWithBindWidgetPermission(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProviders(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecurityPolicy(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWidgets(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmEmergencyState(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mEmergencyState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/pm/ResolveInfo;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mapplyResourceOverlaysToWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/util/Set;IZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->applyResourceOverlaysToWidgetsLocked(Ljava/util/Set;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdecrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mensureGroupStateLoadedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mensureGroupStateLoadedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetUidForPackage(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleNotifyAppWidgetRemoved(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IJ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyAppWidgetRemoved(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mincrementAndGetAppWidgetIdLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAndGetAppWidgetIdLocked(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monConfigurationChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onConfigurationChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monEmergencyModeDisabled(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onEmergencyModeDisabled(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageBroadcastReceived(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onPackageBroadcastReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreloadWidgetsMaskedState(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msaveGroupStateAsync(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msaveStateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveStateLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendBroadcastAsUser(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateWidgetPackageSuspensionMaskedState(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateWidgetPackageSuspensionMaskedState(Landroid/content/Intent;ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 1

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smparseAppWidgetProviderInfo(Landroid/content/Context;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Landroid/content/Context;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smparseWidgetIdOptions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;
    .registers 1

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseWidgetIdOptions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smserializeAppWidget(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smserializeHost(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smserializeProvider(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 241
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    .line 244
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sprotect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sSProtectPolicy:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 395
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    .line 246
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 304
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 312
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 315
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseBooleanArray;

    .line 317
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackagesLock:Ljava/lang/Object;

    .line 318
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 342
    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mEmergencyState:I

    .line 344
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 351
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/self/fd"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mFdFile:Ljava/io/File;

    .line 352
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageToPidMap:Ljava/util/HashMap;

    .line 353
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPidToPackageMap:Ljava/util/HashMap;

    .line 354
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLastSeqNumber:Ljava/util/HashMap;

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUpdateScreenSizeProviders:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 370
    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mThemePkg:Ljava/lang/String;

    .line 382
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    iput-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProductDEV:Z

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/String;

    .line 386
    iput-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistory:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    .line 387
    iput-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistory:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    .line 388
    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistory:[Ljava/lang/String;

    .line 389
    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistoryIdx:I

    .line 390
    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistoryIndex:I

    .line 391
    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistoryIndex:I

    .line 396
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2

    .line 3045
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p0, :cond_c

    .line 3046
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    :cond_c
    return-object p0
.end method

.method public static cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    .line 3055
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p0, :cond_e

    .line 3056
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    :cond_e
    return-object p0
.end method

.method public static cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 2

    .line 3038
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p0, :cond_c

    .line 3039
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p0

    :cond_c
    return-object p0
.end method

.method public static dumpGrant(Landroid/util/Pair;ILjava/io/PrintWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    const-string v0, "  ["

    .line 3416
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3417
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const/16 p1, 0x5d

    .line 3418
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(C)V

    const-string p1, " user="

    .line 3419
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3420
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p1, " package="

    .line 3421
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3422
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static dumpHost(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V
    .registers 4

    const-string v0, "  ["

    .line 3403
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3404
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, "] hostId="

    .line 3405
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3406
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "    callbacks="

    .line 3407
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3408
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "    widgets.size="

    .line 3409
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3410
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " zombie="

    .line 3411
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3412
    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public static dumpProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V
    .registers 5

    .line 3373
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getPartialInfoLocked()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    const-string v1, "  ["

    .line 3374
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3375
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, "] provider "

    .line 3376
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3377
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "    min=("

    .line 3378
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3379
    iget p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo p1, "x"

    .line 3380
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3381
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ")   minResize=("

    .line 3382
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3383
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3384
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3385
    iget p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, ") updatePeriodMillis="

    .line 3386
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3387
    iget p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " resizeMode="

    .line 3388
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3389
    iget p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " widgetCategory="

    .line 3390
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3391
    iget p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " autoAdvanceViewId="

    .line 3392
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3393
    iget p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " initialLayout=#"

    .line 3394
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3395
    iget p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " initialKeyguardLayout=#"

    .line 3396
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3397
    iget p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "   zombie="

    .line 3398
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3399
    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public static dumpWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/io/PrintWriter;)V
    .registers 4

    const-string v0, "  ["

    .line 3426
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3427
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, "] id="

    .line 3428
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3429
    iget p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "    host="

    .line 3430
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3431
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3432
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz p1, :cond_35

    const-string p1, "    provider="

    .line 3433
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3434
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3435
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3437
    :cond_35
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz p1, :cond_45

    const-string p1, "    host.callbacks="

    .line 3438
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3439
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3441
    :cond_45
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_53

    const-string p1, "    views="

    .line 3442
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3443
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3447
    :cond_53
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz p1, :cond_61

    const-string p1, "    options="

    .line 3448
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3449
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3451
    :cond_61
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->transactionError:Ljava/lang/String;

    if-eqz p1, :cond_6f

    const-string p1, "    transactionError="

    .line 3452
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3453
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->transactionError:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6f
    return-void
.end method

.method public static getSavedStateFile(I)Landroid/util/AtomicFile;
    .registers 4

    .line 4520
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 4521
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getStateFile(I)Ljava/io/File;

    move-result-object v1

    .line 4522
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    if-nez p0, :cond_23

    .line 4523
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_19

    .line 4524
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4527
    :cond_19
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/appwidgets.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4530
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4532
    :cond_23
    new-instance p0, Landroid/util/AtomicFile;

    invoke-direct {p0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public static getStateFile(I)Ljava/io/File;
    .registers 3

    .line 4516
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "appwidgets.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getWidgetIds(Ljava/util/ArrayList;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;)[I"
        }
    .end annotation

    .line 3364
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3365
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_16

    .line 3367
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    iget v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    return-object v1
.end method

.method public static isLocalBinder()Z
    .registers 2

    .line 3034
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private synthetic lambda$cancelBroadcastsLocked$0(Landroid/app/PendingIntent;)V
    .registers 2

    .line 2535
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2536
    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    return-void
.end method

.method public static synthetic lambda$handleUserUnlocked$2(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5

    const/4 v0, 0x1

    .line 3897
    iput-boolean v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->trackingUpdate:Z

    .line 3898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appwidget update-intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3899
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const-wide/16 v1, 0x40

    .line 3898
    invoke-static {v1, v2, p0, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 3901
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Widget update scheduled on unlock "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppWidgetServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$registerForBroadcastsLocked$1(JLandroid/app/PendingIntent;)V
    .registers 11

    .line 3353
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v2, v1, p1

    const/4 v1, 0x2

    move-wide v4, p1

    move-object v6, p3

    .line 3353
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static parseAppWidgetProviderInfo(Landroid/content/Context;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 16

    const-string v0, " for user "

    const-string v1, "AppWidgetServiceImpl"

    .line 3633
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    .line 3634
    :try_start_9
    invoke-virtual {p2, p0, p3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_d} :catch_19e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_19e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_d} :catch_19e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_d} :catch_19e

    if-nez v3, :cond_36

    .line 3636
    :try_start_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " meta-data for AppWidget provider \'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_192

    if-eqz v3, :cond_35

    .line 3747
    :try_start_32
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_35} :catch_19e
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_19e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_35} :catch_19e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_32 .. :try_end_35} :catch_19e

    :cond_35
    return-object v2

    .line 3641
    :cond_36
    :try_start_36
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    .line 3644
    :goto_3a
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v6, :cond_45

    if-eq v4, v5, :cond_45

    goto :goto_3a

    .line 3649
    :cond_45
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "appwidget-provider"

    .line 3650
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_73

    .line 3651
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Meta-data does not start with appwidget-provider tag for AppWidget provider "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_36 .. :try_end_6f} :catchall_192

    .line 3747
    :try_start_6f
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_72
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6f .. :try_end_72} :catch_19e
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_19e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6f .. :try_end_72} :catch_19e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_72} :catch_19e

    return-object v2

    .line 3657
    :cond_73
    :try_start_73
    new-instance v4, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v4}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 3658
    iget-object v7, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    iput-object v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 3659
    iput-object p2, v4, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 3662
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_82
    .catchall {:try_start_73 .. :try_end_82} :catchall_192

    .line 3664
    :try_start_82
    iget v9, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 3665
    iget-object v10, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 3667
    invoke-virtual {p0, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9
    :try_end_93
    .catchall {:try_start_82 .. :try_end_93} :catchall_18d

    .line 3669
    :try_start_93
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3672
    sget-object v7, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    invoke-virtual {v9, p3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 3679
    invoke-virtual {p3, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    if-eqz v7, :cond_a5

    .line 3680
    iget v7, v7, Landroid/util/TypedValue;->data:I

    goto :goto_a6

    :cond_a5
    move v7, v11

    :goto_a6
    iput v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 3681
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    if-eqz v5, :cond_b1

    .line 3682
    iget v5, v5, Landroid/util/TypedValue;->data:I

    goto :goto_b2

    :cond_b1
    move v5, v11

    :goto_b2
    iput v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    const/16 v5, 0x9

    .line 3684
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    if-eqz v5, :cond_bf

    .line 3686
    iget v5, v5, Landroid/util/TypedValue;->data:I

    goto :goto_c1

    :cond_bf
    iget v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    :goto_c1
    iput v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    const/16 v5, 0xa

    .line 3687
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    if-eqz v5, :cond_ce

    .line 3689
    iget v5, v5, Landroid/util/TypedValue;->data:I

    goto :goto_d0

    :cond_ce
    iget v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    :goto_d0
    iput v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    const/16 v5, 0xf

    .line 3691
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    if-eqz v5, :cond_dd

    .line 3693
    iget v5, v5, Landroid/util/TypedValue;->data:I

    goto :goto_de

    :cond_dd
    move v5, v11

    :goto_de
    iput v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    const/16 v5, 0x10

    .line 3694
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    if-eqz v5, :cond_eb

    .line 3696
    iget v5, v5, Landroid/util/TypedValue;->data:I

    goto :goto_ec

    :cond_eb
    move v5, v11

    :goto_ec
    iput v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    const/16 v5, 0x11

    .line 3698
    invoke-virtual {p3, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    const/16 v5, 0x12

    .line 3700
    invoke-virtual {p3, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    const/4 v5, 0x3

    .line 3703
    invoke-virtual {p3, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    const/4 v5, 0x4

    .line 3705
    invoke-virtual {p3, v5, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    const/16 v5, 0xb

    .line 3707
    invoke-virtual {p3, v5, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    const/4 v5, 0x5

    .line 3711
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_128

    .line 3713
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 3717
    :cond_128
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_141

    const-string v7, "android.appwidget.provider.semConfigureActivity"

    .line 3719
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_141

    .line 3721
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->semConfigure:Landroid/content/ComponentName;

    .line 3726
    :cond_141
    invoke-virtual {p2, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 3727
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result p0

    iput p0, v4, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 p0, 0x6

    .line 3728
    invoke-virtual {p3, p0, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    iput p0, v4, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    const/16 p0, 0xe

    .line 3730
    invoke-virtual {p3, p0, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    iput p0, v4, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    const/4 p0, 0x7

    const/4 p2, -0x1

    .line 3732
    invoke-virtual {p3, p0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    iput p0, v4, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/16 p0, 0x8

    .line 3735
    invoke-virtual {p3, p0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    iput p0, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/16 p0, 0xc

    .line 3738
    invoke-virtual {p3, p0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    iput p0, v4, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    const/16 p0, 0xd

    .line 3741
    invoke-virtual {p3, p0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    iput p0, v4, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    .line 3743
    invoke-virtual {p3, v11, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    iput p0, v4, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    .line 3745
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_189
    .catchall {:try_start_93 .. :try_end_189} :catchall_192

    .line 3747
    :try_start_189
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_18c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_189 .. :try_end_18c} :catch_19e
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_18c} :catch_19e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_189 .. :try_end_18c} :catch_19e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_189 .. :try_end_18c} :catch_19e

    return-object v4

    :catchall_18d
    move-exception p0

    .line 3669
    :try_start_18e
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3670
    throw p0
    :try_end_192
    .catchall {:try_start_18e .. :try_end_192} :catchall_192

    :catchall_192
    move-exception p0

    if-eqz v3, :cond_19d

    .line 3634
    :try_start_195
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_198
    .catchall {:try_start_195 .. :try_end_198} :catchall_199

    goto :goto_19d

    :catchall_199
    move-exception p2

    :try_start_19a
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19d
    :goto_19d
    throw p0
    :try_end_19e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19a .. :try_end_19e} :catch_19e
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_19e} :catch_19e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19a .. :try_end_19e} :catch_19e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19a .. :try_end_19e} :catch_19e

    :catch_19e
    move-exception p0

    .line 3752
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "XML parsing failed for AppWidget provider "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public static parseWidgetIdOptions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;
    .registers 6

    .line 3539
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "restore_completed"

    const/4 v3, 0x0

    .line 3540
    invoke-interface {p0, v1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    const-string v3, "appWidgetRestoreCompleted"

    .line 3542
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_16
    const-string/jumbo v2, "min_width"

    const/4 v3, -0x1

    .line 3544
    invoke-interface {p0, v1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_25

    const-string v4, "appWidgetMinWidth"

    .line 3546
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_25
    const-string/jumbo v2, "min_height"

    .line 3548
    invoke-interface {p0, v1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_33

    const-string v4, "appWidgetMinHeight"

    .line 3550
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_33
    const-string/jumbo v2, "max_width"

    .line 3552
    invoke-interface {p0, v1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_41

    const-string v4, "appWidgetMaxWidth"

    .line 3554
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_41
    const-string/jumbo v2, "max_height"

    .line 3556
    invoke-interface {p0, v1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_4f

    const-string v4, "appWidgetMaxHeight"

    .line 3558
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4f
    const-string/jumbo v2, "host_category"

    .line 3560
    invoke-interface {p0, v1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_5d

    const-string v4, "appWidgetCategory"

    .line 3563
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5d
    const-string v2, "column_span"

    .line 3567
    invoke-interface {p0, v1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_6b

    const-string/jumbo v4, "semAppWidgetColumnSpan"

    .line 3569
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6b
    const-string/jumbo v2, "row_span"

    .line 3571
    invoke-interface {p0, v1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v3, :cond_7a

    const-string/jumbo v1, "semAppWidgetRowSpan"

    .line 3573
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_7a
    return-object v0
.end method

.method public static serializeAppWidget(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "g"

    .line 3502
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3503
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const-string/jumbo v3, "id"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3504
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    const-string/jumbo v3, "rid"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3505
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    const-string/jumbo v3, "h"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3506
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_2c

    .line 3507
    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    const-string/jumbo v3, "p"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3509
    :cond_2c
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz v2, :cond_be

    const-string v3, "appWidgetMinWidth"

    .line 3510
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3511
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v4, "appWidgetMinHeight"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 3512
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v5, "appWidgetMaxWidth"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 3513
    iget-object v5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v6, "appWidgetMaxHeight"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    if-lez v2, :cond_52

    goto :goto_53

    :cond_52
    move v2, v6

    :goto_53
    const-string/jumbo v7, "min_width"

    .line 3514
    invoke-interface {p0, v0, v7, v2}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v3, :cond_5c

    goto :goto_5d

    :cond_5c
    move v3, v6

    :goto_5d
    const-string/jumbo v2, "min_height"

    .line 3515
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v4, :cond_66

    goto :goto_67

    :cond_66
    move v4, v6

    :goto_67
    const-string/jumbo v2, "max_width"

    .line 3516
    invoke-interface {p0, v0, v2, v4}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v5, :cond_70

    goto :goto_71

    :cond_70
    move v5, v6

    :goto_71
    const-string/jumbo v2, "max_height"

    .line 3517
    invoke-interface {p0, v0, v2, v5}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3518
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v3, "appWidgetCategory"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "host_category"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p2, :cond_95

    .line 3521
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v2, "appWidgetRestoreCompleted"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const-string/jumbo v2, "restore_completed"

    .line 3523
    invoke-interface {p0, v0, v2, p2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3527
    :cond_95
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string/jumbo v2, "semAppWidgetColumnSpan"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 3528
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string/jumbo v2, "semAppWidgetRowSpan"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p2, :cond_be

    if-lez p1, :cond_be

    .line 3530
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "column_span"

    invoke-interface {p0, v0, v2, p2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3531
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "row_span"

    invoke-interface {p0, v0, p2, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3535
    :cond_be
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static serializeHost(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "h"

    .line 3493
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3494
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "pkg"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3495
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    const-string/jumbo v3, "id"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3496
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    const-string/jumbo v2, "tag"

    invoke-interface {p0, v0, v2, p1}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3497
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static serializeProvider(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3460
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3461
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3462
    invoke-static {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProviderInner(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Z)V

    return-void
.end method

.method public static serializeProviderInner(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3474
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3475
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v1, "p"

    .line 3476
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3477
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pkg"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3478
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cl"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3479
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    const-string/jumbo v3, "tag"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3480
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 3481
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    const-string/jumbo v3, "info_tag"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_40
    if-eqz p2, :cond_65

    .line 3483
    iget-boolean v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->mInfoParsed:Z

    if-nez v2, :cond_65

    .line 3484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider info from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " won\'t be persisted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppWidgetServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    if-eqz p2, :cond_70

    .line 3486
    iget-boolean p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->mInfoParsed:Z

    if-eqz p2, :cond_70

    .line 3487
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetXmlUtil;->writeAppWidgetProviderInfoLocked(Landroid/util/TypedXmlSerializer;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 3489
    :cond_70
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static serializeProviderWithProviderInfo(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3467
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3468
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3469
    invoke-static {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProviderInner(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Z)V

    return-void
.end method


# virtual methods
.method public final addProviderIdToUpdateArray(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 3813
    :cond_3
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUpdateScreenSizeProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1c

    .line 3815
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUpdateScreenSizeProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-void

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3819
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Dual display] Add provider to update list at = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUpdateScreenSizeProviders:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .registers 8

    .line 3159
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return v1

    .line 3163
    :cond_d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3164
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v0, :cond_20

    return v1

    .line 3169
    :cond_20
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3171
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId-IA;)V

    .line 3176
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    if-nez v3, :cond_47

    .line 3181
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId-IA;)V

    .line 3182
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 3185
    :cond_47
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->createPartialProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_94

    if-eqz v3, :cond_5f

    .line 3188
    iget-boolean v0, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v0, :cond_92

    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-nez p0, :cond_92

    .line 3190
    iput-object v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3191
    iput-boolean v1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 3192
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setPartialInfoLocked(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_92

    .line 3198
    :cond_5f
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-direct {v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider-IA;)V

    .line 3199
    iput-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3200
    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setPartialInfoLocked(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 3201
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addProviderLocked Provider is added "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppWidgetServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    :goto_92
    const/4 p0, 0x1

    return p0

    :cond_94
    return v1
.end method

.method public addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 4

    .line 4019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addWidgetLocked, widget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", widget id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    .line 4020
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    .line 4019
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4023
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    return-void
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .registers 8

    .line 1347
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v1, "AppWidgetServiceImpl"

    .line 1350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allocateAppWidgetId() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1356
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1358
    :try_start_22
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isInstantAppLocked(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string p0, "AppWidgetServiceImpl"

    .line 1359
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Instant package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot host app widgets"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1360
    monitor-exit v1

    return p0

    .line 1363
    :cond_48
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1365
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_59

    .line 1366
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1369
    :cond_59
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAndGetAppWidgetIdLocked(I)I

    move-result v2

    .line 1373
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, v4, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1374
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object p1

    .line 1376
    new-instance p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    const/4 v3, 0x0

    invoke-direct {p2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget-IA;)V

    .line 1377
    iput v2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 1378
    iput-object p1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1380
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1383
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    const-string p0, "AppWidgetServiceImpl"

    .line 1385
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Allocated widget id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for host "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    monitor-exit v1

    return v2

    :catchall_a1
    move-exception p0

    .line 1390
    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_22 .. :try_end_a3} :catchall_a1

    throw p0
.end method

.method public final allocateAppWidgetIdWhileBindingLocked(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 12

    .line 1730
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1737
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_12

    .line 1738
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1743
    :cond_12
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1744
    iget v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    if-ne v6, p3, :cond_1a

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v5

    if-ne v5, v0, :cond_1a

    move v4, v2

    goto :goto_1a

    :cond_36
    const-string/jumbo v1, "ifEmpty"

    .line 1752
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a1

    const-string p4, "AppWidgetServiceImpl"

    if-eqz v4, :cond_5d

    .line 1755
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can not allocate ID "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " #1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1760
    :cond_5d
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1761
    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object p1

    .line 1763
    new-instance p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget-IA;)V

    .line 1764
    iput p3, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 1765
    iput-object p1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1767
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1768
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1771
    invoke-virtual {p0, v0, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->setMinAppWidgetIdLocked(II)V

    .line 1776
    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProductDEV:Z

    if-eqz p0, :cond_a1

    .line 1777
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Allocated widget id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for host "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    return v2
.end method

.method public final applyResourceOverlaysToWidgetsLocked(Ljava/util/Set;IZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 4606
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_bd

    .line 4607
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4608
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    if-eq v4, p2, :cond_1a

    goto/16 :goto_b9

    .line 4612
    :cond_1a
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez p3, :cond_2c

    .line 4613
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    goto/16 :goto_b9

    :cond_2c
    const/4 v5, 0x0

    .line 4619
    :try_start_2d
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v7, 0x400

    invoke-interface {v6, v4, v7, v8, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_35} :catch_36

    goto :goto_56

    :catch_36
    move-exception v6

    .line 4622
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to retrieve app info for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "AppWidgetServiceImpl"

    invoke-static {v7, v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    :goto_56
    if-eqz v4, :cond_b9

    .line 4627
    iget-object v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v6, :cond_b9

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    if-nez v6, :cond_61

    goto :goto_b9

    .line 4631
    :cond_61
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_b9

    .line 4632
    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_70

    goto :goto_b9

    .line 4641
    :cond_70
    new-instance v7, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v7, v6}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 4642
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    if-nez v6, :cond_7b

    move-object v6, v5

    goto :goto_81

    .line 4643
    :cond_7b
    invoke-virtual {v6}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    :goto_81
    iput-object v6, v7, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 4644
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    if-nez v4, :cond_88

    goto :goto_8f

    .line 4645
    :cond_88
    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, [Ljava/lang/String;

    :goto_8f
    iput-object v5, v7, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 4646
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iput-object v7, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4648
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_9e
    if-ge v5, v4, :cond_b9

    .line 4649
    iget-object v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4650
    iget-object v8, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz v8, :cond_af

    .line 4651
    invoke-virtual {v8, v7}, Landroid/widget/RemoteViews;->updateAppInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 4653
    :cond_af
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_b6

    .line 4654
    invoke-virtual {v6, v7}, Landroid/widget/RemoteViews;->updateAppInfo(Landroid/content/pm/ApplicationInfo;)V

    :cond_b6
    add-int/lit8 v5, v5, 0x1

    goto :goto_9e

    :cond_b9
    :goto_b9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_bd
    return-void
.end method

.method public bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 14

    .line 1591
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v1, "AppWidgetServiceImpl"

    .line 1594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindAppWidgetId() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1601
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_31

    return v2

    .line 1607
    :cond_31
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 1608
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1607
    invoke-virtual {v1, v3, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3e

    return v2

    .line 1615
    :cond_3e
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1616
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 1619
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1620
    :try_start_4c
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1623
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->hasCallerBindPermissionOrBindWhiteListedLocked(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 1625
    monitor-exit v1

    return v2

    :cond_59
    if-eqz p5, :cond_9d

    const-string v3, "com.sec.android.app.launcher"

    .line 1630
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    const-string v3, "appWidgetIdForceAllocMode"

    .line 1631
    invoke-virtual {p5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "appWidgetIdForceAllocHostId"

    const/4 v5, -0x1

    .line 1632
    invoke-virtual {p5, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v3, :cond_9d

    if-lez v4, :cond_9d

    const-string v5, "AppWidgetServiceImpl"

    .line 1635
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appWidgetId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ".HostId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ".alloc : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->allocateAppWidgetIdWhileBindingLocked(Ljava/lang/String;IILjava/lang/String;)Z

    .line 1647
    :cond_9d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1646
    invoke-virtual {p0, p2, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v3

    if-nez v3, :cond_bf

    const-string p0, "AppWidgetServiceImpl"

    .line 1650
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad widget id "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    monitor-exit v1

    return v2

    .line 1654
    :cond_bf
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v4, :cond_e7

    const-string p0, "AppWidgetServiceImpl"

    .line 1655
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Widget id "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " already bound to: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    monitor-exit v1

    return v2

    .line 1660
    :cond_e7
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_115

    const-string p0, "AppWidgetServiceImpl"

    .line 1663
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not installed  for profile "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    monitor-exit v1

    return v2

    .line 1670
    :cond_115
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v6, 0x0

    invoke-direct {v5, v4, p4, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId-IA;)V

    .line 1671
    invoke-virtual {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v4

    if-nez v4, :cond_141

    const-string p0, "AppWidgetServiceImpl"

    .line 1674
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No widget provider "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for profile "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    monitor-exit v1

    return v2

    .line 1679
    :cond_141
    iget-boolean p3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz p3, :cond_15d

    const-string p0, "AppWidgetServiceImpl"

    .line 1680
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t bind to a 3rd party provider in safe mode "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    monitor-exit v1

    return v2

    .line 1685
    :cond_15d
    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz p5, :cond_166

    .line 1686
    invoke-static {p5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_16b

    :cond_166
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :goto_16b
    iput-object p3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string p4, "appWidgetCategory"

    .line 1689
    invoke-virtual {p3, p4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_17d

    .line 1690
    iget-object p3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string p5, "appWidgetCategory"

    invoke-virtual {p3, p5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1694
    :cond_17d
    iget-object p3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1696
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1698
    iget-object p3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p3, p4, :cond_190

    .line 1701
    invoke-virtual {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    :cond_190
    new-array p3, p4, [I

    aput p2, p3, v2

    .line 1708
    invoke-virtual {p0, v4, p3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[IZ)V

    .line 1711
    iget-object p3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object p3

    invoke-virtual {p0, v4, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 1713
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1718
    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProductDEV:Z

    if-eqz p0, :cond_1cf

    const-string p0, "AppWidgetServiceImpl"

    .line 1719
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Bound widget "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to provider "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", callingPackage = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :cond_1cf
    monitor-exit v1

    return p4

    :catchall_1d1
    move-exception p0

    monitor-exit v1
    :try_end_1d3
    .catchall {:try_start_4c .. :try_end_1d3} :catchall_1d1

    throw p0
.end method

.method public final bindLoadedWidgetsLocked(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;",
            ">;)V"
        }
    .end annotation

    .line 3963
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_3a

    .line 3965
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    .line 3966
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3968
    iget v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->providerTag:I

    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->findProviderByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v3, :cond_1b

    goto :goto_37

    .line 3975
    :cond_1b
    iget v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->hostTag:I

    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->findHostByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-nez v1, :cond_26

    goto :goto_37

    .line 3981
    :cond_26
    iget-object v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3982
    iget-object v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3983
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    :goto_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_3a
    return-void
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;I)Z
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v11, p3

    .line 1842
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1847
    iget-object v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1848
    :try_start_d
    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1853
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v3, p1

    .line 1852
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v13

    if-eqz v13, :cond_d5

    .line 1862
    iget-object v2, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_be

    .line 1867
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v14, 0x0

    if-nez v2, :cond_3f

    const-string v0, "AppWidgetServiceImpl"

    .line 1869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component is null, Intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    monitor-exit v12

    return v14

    .line 1875
    :cond_3f
    iget-object v3, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1876
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1877
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 1884
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    iget-object v4, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1885
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    .line 1884
    invoke-virtual {v3, v2, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceServiceExistsAndRequiresBindRemoteViewsPermission(Landroid/content/ComponentName;I)V

    .line 1890
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15
    :try_end_62
    .catchall {:try_start_d .. :try_end_62} :catchall_ec

    .line 1894
    :try_start_62
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 1896
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const v3, 0x2000001

    and-int v8, p7, v3

    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 1899
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v3, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v10

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    .line 1894
    invoke-interface/range {v2 .. v10}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_ab

    .line 1904
    iget-object v2, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 1905
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/content/Intent$FilterComparison;

    invoke-direct {v3, v11}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1904
    invoke-virtual {v0, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_a5} :catch_ab
    .catchall {:try_start_62 .. :try_end_a5} :catchall_af

    const/4 v0, 0x1

    .line 1911
    :try_start_a6
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v12

    return v0

    :catch_ab
    :cond_ab
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b4

    :catchall_af
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1912
    throw v0

    .line 1913
    :goto_b4
    monitor-exit v12

    return v14

    .line 1878
    :cond_b6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The taget service not in the same package as the widget provider"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1863
    :cond_be
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No provider for widget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1857
    :cond_d5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad widget id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_ec
    move-exception v0

    .line 1913
    monitor-exit v12
    :try_end_ee
    .catchall {:try_start_a6 .. :try_end_ee} :catchall_ec

    throw v0
.end method

.method public final bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    .registers 7

    .line 4824
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4826
    :try_start_4
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const v2, 0x2000001

    invoke-virtual {p0, p1, p2, v2, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 4830
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4831
    throw p0
.end method

.method public final cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 5

    .line 2532
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v0, :cond_25

    .line 2534
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAlarmHistoryLocked(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 2539
    iput-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    :cond_25
    return-void
.end method

.method public changeHostIds(Ljava/lang/String;[II)V
    .registers 10

    .line 2375
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz p2, :cond_4a

    .line 2377
    array-length v1, p2

    if-nez v1, :cond_a

    goto :goto_4a

    .line 2382
    :cond_a
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 2384
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2385
    :try_start_12
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 2387
    array-length v0, p2

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_45

    .line 2389
    aget v3, p2, v2

    .line 2394
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2393
    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 2397
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5, p3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 2398
    invoke-virtual {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v4

    if-eqz v4, :cond_42

    .line 2400
    iget-object v5, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2401
    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2402
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2406
    :cond_45
    monitor-exit v1

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_12 .. :try_end_49} :catchall_47

    throw p0

    :cond_4a
    :goto_4a
    return-void
.end method

.method public final clearProvidersAndHostsTagsLocked()V
    .registers 6

    .line 4168
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, -0x1

    if-ge v2, v0, :cond_18

    .line 4170
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4171
    iput v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4174
    :cond_18
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1e
    if-ge v1, v0, :cond_2d

    .line 4176
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4177
    iput v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2d
    return-void
.end method

.method public clearWidgetsLocked()V
    .registers 2

    .line 4093
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4095
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetsClearedLocked()V

    return-void
.end method

.method public final computeMaximumWidgetBitmapMemory()V
    .registers 3

    .line 581
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    .line 582
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 583
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 587
    iget v0, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    return-void
.end method

.method public createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;
    .registers 14

    .line 1484
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1491
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1493
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1494
    :try_start_c
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1499
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1498
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object p1

    if-eqz p1, :cond_80

    .line 1505
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz p1, :cond_69

    and-int/lit16 p3, p3, -0xc4

    .line 1513
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "appWidgetId"

    .line 1514
    invoke-virtual {v4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1515
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1516
    invoke-virtual {v4, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1518
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    const/4 p3, 0x1

    .line 1519
    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setIgnorePendingIntentCreatorForegroundState(Z)V

    .line 1522
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_45
    .catchall {:try_start_c .. :try_end_45} :catchall_97

    .line 1524
    :try_start_45
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x54000000

    .line 1527
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    new-instance v7, Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result p0

    invoke-direct {v7, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1524
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 1528
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0
    :try_end_5f
    .catchall {:try_start_45 .. :try_end_5f} :catchall_64

    .line 1530
    :try_start_5f
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    return-object p0

    :catchall_64
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1531
    throw p0

    .line 1507
    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Widget not bound "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1502
    :cond_80
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad widget id "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_97
    move-exception p0

    .line 1532
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_5f .. :try_end_99} :catchall_97

    throw p0
.end method

.method public final createPartialProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 8

    .line 3609
    iget-object p0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_1e

    .line 3614
    iget-object v3, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3615
    iget-object p3, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_1e

    move p3, v1

    goto :goto_1f

    :cond_1e
    move p3, v2

    :goto_1f
    const-string v3, "android.appwidget.provider"

    .line 3617
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    or-int p0, p3, v1

    if-eqz p0, :cond_3b

    .line 3623
    new-instance p0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 3624
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    iput-object p1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 3625
    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object p1, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    return-object p0

    :cond_3b
    return-object v0
.end method

.method public final decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 6

    .line 2591
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 2592
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2593
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 2594
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2595
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 2596
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2599
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2600
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent$FilterComparison;

    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2601
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_3f
    return-void
.end method

.method public deleteAllHosts()V
    .registers 9

    .line 1958
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1964
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1965
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    const/4 v2, 0x0

    .line 1969
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_13
    if-ltz v3, :cond_2e

    .line 1971
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1974
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    if-ne v6, v7, :cond_2b

    .line 1975
    invoke-virtual {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    move v2, v4

    :cond_2b
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    :cond_2e
    if-eqz v2, :cond_57

    .line 1985
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1987
    iget-boolean v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProductDEV:Z

    if-eqz v2, :cond_57

    .line 1988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAllHosts from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeLogToFile(Ljava/lang/String;)V

    .line 1991
    :cond_57
    monitor-exit v1

    return-void

    :catchall_59
    move-exception p0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public deleteAppWidgetId(Ljava/lang/String;I)V
    .registers 9

    .line 1395
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1402
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1404
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1405
    :try_start_c
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1409
    invoke-virtual {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 1413
    monitor-exit v1

    return-void

    .line 1416
    :cond_1b
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1418
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1420
    iget-boolean v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProductDEV:Z

    if-eqz v3, :cond_6b

    const-string v3, "AppWidgetServiceImpl"

    .line 1421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted widget id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAppWidgetId "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".u"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeLogToFile(Ljava/lang/String;)V

    .line 1425
    :cond_6b
    monitor-exit v1

    return-void

    :catchall_6d
    move-exception p0

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_c .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public final deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 4

    .line 2495
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v0, :cond_1d

    .line 2496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider is not yet set for widget "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 2499
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2502
    :goto_20
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2503
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2504
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 2506
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2508
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_55

    .line 2510
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2511
    iget-boolean v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v1, :cond_55

    .line 2513
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDeletedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2515
    iget-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 2517
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 2520
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    goto :goto_55

    .line 2522
    :cond_4c
    iget-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    :cond_55
    :goto_55
    return-void
.end method

.method public deleteHost(Ljava/lang/String;I)V
    .registers 7

    .line 1921
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1928
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1930
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1931
    :try_start_c
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1935
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1936
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v2

    if-nez v2, :cond_20

    .line 1939
    monitor-exit v1

    return-void

    .line 1942
    :cond_20
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1944
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1950
    iget-boolean v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProductDEV:Z

    if-eqz v2, :cond_4e

    .line 1951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteHost "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".u"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeLogToFile(Ljava/lang/String;)V

    .line 1953
    :cond_4e
    monitor-exit v1

    return-void

    :catchall_50
    move-exception p0

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_c .. :try_end_52} :catchall_50

    throw p0
.end method

.method public final deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 4

    .line 2474
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2476
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2477
    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2479
    :cond_18
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 2482
    iput-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    const-string v0, "AppWidgetServiceImpl"

    const-string v1, "deleteHostLocked callbacks : null"

    .line 2485
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Host deleted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateHostHistoryLocked(Ljava/lang/String;)V

    return-void
.end method

.method public final deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 5

    const-string v0, "AppWidgetServiceImpl"

    if-eqz p1, :cond_27

    .line 3260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider is removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :cond_27
    const-string v1, "Provider is null "

    .line 3262
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    const/4 v0, -0x1

    .line 3264
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V

    .line 3265
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3268
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    return-void
.end method

.method public final deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V
    .registers 9

    const-string v0, "AppWidgetServiceImpl"

    .line 3212
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3214
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_69

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_69

    add-int/lit8 v1, v1, -0x1

    :goto_18
    if-ltz v1, :cond_68

    .line 3217
    :try_start_1a
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3219
    invoke-virtual {p0, p2, v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 3221
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3222
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz p2, :cond_47

    .line 3224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteProviderLocked : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    :cond_47
    const-string p2, "deleteProviderLocked component is null"

    .line 3226
    invoke-static {v0, p2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4c} :catch_4d

    goto :goto_65

    :catch_4d
    move-exception p2

    .line 3229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteProviderLocked e : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3230
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_65
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    :cond_68
    return-void

    :cond_69
    add-int/lit8 v1, v1, -0x1

    :goto_6b
    if-ltz v1, :cond_9e

    .line 3237
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    const/4 v2, -0x1

    if-eq p2, v2, :cond_80

    .line 3238
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3239
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v2

    if-ne p2, v2, :cond_9b

    .line 3240
    :cond_80
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3242
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 3244
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3245
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 3246
    iput-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3247
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 3248
    iput-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    :cond_9b
    add-int/lit8 v1, v1, -0x1

    goto :goto_6b

    :cond_9e
    return-void
.end method

.method public final destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 7

    .line 2545
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;)V

    .line 2565
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2567
    :try_start_9
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const v3, 0x2000001

    iget-object p2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 2569
    invoke-virtual {p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->getProfile()Landroid/os/UserHandle;

    move-result-object p2

    .line 2567
    invoke-virtual {p0, p1, v0, v3, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1d

    .line 2571
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1d
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2572
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1144
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1146
    :cond_b
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1147
    :try_start_e
    array-length v1, p3

    if-lez v1, :cond_20

    const-string v1, "--proto"

    const/4 v2, 0x0

    aget-object p3, p3, v2

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_20

    .line 1148
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_23

    .line 1150
    :cond_20
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpInternalLocked(Ljava/io/PrintWriter;)V

    .line 1152
    :goto_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final dumpInternalLocked(Ljava/io/PrintWriter;)V
    .registers 8

    .line 1195
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "Providers:"

    .line 1196
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1d

    .line 1198
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-static {v3, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1201
    :cond_1d
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v2, " "

    .line 1202
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "Widgets:"

    .line 1203
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v1

    :goto_2e
    if-ge v3, v0, :cond_3e

    .line 1205
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    invoke-static {v4, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/io/PrintWriter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 1208
    :cond_3e
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1209
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "Hosts:"

    .line 1210
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v1

    :goto_4d
    if-ge v3, v0, :cond_5d

    .line 1212
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-static {v4, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpHost(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 1215
    :cond_5d
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1216
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "Grants:"

    .line 1217
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v1

    :goto_6c
    if-ge v3, v0, :cond_7c

    .line 1219
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1220
    invoke-static {v4, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpGrant(Landroid/util/Pair;ILjava/io/PrintWriter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    .line 1225
    :cond_7c
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistory:[Ljava/lang/String;

    array-length v0, v0

    .line 1226
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "Host history:"

    .line 1227
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v1

    :goto_88
    const-string v4, "  "

    if-ge v3, v0, :cond_9f

    .line 1229
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistory:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_9c

    .line 1230
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1231
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistory:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9c
    add-int/lit8 v3, v3, 0x1

    goto :goto_88

    .line 1235
    :cond_9f
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistory:[Ljava/lang/String;

    array-length v0, v0

    .line 1236
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "Appwidget providers history:"

    .line 1237
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v1

    :goto_ab
    if-ge v3, v0, :cond_c0

    .line 1239
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistory:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_bd

    .line 1240
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1241
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistory:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_bd
    add-int/lit8 v3, v3, 0x1

    goto :goto_ab

    .line 1245
    :cond_c0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistory:[Ljava/lang/String;

    array-length v0, v0

    .line 1246
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "AppWidget alarm history:"

    .line 1247
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_cb
    if-ge v1, v0, :cond_e0

    .line 1249
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistory:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_dd

    .line 1250
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1251
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistory:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_dd
    add-int/lit8 v1, v1, 0x1

    goto :goto_cb

    .line 1255
    :cond_e0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "AppWidget restore history:"

    .line 1256
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1257
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->getLogText()Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez p0, :cond_f1

    const-string p0, ""

    goto :goto_f5

    .line 1258
    :cond_f1
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->getLogText()Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1257
    :goto_f5
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final dumpProto(Ljava/io/FileDescriptor;)V
    .registers 5

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump proto for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " widgets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1159
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_2d
    if-ge v1, p1, :cond_3d

    .line 1161
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProtoWidget(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1163
    :cond_3d
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public final dumpProtoWidget(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 10

    .line 1167
    iget-object p0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz p0, :cond_c6

    iget-object p0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez p0, :cond_a

    goto/16 :goto_c6

    :cond_a
    const-wide v0, 0x20b00000001L

    .line 1172
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10800000001L

    .line 1173
    iget-object p0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1174
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result p0

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p0, v4, :cond_2a

    move p0, v5

    goto :goto_2b

    :cond_2a
    move p0, v6

    .line 1173
    :goto_2b
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000002L

    .line 1175
    iget-object p0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez p0, :cond_3a

    goto :goto_3b

    :cond_3a
    move v5, v6

    :goto_3b
    invoke-virtual {p1, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10900000003L

    .line 1176
    iget-object p0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10900000004L

    .line 1177
    iget-object p0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10900000005L

    .line 1178
    iget-object p0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1179
    iget-object p0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz p0, :cond_c2

    const-wide v2, 0x1080000000aL

    const-string v4, "appWidgetRestoreCompleted"

    .line 1181
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 1180
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10500000006L

    .line 1182
    iget-object p0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v4, "appWidgetMinWidth"

    .line 1183
    invoke-virtual {p0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 1182
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000007L

    .line 1184
    iget-object p0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v4, "appWidgetMinHeight"

    .line 1185
    invoke-virtual {p0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 1184
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000008L

    .line 1186
    iget-object p0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v4, "appWidgetMaxWidth"

    .line 1187
    invoke-virtual {p0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 1186
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000009L

    .line 1188
    iget-object p0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string p2, "appWidgetMaxHeight"

    .line 1189
    invoke-virtual {p0, p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 1188
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1191
    :cond_c2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    .line 1168
    :cond_c6
    :goto_c6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "skip dumping widget because host or provider is null: widget.host="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " widget.provider="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppWidgetServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final ensureGroupStateLoadedLocked(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1106
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    return-void
.end method

.method public final ensureGroupStateLoadedLocked(IZ)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-eqz p2, :cond_25

    .line 1111
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isUserRunningAndUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_25

    .line 1112
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be unlocked for widgets to be available"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    :goto_25
    if-eqz p2, :cond_4a

    .line 1115
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result p2

    if-nez p2, :cond_2e

    goto :goto_4a

    .line 1116
    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Profile "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must have unlocked parent"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1119
    :cond_4a
    :goto_4a
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object p1

    .line 1121
    new-instance p2, Landroid/util/IntArray;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/util/IntArray;-><init>(I)V

    .line 1122
    array-length v1, p1

    const/4 v2, 0x0

    :goto_58
    if-ge v2, v1, :cond_6f

    aget v3, p1, v2

    .line 1123
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 1124
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1125
    invoke-virtual {p2, v3}, Landroid/util/IntArray;->add(I)V

    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 1128
    :cond_6f
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result p1

    if-gtz p1, :cond_76

    return-void

    .line 1131
    :cond_76
    invoke-virtual {p2}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    .line 1132
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->clearProvidersAndHostsTagsLocked()V

    .line 1134
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGroupWidgetProvidersLocked([I)V

    .line 1135
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGroupStateLocked([I)V

    return-void
.end method

.method public final findHostByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 7

    const/4 v0, 0x0

    if-gez p1, :cond_4

    return-object v0

    .line 4005
    :cond_4
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    .line 4007
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4008
    iget v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    if-ne v4, p1, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    return-object v0
.end method

.method public final findProviderByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 7

    const/4 v0, 0x0

    if-gez p1, :cond_4

    return-object v0

    .line 3991
    :cond_4
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    .line 3993
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3994
    iget v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    if-ne v4, p1, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    return-object v0
.end method

.method public getAllProvidersForProfile(IIZ)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 448
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_71

    .line 456
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    :try_start_d
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    const/4 v1, 0x0

    .line 461
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 462
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v2, :cond_6c

    .line 464
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 465
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 468
    iget-boolean v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v7, :cond_69

    iget v7, v6, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v7, p1

    if-nez v7, :cond_34

    goto :goto_69

    .line 473
    :cond_34
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    if-ne v7, p2, :cond_69

    if-eqz p3, :cond_50

    .line 474
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    iget-object v9, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 476
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 475
    invoke-virtual {v8, v9, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderWhiteListed(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 478
    :cond_50
    sget-boolean v8, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sSProtectPolicy:Z

    if-eqz v8, :cond_5b

    invoke-virtual {v5, v3, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->semIsHidden(Landroid/content/pm/PackageManager;I)Z

    move-result v5

    if-eqz v5, :cond_5b

    goto :goto_69

    :cond_5b
    if-nez v1, :cond_62

    .line 483
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    :cond_62
    invoke-static {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_69
    :goto_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 489
    :cond_6c
    monitor-exit v0

    return-object v1

    :catchall_6e
    move-exception p0

    .line 490
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_d .. :try_end_70} :catchall_6e

    throw p0

    .line 449
    :cond_71
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only be called by system user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 405
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_a1

    .line 408
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 409
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_15

    if-nez p1, :cond_2f

    const/4 v2, 0x1

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    if-nez v2, :cond_3e

    if-nez v2, :cond_15

    .line 411
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 412
    :cond_3e
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_44
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 413
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 414
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 415
    iget v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 418
    :cond_6c
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_89

    .line 421
    iget v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    :cond_89
    if-nez v3, :cond_44

    .line 424
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 425
    iget v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 406
    :cond_a1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only be called by system user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a9} :catch_a9

    :catch_a9
    move-exception p0

    const-string p1, "AppWidgetServiceImpl"

    const-string p2, "error in getAllWidgets"

    .line 434
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b1
    return-object v0
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .registers 6

    .line 1786
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1793
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1795
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1796
    :try_start_10
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1800
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId-IA;)V

    .line 1801
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 1804
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_2b
    const/4 p0, 0x0

    new-array p0, p0, [I

    .line 1807
    monitor-exit v1

    return-object p0

    :catchall_30
    move-exception p0

    .line 1808
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public getAppWidgetIdsForHost(Ljava/lang/String;I)[I
    .registers 6

    .line 1813
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1820
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1822
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1823
    :try_start_c
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1827
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v0, v2, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1828
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 1831
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_26
    const/4 p0, 0x0

    new-array p0, p0, [I

    .line 1834
    monitor-exit v1

    return-object p0

    :catchall_2b
    move-exception p0

    .line 1835
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 7

    .line 1996
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v1, "AppWidgetServiceImpl"

    .line 1998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppWidgetInfo() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 2003
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2004
    :try_start_2a
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 2009
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2008
    invoke-virtual {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 2011
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_4b

    iget-boolean v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v3, :cond_4b

    .line 2012
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_4b
    if-eqz p1, :cond_96

    const-string p0, "AppWidgetServiceImpl"

    .line 2016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "widget provider = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iget-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz p0, :cond_b5

    const-string p0, "AppWidgetServiceImpl"

    .line 2018
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "widget provider zombi = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    :cond_96
    const-string p0, "AppWidgetServiceImpl"

    .line 2021
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "widget is null = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b5
    :goto_b5
    const/4 p0, 0x0

    .line 2024
    monitor-exit v1

    return-object p0

    :catchall_b8
    move-exception p0

    .line 2025
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_2a .. :try_end_ba} :catchall_b8

    throw p0
.end method

.method public getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5

    .line 2096
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2103
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 2105
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2106
    :try_start_c
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 2111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2110
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 2113
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz p0, :cond_23

    .line 2114
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 2117
    :cond_23
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v1

    return-object p0

    :catchall_27
    move-exception p0

    .line 2118
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_27

    throw p0
.end method

.method public getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;
    .registers 5

    .line 2030
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2037
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 2039
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2040
    :try_start_c
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 2045
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2044
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 2048
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_23
    const/4 p0, 0x0

    .line 2051
    monitor-exit v1

    return-object p0

    :catchall_26
    move-exception p0

    .line 2052
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final getAshmemFdCount(Ljava/util/ArrayList;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string p0, "exception to close buffer reader : "

    const-string v0, "AppWidgetServiceImpl"

    .line 6552
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "dev/ashmem/Parcel Blob_"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6559
    :try_start_c
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/maps"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_a2
    .catchall {:try_start_c .. :try_end_30} :catchall_a0

    .line 6562
    :cond_30
    :goto_30
    :try_start_30
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7e

    .line 6563
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_30

    .line 6564
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v7, 0x17

    :goto_43
    add-int/lit8 v9, v7, 0x1

    .line 6566
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x30

    if-lt v7, v10, :cond_57

    const/16 v10, 0x39

    if-gt v7, v10, :cond_57

    int-to-char v7, v7

    .line 6567
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v7, v9

    goto :goto_43

    .line 6569
    :cond_57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_30

    .line 6570
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 6571
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_69
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_30

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_79} :catch_9d
    .catchall {:try_start_30 .. :try_end_79} :catchall_9a

    if-ne v8, v4, :cond_69

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 6586
    :cond_7e
    :try_start_7e
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_c8

    :catch_82
    move-exception v3

    .line 6588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_88
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c8

    :catchall_9a
    move-exception p1

    move-object v4, v6

    goto :goto_f7

    :catch_9d
    move-exception v3

    move-object v4, v6

    goto :goto_a3

    :catchall_a0
    move-exception p1

    goto :goto_f7

    :catch_a2
    move-exception v3

    .line 6582
    :goto_a3
    :try_start_a3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception to get process name by proc : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_a3 .. :try_end_bb} :catchall_a0

    if-eqz v4, :cond_c8

    .line 6586
    :try_start_bd
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c1

    goto :goto_c8

    :catch_c1
    move-exception v3

    .line 6588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_88

    .line 6593
    :cond_c8
    :goto_c8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 6594
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAshmemFdCount returning : pid = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", fd count = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :goto_f7
    if-eqz v4, :cond_114

    .line 6586
    :try_start_f9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_fd

    goto :goto_114

    :catch_fd
    move-exception v1

    .line 6588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6591
    :cond_114
    :goto_114
    throw p1
.end method

.method public final getCanonicalPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    .line 4794
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4797
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5, p3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_18
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 4808
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_16
    move-exception p0

    goto :goto_38

    .line 4801
    :catch_18
    :try_start_18
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 4802
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 4803
    array-length p1, p0

    if-lez p1, :cond_33

    .line 4804
    aget-object p0, p0, p3
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_16

    .line 4808
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :goto_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4809
    throw p0
.end method

.method public final getFdFromPackage(ILjava/lang/String;)I
    .registers 4

    .line 6538
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageToPidMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashSet;

    if-nez p2, :cond_f

    .line 6540
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    :cond_f
    if-eqz p1, :cond_18

    .line 6543
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6545
    :cond_18
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_28

    .line 6546
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getAshmemFdCount(Ljava/util/ArrayList;)I

    move-result p0

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method public getInstalledProvidersForProfile(IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 2314
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2322
    iget-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v5, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    move-result v5

    if-nez v5, :cond_18

    const/4 v0, 0x0

    return-object v0

    .line 2326
    :cond_18
    iget-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2327
    :try_start_1b
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerInstantAppLocked()Z

    move-result v6

    if-eqz v6, :cond_44

    const-string v0, "AppWidgetServiceImpl"

    .line 2328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cannot access widget providers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 2333
    :cond_44
    invoke-virtual {v0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 2335
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2337
    iget-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 2338
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    move v10, v9

    :goto_5a
    if-ge v10, v7, :cond_ba

    .line 2340
    iget-object v11, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2341
    iget-object v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v12

    .line 2342
    iget-object v13, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v13, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    if-eqz v2, :cond_7d

    .line 2347
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7b

    goto :goto_7d

    :cond_7b
    move v14, v9

    goto :goto_7e

    :cond_7d
    :goto_7d
    const/4 v14, 0x1

    .line 2348
    :goto_7e
    iget-boolean v15, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v15, :cond_b7

    iget v15, v12, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int v15, v15, p1

    if-eqz v15, :cond_b7

    if-nez v14, :cond_8b

    goto :goto_b7

    .line 2353
    :cond_8b
    invoke-virtual {v12}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    if-ne v14, v1, :cond_b7

    .line 2354
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 2355
    invoke-virtual {v15, v13, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_b7

    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2357
    invoke-virtual {v15, v13, v4, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v13

    if-nez v13, :cond_b7

    .line 2360
    sget-boolean v13, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sSProtectPolicy:Z

    if-eqz v13, :cond_b0

    invoke-virtual {v11, v8, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->semIsHidden(Landroid/content/pm/PackageManager;I)Z

    move-result v11

    if-eqz v11, :cond_b0

    goto :goto_b7

    .line 2364
    :cond_b0
    invoke-static {v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b7
    :goto_b7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5a

    .line 2368
    :cond_ba
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v6}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v5

    return-object v0

    :catchall_c1
    move-exception v0

    .line 2369
    monitor-exit v5
    :try_end_c3
    .catchall {:try_start_1b .. :try_end_c3} :catchall_c1

    throw v0
.end method

.method public final getPidFromPackage(Ljava/lang/String;)I
    .registers 4

    .line 6525
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    .line 6526
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    if-eqz p0, :cond_2b

    .line 6527
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 6528
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_e

    .line 6529
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 6530
    iget p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public final getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 5

    .line 3778
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3779
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3781
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    goto :goto_17

    :cond_16
    move p1, v1

    .line 3783
    :goto_17
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object p0

    .line 3785
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2a

    .line 3786
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUidForPackage(Ljava/lang/String;I)I
    .registers 7

    .line 3761
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3763
    :try_start_4
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v2, 0x0

    invoke-interface {p0, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_15
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 3767
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_19

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3768
    throw p0

    .line 3767
    :catch_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    :goto_19
    if-eqz p0, :cond_23

    .line 3770
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_20

    goto :goto_23

    .line 3774
    :cond_20
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0

    :cond_23
    :goto_23
    const/4 p0, -0x1

    return p0
.end method

.method public getWidgetParticipants(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3582
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getWidgetState(Ljava/lang/String;I)[B
    .registers 3

    .line 3587
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public final handleNotifyAppWidgetRemoved(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IJ)V
    .registers 6

    .line 2968
    :try_start_0
    invoke-interface {p2, p3}, Lcom/android/internal/appwidget/IAppWidgetHost;->appWidgetRemoved(I)V

    .line 2969
    iput-wide p4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_26

    :catch_6
    move-exception p2

    .line 2971
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_a
    const-string p3, "AppWidgetServiceImpl"

    .line 2972
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Widget host dead: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    .line 2973
    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2974
    monitor-exit p0

    :goto_26
    return-void

    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_27

    throw p1
.end method

.method public final handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2671
    :try_start_2
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->viewDataChanged(II)V

    .line 2672
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_f

    .line 2675
    :catch_8
    iget-object p4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eq p4, p2, :cond_e

    const/4 p2, 0x1

    move v1, p2

    :cond_e
    move-object p2, v0

    .line 2684
    :goto_f
    iget-object p4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p4

    if-nez p2, :cond_8d

    .line 2687
    :try_start_14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Host dead #4 : "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, ", appWidgetId : "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", callbackChanged : "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "AppWidgetServiceImpl"

    .line 2688
    invoke-static {p5, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateHostHistoryLocked(Ljava/lang/String;)V

    if-nez v1, :cond_43

    .line 2695
    iput-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2698
    :cond_43
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 2699
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4d
    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 2700
    iget-object p5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {p5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4d

    .line 2701
    new-instance p5, Lcom/android/server/appwidget/AppWidgetServiceImpl$4;

    invoke-direct {p5, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$4;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 2720
    iget-object p6, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    invoke-static {p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p6

    .line 2721
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/content/Intent$FilterComparison;

    invoke-virtual {p2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 2724
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2, p5, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    goto :goto_4d

    .line 2728
    :cond_8d
    monitor-exit p4

    return-void

    :catchall_8f
    move-exception p0

    monitor-exit p4
    :try_end_91
    .catchall {:try_start_14 .. :try_end_91} :catchall_8f

    throw p0
.end method

.method public final handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V
    .registers 8

    .line 2916
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2917
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_74

    :catch_6
    move-exception p4

    .line 2919
    iget-object p5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p5

    .line 2921
    :try_start_a
    iget-object p6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eq p6, p2, :cond_10

    const/4 p2, 0x1

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :goto_11
    if-eqz p2, :cond_2a

    const-string p0, "AppWidgetServiceImpl"

    .line 2924
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip callback clear #2.appWidgetId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :cond_2a
    const-string p2, "AppWidgetServiceImpl"

    .line 2926
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Widget host dead: "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p2, p6, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2927
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Host dead #2 : "

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p6, ", "

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateHostHistoryLocked(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 2928
    iput-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2931
    :goto_73
    monitor-exit p5

    :goto_74
    return-void

    :catchall_75
    move-exception p0

    monitor-exit p5
    :try_end_77
    .catchall {:try_start_a .. :try_end_77} :catchall_75

    throw p0
.end method

.method public final handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    .registers 7

    .line 3015
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->providersChanged()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_53

    :catch_4
    move-exception v0

    .line 3017
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3019
    :try_start_8
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eq v2, p2, :cond_e

    const/4 p2, 0x1

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    :goto_f
    if-eqz p2, :cond_19

    const-string p0, "AppWidgetServiceImpl"

    const-string p1, "Skip callback clear #3."

    .line 3022
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_19
    const-string p2, "AppWidgetServiceImpl"

    .line 3024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Widget host dead: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3025
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Host dead #3 : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateHostHistoryLocked(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 3026
    iput-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3029
    :goto_52
    monitor-exit v1

    :goto_53
    return-void

    :catchall_54
    move-exception p0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_8 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public final handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    if-nez p4, :cond_b

    const-string v0, "#NULL#"

    goto :goto_f

    .line 2770
    :cond_b
    invoke-virtual/range {p4 .. p4}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    :goto_f
    move-object v4, v0

    .line 2771
    invoke-virtual {v1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getPidFromPackage(Ljava/lang/String;)I

    move-result v5

    const-string v0, "AppWidgetServiceImpl"

    .line 2772
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleNotifyUpdateAppWidget, appWidgetId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    iget-object v6, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/16 v7, 0x40

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz p4, :cond_150

    .line 2776
    :try_start_34
    invoke-virtual/range {p4 .. p4}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v0

    if-nez v5, :cond_3c

    const/4 v11, 0x0

    goto :goto_48

    .line 2778
    :cond_3c
    iget-object v11, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLastSeqNumber:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    :goto_48
    const/16 v12, 0x320

    if-nez v11, :cond_4e

    move v11, v12

    goto :goto_52

    .line 2779
    :cond_4e
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_52
    if-eqz v5, :cond_13c

    add-int/lit16 v13, v11, 0xc8

    if-le v0, v13, :cond_13c

    .line 2782
    iget-object v11, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLastSeqNumber:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2784
    invoke-virtual {v1, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getFdFromPackage(ILjava/lang/String;)I

    move-result v11

    .line 2785
    iget-object v12, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mFdFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    if-nez v12, :cond_73

    move v12, v10

    goto :goto_74

    .line 2786
    :cond_73
    array-length v12, v12

    :goto_74
    if-le v11, v7, :cond_e0

    .line 2789
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v1, v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    .line 2790
    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2791
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.sec.android.launcher.action.UNBIND_WIDGET"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "appWidgetId"

    .line 2792
    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2793
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2795
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.android.appwidget.action.APPWIDGET_UNBIND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "appWidgetPackageName"

    .line 2796
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2797
    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2799
    invoke-static {}, Ljava/lang/System;->gc()V

    const-string v1, "AppWidgetServiceImpl"

    .line 2800
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected abnormal operation#1. seqNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pidFd="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " serverFd="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " kill widget="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    monitor-exit v6

    return-void

    :cond_e0
    const-string v0, "AppWidgetServiceImpl"

    .line 2804
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handleNotifyUpdateAppWidget("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ") mLastSeqNumber="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLastSeqNumber:Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "%n views.estimateMemoryUsage()="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2805
    invoke-virtual/range {p4 .. p4}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "%nTotal Memory : %6.2f MB"

    new-array v15, v9, [Ljava/lang/Object;

    .line 2806
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v17, 0x4130000000000000L    # 1048576.0

    div-double v8, v8, v17

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v15, v10

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " pidFd="

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " serverFd="

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2804
    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_150

    :cond_13c
    add-int/lit16 v11, v11, -0xc8

    if-ge v0, v11, :cond_150

    .line 2812
    iget-object v8, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLastSeqNumber:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-ge v0, v12, :cond_149

    move v0, v12

    :cond_149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2815
    :cond_150
    :goto_150
    monitor-exit v6
    :try_end_151
    .catchall {:try_start_34 .. :try_end_151} :catchall_2d6

    .line 2819
    :try_start_151
    invoke-interface/range {p2 .. p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    move-wide/from16 v8, p5

    .line 2820
    iput-wide v8, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J

    if-eqz v5, :cond_2d2

    .line 2826
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPidToPackageMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_179

    .line 2827
    iget-object v6, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageToPidMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_179

    .line 2829
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2832
    :cond_179
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPidToPackageMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2833
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageToPidMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_191

    .line 2834
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2836
    :cond_191
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2837
    iget-object v6, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageToPidMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19d
    .catch Landroid/os/RemoteException; {:try_start_151 .. :try_end_19d} :catch_19f

    goto/16 :goto_2d2

    :catch_19f
    move-exception v0

    .line 2841
    iget-object v8, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2843
    :try_start_1a3
    iget-object v6, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v9, p2

    if-eq v6, v9, :cond_1ab

    const/4 v6, 0x1

    goto :goto_1ac

    :cond_1ab
    move v6, v10

    :goto_1ac
    if-eqz v6, :cond_1c6

    const-string v4, "AppWidgetServiceImpl"

    .line 2846
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip callback clear #1.appWidgetId : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28b

    .line 2847
    :cond_1c6
    instance-of v9, v0, Landroid/os/TransactionTooLargeException;

    if-eqz v9, :cond_288

    const-string v9, "AppWidgetServiceImpl"

    .line 2848
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skip callback clear #1.appWidgetId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " by TransactionTooLargeException. views.getPackage() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    iget-object v9, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v1, v3, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v9

    if-eqz v9, :cond_1fa

    .line 2853
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->transactionError:Ljava/lang/String;

    .line 2856
    :cond_1fa
    iget-object v11, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mFdFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 2857
    invoke-virtual {v1, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getFdFromPackage(ILjava/lang/String;)I

    move-result v5

    if-le v5, v7, :cond_280

    if-eqz v11, :cond_25e

    if-eqz v9, :cond_25e

    const-string v5, "AppWidgetServiceImpl"

    .line 2861
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TransactionTooLargeException, App occupied fd are over 64, system fd count = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v11

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", kill widget, w = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    invoke-virtual {v1, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2863
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.sec.android.launcher.action.UNBIND_WIDGET"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "appWidgetId"

    .line 2864
    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2865
    iget-object v7, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v7}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2867
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.samsung.android.appwidget.action.APPWIDGET_UNBIND"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "appWidgetPackageName"

    .line 2868
    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2869
    iget-object v4, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2871
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_28b

    :cond_25e
    const-string v4, "AppWidgetServiceImpl"

    .line 2873
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TransactionTooLargeException, failed to remove widget because : (fds == null) = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v11, :cond_26d

    const/4 v10, 0x1

    :cond_26d
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", w = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28b

    :cond_280
    const-string v4, "AppWidgetServiceImpl"

    const-string v5, "TransactionTooLargeException, App occupied fd are under 64, not kill widget"

    .line 2876
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28b

    :cond_288
    const/4 v4, 0x0

    .line 2879
    iput-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    :goto_28b
    const-string v4, "AppWidgetServiceImpl"

    .line 2881
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Widget host dead: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2882
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead host #1 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " appWidgetId : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateHostHistoryLocked(Ljava/lang/String;)V

    .line 2884
    monitor-exit v8

    :cond_2d2
    :goto_2d2
    return-void

    :catchall_2d3
    move-exception v0

    monitor-exit v8
    :try_end_2d5
    .catchall {:try_start_1a3 .. :try_end_2d5} :catchall_2d3

    throw v0

    :catchall_2d6
    move-exception v0

    .line 2815
    :try_start_2d7
    monitor-exit v6
    :try_end_2d8
    .catchall {:try_start_2d7 .. :try_end_2d8} :catchall_2d6

    throw v0
.end method

.method public handleUserUnlocked(I)V
    .registers 13

    .line 3867
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3870
    :cond_7
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string p0, "AppWidgetServiceImpl"

    .line 3871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is no longer unlocked - exiting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3874
    :cond_2b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3875
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_32
    const-string v3, "appwidget ensure"

    const-wide/16 v4, 0x40

    .line 3876
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3877
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 3878
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string v3, "appwidget reload"

    .line 3879
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3880
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedStateForGroup(I)V

    .line 3881
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 3883
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x0

    move v7, v6

    :goto_58
    if-ge v7, v3, :cond_ac

    .line 3885
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3888
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v9

    if-eq v9, p1, :cond_69

    goto :goto_a9

    .line 3892
    :cond_69
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_a9

    .line 3893
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "appwidget init "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 3894
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3893
    invoke-static {v4, v5, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3895
    invoke-virtual {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3896
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v10, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 3903
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v9

    .line 3904
    invoke-virtual {p0, v8, v9, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[IZ)V

    .line 3905
    invoke-virtual {p0, v8, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 3906
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_a9
    :goto_a9
    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    .line 3909
    :cond_ac
    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_32 .. :try_end_ad} :catchall_d6

    const-string p0, "AppWidgetServiceImpl"

    .line 3910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing of handleUserUnlocked u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " took "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3911
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3910
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_d6
    move-exception p0

    .line 3909
    :try_start_d7
    monitor-exit v2
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    throw p0
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    .registers 5

    .line 1435
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V

    .line 1437
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1439
    :try_start_8
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1441
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_14

    const/4 p0, 0x0

    .line 1443
    monitor-exit v0

    return p0

    .line 1446
    :cond_14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1447
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_24
    move-exception p0

    .line 1448
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final incrementAndGetAppWidgetIdLocked(I)I
    .registers 3

    .line 2440
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->peekNextAppWidgetIdLocked(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2441
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return v0
.end method

.method public final incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;)V"
        }
    .end annotation

    .line 2579
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2580
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    goto :goto_1c

    .line 2582
    :cond_11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2583
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    .line 2585
    :goto_1c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isBoundWidgetPackage(Ljava/lang/String;I)Z
    .registers 5

    .line 4106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_21

    .line 4109
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4110
    :try_start_b
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_1b

    .line 4112
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 4114
    :cond_1b
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw p0

    .line 4107
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system process can call this"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isKnoxUser(I)Z
    .registers 2

    .line 3794
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    return p0
.end method

.method public final isProfileWithLockedParent(I)Z
    .registers 5

    .line 4889
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4891
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 4892
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 4893
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 4895
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isUserRunningAndUnlocked(I)Z

    move-result p0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_32

    if-nez p0, :cond_2d

    const/4 p0, 0x1

    .line 4900
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_32
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4901
    throw p0
.end method

.method public final isProfileWithUnlockedParent(I)Z
    .registers 3

    .line 4906
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 4907
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4908
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 4909
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 4910
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public isRequestPinAppWidgetSupported()Z
    .registers 4

    .line 2269
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2270
    :try_start_3
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerInstantAppLocked()Z

    move-result p0

    if-eqz p0, :cond_2d

    const-string p0, "AppWidgetServiceImpl"

    .line 2271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " query information about app widgets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 2273
    monitor-exit v0

    return p0

    .line 2275
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_40

    .line 2276
    const-class p0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutServiceInternal;

    .line 2277
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ShortcutServiceInternal;->isRequestPinItemSupported(II)Z

    move-result p0

    return p0

    :catchall_40
    move-exception p0

    .line 2275
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public final isUserRunningAndUnlocked(I)Z
    .registers 2

    .line 1139
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p0

    return p0
.end method

.method public final loadGroupStateLocked([I)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3924
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_9
    const-string v5, "AppWidgetServiceImpl"

    if-ge v3, v1, :cond_65

    .line 3926
    aget v6, p1, v3

    .line 3929
    invoke-static {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    move-result-object v7

    .line 3930
    :try_start_13
    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_2d

    .line 3931
    :try_start_17
    invoke-virtual {p0, v7, v6, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I

    move-result v4
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_21

    if-eqz v7, :cond_62

    .line 3932
    :try_start_1d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_2d

    goto :goto_62

    :catchall_21
    move-exception v8

    if-eqz v7, :cond_2c

    .line 3930
    :try_start_24
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v7

    :try_start_29
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    throw v8
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception v7

    .line 3933
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to read state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3934
    iget-boolean v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProductDEV:Z

    if-eqz v5, :cond_62

    .line 3935
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to read state.u"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeLogToFile(Ljava/lang/String;)V

    :cond_62
    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_65
    if-ltz v4, :cond_6e

    .line 3942
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->bindLoadedWidgetsLocked(Ljava/util/List;)V

    .line 3945
    invoke-virtual {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->performUpgradeLocked(I)V

    goto :goto_c1

    :cond_6e
    const-string p1, "Failed to read state, clearing widgets and hosts."

    .line 3948
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3949
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->clearWidgetsLocked()V

    .line 3950
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3951
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_81
    if-ge v2, p1, :cond_c1

    .line 3953
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b1

    .line 3954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is null, pre total size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",but  now = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 3956
    :cond_b1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_be
    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    :cond_c1
    :goto_c1
    return-void
.end method

.method public final loadGroupWidgetProvidersLocked([I)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3109
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    goto :goto_14

    :cond_13
    move v1, v2

    .line 3111
    :goto_14
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v2

    :goto_17
    if-ge v5, v3, :cond_34

    .line 3113
    aget v6, p1, v5

    .line 3115
    invoke-virtual {p0, v0, v6, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_31

    .line 3116
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_31

    if-nez v4, :cond_2e

    .line 3118
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3120
    :cond_2e
    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_34
    if-nez v4, :cond_38

    move v0, v2

    goto :goto_3c

    .line 3124
    :cond_38
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 3126
    :goto_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadGroupWidgetProvidersLocked, profileIds = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", allReceivers.size() = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersHistoryLocked(Ljava/lang/String;)V

    .line 3130
    new-array p1, v0, [Z

    .line 3131
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 3132
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move v11, v2

    :goto_69
    if-ge v11, v0, :cond_82

    .line 3134
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 3135
    new-instance v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;

    move-object v5, v12

    move-object v6, p0

    move-object v7, v3

    move v9, v11

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/util/concurrent/CountDownLatch;Landroid/content/pm/ResolveInfo;I[Z)V

    invoke-interface {v1, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_69

    :cond_82
    const-wide/16 v5, 0xbb8

    .line 3139
    :try_start_84
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_89} :catch_8a

    goto :goto_8e

    :catch_8a
    move-exception v5

    .line 3141
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 3143
    :goto_8e
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 3145
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_b6

    const-string v1, "AppWidgetServiceImpl"

    const-string/jumbo v3, "unhandled receivers exist, retry add unhandled providers"

    .line 3146
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a3
    if-ge v2, v0, :cond_b6

    .line 3148
    aget-boolean v1, p1, v2

    if-eqz v1, :cond_aa

    goto :goto_b3

    .line 3151
    :cond_aa
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 3152
    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    :goto_b3
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    :cond_b6
    return-void
.end method

.method public final lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 6

    .line 3085
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 3087
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3088
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 4

    .line 2461
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 2466
    :cond_7
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host-IA;)V

    .line 2467
    iput-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 2468
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2469
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lookupOrAddHostLocked = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppWidgetServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 6

    .line 3074
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 3076
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3077
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .registers 8

    .line 3062
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 3064
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3065
    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    if-ne v3, p1, :cond_1e

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 3066
    invoke-virtual {v3, v2, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->canAccessAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    return-object v2

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public final lookupWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .registers 6

    const/4 v0, 0x0

    if-ltz p1, :cond_29

    if-nez p2, :cond_6

    goto :goto_29

    .line 6515
    :cond_6
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 6516
    iget v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    if-ne v2, p1, :cond_c

    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v2, :cond_c

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 6517
    invoke-virtual {p2, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    return-object v1

    :cond_29
    :goto_29
    return-object v0
.end method

.method public final maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1005
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_f

    return-void

    .line 1009
    :cond_f
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x10901e0

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1011
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1012
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v11

    .line 1015
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1020
    :try_start_2b
    iget-boolean v6, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuperLocked:Z

    const/4 v14, 0x0

    const/4 v7, 0x1

    if-eqz v6, :cond_37

    .line 1022
    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->createLockdownIntent(I)Landroid/content/Intent;

    move-result-object v6

    move v7, v14

    goto :goto_87

    .line 1025
    :cond_37
    iget-boolean v6, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    if-eqz v6, :cond_70

    .line 1026
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v11}, Landroid/os/UserManager;->hasBadge(I)Z

    move-result v15

    .line 1027
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v11}, Landroid/content/pm/PackageManagerInternal;->getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const-string v6, "android"

    .line 1029
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1030
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {v6, v11, v7}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v6

    goto :goto_6e

    .line 1033
    :cond_58
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1034
    invoke-virtual {v6, v7, v8, v11}, Landroid/content/pm/PackageManagerInternal;->getSuspendedDialogInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v9

    .line 1038
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object/from16 v10, v16

    invoke-static/range {v6 .. v11}, Lcom/android/internal/app/SuspendedAppActivity;->createSuspendedAppInterceptIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Landroid/content/Intent;

    move-result-object v6

    :goto_6e
    move v7, v15

    goto :goto_87

    .line 1042
    :cond_70
    iget-boolean v6, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    if-eqz v6, :cond_79

    .line 1044
    invoke-static {v11}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object v6

    goto :goto_87

    .line 1047
    :cond_79
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v8, 0x0

    .line 1048
    invoke-virtual {v6, v8, v8, v11}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_87

    const/high16 v8, 0x10800000

    .line 1050
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1055
    :cond_87
    :goto_87
    iget v8, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v8, :cond_92

    .line 1056
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    goto :goto_9b

    .line 1057
    :cond_92
    iget-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const v8, 0x1080093

    invoke-static {v5, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    :goto_9b
    const v8, 0x10206ae

    .line 1058
    invoke-virtual {v4, v8, v5}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    if-nez v7, :cond_aa

    const v5, 0x10206af

    const/4 v7, 0x4

    .line 1060
    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_aa
    :goto_aa
    if-ge v14, v3, :cond_da

    .line 1064
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    if-eqz v2, :cond_b9

    if-eq v2, v5, :cond_b9

    goto :goto_d7

    :cond_b9
    if-eqz v6, :cond_ca

    const/high16 v7, 0x1020000

    .line 1067
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget v9, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const/high16 v10, 0xc000000

    .line 1068
    invoke-static {v8, v9, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1067
    invoke-virtual {v4, v7, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1071
    :cond_ca
    invoke-static {v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->-$$Nest$mreplaceWithMaskedViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 1072
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V
    :try_end_d7
    .catchall {:try_start_2b .. :try_end_d7} :catchall_de

    :cond_d7
    :goto_d7
    add-int/lit8 v14, v14, 0x1

    goto :goto_aa

    .line 1076
    :cond_da
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_de
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1077
    throw v0
.end method

.method public noteAppWidgetTapped(Ljava/lang/String;I)V
    .registers 9

    .line 4926
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 4927
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4928
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4931
    :try_start_d
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v3
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_5d

    const/4 v4, 0x2

    if-le v3, v4, :cond_1a

    .line 4952
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 4935
    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_5d

    .line 4936
    :try_start_1d
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object p1

    if-nez p1, :cond_28

    .line 4938
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_5a

    .line 4952
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 4940
    :cond_28
    :try_start_28
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 4941
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_39

    .line 4943
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_5a

    .line 4952
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 4945
    :cond_39
    :try_start_39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4946
    iget v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-virtual {v0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4947
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/app/AppOpsManagerInternal;->updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V

    .line 4948
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 4949
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/4 v0, 0x7

    .line 4948
    invoke-virtual {p0, p2, p1, v0}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 4950
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_39 .. :try_end_56} :catchall_5a

    .line 4952
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_5a
    move-exception p0

    .line 4950
    :try_start_5b
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p0

    .line 4952
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4953
    throw p0
.end method

.method public notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V
    .registers 9

    .line 2144
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2151
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    if-eqz p2, :cond_30

    .line 2153
    array-length v1, p2

    if-nez v1, :cond_f

    goto :goto_30

    .line 2157
    :cond_f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2158
    :try_start_12
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 2160
    array-length v0, p2

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_2b

    .line 2162
    aget v3, p2, v2

    .line 2167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2166
    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 2170
    invoke-virtual {p0, v3, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2173
    :cond_2b
    monitor-exit v1

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_2d

    throw p0

    :cond_30
    :goto_30
    return-void
.end method

.method public final onConfigurationChanged()V
    .registers 18

    move-object/from16 v0, p0

    .line 659
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 663
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mScreenDensity:I

    const/4 v4, 0x1

    const/4 v7, 0x0

    if-eq v2, v3, :cond_1d

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->computeMaximumWidgetBitmapMemory()V

    .line 666
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mScreenDensity:I

    move v2, v4

    goto :goto_1e

    :cond_1d
    move v2, v7

    .line 672
    :goto_1e
    iget v3, v1, Landroid/content/res/Configuration;->themeSeq:I

    iget v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mThemeSeq:I

    if-eq v3, v5, :cond_4a

    .line 673
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "current_sec_active_themepackage"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_36

    .line 674
    iget-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mThemePkg:Ljava/lang/String;

    if-ne v3, v5, :cond_40

    :cond_36
    if-eqz v3, :cond_42

    iget-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mThemePkg:Ljava/lang/String;

    .line 675
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    :cond_40
    move v5, v4

    goto :goto_43

    :cond_42
    move v5, v7

    .line 678
    :goto_43
    iput-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mThemePkg:Ljava/lang/String;

    .line 679
    iget v1, v1, Landroid/content/res/Configuration;->themeSeq:I

    iput v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mThemeSeq:I

    goto :goto_4b

    :cond_4a
    move v5, v7

    .line 693
    :goto_4b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 694
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    if-eqz v3, :cond_5f

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    if-nez v2, :cond_5f

    if-eqz v5, :cond_125

    .line 695
    :cond_5f
    iput-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    .line 697
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    if-eqz v1, :cond_86

    iget v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mEmergencyState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6d

    const/4 v2, 0x4

    if-ne v1, v2, :cond_86

    :cond_6d
    const-string v1, "AppWidgetServiceImpl"

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency mode is now changing."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mEmergencyState:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 706
    :cond_86
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 712
    :try_start_89
    new-instance v9, Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 713
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 719
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    if-eqz v1, :cond_a1

    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    move v11, v1

    goto :goto_a2

    :cond_a1
    move v11, v7

    .line 721
    :goto_a2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v12, v1

    move-object v13, v3

    :goto_ab
    if-ltz v12, :cond_112

    .line 723
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 725
    invoke-virtual {v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v1

    .line 726
    iget-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_10f

    .line 727
    invoke-virtual {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v4

    if-eqz v4, :cond_c7

    goto :goto_10f

    .line 730
    :cond_c7
    invoke-virtual {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 732
    iget-object v1, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10f

    .line 734
    iget-object v1, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 735
    invoke-virtual {v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v6

    if-ne v6, v2, :cond_e9

    if-eqz v15, :cond_e9

    .line 737
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e9

    goto :goto_10f

    :cond_e9
    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object v2, v15

    move v3, v6

    move-object v4, v10

    move/from16 v16, v6

    move v6, v11

    .line 744
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;ZZ)Z

    move-result v1

    if-eqz v1, :cond_10c

    if-nez v13, :cond_ff

    .line 750
    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    .line 752
    :cond_ff
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 753
    invoke-virtual {v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v2

    .line 752
    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    move-result v1

    .line 754
    invoke-virtual {v13, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_10c
    move-object v3, v15

    move/from16 v2, v16

    :cond_10f
    :goto_10f
    add-int/lit8 v12, v12, -0x1

    goto :goto_ab

    :cond_112
    if-eqz v13, :cond_124

    .line 760
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    :goto_118
    if-ge v7, v1, :cond_124

    .line 762
    invoke-virtual {v13, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 763
    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_118

    .line 766
    :cond_124
    monitor-exit v8

    :cond_125
    return-void

    :catchall_126
    move-exception v0

    monitor-exit v8
    :try_end_128
    .catchall {:try_start_89 .. :try_end_128} :catchall_126

    throw v0
.end method

.method public onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 4845
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v8

    if-eq v8, v7, :cond_8b

    .line 4850
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 4853
    :try_start_f
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 4854
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, 0x0

    move v2, v11

    :goto_1c
    if-ge v2, v1, :cond_3a

    .line 4856
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4857
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    if-ne v4, v7, :cond_37

    .line 4858
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 4862
    :cond_3a
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    .line 4864
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    if-eqz v1, :cond_4a

    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    move v13, v1

    goto :goto_4b

    :cond_4a
    move v13, v11

    :goto_4b
    move v14, v11

    move v15, v14

    :goto_4d
    if-ge v14, v12, :cond_6a

    move-object/from16 v6, p2

    .line 4867
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 4868
    invoke-virtual {v10, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move v6, v13

    .line 4869
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;ZZ)Z

    move-result v1

    or-int/2addr v15, v1

    add-int/lit8 v14, v14, 0x1

    goto :goto_4d

    .line 4874
    :cond_6a
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v1

    :goto_6e
    if-ge v11, v1, :cond_7c

    .line 4876
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetsForPackageLocked(Ljava/lang/String;II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6e

    :cond_7c
    if-nez v15, :cond_80

    if-lez v1, :cond_86

    .line 4881
    :cond_80
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 4882
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 4884
    :cond_86
    monitor-exit v9

    goto :goto_8b

    :catchall_88
    move-exception v0

    monitor-exit v9
    :try_end_8a
    .catchall {:try_start_f .. :try_end_8a} :catchall_88

    throw v0

    :cond_8b
    :goto_8b
    return-void
.end method

.method public final onEmergencyModeDisabled(I)V
    .registers 13

    const-string v0, "AppWidgetServiceImpl"

    .line 4253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEmergencyModeDisabled()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4255
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4256
    :try_start_1a
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 4258
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4260
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4262
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    if-eq v4, p1, :cond_3c

    goto :goto_29

    .line 4266
    :cond_3c
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4267
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_29

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, p0

    move v7, p1

    .line 4269
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;ZZ)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_29

    :cond_57
    if-eqz v2, :cond_5f

    .line 4274
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 4278
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 4280
    :cond_5f
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_1a .. :try_end_63} :catchall_61

    throw p0
.end method

.method public final onPackageBroadcastReceived(Landroid/content/Intent;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p2

    .line 804
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_14

    const-string v0, "AppWidgetServiceImpl"

    const-string v1, "action is null"

    .line 807
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    const/4 v2, -0x1

    .line 816
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_148

    goto :goto_4a

    :sswitch_1f
    const-string v3, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_4a

    :cond_28
    const/4 v2, 0x3

    goto :goto_4a

    :sswitch_2a
    const-string v3, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto :goto_4a

    :cond_33
    const/4 v2, 0x2

    goto :goto_4a

    :sswitch_35
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    goto :goto_4a

    :cond_3e
    move v2, v4

    goto :goto_4a

    :sswitch_40
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    goto :goto_4a

    :cond_49
    move v2, v5

    :goto_4a
    packed-switch v2, :pswitch_data_15a

    .line 829
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_54

    return-void

    .line 833
    :cond_54
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5b

    return-void

    :cond_5b
    new-array v3, v4, [Ljava/lang/String;

    aput-object v2, v3, v5

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 838
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    .line 839
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-object v9, v3

    goto :goto_82

    :pswitch_6d
    const-string v2, "android.intent.extra.changed_package_list"

    .line 819
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    move v6, v4

    move v2, v5

    goto :goto_82

    :pswitch_77
    move v2, v4

    goto :goto_7a

    :pswitch_79
    move v2, v5

    :goto_7a
    const-string v3, "android.intent.extra.changed_package_list"

    .line 826
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    move v6, v5

    :goto_82
    if-eqz v9, :cond_147

    .line 842
    array-length v3, v9

    if-nez v3, :cond_89

    goto/16 :goto_147

    .line 846
    :cond_89
    iget-object v10, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 847
    :try_start_8c
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v7}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_142

    .line 848
    invoke-virtual {v0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v3

    if-eqz v3, :cond_9c

    goto/16 :goto_142

    .line 851
    :cond_9c
    invoke-virtual {v0, v7, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 853
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v2, :cond_c7

    if-eqz v6, :cond_a8

    goto :goto_c7

    :cond_a8
    if-eqz v1, :cond_b4

    const-string v2, "android.intent.extra.REPLACING"

    .line 882
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_b3

    goto :goto_b4

    :cond_b3
    move v4, v5

    :cond_b4
    :goto_b4
    if-eqz v4, :cond_133

    .line 885
    array-length v1, v9

    move v2, v5

    :goto_b8
    if-ge v5, v1, :cond_c4

    aget-object v3, v9, v5

    .line 886
    invoke-virtual {v0, v3, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeHostsAndProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_b8

    :cond_c4
    move v5, v2

    goto/16 :goto_133

    :cond_c7
    :goto_c7
    if-eqz v2, :cond_d5

    if-eqz v1, :cond_d3

    const-string v2, "android.intent.extra.REPLACING"

    .line 857
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_d5

    :cond_d3
    move v11, v4

    goto :goto_d6

    :cond_d5
    move v11, v5

    .line 859
    :goto_d6
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    if-eqz v1, :cond_e2

    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    move v12, v1

    goto :goto_e3

    :cond_e2
    move v12, v5

    .line 861
    :goto_e3
    array-length v13, v9

    move v14, v5

    move v15, v14

    :goto_e6
    if-ge v14, v13, :cond_132

    aget-object v6, v9, v14

    const-string v1, "AppWidgetServiceImpl"

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Updates all providers with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v3, p2

    move-object/from16 v16, v8

    move-object v8, v6

    move v6, v12

    .line 866
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;ZZ)Z

    move-result v1

    or-int/2addr v15, v1

    if-eqz v11, :cond_12d

    if-nez v7, :cond_12d

    .line 872
    invoke-virtual {v0, v8, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_12d

    .line 874
    invoke-virtual {v0, v8, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->resolveHostUidLocked(Ljava/lang/String;I)V

    :cond_12d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v16

    goto :goto_e6

    :cond_132
    move v5, v15

    :cond_133
    :goto_133
    if-eqz v5, :cond_140

    .line 893
    invoke-virtual {v0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 896
    invoke-virtual {v0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 898
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->widgetComponentsChanged(I)V

    .line 900
    :cond_140
    monitor-exit v10

    return-void

    .line 849
    :cond_142
    :goto_142
    monitor-exit v10

    return-void

    :catchall_144
    move-exception v0

    .line 900
    monitor-exit v10
    :try_end_146
    .catchall {:try_start_8c .. :try_end_146} :catchall_144

    throw v0

    :cond_147
    :goto_147
    return-void

    :sswitch_data_148
    .sparse-switch
        -0x53ae571d -> :sswitch_40
        -0x4fc097e4 -> :sswitch_35
        -0x3bb3e592 -> :sswitch_2a
        0x4cef8b35 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_79
        :pswitch_77
        :pswitch_6d
        :pswitch_6d
    .end packed-switch
.end method

.method public onStart()V
    .registers 6

    .line 496
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    const-string/jumbo v3, "set appwidget_prevent_remove_all"

    .line 498
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "appwidget_prevent_remove_all"

    .line 499
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 502
    :cond_16
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 503
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 504
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 505
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "appops"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 506
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 507
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 508
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 509
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    .line 510
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    .line 511
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController-IA;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    .line 512
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-direct {v0, p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy-IA;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 513
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_97

    const-string/jumbo v0, "systemui"

    const-string/jumbo v4, "persists_widget_provider_info"

    .line 514
    invoke-static {v0, v4, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_97

    goto :goto_98

    :cond_97
    const/4 v2, 0x0

    :goto_98
    iput-boolean v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIsProviderInfoPersisted:Z

    if-nez v2, :cond_a1

    const-string v0, "App widget provider info will not be persisted on this device"

    .line 517
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_a1
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->computeMaximumWidgetBitmapMemory()V

    .line 521
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerBroadcastReceiver()V

    .line 522
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerOnCrossProfileProvidersChangedListener()V

    .line 524
    const-class v0, Landroid/appwidget/AppWidgetManagerInternal;

    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;

    invoke-direct {v1, p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 527
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 533
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    .line 534
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 535
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mScreenDensity:I

    .line 536
    iget v0, v0, Landroid/content/res/Configuration;->themeSeq:I

    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mThemeSeq:I

    .line 540
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;

    invoke-direct {v1, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    invoke-static {v0, v1}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    return-void
.end method

.method public onUserStopped(I)V
    .registers 10

    .line 4536
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4540
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_b
    const/4 v3, 0x0

    if-ltz v1, :cond_52

    .line 4542
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4544
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v5

    if-ne v5, p1, :cond_20

    move v5, v2

    goto :goto_21

    :cond_20
    move v5, v3

    .line 4545
    :goto_21
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v6, :cond_27

    move v7, v2

    goto :goto_28

    :cond_27
    move v7, v3

    :goto_28
    if-eqz v7, :cond_31

    .line 4546
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v6

    if-ne v6, p1, :cond_31

    move v3, v2

    :cond_31
    if-eqz v5, :cond_4f

    if-eqz v7, :cond_37

    if-eqz v3, :cond_4f

    .line 4552
    :cond_37
    invoke-virtual {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 4553
    iget-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 4554
    iput-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v7, :cond_4f

    .line 4556
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4557
    iput-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    :cond_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 4563
    :cond_52
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    move v4, v3

    :goto_5a
    if-ltz v1, :cond_7c

    .line 4565
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4566
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v6

    if-ne v6, p1, :cond_79

    .line 4567
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_74

    move v6, v2

    goto :goto_75

    :cond_74
    move v6, v3

    :goto_75
    or-int/2addr v4, v6

    .line 4568
    invoke-virtual {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    :cond_79
    add-int/lit8 v1, v1, -0x1

    goto :goto_5a

    .line 4576
    :cond_7c
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_83
    if-ltz v1, :cond_9f

    .line 4578
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 4579
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_9c

    .line 4580
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_9c
    add-int/lit8 v1, v1, -0x1

    goto :goto_83

    .line 4585
    :cond_9f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_ac

    .line 4587
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 4591
    :cond_ac
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_b9

    .line 4593
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_b9
    if-eqz v4, :cond_be

    .line 4599
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 4601
    :cond_be
    monitor-exit v0

    return-void

    :catchall_c0
    move-exception p0

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_3 .. :try_end_c2} :catchall_c0

    throw p0
.end method

.method public onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 6

    .line 4031
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v0, :cond_5

    return-void

    .line 4033
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    .line 4034
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4035
    :try_start_c
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_21

    .line 4037
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, v3

    .line 4039
    :cond_21
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4040
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_41

    .line 4044
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 4045
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_40

    .line 4047
    :cond_3d
    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->-$$Nest$mclearMaskedViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z

    :goto_40
    return-void

    :catchall_41
    move-exception p0

    .line 4040
    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public final onWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 9

    .line 4065
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v0, :cond_5

    return-void

    .line 4067
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    .line 4068
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4069
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4070
    :try_start_16
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_22

    .line 4072
    monitor-exit v1

    return-void

    .line 4076
    :cond_22
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v3, :cond_53

    .line 4078
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4079
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v6, :cond_38

    goto :goto_50

    .line 4080
    :cond_38
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v6

    if-ne v6, v0, :cond_50

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 4081
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 4082
    monitor-exit v1

    return-void

    :cond_50
    :goto_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 4085
    :cond_53
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4086
    monitor-exit v1

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_16 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public final onWidgetsClearedLocked()V
    .registers 2

    .line 4099
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4100
    :try_start_3
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 4101
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .registers 5

    const/4 v0, 0x1

    .line 2138
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    return-void
.end method

.method public final peekNextAppWidgetIdLocked(I)I
    .registers 3

    .line 2453
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 2456
    :cond_a
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public final performUpgradeLocked(I)V
    .registers 6

    const/4 v0, 0x1

    if-ge p1, v0, :cond_21

    .line 4487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading widget database from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    if-nez p1, :cond_48

    .line 4495
    new-instance p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const v2, 0x4b455947    # 1.2933447E7f

    const-string v3, "android"

    invoke-direct {p1, v1, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 4498
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object p1

    if-eqz p1, :cond_47

    const/4 v1, 0x0

    const-string v3, "com.android.keyguard"

    .line 4500
    invoke-virtual {p0, v3, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_47

    .line 4503
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    :cond_47
    move p1, v0

    :cond_48
    if-ne p1, v0, :cond_4b

    return-void

    .line 4511
    :cond_4b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to upgrade widget database"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 3

    .line 3096
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v0, :cond_11

    .line 3100
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public final queryIntentReceivers(Landroid/content/Intent;IZ)Ljava/util/List;
    .registers 13
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

    .line 3825
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const v2, 0x10000080

    .line 3836
    :try_start_7
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithUnlockedParent(I)Z

    move-result v3

    if-eqz v3, :cond_10

    const v2, 0x100c0080

    :cond_10
    or-int/lit16 v2, v2, 0x400

    if-eqz p3, :cond_1c

    .line 3846
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isKnoxUser(I)Z

    move-result p3

    if-nez p3, :cond_1c

    or-int/lit16 v2, v2, 0x200

    .line 3851
    :cond_1c
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 3852
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    int-to-long v6, v2

    move-object v4, p1

    move v8, p2

    .line 3851
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 3853
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_33} :catch_39
    .catchall {:try_start_7 .. :try_end_33} :catchall_37

    .line 3857
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_37
    move-exception p0

    goto :goto_41

    .line 3855
    :catch_39
    :try_start_39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_37

    .line 3857
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3858
    throw p0
.end method

.method public final readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I
    .registers 29
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string/jumbo v3, "h"

    const-string/jumbo v4, "p"

    const-string v5, "AppWidgetServiceImpl"

    .line 4288
    :try_start_c
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v7

    .line 4294
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_12} :catch_310
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_12} :catch_310
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_12} :catch_310
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_310
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_12} :catch_310

    const/4 v9, 0x0

    if-eqz v8, :cond_21

    :try_start_15
    iget-object v8, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v8
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_1b} :catch_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_1b} :catch_1c

    goto :goto_22

    :catch_1c
    move-exception v0

    move-object v1, v0

    move v9, v2

    goto/16 :goto_313

    :cond_21
    move v8, v9

    :goto_22
    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    .line 4297
    :goto_25
    :try_start_25
    invoke-interface {v7}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2ec

    .line 4299
    invoke-interface {v7}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v6, "gs"

    .line 4300
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_37} :catch_310
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_37} :catch_310
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_37} :catch_310
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_37} :catch_310
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_25 .. :try_end_37} :catch_310

    const/4 v15, 0x0

    if-eqz v6, :cond_51

    :try_start_3a
    const-string/jumbo v6, "version"

    .line 4301
    invoke-interface {v7, v15, v6, v9}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12
    :try_end_41
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_41} :catch_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_41} :catch_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_41} :catch_1c
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_41} :catch_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3a .. :try_end_41} :catch_1c

    move/from16 v16, v12

    move v6, v13

    const/4 v13, 0x1

    move-object v12, v4

    move-object v4, v3

    move-object/from16 v3, p3

    move/from16 v24, v9

    move v9, v2

    move-object v2, v7

    move/from16 v7, v24

    goto/16 :goto_301

    .line 4302
    :cond_51
    :try_start_51
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_55
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_55} :catch_310
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_55} :catch_310
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_55} :catch_310
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_55} :catch_310
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_51 .. :try_end_55} :catch_310

    const-string/jumbo v9, "tag"

    const-string/jumbo v15, "pkg"

    if-eqz v6, :cond_209

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    .line 4306
    :try_start_60
    invoke-interface {v7, v6, v15}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "cl"

    .line 4307
    invoke-interface {v7, v6, v15}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4309
    invoke-virtual {v1, v14, v15, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getCanonicalPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7d

    :goto_70
    move-object/from16 v20, v3

    move-object/from16 v18, v4

    move-object v2, v7

    move/from16 v19, v11

    move/from16 v16, v12

    :goto_79
    move/from16 v17, v13

    goto/16 :goto_1fa

    .line 4314
    :cond_7d
    invoke-virtual {v1, v6, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v14

    if-gez v14, :cond_84

    goto :goto_70

    :cond_84
    move/from16 v16, v12

    .line 4319
    new-instance v12, Landroid/content/ComponentName;

    invoke-direct {v12, v6, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4321
    invoke-virtual {v1, v12, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v15

    if-nez v15, :cond_99

    move-object/from16 v20, v3

    move-object/from16 v18, v4

    move-object v2, v7

    move/from16 v19, v11

    goto :goto_79

    :cond_99
    move/from16 v17, v13

    .line 4326
    new-instance v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    move-object/from16 v18, v4

    const/4 v4, 0x0

    invoke-direct {v13, v14, v12, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId-IA;)V

    .line 4327
    invoke-virtual {v1, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v4
    :try_end_a7
    .catch Ljava/lang/NullPointerException; {:try_start_60 .. :try_end_a7} :catch_2e8
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_a7} :catch_2e8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_60 .. :try_end_a7} :catch_2e8
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_a7} :catch_2e8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_60 .. :try_end_a7} :catch_2e8

    const-string v2, ", uid: "

    move/from16 v19, v11

    const-string v11, ", componentName: "

    move-object/from16 v20, v3

    const-string/jumbo v3, "lookupProvider is failed, package: "

    if-nez v4, :cond_101

    move-object/from16 v21, v9

    .line 4329
    :try_start_b6
    iget-boolean v9, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-eqz v9, :cond_103

    .line 4331
    new-instance v4, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v4}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 4332
    iget-object v9, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    iput-object v9, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 4333
    iput-object v15, v4, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 4335
    new-instance v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    const/4 v15, 0x0

    invoke-direct {v9, v15}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider-IA;)V

    .line 4336
    invoke-virtual {v9, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setPartialInfoLocked(Landroid/appwidget/AppWidgetProviderInfo;)V

    const/4 v4, 0x1

    .line 4337
    iput-boolean v4, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 4338
    iput-object v13, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 4339
    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Safe mode Provider is added "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " at "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v22, v7

    move-object v4, v9

    move/from16 v23, v10

    goto/16 :goto_1bf

    :cond_101
    move-object/from16 v21, v9

    .line 4341
    :cond_103
    iget-boolean v9, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIsProviderInfoPersisted:Z

    if-eqz v9, :cond_158

    .line 4343
    invoke-static {v7}, Lcom/android/server/appwidget/AppWidgetXmlUtil;->readAppWidgetProviderInfoLocked(Landroid/util/TypedXmlPullParser;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    move-object/from16 v22, v7

    if-nez v9, :cond_128

    .line 4345
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v10

    const-string v10, "Unable to load widget provider info from xml for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12a

    :cond_128
    move/from16 v23, v10

    :goto_12a
    if-nez v4, :cond_14c

    .line 4350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1df

    :cond_14c
    if-eqz v9, :cond_1bf

    .line 4356
    iget-object v7, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    iput-object v7, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 4357
    iput-object v15, v9, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 4358
    invoke-virtual {v4, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setInfoLocked(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_1bf

    :cond_158
    move-object/from16 v22, v7

    move/from16 v23, v10

    .line 4362
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z
    :try_end_15e
    .catch Ljava/lang/NullPointerException; {:try_start_b6 .. :try_end_15e} :catch_2e8
    .catch Ljava/lang/NumberFormatException; {:try_start_b6 .. :try_end_15e} :catch_2e8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b6 .. :try_end_15e} :catch_2e8
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_15e} :catch_2e8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b6 .. :try_end_15e} :catch_2e8

    if-eqz v7, :cond_1bf

    if-nez v4, :cond_1bf

    if-eqz v8, :cond_1bf

    .line 4364
    :try_start_164
    new-instance v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider-IA;)V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_16a} :catch_1a5

    .line 4365
    :try_start_16a
    new-instance v4, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v4}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v4, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 4366
    iget-object v9, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    iput-object v9, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 4367
    iput-object v15, v4, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    const/4 v4, 0x0

    .line 4368
    iput-boolean v4, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 4369
    iput-object v13, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 4370
    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readProfileStateFromFileLocked "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_1a0} :catch_1a2

    move-object v4, v7

    goto :goto_1bf

    :catch_1a2
    move-exception v0

    move-object v4, v7

    goto :goto_1a6

    :catch_1a5
    move-exception v0

    :goto_1a6
    move-object v7, v0

    .line 4373
    :try_start_1a7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readProfileStateFromFileLocked e : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4374
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1bf
    :goto_1bf
    if-nez v4, :cond_1e4

    .line 4380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1df
    move-object/from16 v2, v22

    move/from16 v10, v23

    goto :goto_1fa

    :cond_1e4
    move-object/from16 v3, v21

    move-object/from16 v2, v22

    move/from16 v10, v23

    const/4 v6, 0x0

    .line 4385
    invoke-interface {v2, v6, v3, v10}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 4387
    iput v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    const-string/jumbo v3, "info_tag"

    .line 4388
    invoke-interface {v2, v6, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    :goto_1fa
    move/from16 v9, p2

    move-object/from16 v3, p3

    move/from16 v6, v17

    move-object/from16 v12, v18

    move/from16 v11, v19

    move-object/from16 v4, v20

    :goto_206
    const/4 v7, 0x0

    goto/16 :goto_300

    :cond_209
    move-object/from16 v20, v3

    move-object/from16 v18, v4

    move-object v2, v7

    move-object v3, v9

    move/from16 v19, v11

    move/from16 v16, v12

    move/from16 v17, v13

    move-object/from16 v4, v20

    .line 4389
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_21b
    .catch Ljava/lang/NullPointerException; {:try_start_1a7 .. :try_end_21b} :catch_2e8
    .catch Ljava/lang/NumberFormatException; {:try_start_1a7 .. :try_end_21b} :catch_2e8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a7 .. :try_end_21b} :catch_2e8
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_21b} :catch_2e8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a7 .. :try_end_21b} :catch_2e8

    const-string/jumbo v7, "id"

    if-eqz v6, :cond_273

    add-int/lit8 v11, v19, 0x1

    .line 4391
    :try_start_222
    new-instance v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host-IA;)V

    .line 4394
    invoke-interface {v2, v9, v15}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_22c
    .catch Ljava/lang/NullPointerException; {:try_start_222 .. :try_end_22c} :catch_2e8
    .catch Ljava/lang/NumberFormatException; {:try_start_222 .. :try_end_22c} :catch_2e8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_222 .. :try_end_22c} :catch_2e8
    .catch Ljava/io/IOException; {:try_start_222 .. :try_end_22c} :catch_2e8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_222 .. :try_end_22c} :catch_2e8

    move/from16 v9, p2

    .line 4396
    :try_start_22e
    invoke-virtual {v1, v12, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v13

    if-gez v13, :cond_24d

    .line 4399
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    if-eqz v14, :cond_24a

    if-nez v8, :cond_24d

    .line 4400
    iget-object v14, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v14

    if-nez v14, :cond_24d

    const/4 v14, 0x1

    .line 4401
    iput-boolean v14, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    goto :goto_24d

    :cond_24a
    const/4 v14, 0x1

    .line 4404
    iput-boolean v14, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    .line 4409
    :cond_24d
    :goto_24d
    iget-boolean v14, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v14, :cond_255

    iget-boolean v14, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-eqz v14, :cond_26c

    :cond_255
    const/4 v14, 0x0

    .line 4412
    invoke-interface {v2, v14, v7}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 4413
    invoke-interface {v2, v14, v3, v11}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 4416
    iput v3, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 4417
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-direct {v3, v13, v7, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object v3, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 4418
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26c
    move-object/from16 v3, p3

    move/from16 v6, v17

    move-object/from16 v12, v18

    goto :goto_206

    :cond_273
    move/from16 v9, p2

    const-string v3, "b"

    .line 4420
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_299

    const-string/jumbo v3, "packageName"

    const/4 v6, 0x0

    .line 4421
    invoke-interface {v2, v6, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4422
    invoke-virtual {v1, v3, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_2e0

    .line 4424
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 4425
    iget-object v6, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2e0

    :cond_299
    const-string v3, "g"

    .line 4427
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e0

    .line 4428
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget-IA;)V

    .line 4429
    invoke-interface {v2, v6, v7}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    add-int/lit8 v7, v7, 0x1

    .line 4430
    invoke-virtual {v1, v9, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->setMinAppWidgetIdLocked(II)V

    const-string/jumbo v6, "rid"

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 4433
    invoke-interface {v2, v11, v6, v7}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    .line 4434
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseWidgetIdOptions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 4436
    invoke-interface {v2, v11, v4}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v12, v18

    .line 4437
    invoke-interface {v2, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2d4

    .line 4439
    invoke-interface {v2, v11, v12}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    goto :goto_2d5

    :cond_2d4
    const/4 v11, -0x1

    .line 4444
    :goto_2d5
    new-instance v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    invoke-direct {v13, v1, v3, v6, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;II)V

    move-object/from16 v3, p3

    .line 4446
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2df
    .catch Ljava/lang/NullPointerException; {:try_start_22e .. :try_end_2df} :catch_2e6
    .catch Ljava/lang/NumberFormatException; {:try_start_22e .. :try_end_2df} :catch_2e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22e .. :try_end_2df} :catch_2e6
    .catch Ljava/io/IOException; {:try_start_22e .. :try_end_2df} :catch_2e6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_22e .. :try_end_2df} :catch_2e6

    goto :goto_2fc

    :cond_2e0
    :goto_2e0
    move-object/from16 v3, p3

    move-object/from16 v12, v18

    const/4 v7, 0x0

    goto :goto_2fc

    :catch_2e6
    move-exception v0

    goto :goto_312

    :catch_2e8
    move-exception v0

    move/from16 v9, p2

    goto :goto_312

    :cond_2ec
    move/from16 v19, v11

    move/from16 v16, v12

    move/from16 v17, v13

    move-object v12, v4

    move-object v4, v3

    move-object/from16 v3, p3

    move/from16 v24, v9

    move v9, v2

    move-object v2, v7

    move/from16 v7, v24

    :goto_2fc
    move/from16 v6, v17

    move/from16 v11, v19

    :goto_300
    const/4 v13, 0x1

    :goto_301
    if-ne v6, v13, :cond_304

    return v16

    :cond_304
    move-object v3, v4

    move-object v4, v12

    move/from16 v12, v16

    move/from16 v24, v7

    move-object v7, v2

    move v2, v9

    move/from16 v9, v24

    goto/16 :goto_25

    :catch_310
    move-exception v0

    move v9, v2

    :goto_312
    move-object v1, v0

    .line 4455
    :goto_313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read appwidgets.xml: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/data/log/dump_appwidgets.xml"

    .line 4460
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4461
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_351

    .line 4463
    :try_start_348
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_34b
    .catch Ljava/lang/Exception; {:try_start_348 .. :try_end_34b} :catch_34c

    goto :goto_351

    :catch_34c
    move-exception v0

    move-object v3, v0

    .line 4465
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4469
    :cond_351
    :goto_351
    :try_start_351
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_354
    .catch Ljava/lang/Exception; {:try_start_351 .. :try_end_354} :catch_355

    goto :goto_35a

    :catch_355
    move-exception v0

    move-object v2, v0

    .line 4471
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 4473
    :goto_35a
    :try_start_35a
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_35f
    .catch Ljava/lang/Exception; {:try_start_35a .. :try_end_35f} :catch_37a

    .line 4474
    :try_start_35f
    invoke-static/range {p2 .. p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getStateFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J
    :try_end_36a
    .catchall {:try_start_35f .. :try_end_36a} :catchall_36e

    .line 4475
    :try_start_36a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_36d
    .catch Ljava/lang/Exception; {:try_start_36a .. :try_end_36d} :catch_37a

    goto :goto_37f

    :catchall_36e
    move-exception v0

    move-object v1, v0

    .line 4473
    :try_start_370
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_373
    .catchall {:try_start_370 .. :try_end_373} :catchall_374

    goto :goto_379

    :catchall_374
    move-exception v0

    move-object v2, v0

    :try_start_376
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_379
    throw v1
    :try_end_37a
    .catch Ljava/lang/Exception; {:try_start_376 .. :try_end_37a} :catch_37a

    :catch_37a
    move-exception v0

    move-object v1, v0

    .line 4476
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_37f
    const/4 v1, -0x1

    return v1
.end method

.method public final registerBroadcastReceiver()V
    .registers 13

    .line 600
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 601
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 608
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 609
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 610
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 611
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 612
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 613
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 617
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 618
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 619
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 623
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 624
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 625
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 629
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    .line 630
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 631
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 635
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    if-eqz v0, :cond_9b

    .line 636
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 637
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_9b
    return-void
.end method

.method public final registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3328
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 3329
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    if-lez v1, :cond_65

    .line 3334
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "appWidgetIds"

    .line 3335
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3336
    iget-object p2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3337
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3340
    :try_start_1f
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/high16 v5, 0xc000000

    .line 3342
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v6

    .line 3340
    invoke-static {p2, v4, v1, v5, v6}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_60

    .line 3344
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3346
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz p2, :cond_68

    .line 3350
    iget p2, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    const v0, 0x1b7740

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-long v0, p2

    .line 3351
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 3352
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;JLandroid/app/PendingIntent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3356
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "add ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAlarmHistoryLocked(Ljava/lang/String;)V

    goto :goto_68

    :catchall_60
    move-exception p0

    .line 3344
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3345
    throw p0

    .line 3359
    :cond_65
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    :cond_68
    :goto_68
    return-void
.end method

.method public final registerOnCrossProfileProvidersChangedListener()V
    .registers 2

    .line 646
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_7

    .line 647
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V

    :cond_7
    return-void
.end method

.method public final reloadWidgetsMaskedState(I)V
    .registers 15

    .line 922
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 924
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 926
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v4

    .line 927
    :goto_16
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v5

    .line 929
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v2

    .line 931
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v7, v4

    :goto_25
    if-ge v7, v6, :cond_7a

    .line 933
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 934
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v9

    if-eq v9, p1, :cond_36

    goto :goto_77

    .line 939
    :cond_36
    invoke-virtual {v8, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedByLockedProfileLocked(Z)Z

    move-result v9

    .line 940
    invoke-virtual {v8, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedByQuietProfileLocked(Z)Z

    move-result v10

    or-int/2addr v9, v10

    .line 942
    invoke-virtual {v8, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedBySuperProfileLocked(Z)Z

    move-result v10
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_7e

    or-int/2addr v9, v10

    .line 947
    :try_start_44
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v11, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v11, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 948
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v12

    .line 947
    invoke-interface {v10, v11, v12}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v10
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_56} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_56} :catch_57
    .catchall {:try_start_44 .. :try_end_56} :catchall_7e

    goto :goto_5a

    :catch_57
    move-exception v10

    goto :goto_60

    :catch_59
    move v10, v4

    .line 953
    :goto_5a
    :try_start_5a
    invoke-virtual {v8, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedBySuspendedPackageLocked(Z)Z

    move-result v10
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5e} :catch_57
    .catchall {:try_start_5a .. :try_end_5e} :catchall_7e

    or-int/2addr v9, v10

    goto :goto_67

    :goto_60
    :try_start_60
    const-string v11, "AppWidgetServiceImpl"

    const-string v12, "Failed to query application info"

    .line 955
    invoke-static {v11, v12, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_67
    if-eqz v9, :cond_77

    .line 958
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    move-result v9

    if-eqz v9, :cond_74

    const/4 v9, 0x0

    .line 959
    invoke-virtual {p0, v8, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_77

    .line 961
    :cond_74
    invoke-virtual {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    :try_end_77
    .catchall {:try_start_60 .. :try_end_77} :catchall_7e

    :cond_77
    :goto_77
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 966
    :cond_7a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_7e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 967
    throw p0
.end method

.method public reloadWidgetsMaskedStateForGroup(I)V
    .registers 6

    .line 909
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 912
    :cond_9
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 913
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    .line 914
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p1

    .line 915
    array-length v1, p1

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_21

    aget v3, p1, v2

    .line 916
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 918
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final removeHostsAndProvidersForPackageLocked(Ljava/lang/String;I)Z
    .registers 8

    .line 4775
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v0

    .line 4780
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_c
    if-ltz v1, :cond_2d

    .line 4782
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4783
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 4784
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_2a

    .line 4785
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    move v0, v2

    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_2d
    return v0
.end method

.method public final removeProviderIdFromUpdateArray(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 3801
    :cond_3
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUpdateScreenSizeProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_3f

    .line 3803
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUpdateScreenSizeProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 3804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Dual display] Remove provider from update list at = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppWidgetServiceImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUpdateScreenSizeProviders:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3f

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_3f
    :goto_3f
    return-void
.end method

.method public final removeProvidersForPackageLocked(Ljava/lang/String;I)Z
    .registers 8

    .line 4762
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_2e

    .line 4764
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4765
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 4766
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_2b

    .line 4767
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    move v2, v1

    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_2e
    return v2
.end method

.method public removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 4

    .line 4057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeWidgetLocked, widget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", widget id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    .line 4058
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    .line 4057
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4059
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4060
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 4061
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyAppWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    return-void
.end method

.method public final removeWidgetsForPackageLocked(Ljava/lang/String;II)V
    .registers 8

    .line 4748
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_33

    .line 4750
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4751
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 4752
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_30

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 4753
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_30

    .line 4754
    invoke-virtual {p0, v2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_33
    return-void
.end method

.method public requestPinAppWidget(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .registers 12

    .line 2284
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2285
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 2293
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2294
    :try_start_b
    invoke-virtual {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 2297
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId-IA;)V

    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_40

    .line 2298
    iget-boolean v2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v2, :cond_20

    goto :goto_40

    .line 2301
    :cond_20
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 2302
    iget p0, v3, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_2e

    .line 2303
    monitor-exit v1

    return v0

    .line 2305
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_42

    .line 2307
    const-class p0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/pm/ShortcutServiceInternal;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 2308
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->requestPinAppWidget(Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Z

    move-result p0

    return p0

    .line 2299
    :cond_40
    :goto_40
    :try_start_40
    monitor-exit v1

    return v0

    :catchall_42
    move-exception p0

    .line 2305
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public final resolveHostUidLocked(Ljava/lang/String;I)V
    .registers 9

    .line 1091
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_31

    .line 1093
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1094
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2e

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1098
    new-instance p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object p1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object p0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    return-void

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_31
    return-void
.end method

.method public restoreWidgetState(Ljava/lang/String;[BI)V
    .registers 4

    .line 3597
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreWidgetState(Ljava/lang/String;[BI)V

    return-void
.end method

.method public final saveGroupStateAsync(I)V
    .registers 4

    .line 2608
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final saveStateLocked(I)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "AppWidgetServiceImpl"

    .line 4120
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->tagProvidersAndHosts()V

    .line 4122
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object p1

    .line 4123
    array-length v1, p1

    const/4 v2, 0x0

    .line 4126
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isMaintenanceMode()Z

    move-result v3
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    move-exception v3

    const-string v4, "Couldn\'t get user info"

    .line 4128
    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    :goto_21
    if-ge v2, v1, :cond_5f

    .line 4132
    aget v4, p1, v2

    if-eqz v3, :cond_2c

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_2c

    goto :goto_5c

    .line 4137
    :cond_2c
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    move-result-object v5

    .line 4140
    :try_start_30
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    .line 4141
    invoke-virtual {p0, v6, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeProfileStateToFileLocked(Ljava/io/FileOutputStream;I)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 4142
    invoke-virtual {v5, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_5c

    .line 4144
    :cond_3e
    invoke-virtual {v5, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v4, "Failed to save state, restoring backup."

    .line 4145
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_46} :catch_47

    goto :goto_5c

    :catch_47
    move-exception v4

    .line 4148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed open state file for write: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_5f
    return-void
.end method

.method public final scheduleNotifyAppWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 8

    .line 2936
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    if-eqz p1, :cond_4e

    .line 2938
    iget-boolean v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->trackingUpdate:Z

    if-eqz v2, :cond_49

    const/4 v2, 0x0

    .line 2940
    iput-boolean v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->trackingUpdate:Z

    .line 2941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Widget removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppWidgetServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x40

    .line 2942
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appwidget update-intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 2943
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 2942
    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2947
    :cond_49
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->clear()V

    :cond_4e
    if-eqz p1, :cond_83

    .line 2949
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_83

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v2, :cond_83

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v3, :cond_83

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v2, :cond_63

    goto :goto_83

    .line 2954
    :cond_63
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 2955
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2956
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2957
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2958
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput p1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2960
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2962
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_83
    :goto_83
    return-void
.end method

.method public final scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V
    .registers 7

    if-eqz p2, :cond_4c

    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    goto :goto_4c

    .line 2642
    :cond_6
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    if-eqz p1, :cond_13

    .line 2644
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p2, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_13
    if-eqz p1, :cond_4c

    .line 2646
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v2, :cond_4c

    iget-boolean v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v3, :cond_4c

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v2, :cond_4c

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_4c

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v2, :cond_2a

    goto :goto_4c

    .line 2652
    :cond_2a
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 2653
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2654
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2655
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2656
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput p1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2657
    iput p2, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2659
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2661
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public final scheduleNotifyGroupHostsForProvidersChangedLocked(I)V
    .registers 10

    .line 2979
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object p1

    .line 2981
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_e
    if-ltz v0, :cond_4f

    .line 2983
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2986
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_1b
    if-ge v5, v3, :cond_2a

    .line 2988
    aget v6, p1, v5

    .line 2989
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v7

    if-ne v7, v6, :cond_27

    move v4, v1

    goto :goto_2a

    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_2a
    :goto_2a
    if-nez v4, :cond_2d

    goto :goto_4c

    :cond_2d
    if-eqz v2, :cond_4c

    .line 2999
    iget-boolean v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v3, :cond_4c

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v3, :cond_38

    goto :goto_4c

    .line 3003
    :cond_38
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v3

    .line 3004
    iput-object v2, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3005
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v2, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 3007
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3009
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_4c
    :goto_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_4f
    return-void
.end method

.method public final scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2890
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    if-eqz p1, :cond_13

    .line 2893
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->clear()V

    .line 2894
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->append(IJ)V

    :cond_13
    if-eqz p1, :cond_52

    .line 2896
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_52

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v2, :cond_52

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v3, :cond_52

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v2, :cond_28

    goto :goto_52

    .line 2901
    :cond_28
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 2902
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2903
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2904
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2905
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2906
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput p1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2908
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2910
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_52
    :goto_52
    return-void
.end method

.method public final scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V
    .registers 10

    .line 2732
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    if-eqz p1, :cond_4e

    .line 2734
    iget-boolean v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->trackingUpdate:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_49

    .line 2736
    iput-boolean v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->trackingUpdate:Z

    .line 2737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget update received "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AppWidgetServiceImpl"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x40

    .line 2738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appwidget update-intent "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 2739
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 2738
    invoke-static {v4, v5, v2, v6}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2742
    :cond_49
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_4e
    if-eqz p1, :cond_94

    .line 2744
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_94

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v2, :cond_94

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v3, :cond_94

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v2, :cond_94

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->transactionError:Ljava/lang/String;

    if-eqz v2, :cond_67

    goto :goto_94

    :cond_67
    if-eqz p2, :cond_72

    .line 2749
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-direct {v2, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    .line 2750
    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setProviderInstanceId(J)V

    move-object p2, v2

    .line 2753
    :cond_72
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 2754
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2755
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2756
    iput-object p2, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2757
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2758
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput p1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2760
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2762
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_94
    :goto_94
    return-void
.end method

.method public semCreateAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;
    .registers 12

    .line 1539
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1546
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1548
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1549
    :try_start_c
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1554
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1553
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object p1

    if-eqz p1, :cond_71

    .line 1560
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz p1, :cond_5a

    and-int/lit16 p3, p3, -0xc4

    .line 1568
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.SEM_APPWIDGET_CONFIGURE"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "appWidgetId"

    .line 1569
    invoke-virtual {v4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1570
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->semConfigure:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1571
    invoke-virtual {v4, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1574
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_88

    .line 1576
    :try_start_39
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x54000000

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    .line 1579
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result p0

    invoke-direct {v7, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1576
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 1580
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0
    :try_end_50
    .catchall {:try_start_39 .. :try_end_50} :catchall_55

    .line 1582
    :try_start_50
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    return-object p0

    :catchall_55
    move-exception p0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1583
    throw p0

    .line 1562
    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Widget not bound "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1557
    :cond_71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad widget id "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_88
    move-exception p0

    .line 1584
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_50 .. :try_end_8a} :catchall_88

    throw p0
.end method

.method public final sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 5

    .line 4814
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4816
    :try_start_4
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 4818
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4819
    throw p0
.end method

.method public final sendDeletedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5

    .line 3294
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 3296
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3298
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3299
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3300
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 4

    .line 3304
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 3306
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3308
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3309
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 4

    .line 3272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 3274
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3276
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3277
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5

    .line 3313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 3315
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3317
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3318
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3319
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v2, "appWidgetOptions"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3320
    iget-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProductDEV:Z

    if-eqz v1, :cond_48

    .line 3321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendOptionsChangedIntentLocked, widget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", options = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    :cond_48
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[IZ)V
    .registers 6

    .line 3281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_e

    const/high16 p3, 0x10000000

    .line 3284
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_e
    const/high16 p3, 0x4000000

    .line 3286
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p3, "appWidgetIds"

    .line 3288
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3289
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object p2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3290
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    .registers 6

    .line 1459
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V

    .line 1461
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1463
    :try_start_8
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1465
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_13

    .line 1467
    monitor-exit v0

    return-void

    .line 1470
    :cond_13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p3, :cond_23

    .line 1472
    iget-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 1474
    :cond_23
    iget-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1477
    :goto_28
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1478
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final setMinAppWidgetIdLocked(II)V
    .registers 4

    .line 2446
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->peekNextAppWidgetIdLocked(I)I

    move-result v0

    if-ge v0, p2, :cond_b

    .line 2448
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_b
    return-void
.end method

.method public setSafeMode(Z)V
    .registers 2

    .line 652
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    return-void
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I[I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/appwidget/PendingHostUpdate;",
            ">;"
        }
    .end annotation

    .line 1265
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1271
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1273
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1275
    :try_start_c
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2, p2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isInstantAppLocked(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string p0, "AppWidgetServiceImpl"

    .line 1276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instant package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot host app widgets"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 1280
    :cond_35
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1284
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v0, v2, p3, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1285
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object p2

    .line 1286
    iput-object p1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    const-string p3, "AppWidgetServiceImpl"

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startListening callbacks : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Start listening : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateHostHistoryLocked(Ljava/lang/String;)V

    .line 1293
    sget-object p1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 1294
    array-length p1, p4

    .line 1295
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1296
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_87
    if-ge v5, p1, :cond_a9

    .line 1298
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1299
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    aget v7, p4, v5

    invoke-virtual {p2, v6, v7, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getPendingUpdatesForIdLocked(Landroid/content/Context;ILandroid/util/LongSparseArray;)V

    .line 1302
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    move v7, v4

    :goto_98
    if-ge v7, v6, :cond_a6

    .line 1304
    invoke-virtual {v0, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/appwidget/PendingHostUpdate;

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_98

    :cond_a6
    add-int/lit8 v5, v5, 0x1

    goto :goto_87

    .line 1308
    :cond_a9
    iput-wide v2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J

    .line 1309
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object p0

    :catchall_b2
    move-exception p0

    .line 1310
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_c .. :try_end_b4} :catchall_b2

    throw p0
.end method

.method public stopListening(Ljava/lang/String;I)V
    .registers 7

    .line 1315
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1322
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1324
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 1325
    :try_start_d
    invoke-virtual {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 1329
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v0, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1330
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object p1

    if-eqz p1, :cond_4c

    const/4 p2, 0x0

    .line 1333
    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 1334
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1335
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getWidgetUids()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Landroid/app/AppOpsManagerInternal;->updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V

    const-string p2, "AppWidgetServiceImpl"

    const-string/jumbo v0, "stopListening callbacks : null"

    .line 1338
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stop listening : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateHostHistoryLocked(Ljava/lang/String;)V

    .line 1342
    :cond_4c
    monitor-exit v1

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_d .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public systemRestoreFinished(I)V
    .registers 2

    .line 3602
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->systemRestoreFinished(I)V

    return-void
.end method

.method public systemRestoreStarting(I)V
    .registers 2

    .line 3592
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->systemRestoreStarting(I)V

    return-void
.end method

.method public systemServicesReady()V
    .registers 2

    .line 561
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 562
    const-class v0, Landroid/app/AppOpsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManagerInternal;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 563
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    return-void
.end method

.method public final tagProvidersAndHosts()V
    .registers 5

    .line 4154
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_17

    .line 4156
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4157
    iput v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4160
    :cond_17
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1d
    if-ge v1, v0, :cond_2c

    .line 4162
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4163
    iput v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2c
    return-void
.end method

.method public final toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 6357
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 6358
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    .line 6359
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v1, v5

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xb

    .line 6360
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/16 v2, 0xd

    .line 6361
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const/4 p0, 0x6

    aput-object p1, v1, p0

    const-string p0, "[%02d-%02d %02d:%02d:%02d.%03d] %s"

    .line 6358
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unbindService(Landroid/content/ServiceConnection;)V
    .registers 4

    .line 4835
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4837
    :try_start_4
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 4839
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4840
    throw p0
.end method

.method public final unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 6

    .line 1081
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 1083
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1084
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->-$$Nest$mclearMaskedViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1085
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    return-void
.end method

.method public final updateAlarmHistoryLocked(Ljava/lang/String;)V
    .registers 6

    .line 6390
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistoryIndex:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_13

    .line 6391
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6392
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistory:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistoryIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistoryIndex:I

    aput-object p1, v0, v2

    .line 6395
    :cond_13
    iget p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistoryIndex:I

    if-lt p1, v1, :cond_1a

    const/4 p1, 0x0

    .line 6396
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistoryIndex:I

    :cond_1a
    return-void
.end method

.method public updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .registers 5

    const/4 v0, 0x0

    .line 2128
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    return-void
.end method

.method public final updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V
    .registers 10

    .line 2412
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz p2, :cond_30

    .line 2414
    array-length v1, p2

    if-nez v1, :cond_a

    goto :goto_30

    .line 2419
    :cond_a
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 2420
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2421
    :try_start_12
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 2423
    array-length v0, p2

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_2b

    .line 2425
    aget v3, p2, v2

    .line 2430
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2429
    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 2433
    invoke-virtual {p0, v3, p3, p4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2436
    :cond_2b
    monitor-exit v1

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_2d

    throw p0

    :cond_30
    :goto_30
    return-void
.end method

.method public final updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V
    .registers 5

    if-eqz p1, :cond_65

    .line 2613
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_65

    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v0, :cond_65

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v0, :cond_65

    if-eqz p3, :cond_1a

    .line 2616
    iget-object p3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz p3, :cond_1a

    .line 2618
    invoke-virtual {p3, p2}, Landroid/widget/RemoteViews;->mergeRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_1c

    .line 2621
    :cond_1a
    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 2624
    :goto_1c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    const/16 p3, 0x3e8

    if-eq p2, p3, :cond_5e

    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz p2, :cond_5e

    .line 2626
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result p2

    iget p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    if-gt p2, p3, :cond_35

    goto :goto_5e

    :cond_35
    const/4 p3, 0x0

    .line 2627
    iput-object p3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 2628
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteViews for widget update exceeds maximum bitmap memory usage (used: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", max: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2632
    :cond_5e
    :goto_5e
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V

    :cond_65
    return-void
.end method

.method public updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 8

    .line 2057
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v1, "AppWidgetServiceImpl"

    .line 2064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAppWidgetOptions callingPackage :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", appWidgetId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", options = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 2072
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2073
    :try_start_33
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 2078
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2077
    invoke-virtual {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object p1

    if-nez p1, :cond_42

    .line 2081
    monitor-exit v1

    return-void

    .line 2085
    :cond_42
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2088
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2090
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 2091
    monitor-exit v1

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_33 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 8

    .line 2178
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2185
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 2187
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2188
    :try_start_10
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 2192
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId-IA;)V

    .line 2193
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object p1

    if-nez p1, :cond_3b

    const-string p0, "AppWidgetServiceImpl"

    .line 2196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Provider doesn\'t exist "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    monitor-exit v1

    return-void

    .line 2200
    :cond_3b
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 2201
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_43
    if-ge v3, v0, :cond_51

    .line 2203
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2204
    invoke-virtual {p0, v4, p2, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 2206
    :cond_51
    monitor-exit v1

    return-void

    :catchall_53
    move-exception p0

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_10 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 9

    .line 2211
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2217
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 2219
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2220
    :try_start_10
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 2224
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId-IA;)V

    .line 2225
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    if-eqz v3, :cond_89

    .line 2230
    iget-object p1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 2232
    monitor-exit v1

    return-void

    :cond_2d
    if-nez p2, :cond_32

    const-string p1, "android.appwidget.provider"

    goto :goto_33

    :cond_32
    move-object p1, p2

    .line 2237
    :goto_33
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getPartialInfoLocked()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_41

    .line 2240
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v5, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Landroid/content/Context;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    :cond_41
    if-eqz v4, :cond_6d

    .line 2251
    invoke-virtual {v3, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setInfoLocked(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 2252
    iput-object p2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 2255
    iget-object p1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    move v2, p2

    :goto_50
    if-ge v2, p1, :cond_65

    .line 2257
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2258
    invoke-virtual {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2259
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v4, v5, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 2262
    :cond_65
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 2263
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 2264
    monitor-exit v1

    return-void

    .line 2247
    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to parse "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " meta-data to a valid AppWidget provider"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2227
    :cond_89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid AppWidget provider"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_a0
    move-exception p0

    .line 2264
    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_10 .. :try_end_a2} :catchall_a0

    throw p0
.end method

.method public final updateHostHistoryLocked(Ljava/lang/String;)V
    .registers 6

    .line 6366
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistoryIdx:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_13

    .line 6367
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6368
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistory:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistoryIdx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistoryIdx:I

    aput-object p1, v0, v2

    .line 6371
    :cond_13
    iget p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistoryIdx:I

    if-lt p1, v1, :cond_1a

    const/4 p1, 0x0

    .line 6372
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistoryIdx:I

    :cond_1a
    return-void
.end method

.method public final updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;ZZ)Z
    .registers 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;",
            ">;ZZ)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 4671
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 4672
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4673
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v6, p5

    .line 4674
    invoke-virtual {v0, v5, v2, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_21

    const/4 v7, 0x0

    goto :goto_25

    .line 4677
    :cond_21
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    :goto_25
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_27
    const/4 v10, 0x1

    if-ge v8, v7, :cond_a5

    .line 4679
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 4680
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4682
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x40000

    and-int/2addr v13, v14

    if-eqz v13, :cond_3c

    goto :goto_a0

    .line 4686
    :cond_3c
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a0

    .line 4687
    new-instance v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v14, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v15, Landroid/content/ComponentName;

    iget-object v6, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v15, v6, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v13, v14, v15, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId-IA;)V

    .line 4690
    invoke-virtual {v0, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v12

    if-nez v12, :cond_69

    .line 4692
    invoke-virtual {v0, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 4693
    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_66
    move/from16 v13, p4

    goto :goto_9e

    .line 4698
    :cond_69
    invoke-virtual {v0, v13, v11, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->createPartialProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    if-eqz v9, :cond_66

    .line 4700
    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4702
    invoke-virtual {v12, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setPartialInfoLocked(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 4704
    iget-object v9, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_66

    .line 4706
    iget-object v11, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v11

    .line 4711
    invoke-virtual {v0, v12, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    const/4 v13, 0x0

    :goto_87
    if-ge v13, v9, :cond_99

    .line 4715
    iget-object v14, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4716
    iput-object v6, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 4717
    invoke-virtual {v0, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_87

    :cond_99
    move/from16 v13, p4

    .line 4720
    invoke-virtual {v0, v12, v11, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[IZ)V

    :goto_9e
    move v9, v10

    goto :goto_a2

    :cond_a0
    :goto_a0
    move/from16 v13, p4

    :goto_a2
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    .line 4729
    :cond_a5
    iget-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v10

    :goto_ac
    if-ltz v5, :cond_e0

    .line 4731
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4732
    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dd

    .line 4733
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v7

    if-ne v7, v2, :cond_dd

    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 4734
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_dd

    if-eqz v3, :cond_d9

    .line 4736
    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4738
    :cond_d9
    invoke-virtual {v0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    move v9, v10

    :cond_dd
    add-int/lit8 v5, v5, -0x1

    goto :goto_ac

    :cond_e0
    return v9
.end method

.method public final updateProvidersHistoryLocked(Ljava/lang/String;)V
    .registers 6

    .line 6378
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistoryIndex:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_13

    .line 6379
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6380
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistory:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistoryIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistoryIndex:I

    aput-object p1, v0, v2

    .line 6383
    :cond_13
    iget p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistoryIndex:I

    if-lt p1, v1, :cond_1a

    const/4 p1, 0x0

    .line 6384
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistoryIndex:I

    :cond_1a
    return-void
.end method

.method public final updateWidgetPackageSuspensionMaskedState(Landroid/content/Intent;ZI)V
    .registers 9

    const-string v0, "android.intent.extra.changed_package_list"

    .line 975
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 979
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 980
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 981
    :try_start_15
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_52

    .line 983
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 984
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    if-ne v4, p3, :cond_4f

    .line 985
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 986
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    goto :goto_4f

    .line 989
    :cond_3b
    invoke-virtual {v3, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedBySuspendedPackageLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 990
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v4, 0x0

    .line 991
    invoke-virtual {p0, v3, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_4f

    .line 993
    :cond_4c
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    :cond_4f
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 997
    :cond_52
    monitor-exit p1

    return-void

    :catchall_54
    move-exception p0

    monitor-exit p1
    :try_end_56
    .catchall {:try_start_15 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public final writeLogToFile(Ljava/lang/String;)V
    .registers 7

    .line 6401
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6402
    new-instance p1, Ljava/io/File;

    const-string v0, "/data/log"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_12

    return-void

    :cond_12
    const/4 p1, 0x1

    .line 6407
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/appwidget.log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6408
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_29

    .line 6410
    :try_start_20
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_35

    :catch_24
    move-exception v1

    .line 6412
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35

    .line 6414
    :cond_29
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    cmp-long v1, v1, v3

    if-lez v1, :cond_35

    const/4 p1, 0x0

    .line 6418
    :cond_35
    :goto_35
    :try_start_35
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_63

    .line 6419
    :try_start_3a
    new-instance p1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {p1, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_59

    .line 6420
    :try_start_3f
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6421
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 6422
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_4f

    .line 6423
    :try_start_48
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_59

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_63

    goto :goto_67

    :catchall_4f
    move-exception p0

    .line 6418
    :try_start_50
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception p1

    :try_start_55
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_58
    throw p0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception p0

    :try_start_5a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception p1

    :try_start_5f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_62
    throw p0
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_63} :catch_63

    :catch_63
    move-exception p0

    .line 6424
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_67
    return-void
.end method

.method public final writeProfileStateToFileLocked(Ljava/io/FileOutputStream;I)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "b"

    const-string/jumbo v1, "gs"

    const/4 v2, 0x0

    .line 4186
    :try_start_6
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object p1

    .line 4187
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4188
    invoke-interface {p1, v4, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "version"

    const/4 v5, 0x1

    .line 4189
    invoke-interface {p1, v4, v3, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4191
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v6, v2

    :goto_21
    if-ge v6, v3, :cond_46

    .line 4193
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4195
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v8

    if-eq v8, p2, :cond_32

    goto :goto_43

    .line 4198
    :cond_32
    iget-boolean v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIsProviderInfoPersisted:Z

    if-eqz v8, :cond_3a

    .line 4199
    invoke-static {p1, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProviderWithProviderInfo(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    goto :goto_43

    .line 4200
    :cond_3a
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->shouldBePersisted()Z

    move-result v8

    if-eqz v8, :cond_43

    .line 4201
    invoke-static {p1, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    :cond_43
    :goto_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 4205
    :cond_46
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v2

    :goto_4d
    if-ge v6, v3, :cond_64

    .line 4207
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4209
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v8

    if-eq v8, p2, :cond_5e

    goto :goto_61

    .line 4212
    :cond_5e
    invoke-static {p1, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    :goto_61
    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    .line 4215
    :cond_64
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v2

    :goto_6b
    if-ge v6, v3, :cond_84

    .line 4217
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4219
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v8

    if-eq v8, p2, :cond_7e

    goto :goto_81

    .line 4222
    :cond_7e
    invoke-static {p1, v7, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Landroid/util/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Z)V

    :goto_81
    add-int/lit8 v6, v6, 0x1

    goto :goto_6b

    .line 4225
    :cond_84
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 4226
    :goto_8a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 4227
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 4229
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, p2, :cond_a1

    goto :goto_8a

    .line 4232
    :cond_a1
    invoke-interface {p1, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "packageName"

    .line 4233
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v4, v6, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4234
    invoke-interface {p1, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8a

    .line 4237
    :cond_b2
    invoke-interface {p1, v4, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4238
    invoke-interface {p1}, Landroid/util/TypedXmlSerializer;->endDocument()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b8} :catch_b9

    return v5

    :catch_b9
    move-exception p0

    .line 4241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to write state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppWidgetServiceImpl"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to write appwidgets.xml: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method
