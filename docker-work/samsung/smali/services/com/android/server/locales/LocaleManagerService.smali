.class public Lcom/android/server/locales/LocaleManagerService;
.super Lcom/android/server/SystemService;
.source "LocaleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;,
        Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "LocaleManagerService"


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

.field public final mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

.field public final mContext:Landroid/content/Context;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBackupHelper(Lcom/android/server/locales/LocaleManagerService;)Lcom/android/server/locales/LocaleManagerBackupHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBinderService(Lcom/android/server/locales/LocaleManagerService;)Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 73
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;-><init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService-IA;)V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    .line 75
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 76
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocaleManagerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 81
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 83
    new-instance v1, Lcom/android/server/locales/SystemAppUpdateTracker;

    invoke-direct {v1, p0}, Lcom/android/server/locales/SystemAppUpdateTracker;-><init>(Lcom/android/server/locales/LocaleManagerService;)V

    .line 85
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/locales/LocaleManagerService$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/locales/LocaleManagerService$1;-><init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/SystemAppUpdateTracker;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 92
    new-instance v2, Lcom/android/server/locales/LocaleManagerBackupHelper;

    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/locales/LocaleManagerBackupHelper;-><init>(Lcom/android/server/locales/LocaleManagerService;Landroid/content/pm/PackageManager;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 95
    new-instance v2, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;

    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-direct {v2, v3, v1}, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;-><init>(Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/server/locales/SystemAppUpdateTracker;)V

    iput-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 97
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v1, 0x1

    invoke-virtual {v2, p1, p0, v0, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Landroid/content/pm/PackageManager;Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/internal/content/PackageMonitor;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 109
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 110
    new-instance p1, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;-><init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService-IA;)V

    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    .line 111
    iput-object p2, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 112
    iput-object p3, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 113
    iput-object p4, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 114
    iput-object p5, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 115
    iput-object p6, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method public static createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;
    .registers 4

    .line 294
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "android.intent.extra.PACKAGE_NAME"

    .line 295
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.intent.extra.LOCALE_LIST"

    .line 296
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x11000000

    .line 297
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final enforceChangeConfigurationPermission(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    .registers 4

    .line 337
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v1, "setApplicationLocales"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    const/4 v0, 0x4

    .line 340
    invoke-virtual {p1, v0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setStatus(I)V

    .line 342
    throw p0
.end method

.method public final enforceReadAppSpecificLocalesPermission()V
    .registers 3

    .line 416
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_APP_SPECIFIC_LOCALES"

    const-string v1, "getApplicationLocales"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 352
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 356
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getApplicationLocales"

    const/4 v7, 0x0

    move v3, p2

    .line 355
    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 370
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->isCallerInstaller(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 371
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerService;->enforceReadAppSpecificLocalesPermission()V

    .line 373
    :cond_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 375
    :try_start_2a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocalesUnchecked(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_32

    .line 377
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_32
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 378
    throw p0
.end method

.method public final getApplicationLocalesUnchecked(Ljava/lang/String;I)Landroid/os/LocaleList;
    .registers 3

    .line 389
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 390
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getApplicationConfig(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    move-result-object p0

    if-nez p0, :cond_d

    .line 396
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0

    .line 398
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mLocales:Landroid/os/LocaleList;

    if-eqz p0, :cond_12

    goto :goto_16

    .line 399
    :cond_12
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p0

    :goto_16
    return-object p0
.end method

.method public getInstallingPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 433
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 434
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    .line 436
    :catch_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package not found "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocaleManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPackageUid(Ljava/lang/String;I)I
    .registers 5

    .line 423
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v0, 0x0

    .line 424
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result p0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    :catch_d
    const/4 p0, -0x1

    return p0
.end method

.method public getSystemLocales()Landroid/os/LocaleList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 448
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerService;->getSystemLocalesUnchecked()Landroid/os/LocaleList;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 450
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    throw p0
.end method

.method public final getSystemLocalesUnchecked()Landroid/os/LocaleList;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 459
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-nez p0, :cond_16

    .line 462
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p0

    :cond_16
    return-object p0
.end method

.method public final isCallerInstaller(Ljava/lang/String;I)Z
    .registers 4

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerService;->getInstallingPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_18

    .line 410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public final isPackageOwnedByCaller(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;)Z

    move-result p0

    return p0
.end method

.method public final isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;)Z
    .registers 6

    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    if-gez p0, :cond_47

    .line 318
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LocaleManagerService"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2a

    const/4 p0, 0x3

    .line 320
    invoke-virtual {p3, p0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setStatus(I)V

    .line 323
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown package: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    if-eqz p3, :cond_4c

    .line 327
    invoke-virtual {p3, p0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setTargetUid(I)V

    .line 331
    :cond_4c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    return p0
.end method

.method public final logMetric(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    .registers 8

    .line 468
    iget v1, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCallingUid:I

    iget v2, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    iget-object v3, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    const/16 v0, 0x19c

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final notifyAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V
    .registers 5

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 285
    invoke-static {v0, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    move-result-object p3

    .line 287
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x200000

    .line 288
    invoke-virtual {p3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 289
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public notifyInstallerOfAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V
    .registers 6

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerService;->getInstallingPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v1, "android.intent.action.APPLICATION_LOCALE_CHANGED"

    .line 271
    invoke-static {v1, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    move-result-object p1

    .line 274
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_18
    return-void
.end method

.method public final notifyRegisteredReceivers(Ljava/lang/String;ILandroid/os/LocaleList;)V
    .registers 5

    const-string v0, "android.intent.action.APPLICATION_LOCALE_CHANGED"

    .line 252
    invoke-static {v0, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    move-result-object p1

    .line 254
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const-string p3, "android.permission.READ_APP_SPECIFIC_LOCALES"

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 120
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    const-string/jumbo v1, "locale"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 121
    const-class v0, Lcom/android/server/locales/LocaleManagerInternal;

    new-instance v1, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;-><init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;

    .line 180
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;-><init>(I)V

    .line 182
    :try_start_9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {p3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setNewLocales(Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "setApplicationLocales"

    const/4 v9, 0x0

    move v5, p2

    .line 186
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 197
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 200
    invoke-virtual {p0, v0}, Lcom/android/server/locales/LocaleManagerService;->enforceChangeConfigurationPermission(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V

    .line 203
    :cond_34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_47

    .line 205
    :try_start_38
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocalesUnchecked(Ljava/lang/String;ILandroid/os/LocaleList;Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_42

    .line 208
    :try_start_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_47

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/server/locales/LocaleManagerService;->logMetric(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V

    return-void

    :catchall_42
    move-exception p1

    .line 208
    :try_start_43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    throw p1
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p1

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/server/locales/LocaleManagerService;->logMetric(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V

    .line 212
    throw p1
.end method

.method public final setApplicationLocalesUnchecked(Ljava/lang/String;ILandroid/os/LocaleList;Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    .registers 6

    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocalesUnchecked(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p4, v0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setPrevLocales(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 226
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->createPackageConfigurationUpdater(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object v0

    .line 228
    invoke-interface {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->setLocales(Landroid/os/LocaleList;)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->commit()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 232
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locales/LocaleManagerService;->notifyAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V

    .line 233
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locales/LocaleManagerService;->notifyInstallerOfAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V

    .line 234
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locales/LocaleManagerService;->notifyRegisteredReceivers(Ljava/lang/String;ILandroid/os/LocaleList;)V

    .line 236
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->notifyBackupManager()V

    const/4 p0, 0x1

    .line 237
    invoke-virtual {p4, p0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setStatus(I)V

    goto :goto_32

    :cond_2e
    const/4 p0, 0x2

    .line 240
    invoke-virtual {p4, p0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setStatus(I)V

    :goto_32
    return-void
.end method
