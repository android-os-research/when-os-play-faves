.class public Lcom/android/server/enterprise/kioskmode/KioskModeService;
.super Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;
.source "KioskModeService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;,
        Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;,
        Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    }
.end annotation


# static fields
.field public static final ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

.field public static final ACTION_TERMINATE_KIOSK_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.TERMINATE_KIOSK_INTERNAL"

.field public static final COCKTAIL_BAR_SERVICE_CLSNAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.CocktailBarService"

.field public static final COCKTAIL_BAR_SERVICE_PKGNAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field public static final DEFAULT_APK_NAME:Ljava/lang/String; = "kioskdefault.apk"

.field public static final DEFAULT_KIOSK_PKG:Ljava/lang/String; = "com.sec.android.kiosk"

.field public static final DISABLE_KIOSK_MODE:I = 0x2

.field public static final ENABLE_KIOSK_MODE:I = 0x1

.field public static final FORCE_TERMINATE_KIOSK_MODE:I = 0x3

.field public static final MDM_APP_PKGNAME:Ljava/lang/String; = "com.samsung.android.mdm"

.field public static final SYTEMUI_PACKAGE:Ljava/lang/String; = "android.uid.systemui"

.field public static final TAG:Ljava/lang/String; = "KioskModeService"

.field public static final TASKMANAGER_PKGS:[Ljava/lang/String;

.field public static mLock:Ljava/lang/Object;

.field public static mProcessing:Z

.field public static volatile packageRemoveIntentReceiver:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile terminateIntentReceiver:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

.field public mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final mAvailableKeyCodesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

.field public final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAppPolicy(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Lcom/android/server/enterprise/application/ApplicationPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$m_disableKioskMode(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(Lcom/samsung/android/knox/ContextInfo;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$m_enableKioskMode(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyMultiWindowPolicy(Lcom/android/server/enterprise/kioskmode/KioskModeService;ZI)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyMultiWindowPolicy(ZI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mbroadcastKioskResult(Lcom/android/server/enterprise/kioskmode/KioskModeService;III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanUpKioskMode(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mforceTerminateKiosk(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetAllBlockedList(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Ljava/util/Map;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDefaultHomeScreen(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mlaunchHomeActivity(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateSystemUIMonitor(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwipeRecentTasks(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetACTION_REFRESH_HWKEY_INTERNAL()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputmProcessing(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 140
    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    const-string v0, "com.sec.android.app.controlpanel"

    const-string v1, "com.sec.android.app.taskmanager"

    .line 146
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->TASKMANAGER_PKGS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 149
    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    .line 151
    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    const/4 v0, 0x0

    .line 155
    sput-boolean v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;-><init>()V

    .line 159
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->blocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    .line 167
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 180
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 181
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 182
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 183
    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    .line 184
    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-direct {v2, p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache-IA;)V

    iput-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    .line 191
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 192
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    .line 194
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initializeHandlerThread()V

    const-string v1, "application_policy"

    .line 195
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 198
    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    if-nez v1, :cond_4f

    .line 199
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    :cond_4f
    const-string/jumbo v1, "user"

    .line 202
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    .line 203
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    .line 204
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    .line 205
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    new-instance p1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-void
.end method


# virtual methods
.method public final _disableKioskMode(Lcom/samsung/android/knox/ContextInfo;I)V
    .registers 18

    move-object v0, p0

    move-object/from16 v3, p1

    move/from16 v7, p2

    .line 750
    sget-object v10, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v1, 0x1

    .line 751
    :try_start_9
    sput-boolean v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 753
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 754
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1a

    move v2, v1

    goto :goto_1b

    :cond_1a
    move v2, v5

    .line 759
    :goto_1b
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    .line 760
    iget v8, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 762
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 765
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v4

    if-nez v4, :cond_37

    const-string v1, "KioskModeService"

    const-string v2, "Kiosk Mode already disabled"

    .line 766
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-virtual {p0, v8, v7, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    goto/16 :goto_b3

    .line 768
    :cond_37
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin(I)I

    move-result v4

    if-eq v4, v8, :cond_49

    const-string v1, "KioskModeService"

    const-string v2, "Kiosk Mode enabled by different admin"

    .line 770
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    .line 771
    invoke-virtual {p0, v8, v7, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    goto :goto_b3

    .line 774
    :cond_49
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unregisterTerminationReceiver(I)V

    .line 775
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unregisterPackageRemoveReceiver(I)V

    .line 777
    iget-object v4, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KIOSKMODE"

    const-string/jumbo v13, "kioskModeKioskPackage"

    invoke-virtual {v4, v8, v9, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 779
    iget-object v9, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "KIOSKMODE"

    const-string/jumbo v14, "kioskModeDefaultPackage"

    invoke-virtual {v9, v8, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    .line 783
    invoke-virtual {p0, v8, v5, v13, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateDB(IZLjava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-virtual {p0, v6, v4, v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    .line 786
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unRegisterDexBlocker()V

    .line 788
    iget-object v9, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v9, :cond_8d

    .line 790
    invoke-virtual {v9, v8, v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 793
    iget-object v9, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v9, v8, v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 796
    iget-object v9, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    new-instance v13, Ljava/util/ArrayList;

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v5

    .line 797
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 796
    invoke-virtual {v9, v3, v13}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removePackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    :cond_8d
    if-eqz v2, :cond_a7

    .line 801
    new-instance v13, Ljava/lang/Thread;

    new-instance v14, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move v5, v6

    move v6, v8

    move/from16 v7, p2

    move-wide v8, v11

    invoke-direct/range {v1 .. v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;IIIJ)V

    invoke-direct {v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 818
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 819
    monitor-exit v10

    return-void

    .line 822
    :cond_a7
    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    .line 828
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    .line 831
    invoke-virtual {p0, v8, v7, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 834
    :goto_b3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 835
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v1

    invoke-virtual {p0, v6, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setKioskModeEnabledSystemUI(IZ)V

    .line 836
    sput-boolean v5, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 837
    monitor-exit v10

    return-void

    :catchall_c1
    move-exception v0

    monitor-exit v10
    :try_end_c3
    .catchall {:try_start_9 .. :try_end_c3} :catchall_c1

    throw v0
.end method

.method public final _enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .registers 16

    .line 591
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 592
    :try_start_4
    sput-boolean v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 593
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 594
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 595
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "KioskModeService"

    const-string v7, " _enableKioskMode"

    .line 599
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const/16 v7, -0x7d0

    if-ne v6, v1, :cond_4f

    const-string v6, "KioskModeService"

    const-string v8, " support HW keyboard "

    .line 602
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_147

    .line 604
    :try_start_2c
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    if-eqz v6, :cond_4f

    .line 605
    iget v6, v6, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v6, v1, :cond_4f

    const-string v6, "KioskModeService"

    const-string v8, "Kiosk Mode - mobile keypad enabled::: return false"

    .line 608
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {p0, v5, v1, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_46} :catch_48
    .catchall {:try_start_2c .. :try_end_46} :catchall_147

    .line 610
    :try_start_46
    monitor-exit v0

    return-void

    :catch_48
    const-string v6, "KioskModeService"

    const-string v8, "_enableKioskMode :: NoSuchFieldException"

    .line 614
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_4f
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_63

    const-string p1, "KioskModeService"

    const-string p2, "Kiosk Mode already enabled"

    .line 618
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 619
    invoke-virtual {p0, v5, v1, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    goto/16 :goto_139

    .line 625
    :cond_63
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;

    move-result-object v6

    .line 628
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v9

    const-string v10, "KioskModeService"

    .line 630
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Kiosk  result   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_8f

    const-string p1, "KioskModeService"

    const-string p2, "Kiosk Mode App not validated"

    .line 632
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {p0, v5, v1, v9}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    goto/16 :goto_139

    .line 634
    :cond_8f
    invoke-virtual {p0, v2, v6, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c2

    const-string v6, "KioskModeService"

    const-string v9, "Cannot find HOME activity"

    .line 636
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v6, :cond_ba

    .line 640
    invoke-virtual {v6, v5, p2, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 643
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v6, v5, p2, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 646
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    new-instance v9, Ljava/util/ArrayList;

    new-array v10, v1, [Ljava/lang/String;

    aput-object p2, v10, v8

    .line 647
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 646
    invoke-virtual {v6, p1, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removePackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 650
    :cond_ba
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0, v5, v1, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    goto/16 :goto_139

    .line 654
    :cond_c2
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v7, "toolbox_onoff"

    invoke-static {p1, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 658
    invoke-virtual {p0, v5, v1, p2, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateDB(IZLjava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->clearHomeStack()V

    .line 662
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    .line 666
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver(I)V

    .line 667
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver(I)V
    :try_end_dd
    .catchall {:try_start_46 .. :try_end_dd} :catchall_147

    const/16 p1, 0x64

    :goto_df
    add-int/lit8 p2, p1, -0x1

    if-lez p1, :cond_f3

    .line 677
    :try_start_e3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    const/16 v6, 0xa

    invoke-interface {p1, v6, v8, v2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_ec} :catch_ed
    .catchall {:try_start_e3 .. :try_end_ec} :catchall_147

    goto :goto_f1

    :catch_ed
    move-exception p1

    .line 680
    :try_start_ee
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f1
    move p1, p2

    goto :goto_df

    .line 697
    :cond_f3
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    .line 700
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    .line 704
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    if-nez p1, :cond_10a

    .line 705
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    .line 709
    :cond_10a
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_136

    .line 710
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_136

    .line 712
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11c
    :goto_11c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_136

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/UserInfo;

    .line 713
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    if-eq p2, v2, :cond_11c

    .line 716
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    goto :goto_11c

    .line 723
    :cond_136
    invoke-virtual {p0, v5, v1, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 726
    :goto_139
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 727
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setKioskModeEnabledSystemUI(IZ)V

    .line 728
    sput-boolean v8, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 729
    monitor-exit v0

    return-void

    :catchall_147
    move-exception p0

    monitor-exit v0
    :try_end_149
    .catchall {:try_start_ee .. :try_end_149} :catchall_147

    throw p0
.end method

.method public final addToBlocked(ILjava/lang/String;)Z
    .registers 5

    .line 1650
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 1652
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1653
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1654
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->saveBlockedList(ILjava/util/Set;)Z

    move-result p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method

.method public allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 11

    const-string/jumbo v0, "kioskModeAirCommandAllowed"

    const-string v1, "KIOSKMODE"

    const-string v2, "KioskModeService"

    .line 2154
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2155
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    const/4 v4, 0x1

    .line 2158
    :try_start_10
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_19

    goto :goto_30

    .line 2161
    :catch_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowAirCommandMode() : fail to get admin policy value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 2166
    :goto_30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowAirCommandMode() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7, v1, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_84

    .line 2170
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    if-eqz p2, :cond_61

    .line 2172
    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setAirCommandOn(IZ)Z

    move-result p2

    goto :goto_65

    .line 2176
    :cond_61
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetAirCommandConfigurationAsUser(I)Z

    move-result p2

    :goto_65
    if-nez p2, :cond_89

    .line 2179
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, v1, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    .line 2182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allowAirCommandMode() : restore policy because fail to update aircommand setting. = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    :cond_84
    const-string p0, "allowAirCommandMode() : failed to update policy. "

    .line 2188
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    :goto_89
    return p2
.end method

.method public allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 2236
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2237
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    if-nez p2, :cond_13

    .line 2239
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2240
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetAirViewConfigurationAsUser(I)V

    .line 2243
    :cond_13
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "KIOSKMODE"

    const-string/jumbo v1, "kioskModeAirViewAllowed"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .registers 11

    .line 2364
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/16 v0, 0x1f

    const/4 v1, 0x0

    if-eq p2, v0, :cond_a

    return v1

    :cond_a
    and-int/lit8 v0, p2, 0x1f

    if-lez v0, :cond_28

    if-nez p3, :cond_28

    .line 2374
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2376
    :try_start_14
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "edge_enable"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_23

    .line 2379
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_28

    :catchall_23
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2380
    throw p0

    :cond_28
    :goto_28
    and-int/lit8 v0, p2, 0x1

    if-lez v0, :cond_3a

    if-nez p3, :cond_3a

    .line 2385
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNightClockAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "night_mode"

    .line 2387
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;I)V

    :cond_3a
    and-int/lit8 v0, p2, 0x2

    if-lez v0, :cond_4c

    if-nez p3, :cond_4c

    .line 2393
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isPeopleEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string/jumbo v0, "people_stripe"

    .line 2395
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;I)V

    :cond_4c
    and-int/lit8 v0, p2, 0x8

    if-lez v0, :cond_63

    if-nez p3, :cond_63

    .line 2401
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeLightingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_63

    const-string/jumbo v0, "turn_over_lighting"

    .line 2403
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;I)V

    const-string v0, "edge_lighting"

    .line 2404
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;I)V

    :cond_63
    and-int/lit8 v0, p2, 0x4

    const/4 v2, 0x1

    if-lez v0, :cond_79

    .line 2411
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isInformationStreamAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-nez p3, :cond_7a

    if-eqz v3, :cond_7a

    const-string v4, "edge_information_stream"

    .line 2414
    invoke-virtual {p0, v4, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;I)V

    .line 2416
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastBlockedEdgeScreenIntent(Z)V

    goto :goto_7a

    :cond_79
    move v3, v2

    :cond_7a
    :goto_7a
    and-int/lit8 v4, p2, 0x10

    if-lez v4, :cond_8c

    if-nez p3, :cond_8c

    .line 2422
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAppsEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_8c

    const-string/jumbo v4, "task_edge"

    .line 2424
    invoke-virtual {p0, v4, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->resetEdgeScreenSetting(Ljava/lang/String;I)V

    .line 2428
    :cond_8c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedEdgeScreenByAdmin(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    if-eqz p3, :cond_95

    not-int p2, p2

    and-int/2addr p2, v1

    goto :goto_96

    :cond_95
    or-int/2addr p2, v1

    .line 2438
    :goto_96
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "KIOSKMODE"

    const-string v6, "edgeScreenBlockedFunctions"

    invoke-virtual {v1, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_b3

    if-lez v0, :cond_b3

    if-eqz p3, :cond_b3

    if-nez v3, :cond_b3

    .line 2446
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isInformationStreamAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 2449
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastBlockedEdgeScreenIntent(Z)V

    :cond_b3
    return p2
.end method

.method public allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I
    .registers 10

    .line 1597
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1598
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "KioskModeService"

    if-eqz v0, :cond_13

    const-string p0, "allowHardwareKeys() failed. Caller is not owner"

    .line 1602
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1606
    :cond_13
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1608
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_9c

    .line 1610
    array-length v4, p2

    if-nez v4, :cond_26

    goto/16 :goto_9c

    :cond_26
    const/4 v1, 0x0

    move v4, v1

    .line 1615
    :goto_28
    array-length v5, p2

    if-ge v4, v5, :cond_37

    .line 1616
    aget v5, p2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 1619
    :cond_37
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1620
    :cond_3b
    :goto_3b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 1621
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez p3, :cond_5f

    .line 1623
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->addToBlocked(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1624
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 1627
    :cond_5f
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->removeFromBlocked(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1628
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 1632
    :cond_71
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 1633
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p2, p1, [I

    :goto_7c
    if-ge v1, p1, :cond_9b

    .line 1635
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 1636
    aput p3, p2, v1

    .line 1637
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    if-nez v3, :cond_95

    const-string/jumbo p3, "mKeyCodeMediator must not be null! This will cause problems on hardware key restriction."

    .line 1638
    invoke-static {v2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 1642
    :cond_95
    invoke-interface {v3, p3}, Lcom/android/server/enterprise/common/KeyCodeMediator;->update(I)Z

    :goto_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    :cond_9b
    return-object p2

    :cond_9c
    :goto_9c
    const-string p0, "allowHardwareKeys() return null because invalid request. "

    .line 1611
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 11

    const-string/jumbo v0, "multiWindowEnabled"

    const-string v1, "KIOSKMODE"

    .line 2018
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2019
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 2021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowMultiWindowMode() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KioskModeService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_34

    const-string p0, "allowMultiWindowMode() failed. Caller is not owner"

    .line 2024
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_34
    const/4 v3, 0x1

    .line 2030
    :try_start_35
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3d} :catch_3e

    goto :goto_55

    .line 2033
    :catch_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowMultiWindowMode() : fail to get admin policy value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 2038
    :goto_55
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7, v1, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_82

    .line 2041
    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyMultiWindowPolicy(ZI)Z

    move-result p2

    if-nez p2, :cond_87

    .line 2043
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, v1, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    .line 2046
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allowMultiWindowMode() : restore policy because fail to update multiwindow setting. = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    :cond_82
    const-string p0, "allowMultiWindowMode() : failed to update policy. "

    .line 2052
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    :goto_87
    return p2
.end method

.method public allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 9

    .line 1798
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1799
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1802
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAvailable(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "KioskModeService"

    if-nez v1, :cond_19

    const-string p0, "allowTaskManager() - Task Manager is not available in this device"

    .line 1803
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_19
    if-eqz v0, :cond_21

    const-string p0, "allowTaskManager() - failed. Caller is not owner"

    .line 1810
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_21
    if-nez p2, :cond_53

    .line 1815
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1817
    :try_start_27
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/knox/kiosk/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1819
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/knox/kiosk/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1821
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/knox/kiosk/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_42} :catch_45
    .catchall {:try_start_27 .. :try_end_42} :catchall_43

    goto :goto_4b

    :catchall_43
    move-exception p0

    goto :goto_4f

    :catch_45
    move-exception v0

    :try_start_46
    const-string v4, "allowTaskManager() failed to force stopping packages"

    .line 1824
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_43

    .line 1826
    :goto_4b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_53

    :goto_4f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1827
    throw p0

    .line 1830
    :cond_53
    :goto_53
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "KIOSKMODE"

    const-string/jumbo v1, "taskManagerEnabled"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final applyHideNavigationBarSystemUI(IZ)V
    .registers 5

    .line 2591
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2593
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 2594
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setNavigationBarHiddenAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 2598
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c

    :catchall_11
    move-exception p0

    goto :goto_1d

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "KioskModeService"

    const-string p2, "applyHideNavigationBarSystemUI() failed. "

    .line 2596
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    goto :goto_d

    :goto_1c
    return-void

    .line 2598
    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2599
    throw p0
.end method

.method public final applyHideStatusBarSystemUI(IZ)V
    .registers 5

    .line 2579
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2581
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 2582
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setStatusBarHiddenAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 2586
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c

    :catchall_11
    move-exception p0

    goto :goto_1d

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "KioskModeService"

    const-string p2, "applyHideStatusBarSystemUI() failed. "

    .line 2584
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    goto :goto_d

    :goto_1c
    return-void

    .line 2586
    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2587
    throw p0
.end method

.method public final applyHideSystemBarSystemUI(I)V
    .registers 7

    .line 2569
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden()Z

    move-result v0

    .line 2570
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHiddenAsUser(I)Z

    move-result v1

    .line 2571
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_15

    if-eqz v1, :cond_13

    goto :goto_15

    :cond_13
    move v1, v3

    goto :goto_16

    :cond_15
    :goto_15
    move v1, v4

    .line 2573
    :goto_16
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideStatusBarSystemUI(IZ)V

    if-nez v0, :cond_1d

    if-eqz v2, :cond_1e

    :cond_1d
    move v3, v4

    .line 2575
    :cond_1e
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideNavigationBarSystemUI(IZ)V

    return-void
.end method

.method public final applyMultiWindowPolicy(ZI)Z
    .registers 11

    .line 1544
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v0

    .line 1545
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    const-string v4, "KioskModeService"

    const-string v5, "com.android.server.enterprise.kioskmode"

    const/4 v6, 0x1

    if-nez v0, :cond_1c

    .line 1549
    :try_start_10
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const-string v7, "disable"

    invoke-virtual {p0, v5, v7, v3, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_33

    :catchall_18
    move-exception p0

    goto :goto_2f

    :catch_1a
    move-exception p0

    goto :goto_26

    :cond_1c
    if-eqz p1, :cond_33

    .line 1553
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const-string v7, "enable"

    invoke-virtual {p0, v5, v7, v6, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_25} :catch_1a
    .catchall {:try_start_10 .. :try_end_25} :catchall_18

    goto :goto_33

    :goto_26
    :try_start_26
    const-string v5, "applyMultiWindowPolicy() : Failed to update multi window policy"

    .line 1559
    invoke-static {v4, v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_18

    .line 1562
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_37

    :goto_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1563
    throw p0

    .line 1562
    :cond_33
    :goto_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v6

    .line 1564
    :goto_37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyMultiWindowPolicy() : ret = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowed = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", userId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ,isCalledAdmin="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final broadcastBlockedEdgeScreenIntent(Z)V
    .registers 6

    .line 2524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2527
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.INFORMATION_STREAM_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.knox.intent.extra.BLOCKED_STATUS"

    if-nez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 2528
    :goto_12
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2529
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_20

    .line 2531
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2532
    throw p0
.end method

.method public final broadcastKioskResult(III)V
    .registers 9

    .line 1047
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    const-string v2, "com.samsung.android.knox.intent.extra.KIOSK_RESULT"

    const-string v3, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    if-eq p2, v1, :cond_34

    const/4 v1, 0x2

    if-eq p2, v1, :cond_23

    const/4 p3, 0x3

    if-eq p2, p3, :cond_15

    return-void

    .line 1072
    :cond_15
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.samsung.android.knox.intent.action.UNEXPECTED_KIOSK_BEHAVIOR"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1074
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_44

    .line 1064
    :cond_23
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.DISABLE_KIOSK_MODE_RESULT"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p2, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1066
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1067
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_44

    .line 1056
    :cond_34
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.ENABLE_KIOSK_MODE_RESULT"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p2, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1058
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1059
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1081
    :goto_44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1082
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    invoke-virtual {p1, p2, p3, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1086
    :try_start_51
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1087
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1088
    iget-object p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 1089
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 1090
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1089
    invoke-virtual {p2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p2

    .line 1088
    invoke-virtual {p3, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1091
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p3, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_7b} :catch_7c

    goto :goto_80

    :catch_7c
    move-exception p0

    .line 1095
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1098
    :goto_80
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final cleanUpKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .registers 6

    .line 1279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1281
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v2, :cond_18

    const-string v2, "com.sec.android.kiosk"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 1282
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplicationInternalBySystem(ILjava/lang/String;Z)Z

    .line 1286
    :cond_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 2112
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2113
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 2115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2117
    :try_start_c
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 2118
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->clearAllNotificationsAsUser(I)Z

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_1c
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    goto :goto_1d

    :catchall_17
    move-exception p0

    .line 2122
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2123
    throw p0

    :catch_1c
    const/4 p0, 0x0

    .line 2122
    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public final clearHomeStack()V
    .registers 3

    .line 733
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v0, 0x0

    .line 736
    :try_start_9
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHomeStack(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception p0

    const-string v0, "KioskModeService"

    const-string v1, "Remote exception calling clearHomeStack"

    .line 738
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-void
.end method

.method public final copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x400

    new-array p0, p0, [B

    .line 1268
    :goto_4
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x0

    .line 1269
    invoke-virtual {p2, p0, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_10
    return-void
.end method

.method public disableKioskMode(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 5

    const-string v0, "KioskModeService"

    const-string v1, "disableKioskMode"

    .line 425
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 429
    sget-boolean v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    .line 430
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, -0x4

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    return-void

    .line 433
    :cond_18
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 434
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 435
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "adminuid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 437
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 2645
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    const-string p0, "Permission Denial: can\'t dump KioskModeService"

    .line 2647
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2650
    :cond_10
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[KioskMode Cache]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2651
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "KioskMode Enabled : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Lcom/samsung/android/knox/ContextInfo;

    .line 2652
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2651
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeProcessingOrEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2653
    sget-boolean p1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    if-eqz p1, :cond_54

    const-string p1, "\tKiosk Mode is busy on processing."

    .line 2654
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_54
    const/4 p1, 0x1

    .line 2656
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 2657
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_5f
    if-ge v1, p3, :cond_fe

    .line 2659
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 2660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tSystem Bar Hidden = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tStatus Bar Hidden = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHiddenAsUser(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tNatvigation Bar Hidden = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tMultiWindow Allow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tTaskManager Allow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5f

    :cond_fe
    return-void
.end method

.method public enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .registers 6

    const-string v0, "KioskModeService"

    const-string v1, "enableKioskMode"

    .line 398
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 409
    sget-boolean v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 410
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 p2, -0x4

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    return-void

    .line 413
    :cond_17
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 414
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "package"

    .line 415
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string p2, "adminuid"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 417
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 418
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 378
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 378
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 387
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 387
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final extractDefaultApkAndInstall(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 11

    const-string/jumbo v0, "kioskdefault.apk"

    const-string v1, "IOException while closing InputStream"

    const-string v2, "IOException while closing OutputStream"

    const-string v3, "KioskModeService"

    const/4 v4, 0x0

    .line 1221
    :try_start_a
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.mdm"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_1d

    const-string p0, "MDMApp context could not be created!"

    .line 1224
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    move-object v5, v0

    goto :goto_78

    .line 1226
    :cond_1d
    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_25} :catch_cb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_25} :catch_ae
    .catchall {:try_start_a .. :try_end_25} :catchall_aa

    .line 1227
    :try_start_25
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/system/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_46} :catch_a7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_46} :catch_a4
    .catchall {:try_start_25 .. :try_end_46} :catchall_a1

    .line 1229
    :try_start_46
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4b} :catch_9d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_4b} :catch_99
    .catchall {:try_start_46 .. :try_end_4b} :catchall_94

    .line 1230
    :try_start_4b
    invoke-virtual {p0, v5, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const/16 v7, 0x1b4

    const/4 v8, -0x1

    .line 1232
    invoke-static {v6, v7, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 1233
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v7, v8, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->installApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZLandroid/os/ParcelFileDescriptor;)Z

    move-result p0
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_5f} :catch_92
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4b .. :try_end_5f} :catch_90
    .catchall {:try_start_4b .. :try_end_5f} :catchall_8e

    if-eqz p0, :cond_77

    .line 1244
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1248
    :try_start_64
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception p0

    .line 1250
    invoke-static {v3, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6c
    if-eqz v5, :cond_76

    .line 1255
    :try_start_6e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_76

    :catch_72
    move-exception p0

    .line 1257
    invoke-static {v3, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_76
    :goto_76
    return v8

    :cond_77
    move-object v4, v6

    :goto_78
    if-eqz v4, :cond_7d

    .line 1244
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_7d
    if-eqz v0, :cond_87

    .line 1248
    :try_start_7f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_87

    :catch_83
    move-exception p0

    .line 1250
    invoke-static {v3, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_87
    :goto_87
    if-eqz v5, :cond_ec

    .line 1255
    :try_start_89
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_e8

    goto/16 :goto_ec

    :catchall_8e
    move-exception p0

    goto :goto_96

    :catch_90
    move-exception p0

    goto :goto_9b

    :catch_92
    move-exception p0

    goto :goto_9f

    :catchall_94
    move-exception p0

    move-object v0, v4

    :goto_96
    move-object v4, v6

    goto/16 :goto_f0

    :catch_99
    move-exception p0

    move-object v0, v4

    :goto_9b
    move-object v4, v6

    goto :goto_b1

    :catch_9d
    move-exception p0

    move-object v0, v4

    :goto_9f
    move-object v4, v6

    goto :goto_ce

    :catchall_a1
    move-exception p0

    move-object v0, v4

    goto :goto_f0

    :catch_a4
    move-exception p0

    move-object v0, v4

    goto :goto_b1

    :catch_a7
    move-exception p0

    move-object v0, v4

    goto :goto_ce

    :catchall_aa
    move-exception p0

    move-object v0, v4

    move-object v5, v0

    goto :goto_f0

    :catch_ae
    move-exception p0

    move-object v0, v4

    move-object v5, v0

    :goto_b1
    :try_start_b1
    const-string p1, "NameNotFoundException while creating package context"

    .line 1241
    invoke-static {v3, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b6
    .catchall {:try_start_b1 .. :try_end_b6} :catchall_ef

    if-eqz v4, :cond_bb

    .line 1244
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_bb
    if-eqz v0, :cond_c5

    .line 1248
    :try_start_bd
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c1

    goto :goto_c5

    :catch_c1
    move-exception p0

    .line 1250
    invoke-static {v3, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c5
    :goto_c5
    if-eqz v5, :cond_ec

    .line 1255
    :try_start_c7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_e8

    goto :goto_ec

    :catch_cb
    move-exception p0

    move-object v0, v4

    move-object v5, v0

    :goto_ce
    :try_start_ce
    const-string p1, "IOException while extracting default apk"

    .line 1239
    invoke-static {v3, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d3
    .catchall {:try_start_ce .. :try_end_d3} :catchall_ef

    if-eqz v4, :cond_d8

    .line 1244
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_d8
    if-eqz v0, :cond_e2

    .line 1248
    :try_start_da
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_de

    goto :goto_e2

    :catch_de
    move-exception p0

    .line 1250
    invoke-static {v3, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e2
    :goto_e2
    if-eqz v5, :cond_ec

    .line 1255
    :try_start_e4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e8

    goto :goto_ec

    :catch_e8
    move-exception p0

    .line 1257
    invoke-static {v3, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ec
    :goto_ec
    const/16 p0, -0x7d0

    return p0

    :catchall_ef
    move-exception p0

    :goto_f0
    if-eqz v4, :cond_f5

    .line 1244
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_f5
    if-eqz v0, :cond_ff

    .line 1248
    :try_start_f7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_fb

    goto :goto_ff

    :catch_fb
    move-exception p1

    .line 1250
    invoke-static {v3, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ff
    :goto_ff
    if-eqz v5, :cond_109

    .line 1255
    :try_start_101
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_105

    goto :goto_109

    :catch_105
    move-exception p1

    .line 1257
    invoke-static {v3, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1260
    :cond_109
    :goto_109
    throw p0
.end method

.method public final forceTerminateKiosk(I)V
    .registers 5

    .line 845
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin(I)I

    move-result v0

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceTerminateKiosk() - uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " /userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KioskModeService"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(Lcom/samsung/android/knox/ContextInfo;I)V

    return-void
.end method

.method public final getActiveKioskAdmin(I)I
    .registers 7

    const-string v0, "adminUid"

    const-string/jumbo v1, "kioskModeEnabled"

    .line 1122
    :try_start_5
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    .line 1124
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "KIOSKMODE"

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_41

    .line 1127
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_41

    .line 1129
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1131
    :cond_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1132
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1133
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    .line 1134
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_3d

    return p0

    :catch_3d
    move-exception p0

    .line 1142
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1145
    :cond_41
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getActiveKioskAdmin() failed for user : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KioskModeService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getAllBlockedHardwareKeys(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1741
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Map;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 1743
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3d

    .line 1746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1747
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1748
    :cond_1f
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1749
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1750
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_3d
    return-object p1
.end method

.method public final getAllBlockedList()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1690
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 1691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1694
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1695
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1696
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1698
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KIOSKMODE"

    const-string v5, "blockedHwKeyList"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 1701
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1703
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ","

    .line 1704
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1705
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3d

    .line 1707
    :cond_57
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_65
    return-object v0
.end method

.method public getBlockedEdgeScreen(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 3

    .line 2458
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "KIOSKMODE"

    const-string v0, "edgeScreenBlockedFunctions"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2462
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr p1, v0

    goto :goto_f

    :cond_21
    return p1
.end method

.method public final getBlockedEdgeScreenByAdmin(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 4

    .line 2471
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "KIOSKMODE"

    const-string v1, "edgeScreenBlockedFunctions"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_c
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    const-string p0, "KioskModeService"

    const-string p1, "getBlockedEdgeScreen() failed"

    .line 2475
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public getBlockedHwKeysCache()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1713
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-static {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->-$$Nest$fgetmBlockedHwKeys(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getBlockedList(I)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1717
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "KIOSKMODE"

    const-string v1, "blockedHwKeyList"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1719
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_23

    const-string v0, ","

    .line 1721
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1722
    array-length v0, p0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_23

    aget-object v2, p0, v1

    .line 1723
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_23
    return-object p1
.end method

.method public final getDefaultHomeScreen(I)Ljava/lang/String;
    .registers 4

    .line 1295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 1296
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 1297
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1300
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2a

    .line 1303
    new-instance v0, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_2a
    move-object v0, p1

    :goto_2b
    if-nez v0, :cond_35

    const-string p0, "KioskModeService"

    const-string v0, "getDefaultHomeScreen() fail"

    .line 1308
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 1312
    :cond_35
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    return-object p1

    .line 1320
    :cond_42
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 242
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 244
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getHardwareKeyList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1590
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1591
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-enter p1

    .line 1592
    :try_start_6
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-exit p1

    return-object p0

    :catchall_a
    move-exception p0

    .line 1593
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final getHomeActivity(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1430
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 1431
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 1432
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1435
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v3, 0x10000

    invoke-virtual {p0, v0, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 1437
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p1, 0x0

    .line 1439
    :goto_21
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_45

    .line 1440
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1441
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1442
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object p0

    :cond_42
    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    :cond_45
    const-string p0, "KioskModeService"

    const-string p1, " - cannot find matched home activity"

    .line 1446
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKioskHomePackage(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3

    .line 541
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 543
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 544
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKioskHomePackageAsUser(I)Ljava/lang/String;
    .registers 7

    const-string/jumbo v0, "kioskModeKioskPackage"

    const-string/jumbo v1, "kioskModeEnabled"

    .line 552
    :try_start_6
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    .line 555
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "KIOSKMODE"

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_52

    .line 558
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_52

    .line 562
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 564
    :cond_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 565
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 566
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 567
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 568
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3b} :catch_3c

    return-object p0

    .line 577
    :catch_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getKioskHomePackageAsUser() failed user : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KioskModeService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .registers 4

    .line 1107
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_13

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_10

    const/16 v1, 0x4e1f

    if-le v0, v1, :cond_13

    :cond_10
    const-string p0, "com.sec.enterprise.knox.cloudmdm.smdms"

    return-object p0

    .line 1112
    :cond_13
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPenDetachmentOption(I)Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    .registers 4

    .line 2330
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "pen_detachment_option"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 2333
    invoke-static {}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->values()[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    move-result-object p1

    aget-object p0, p1, p0

    return-object p0
.end method

.method public getRestrictedKeyCodes()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2555
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedHardwareKeys(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 1

    const-string p0, "KioskModeService"

    return-object p0
.end method

.method public final getUserIdByPackageNameOrUid(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 6

    if-nez p1, :cond_b

    .line 2089
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2092
    :cond_b
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5b

    const-string v0, ":"

    .line 2094
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x0

    .line 2096
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_27
    const-string v0, "android.uid.systemui"

    .line 2098
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5b

    .line 2099
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2100
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    .line 2101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System UI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / userId : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KioskModeService"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 2106
    :cond_5b
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    return p0
.end method

.method public hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 8

    const-string/jumbo v0, "systemBarEnabled"

    const-string v1, "KIOSKMODE"

    .line 1957
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1958
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    const-string p0, "KioskModeService"

    const-string/jumbo p1, "hideNavigationBar() failed. Caller is not owner"

    .line 1961
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1965
    :cond_19
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1969
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_21
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1b .. :try_end_21} :catch_21

    :catch_21
    const/4 v4, 0x1

    if-ne p2, v4, :cond_27

    or-int/lit8 p2, v3, 0x2

    goto :goto_29

    :cond_27
    and-int/lit8 p2, v3, -0x3

    .line 1978
    :goto_29
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1, v1, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    .line 1981
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden()Z

    move-result p2

    if-eqz p1, :cond_38

    .line 1984
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideNavigationBarSystemUI(IZ)V

    :cond_38
    return p1
.end method

.method public hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 8

    const-string/jumbo v0, "systemBarEnabled"

    const-string v1, "KIOSKMODE"

    .line 1895
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1896
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    const-string p0, "KioskModeService"

    const-string/jumbo p1, "hideStatusBar() failed. Caller is not owner"

    .line 1899
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1903
    :cond_19
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1907
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_21
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1b .. :try_end_21} :catch_21

    :catch_21
    const/4 v4, 0x1

    if-ne p2, v4, :cond_27

    or-int/lit8 p2, v3, 0x1

    goto :goto_29

    :cond_27
    and-int/lit8 p2, v3, -0x2

    .line 1916
    :goto_29
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1, v1, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    .line 1918
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHiddenAsUser(I)Z

    move-result p2

    if-eqz p1, :cond_38

    .line 1920
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideStatusBarSystemUI(IZ)V

    :cond_38
    return p1
.end method

.method public hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 8

    const-string/jumbo v0, "systemBarEnabled"

    const-string v1, "KIOSKMODE"

    .line 1486
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1487
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    const-string p0, "KioskModeService"

    const-string/jumbo p1, "hideSystemBar() failed. Caller is not owner"

    .line 1490
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1494
    :cond_19
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1498
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_21
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1b .. :try_end_21} :catch_21

    :catch_21
    const/4 v4, 0x1

    if-ne p2, v4, :cond_27

    or-int/lit8 p2, v3, 0x3

    goto :goto_29

    :cond_27
    and-int/lit8 p2, v3, -0x4

    .line 1507
    :goto_29
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1, v1, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 1511
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarSystemUI(I)V

    :cond_34
    return p1
.end method

.method public final initKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 10

    const-string v0, "KioskModeService"

    .line 1163
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const-string v2, "com.sec.android.kiosk"

    .line 1164
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    .line 1165
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->extractDefaultApkAndInstall(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    if-eqz v0, :cond_45

    return v0

    :cond_16
    const/4 v2, -0x3

    .line 1172
    :try_start_17
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const-wide/16 v5, 0x80

    invoke-interface {v4, p2, v5, v6, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-nez v4, :cond_29

    const-string v4, "Check if Kiosk App exists and is enabled  - fail "

    .line 1175
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_28} :catch_29

    return v2

    .line 1182
    :catch_29
    :cond_29
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v4, p2, v3, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v4

    if-nez v4, :cond_37

    const-string p0, "Check if Kiosk App Disabled  - fail "

    .line 1183
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1188
    :cond_37
    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getHomeActivity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_45

    const-string p0, "Check if Kiosk App have home activities  - fail "

    .line 1190
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x7d0

    return p0

    .line 1195
    :cond_45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1198
    :try_start_49
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v5, 0x1

    invoke-virtual {v2, v4, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 1201
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v4, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 1204
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    new-instance v2, Ljava/util/ArrayList;

    new-array v4, v5, [Ljava/lang/String;

    aput-object p2, v4, v3

    .line 1205
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1204
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addPackagesToClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    :try_end_6a
    .catchall {:try_start_49 .. :try_end_6a} :catchall_6e

    .line 1207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_6e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1208
    throw p0
.end method

.method public final initializeHandlerThread()V
    .registers 3

    .line 234
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KioskModeService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 235
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 236
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    return-void
.end method

.method public final initializeKeyCodeLists()V
    .registers 6

    .line 1778
    invoke-static {}, Landroid/view/KeyEvent;->getSamsungLastKeyCode()I

    move-result v0

    .line 1780
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v0, :cond_10

    add-int/lit8 v4, v3, 0x1

    .line 1782
    aput v4, v1, v3

    move v3, v4

    goto :goto_8

    .line 1784
    :cond_10
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKeys([I)[Z

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1786
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-enter v1

    .line 1787
    :goto_19
    :try_start_19
    array-length v3, v0

    if-ge v2, v3, :cond_2e

    .line 1788
    aget-boolean v3, v0, v2

    if-eqz v3, :cond_2b

    .line 1789
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1792
    :cond_2e
    monitor-exit v1

    goto :goto_33

    :catchall_30
    move-exception p0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_30

    throw p0

    :cond_33
    :goto_33
    return-void
.end method

.method public isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 2134
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "KIOSKMODE"

    const-string/jumbo v0, "kioskModeAirCommandAllowed"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2137
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_f

    return p1

    :cond_22
    const/4 p0, 0x1

    return p0
.end method

.method public isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 2217
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "KIOSKMODE"

    const-string/jumbo v0, "kioskModeAirViewAllowed"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2220
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_f

    return p1

    :cond_22
    const/4 p0, 0x1

    return p0
.end method

.method public isAppsEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    const/16 p1, 0x10

    .line 2502
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result p0

    return p0
.end method

.method public isEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    const/16 p1, 0x1f

    .line 2482
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result p0

    return p0
.end method

.method public isEdgeLightingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    const/16 p1, 0x8

    .line 2494
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result p0

    return p0
.end method

.method public final isEdgeScreenFunctionalityAllowed(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 2506
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedEdgeScreen(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    and-int/2addr p0, p1

    if-lez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    const/4 p0, 0x1

    :goto_b
    return p0
.end method

.method public isEnableKioskModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 493
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    if-nez p0, :cond_e

    .line 494
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isHardwareKeyAllowed(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .registers 6

    .line 1761
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-static {p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->-$$Nest$fgetmBlockedHwKeys(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-static {p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->-$$Nest$fgetmBlockedHwKeys(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 1762
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-static {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->-$$Nest$fgetmBlockedHwKeys(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x1

    :goto_31
    if-eqz p3, :cond_3b

    if-nez v0, :cond_3b

    const p0, 0x10405d1

    .line 1768
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_3b
    if-nez v0, :cond_59

    .line 1771
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isHardwareKeyAllowed() key "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is blocked"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KioskModeService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return v0
.end method

.method public final isHardwareKeyValid(I)Z
    .registers 2

    .line 1730
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isInformationStreamAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    const/4 p1, 0x4

    .line 2498
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result p0

    return p0
.end method

.method public isKeyCodeInputAllowed(I)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2550
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isHardwareKeyAllowed(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result p0

    return p0
.end method

.method public isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    const-string p1, "KioskModeService"

    const-string/jumbo v0, "kioskModeEnabled"

    const/4 v1, 0x0

    .line 448
    :try_start_6
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    .line 450
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "KIOSKMODE"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_41

    .line 453
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_41

    .line 455
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_47

    move v2, v1

    .line 457
    :cond_1f
    :try_start_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 458
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 459
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 461
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_35} :catch_3f

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    move v2, v3

    goto :goto_3b

    :cond_3a
    move v2, v1

    :goto_3b
    if-ne v2, v3, :cond_1f

    :cond_3d
    move v1, v2

    goto :goto_4d

    :catch_3f
    move v1, v2

    goto :goto_47

    :cond_41
    :try_start_41
    const-string p0, "There\'s no matched data"

    .line 468
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_46} :catch_47

    goto :goto_4d

    :catch_47
    :goto_47
    const-string/jumbo p0, "isKioskModeEnabledAsUser() failed"

    .line 471
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d
    return v1
.end method

.method public isKioskModeEnabledAsUser(I)Z
    .registers 7

    const-string v0, "KioskModeService"

    const-string/jumbo v1, "kioskModeEnabled"

    const/4 v2, 0x0

    .line 504
    :try_start_6
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 506
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KIOSKMODE"

    invoke-virtual {p0, v4, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_41

    .line 509
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_41

    .line 512
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_47

    move p1, v2

    .line 514
    :cond_1f
    :try_start_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 515
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 516
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 518
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_35} :catch_3f

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3a

    move p1, v3

    goto :goto_3b

    :cond_3a
    move p1, v2

    :goto_3b
    if-ne p1, v3, :cond_1f

    :cond_3d
    move v2, p1

    goto :goto_4d

    :catch_3f
    move v2, p1

    goto :goto_47

    :cond_41
    :try_start_41
    const-string p0, "There\'s no matched data"

    .line 525
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_46} :catch_47

    goto :goto_4d

    :catch_47
    :goto_47
    const-string/jumbo p0, "isKioskModeEnabledAsUser() failed"

    .line 528
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d
    return v2
.end method

.method public isKioskModeProcessingOrEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 484
    sget-boolean v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 487
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    .line 2060
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getUserIdByPackageNameOrUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 2062
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result p0

    if-eqz p2, :cond_12

    if-nez p0, :cond_12

    const p1, 0x104080b

    .line 2065
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_12
    return p0
.end method

.method public isMultiWindowModeAllowedAsUser(I)Z
    .registers 4

    .line 2076
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "KIOSKMODE"

    const-string/jumbo v0, "multiWindowEnabled"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 2078
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x1

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2079
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    move p1, v1

    goto :goto_11

    :cond_25
    return p1
.end method

.method public final isNavigationBarHidden()Z
    .registers 4

    .line 2002
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "KIOSKMODE"

    const-string/jumbo v1, "systemBarEnabled"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 2006
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    :cond_25
    return v2
.end method

.method public isNavigationBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 1996
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden()Z

    move-result p0

    return p0
.end method

.method public isNightClockAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    const/4 p1, 0x1

    .line 2486
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result p0

    return p0
.end method

.method public isPeopleEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    const/4 p1, 0x2

    .line 2490
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result p0

    return p0
.end method

.method public isStatusBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    const/4 p1, 0x0

    .line 1927
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHiddenAsUser(I)Z

    move-result p0

    return p0
.end method

.method public isStatusBarHiddenAsUser(I)Z
    .registers 4

    .line 1935
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "KIOSKMODE"

    const-string/jumbo v0, "systemBarEnabled"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 1937
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_10

    move v1, v0

    :cond_25
    return v1
.end method

.method public final isSystemBarHidden()Z
    .registers 4

    .line 1528
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "KIOSKMODE"

    const-string/jumbo v1, "systemBarEnabled"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 1531
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_10

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    :cond_29
    return v2
.end method

.method public isSystemBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 1522
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden()Z

    move-result p0

    return p0
.end method

.method public isTaskManagerAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    const/4 p1, 0x0

    .line 1837
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowedAsUser(ZI)Z

    move-result p0

    return p0
.end method

.method public isTaskManagerAllowedAsUser(ZI)Z
    .registers 5

    .line 1846
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "KIOSKMODE"

    const-string/jumbo v0, "taskManagerEnabled"

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 1848
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x1

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1849
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    move p2, v1

    goto :goto_11

    :cond_25
    if-eqz p1, :cond_2f

    if-nez p2, :cond_2f

    const p0, 0x1040df7

    .line 1854
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_2f
    return p2
.end method

.method public final isTaskManagerAvailable(I)Z
    .registers 12

    .line 1861
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1862
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    .line 1863
    invoke-static {p0, v2, v3, p1}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    if-nez p0, :cond_11

    return p1

    .line 1868
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x200

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1e

    return p1

    .line 1875
    :cond_1e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v3

    :cond_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 1876
    sget-object v5, Lcom/android/server/enterprise/kioskmode/KioskModeService;->TASKMANAGER_PKGS:[Ljava/lang/String;

    array-length v6, v5

    move v7, v3

    :goto_33
    if-ge v7, v6, :cond_44

    aget-object v8, v5, v7

    .line 1877
    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    move v2, p1

    goto :goto_44

    :cond_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    :cond_44
    :goto_44
    if-eqz v2, :cond_23

    .line 1884
    :cond_46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public final launchHomeActivity(I)V
    .registers 4

    .line 1469
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 1470
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1471
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1473
    :try_start_11
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p0

    .line 1475
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_20
    return-void
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4

    .line 362
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 364
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_13

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateSystemUIMonitor(I)V

    .line 368
    :cond_13
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    const/4 v0, 0x1

    .line 370
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyMultiWindowPolicy(ZI)Z

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 16

    .line 293
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 297
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 300
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_19

    invoke-virtual {p0, v2, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 303
    :cond_19
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {p0, v2, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    :cond_22
    if-nez v0, :cond_74

    const-string v2, "adminUid"

    const-string v3, "edgeScreenBlockedFunctions"

    .line 309
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v5

    .line 313
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v7, 0x0

    const-string v8, "KIOSKMODE"

    invoke-virtual {v6, v8, v5, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 320
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    move v7, v6

    :cond_3b
    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 321
    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_3b

    .line 324
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-lez v9, :cond_57

    move v9, v4

    goto :goto_58

    :cond_57
    move v9, v1

    :goto_58
    int-to-long v10, p1

    .line 326
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-eqz v8, :cond_69

    if-eqz v9, :cond_3b

    move v7, v4

    goto :goto_3b

    :cond_69
    if-eqz v9, :cond_3b

    move v6, v4

    goto :goto_3b

    :cond_6d
    if-eqz v6, :cond_74

    if-nez v7, :cond_74

    .line 346
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastBlockedEdgeScreenIntent(Z)V

    .line 351
    :cond_74
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin(I)I

    move-result v1

    if-ne p1, v1, :cond_83

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V

    :cond_83
    return-void
.end method

.method public final registerDexBlocker()V
    .registers 1

    return-void
.end method

.method public final registerPackageRemoveReceiver(I)V
    .registers 9

    .line 861
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 862
    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 863
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 864
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 866
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 913
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE_INTERNAL"

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 915
    sget-object p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_42

    :catch_3b
    const-string p0, "KioskModeService"

    const-string p1, "Cannot register packageRemoveIntentReceiver"

    .line 919
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_42
    return-void
.end method

.method public final registerSwitchingUserReceiver()V
    .registers 4

    .line 1018
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 1019
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$7;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$7;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 1029
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1d

    :catch_16
    const-string p0, "KioskModeService"

    const-string v0, "Cannot register registerSwitchingUserReceiver"

    .line 1031
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void
.end method

.method public final registerTerminationReceiver(I)V
    .registers 9

    .line 943
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 944
    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.knox.intent.action.TERMINATE_KIOSK_INTERNAL"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 946
    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$6;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$6;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 992
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE_INTERNAL"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_36

    :catch_2f
    const-string p0, "KioskModeService"

    const-string p1, "Cannot register terminateIntentReceiver"

    .line 999
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    return-void
.end method

.method public final removeFromBlocked(ILjava/lang/String;)Z
    .registers 5

    .line 1661
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 1662
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1663
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1664
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->saveBlockedList(ILjava/util/Set;)Z

    move-result p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method

.method public final resetAirCommandConfigurationAsUser(I)Z
    .registers 5

    const/4 v0, 0x0

    .line 2200
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setAirCommandOn(IZ)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2201
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getPenDetachmentOption(I)Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->AIR_COMMAND:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2202
    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->NONE:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setPenDetachmentOption(ILcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;)V

    :cond_18
    return v0
.end method

.method public final resetAirViewConfigurationAsUser(I)V
    .registers 3

    const/4 v0, 0x0

    .line 2254
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setAirViewOn(IZ)V

    .line 2255
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setFingerAirViewOn(IZ)V

    .line 2256
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setFingerAirViewInformationPreviewOn(IZ)V

    .line 2257
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setPenHoveringOn(IZ)V

    return-void
.end method

.method public final resetEdgeScreenSetting(Ljava/lang/String;I)V
    .registers 6

    .line 2515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2517
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 2519
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2520
    throw p0
.end method

.method public final saveBlockedList(ILjava/util/Set;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1672
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "blockedHwKeyList"

    const-string v2, "KIOSKMODE"

    if-eqz v0, :cond_12

    .line 1673
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v2, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_46

    .line 1676
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1677
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 1680
    :cond_3c
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1681
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1680
    invoke-virtual {p0, p1, v2, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    :goto_46
    return p0
.end method

.method public final setAirCommandOn(IZ)Z
    .registers 9

    const-string/jumbo v0, "setAirCommandOn() : failed to update setting value ."

    const-string v1, "KioskModeService"

    .line 2268
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 2270
    :try_start_a
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v5, "air_button_onoff"

    if-eqz p2, :cond_16

    const/4 p2, 0x1

    goto :goto_17

    :cond_16
    move p2, v4

    :goto_17
    invoke-static {p0, v5, p2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v4
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1e
    .catchall {:try_start_a .. :try_end_1b} :catchall_1c

    goto :goto_22

    :catchall_1c
    move-exception p0

    goto :goto_2b

    :catch_1e
    move-exception p0

    .line 2273
    :try_start_1f
    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1c

    .line 2276
    :goto_22
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v4, :cond_2a

    .line 2279
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return v4

    .line 2276
    :goto_2b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2277
    throw p0
.end method

.method public final setAirViewOn(IZ)V
    .registers 6

    .line 2291
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2292
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "air_view_master_onoff"

    invoke-static {p0, v2, p2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2294
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 20

    move-object/from16 v0, p0

    move/from16 v5, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1340
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.HOME"

    .line 1341
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.category.DEFAULT"

    .line 1342
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "com.sec.android.kiosk"

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_55

    .line 1354
    :try_start_1f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    const-wide/16 v12, 0x80

    invoke-interface {v11, v2, v12, v13, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v11
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_29} :catch_2d

    if-eqz v11, :cond_2d

    move v11, v9

    goto :goto_2e

    :catch_2d
    :cond_2d
    move v11, v10

    .line 1363
    :goto_2e
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_38

    if-eqz v11, :cond_38

    move v11, v9

    goto :goto_39

    :cond_38
    move v11, v10

    .line 1367
    :goto_39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_3d
    const-string/jumbo v14, "package"

    .line 1370
    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    .line 1369
    invoke-static {v14}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v14

    .line 1371
    invoke-interface {v14, v1, v5}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivitiesAsUserForMDM(Ljava/lang/String;I)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4b} :catch_51
    .catchall {:try_start_3d .. :try_end_4b} :catchall_4c

    goto :goto_51

    :catchall_4c
    move-exception v0

    .line 1376
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1377
    throw v0

    .line 1376
    :catch_51
    :goto_51
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_56

    :cond_55
    move v11, v10

    :goto_56
    if-eqz v2, :cond_d0

    .line 1385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1386
    iget-object v1, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v14, 0x10000

    invoke-virtual {v1, v3, v14, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1388
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1391
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v12, v10

    .line 1392
    :goto_6d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_9b

    .line 1393
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1394
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v11, :cond_90

    .line 1395
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_90

    goto :goto_98

    .line 1398
    :cond_90
    new-instance v15, Landroid/content/ComponentName;

    invoke-direct {v15, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_98
    add-int/lit8 v12, v12, 0x1

    goto :goto_6d

    .line 1400
    :cond_9b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ComponentName;

    .line 1401
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/content/ComponentName;

    .line 1403
    invoke-virtual {v0, v5, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getHomeActivity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_af

    return v10

    .line 1409
    :cond_af
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1412
    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1415
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1416
    iget-object v0, v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x100000

    move-object v4, v8

    move/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->addPreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1418
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_d0
    return v9
.end method

.method public final setFingerAirViewInformationPreviewOn(IZ)V
    .registers 6

    .line 2317
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2318
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "finger_air_view_information_preview"

    invoke-static {p0, v2, p2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final setFingerAirViewOn(IZ)V
    .registers 6

    .line 2304
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2305
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "finger_air_view"

    invoke-static {p0, v2, p2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2307
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final setKioskModeEnabledSystemUI(IZ)V
    .registers 5

    .line 2603
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2605
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 2606
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setKioskModeEnabledAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 2610
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_1e

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "KioskModeService"

    const-string/jumbo p2, "setKioskModeEnabledSystemUI() failed. "

    .line 2608
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    goto :goto_d

    :goto_1d
    return-void

    .line 2610
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2611
    throw p0
.end method

.method public setMediator(Lcom/android/server/enterprise/common/KeyCodeMediator;)V
    .registers 3

    .line 2542
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    if-nez v0, :cond_9

    .line 2543
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    .line 2544
    invoke-interface {p1, p0}, Lcom/android/server/enterprise/common/KeyCodeMediator;->registerCallback(Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;)V

    :cond_9
    return-void
.end method

.method public final setPenDetachmentOption(ILcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;)V
    .registers 6

    .line 2343
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2344
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 2345
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string/jumbo v2, "pen_detachment_option"

    .line 2344
    invoke-static {p0, v2, p2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2346
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final setPenHoveringOn(IZ)V
    .registers 6

    .line 2356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2357
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "pen_hovering"

    invoke-static {p0, v2, p2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2359
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public systemReady()V
    .registers 6

    .line 253
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 259
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 260
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 261
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_39

    if-eqz v3, :cond_39

    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 266
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    .line 271
    :cond_39
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver(I)V

    .line 272
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver(I)V

    goto :goto_a

    .line 276
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerSwitchingUserReceiver()V

    .line 278
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initializeKeyCodeLists()V

    .line 279
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    return-void
.end method

.method public final unRegisterDexBlocker()V
    .registers 1

    return-void
.end method

.method public final unregisterPackageRemoveReceiver(I)V
    .registers 4

    .line 928
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 929
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 930
    sget-object p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_28
    const-string p0, "KioskModeService"

    const-string p1, "There\'s no matched key"

    .line 932
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method public final unregisterTerminationReceiver(I)V
    .registers 4

    .line 1008
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 1009
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1010
    sget-object p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_28
    const-string p0, "KioskModeService"

    const-string p1, "There\'s no matched key"

    .line 1012
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method public final updateDB(IZLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1456
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string/jumbo v2, "kioskModeEnabled"

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1458
    iget-object p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v0, "kioskModeDefaultPackage"

    invoke-virtual {p2, p1, v1, v0, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1460
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "kioskModeKioskPackage"

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final updateSystemUIMonitor(I)V
    .registers 3

    .line 2564
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarSystemUI(I)V

    .line 2565
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setKioskModeEnabledSystemUI(IZ)V

    return-void
.end method

.method public final wipeRecentTasks(I)Z
    .registers 5

    .line 1578
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1580
    :try_start_4
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->clearRecentTasks(I)Z

    move-result p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_12
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 1584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    :catchall_10
    move-exception p0

    goto :goto_1f

    :catch_12
    move-exception p0

    :try_start_13
    const-string p1, "KioskModeService"

    const-string v2, "Remote exception calling clearRecentTasks!"

    .line 1582
    invoke-static {p1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_10

    .line 1584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    :goto_1e
    return p0

    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1585
    throw p0
.end method

.method public wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 1571
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1573
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    move-result p0

    return p0
.end method
