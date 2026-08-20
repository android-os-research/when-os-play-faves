.class public Lcom/android/server/om/OverlayManagerService$1;
.super Landroid/content/om/IOverlayManager$Stub;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public static synthetic $r8$lambda$L7klEfqYIN9a9i2RWiqTvdxOB1E(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService$1;->lambda$setPriority$2(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fcyx8HaLUT-R0NTHLNWjzaF3MwY(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService$1;->lambda$setEnabledExclusiveInCategory$1(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kE4Kz6IMu6hQ3fFEe_nNR0hyqhk(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService$1;->lambda$setEnabledExclusive$0(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sptdIjq6E4RHWX1SGCmMkF7ROI8(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService$1;->lambda$setLowestPriority$3(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    .line 779
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/om/IOverlayManager$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$setEnabledExclusive$0(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .registers 2

    .line 892
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method

.method public static synthetic lambda$setEnabledExclusiveInCategory$1(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .registers 2

    .line 927
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method

.method public static synthetic lambda$setLowestPriority$3(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .registers 2

    .line 1026
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method

.method public static synthetic lambda$setPriority$2(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .registers 2

    .line 962
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method


# virtual methods
.method public applySamsungConfigChangeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/om/ISamsungOverlayCallback;",
            ")Z"
        }
    .end annotation

    const-string/jumbo v0, "setEnabledList"

    .line 1436
    invoke-virtual {p0, p3, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p3

    if-nez p1, :cond_d

    if-nez p2, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    if-nez p1, :cond_14

    .line 1441
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_14
    if-nez p2, :cond_1b

    .line 1444
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1448
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_3d

    .line 1449
    :try_start_26
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mreadResetSettingsValue(Lcom/android/server/om/OverlayManagerService;)V

    .line 1450
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/om/OverlayManagerServiceImpl;->applySamsungConfigChangeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;)Z

    move-result p0

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_3a

    .line 1454
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_3a
    move-exception p0

    .line 1452
    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    .line 1454
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1455
    throw p0
.end method

.method public applySamsungThemeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/om/ISamsungOverlayCallback;",
            ")Z"
        }
    .end annotation

    const-string/jumbo v0, "setEnabledList"

    .line 1367
    invoke-virtual {p0, p3, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v4

    const/4 p3, 0x0

    if-nez p1, :cond_d

    if-nez p2, :cond_d

    return p3

    :cond_d
    if-nez p1, :cond_14

    .line 1372
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_14
    move-object v2, p1

    if-nez p2, :cond_1c

    .line 1375
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1c
    move-object v3, p2

    .line 1377
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "current_sec_active_themepackage"

    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8c

    .line 1381
    :try_start_2f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8c

    .line 1382
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8c

    .line 1383
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1384
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1383
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1385
    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1386
    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1385
    invoke-virtual {v0, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1387
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8c

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_71} :catch_75

    if-eqz p1, :cond_8c

    const/4 p3, 0x1

    goto :goto_8c

    :catch_75
    move-exception p1

    const-string p2, "OverlayManager"

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception occurred on checking theme name, exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    :goto_8c
    move v6, p3

    .line 1396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 1398
    :try_start_91
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_98
    .catchall {:try_start_91 .. :try_end_98} :catchall_b0

    .line 1399
    :try_start_98
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mreadResetSettingsValue(Lcom/android/server/om/OverlayManagerService;)V

    .line 1400
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v1

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->applySamsungThemeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;Z)Z

    move-result p0

    monitor-exit p3
    :try_end_a9
    .catchall {:try_start_98 .. :try_end_a9} :catchall_ad

    .line 1404
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_ad
    move-exception p0

    .line 1402
    :try_start_ae
    monitor-exit p3
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    :try_start_af
    throw p0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_b0

    :catchall_b0
    move-exception p0

    .line 1404
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1405
    throw p0
.end method

.method public applyWallpaperColor(Ljava/util/List;Ljava/util/List;Z)V
    .registers 15

    .line 1485
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1486
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    const-string v2, "SWT_OverlayManager"

    if-eqz v1, :cond_2d

    .line 1487
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "applyWallpaperColor called by abnormal uid : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1491
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invoked applyWallpaperColor, isGray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", colorSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", colorGG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmIsSuccessLoadMetadata(Lcom/android/server/om/OverlayManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 1493
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mgetColorThemeState(Lcom/android/server/om/OverlayManagerService;)I

    move-result v0

    const-wide/16 v3, 0x2000

    .line 1495
    :try_start_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SWT:applyWallpaperColors, wallpaperColors:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1496
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->cleanStaleResourceCache()V
    :try_end_7f
    .catchall {:try_start_62 .. :try_end_7f} :catchall_1b7

    const-string v1, "FAILED at commit, e="

    const/4 v5, 0x0

    const-string v6, "OverlayManager"

    const/4 v7, 0x1

    if-eqz p1, :cond_130

    .line 1498
    :try_start_87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1500
    iget-object v10, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v10}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object v10

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->setPalette(Ljava/util/List;Ljava/util/List;Z)V

    .line 1501
    new-instance p1, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {p1}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 1502
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->registerMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    const/4 p2, -0x1

    if-ne v0, p2, :cond_ae

    .line 1504
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->registerThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    :cond_ae
    if-ne v0, v7, :cond_b6

    const-string p2, "enableThemeOverlay, but theme overlay is already enabled"

    .line 1507
    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    .line 1510
    :cond_b6
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->enableMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    .line 1511
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->enableThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    :try_end_c8
    .catchall {:try_start_87 .. :try_end_c8} :catchall_1b7

    move v5, v7

    .line 1515
    :goto_c9
    :try_start_c9
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mincreaseColorThemeSeq(Lcom/android/server/om/OverlayManagerService;)V

    .line 1516
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 1517
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService$1;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 1518
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeColor()V

    if-eqz v5, :cond_ed

    .line 1520
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeState(I)V

    .line 1522
    :cond_ed
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Enable] commit OverlayManagerTransaction, dur1:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, p2, v8

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", dur2:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, p2

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_110} :catch_112
    .catchall {:try_start_c9 .. :try_end_110} :catchall_1b7

    goto/16 :goto_1b3

    :catch_112
    move-exception p1

    .line 1524
    :try_start_113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->clearCurrentThemeOverlays()V

    goto/16 :goto_1b3

    .line 1528
    :cond_130
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object v8

    invoke-virtual {v8, p1, p2, p3}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->setPalette(Ljava/util/List;Ljava/util/List;Z)V

    .line 1529
    new-instance p1, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {p1}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    if-eq v0, v7, :cond_149

    const-string p0, "disableThemeOverlay, but theme overlay is not enabled"

    .line 1531
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_145
    .catchall {:try_start_113 .. :try_end_145} :catchall_1b7

    .line 1551
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1534
    :cond_149
    :try_start_149
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->disableMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    .line 1535
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->disableThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    :try_end_15b
    .catchall {:try_start_149 .. :try_end_15b} :catchall_1b7

    .line 1539
    :try_start_15b
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mincreaseColorThemeSeq(Lcom/android/server/om/OverlayManagerService;)V

    .line 1540
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 1541
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService$1;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 1542
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeColor()V

    .line 1543
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeState(I)V

    .line 1544
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Disable] commit OverlayManagerTransaction, dur:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, p2

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_196} :catch_197
    .catchall {:try_start_15b .. :try_end_196} :catchall_1b7

    goto :goto_1b3

    :catch_197
    move-exception p1

    .line 1546
    :try_start_198
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->clearCurrentThemeOverlays()V
    :try_end_1b3
    .catchall {:try_start_198 .. :try_end_1b3} :catchall_1b7

    .line 1551
    :goto_1b3
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1bc

    :catchall_1b7
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1552
    throw p0

    :cond_1bc
    :goto_1bc
    return-void
.end method

.method public applyWallpaperColors(Ljava/util/List;II)V
    .registers 4

    .line 1479
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "(Deprecated) invoked applyWallpaperColors, colors="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SWT_OverlayManager"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 1480
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/server/om/OverlayManagerService$1;->applyWallpaperColor(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public commit(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/32 v0, 0x4000000

    .line 1087
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#commit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_6a

    .line 1089
    :try_start_17
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService$1;->executeAllRequests(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1e
    .catchall {:try_start_17 .. :try_end_1a} :catchall_6a

    .line 1102
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catch_1e
    move-exception p1

    .line 1091
    :try_start_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_6a

    .line 1093
    :try_start_23
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mrestoreSettings(Lcom/android/server/om/OverlayManagerService;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_65

    .line 1095
    :try_start_28
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string p0, "OverlayManager"

    .line 1097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commit failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1098
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commit failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_65
    move-exception p0

    .line 1095
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1096
    throw p0
    :try_end_6a
    .catchall {:try_start_28 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception p0

    .line 1102
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1103
    throw p0
.end method

.method public deleteSamsungThemeOverlays(Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1413
    :cond_3
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    .line 1414
    invoke-virtual {p2}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object p2

    .line 1415
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1417
    :try_start_19
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_46

    .line 1419
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1420
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_38

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-nez v5, :cond_38

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1421
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1422
    :cond_38
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->deleteSamsungThemeOverlays(Ljava/util/List;I)V
    :try_end_43
    .catchall {:try_start_19 .. :try_end_43} :catchall_4a

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1426
    :cond_46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1427
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 1253
    new-instance p1, Lcom/android/server/om/DumpState;

    invoke-direct {p1}, Lcom/android/server/om/DumpState;-><init>()V

    const/4 v0, -0x1

    .line 1254
    invoke-virtual {p1, v0}, Lcom/android/server/om/DumpState;->setUserId(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 1257
    :goto_b
    array-length v3, p3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_ad

    .line 1258
    aget-object v3, p3, v2

    if-eqz v3, :cond_ad

    .line 1259
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_ad

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_23

    goto/16 :goto_ad

    :cond_23
    add-int/lit8 v2, v2, 0x1

    const-string v5, "-h"

    .line 1264
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    const-string p0, "dump [-h] [--verbose] [--user USER_ID] [[FIELD] PACKAGE]"

    .line 1265
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  Print debugging information about the overlay manager."

    .line 1266
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  With optional parameter PACKAGE, limit output to the specified"

    .line 1267
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  package. With optional parameter FIELD, limit output to"

    .line 1268
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  the value of that SettingsItem field. Field names are"

    .line 1269
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  case insensitive and out.println the m prefix can be omitted,"

    .line 1270
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  so the following are equivalent: mState, mstate, State, state."

    .line 1271
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_51
    const-string v5, "--user"

    .line 1273
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 1274
    array-length v3, p3

    if-lt v2, v3, :cond_62

    const-string p0, "Error: user missing argument"

    .line 1275
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1279
    :cond_62
    :try_start_62
    aget-object v3, p3, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/server/om/DumpState;->setUserId(I)V
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_6b} :catch_6e

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1282
    :catch_6e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error: user argument is not a number: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p3, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_85
    const-string v5, "--verbose"

    .line 1285
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 1286
    invoke-virtual {p1, v4}, Lcom/android/server/om/DumpState;->setVerbose(Z)V

    goto/16 :goto_b

    .line 1288
    :cond_92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; use -h for help"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1291
    :cond_ad
    :goto_ad
    array-length v3, p3

    if-ge v2, v3, :cond_145

    .line 1292
    aget-object v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    .line 1294
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_17c

    goto/16 :goto_13b

    :sswitch_c0
    const-string v1, "basecodepath"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ca

    goto/16 :goto_13b

    :cond_ca
    const/16 v0, 0x9

    goto/16 :goto_13b

    :sswitch_ce
    const-string/jumbo v1, "packagename"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d9

    goto/16 :goto_13b

    :cond_d9
    const/16 v0, 0x8

    goto/16 :goto_13b

    :sswitch_dd
    const-string/jumbo v1, "isenabled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e7

    goto :goto_13b

    :cond_e7
    const/4 v0, 0x7

    goto :goto_13b

    :sswitch_e9
    const-string/jumbo v1, "state"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f3

    goto :goto_13b

    :cond_f3
    const/4 v0, 0x6

    goto :goto_13b

    :sswitch_f5
    const-string v1, "category"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fe

    goto :goto_13b

    :cond_fe
    const/4 v0, 0x5

    goto :goto_13b

    :sswitch_100
    const-string/jumbo v1, "ismutable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10a

    goto :goto_13b

    :cond_10a
    const/4 v0, 0x4

    goto :goto_13b

    :sswitch_10c
    const-string/jumbo v1, "userid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_116

    goto :goto_13b

    :cond_116
    const/4 v0, 0x3

    goto :goto_13b

    :sswitch_118
    const-string/jumbo v1, "priority"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_122

    goto :goto_13b

    :cond_122
    const/4 v0, 0x2

    goto :goto_13b

    :sswitch_124
    const-string/jumbo v1, "targetpackagename"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12e

    goto :goto_13b

    :cond_12e
    move v0, v4

    goto :goto_13b

    :sswitch_130
    const-string/jumbo v4, "targetoverlayablename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13a

    goto :goto_13b

    :cond_13a
    move v0, v1

    :goto_13b
    packed-switch v0, :pswitch_data_1a6

    .line 1308
    invoke-virtual {p1, v3}, Lcom/android/server/om/DumpState;->setOverlyIdentifier(Ljava/lang/String;)V

    goto :goto_145

    .line 1305
    :pswitch_142
    invoke-virtual {p1, v3}, Lcom/android/server/om/DumpState;->setField(Ljava/lang/String;)V

    .line 1312
    :cond_145
    :goto_145
    invoke-virtual {p1}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_153

    array-length v0, p3

    if-ge v2, v0, :cond_153

    .line 1313
    aget-object p3, p3, v2

    invoke-virtual {p1, p3}, Lcom/android/server/om/DumpState;->setOverlyIdentifier(Ljava/lang/String;)V

    :cond_153
    const-string p3, "dump"

    .line 1317
    invoke-virtual {p0, p3}, Lcom/android/server/om/OverlayManagerService$1;->enforceDumpPermission(Ljava/lang/String;)V

    .line 1318
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 1319
    :try_start_15f
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 1320
    invoke-virtual {p1}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_177

    .line 1321
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 1323
    :cond_177
    monitor-exit p3

    return-void

    :catchall_179
    move-exception p0

    monitor-exit p3
    :try_end_17b
    .catchall {:try_start_15f .. :try_end_17b} :catchall_179

    throw p0

    :sswitch_data_17c
    .sparse-switch
        -0x685a1e7c -> :sswitch_130
        -0x4a674a60 -> :sswitch_124
        -0x4577865c -> :sswitch_118
        -0x31d4cdda -> :sswitch_10c
        -0x3188d944 -> :sswitch_100
        0x302bcfe -> :sswitch_f5
        0x68ac491 -> :sswitch_e9
        0x1a483ad7 -> :sswitch_dd
        0x36391bd1 -> :sswitch_ce
        0x64f6f963 -> :sswitch_c0
    .end sparse-switch

    :pswitch_data_1a6
    .packed-switch 0x0
        :pswitch_142
        :pswitch_142
        :pswitch_142
        :pswitch_142
        :pswitch_142
        :pswitch_142
        :pswitch_142
        :pswitch_142
        :pswitch_142
        :pswitch_142
    .end packed-switch
.end method

.method public final enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1352
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1358
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 1359
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmActorEnforcer(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayActorEnforcer;

    move-result-object p0

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/om/OverlayActorEnforcer;->enforceActor(Landroid/content/om/OverlayInfo;Ljava/lang/String;II)V

    return-void

    .line 1354
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to retrieve overlay information for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceDumpPermission(Ljava/lang/String;)V
    .registers 3

    .line 1347
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final executeAllRequests(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    const-string v0, "OverlayManager"

    .line 1202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_81

    .line 1208
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1214
    :try_start_20
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_52

    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1215
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayManagerTransaction$Request;

    if-eqz v2, :cond_46

    .line 1216
    iget-object v2, v2, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    if-eqz v2, :cond_46

    .line 1217
    invoke-virtual {v2}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v2

    goto :goto_47

    :cond_46
    move-object v2, v3

    :goto_47
    if-eqz v2, :cond_52

    const-string v4, "SemWT_"

    .line 1218
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    const/4 v1, 0x1

    .line 1225
    :cond_52
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_56
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayManagerTransaction$Request;

    .line 1227
    invoke-virtual {p0, v2, v1}, Lcom/android/server/om/OverlayManagerService$1;->executeRequest(Landroid/content/om/OverlayManagerTransaction$Request;Z)Ljava/util/Set;

    move-result-object v2

    .line 1226
    invoke-static {v3, v2}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v3

    goto :goto_56

    .line 1233
    :cond_6b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_6f
    .catchall {:try_start_20 .. :try_end_6f} :catchall_7e

    .line 1235
    :try_start_6f
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0, v3, v1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;Z)V
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_79

    .line 1237
    :try_start_74
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1239
    monitor-exit v0

    return-void

    :catchall_79
    move-exception p0

    .line 1237
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1238
    throw p0

    :catchall_7e
    move-exception p0

    .line 1239
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_74 .. :try_end_80} :catchall_7e

    throw p0

    .line 1205
    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "null transaction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final executeRequest(Landroid/content/om/OverlayManagerTransaction$Request;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayManagerTransaction$Request;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1110
    invoke-virtual {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService$1;->executeRequest(Landroid/content/om/OverlayManagerTransaction$Request;Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final executeRequest(Landroid/content/om/OverlayManagerTransaction$Request;Z)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayManagerTransaction$Request;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;
        }
    .end annotation

    const-string v0, "Transaction contains a null request"

    .line 1117
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1118
    iget-object v0, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    const-string v1, "Transaction overlay identifier must be non-null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1121
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1123
    iget v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x2

    if-eq v1, v6, :cond_5b

    if-ne v1, v4, :cond_1c

    goto :goto_5b

    .line 1151
    :cond_1c
    iget v0, p1, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result v5

    if-eqz p2, :cond_51

    .line 1155
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p2

    iget-object v0, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {p2, v0, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p2

    if-nez p2, :cond_51

    .line 1157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "OverlayInfo is not founded, skip request "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SWT_OverlayManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1162
    :cond_51
    iget-object p2, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0, v5}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    goto :goto_9b

    .line 1125
    :cond_5b
    :goto_5b
    iget p2, p1, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    if-ne p2, v5, :cond_14b

    const/16 p2, 0x7d0

    if-eq v0, p2, :cond_12d

    .line 1143
    iget-object p2, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {p2}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_9b

    .line 1144
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v1

    .line 1145
    invoke-virtual {v1, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1144
    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    goto :goto_9b

    .line 1146
    :cond_7c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UID "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does own packagename "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1165
    :cond_9b
    :goto_9b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1167
    :try_start_9f
    iget p2, p1, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    if-eqz p2, :cond_ff

    if-eq p2, v3, :cond_ef

    if-eq p2, v6, :cond_d1

    if-ne p2, v4, :cond_b9

    .line 1189
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    iget-object p1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Ljava/util/Set;

    move-result-object p0
    :try_end_b5
    .catchall {:try_start_9f .. :try_end_b5} :catchall_128

    .line 1195
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 1192
    :cond_b9
    :try_start_b9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported request: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1180
    :cond_d1
    iget-object p1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->extras:Landroid/os/Bundle;

    const-string p2, "fabricated_overlay"

    .line 1181
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/FabricatedOverlayInternal;

    const-string/jumbo p2, "no fabricated overlay attached to request"

    .line 1184
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1186
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Ljava/util/Set;

    move-result-object p0
    :try_end_eb
    .catchall {:try_start_b9 .. :try_end_eb} :catchall_128

    .line 1195
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 1177
    :cond_ef
    :try_start_ef
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    iget-object p1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {p0, p1, v2, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Set;

    move-result-object p0
    :try_end_fb
    .catchall {:try_start_ef .. :try_end_fb} :catchall_128

    .line 1195
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_ff
    const/4 p2, 0x0

    .line 1170
    :try_start_100
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v2

    iget-object v4, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 1171
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Set;

    move-result-object v2

    .line 1170
    invoke-static {p2, v2}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p2

    .line 1172
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    iget-object p1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 1173
    invoke-virtual {p0, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;

    move-result-object p0

    .line 1172
    invoke-static {p2, p0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p0

    .line 1174
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0
    :try_end_124
    .catchall {:try_start_100 .. :try_end_124} :catchall_128

    .line 1195
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_128
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1196
    throw p0

    :cond_12d
    const p0, 0x534e4554

    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "202768292"

    aput-object p2, p1, v2

    .line 1135
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, ""

    aput-object p2, p1, v6

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1136
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-root shell cannot fabricate overlays"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1126
    :cond_14b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " unsupported for user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllOverlays(I)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    const-wide/32 v0, 0x4000000

    .line 783
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getAllOverlays "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v2, "getAllOverlays"

    .line 784
    invoke-virtual {p0, p1, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    .line 786
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_36

    .line 787
    :try_start_24
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlaysForUser(I)Ljava/util/Map;

    move-result-object p0

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_33

    .line 790
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_33
    move-exception p0

    .line 788
    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    .line 790
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 791
    throw p0
.end method

.method public getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 6

    const-wide/32 v0, 0x4000000

    :try_start_3
    const-string v2, "OMS#getDefaultOverlayPackages"

    .line 1043
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1044
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.MODIFY_THEME_OVERLAY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_39

    .line 1049
    :try_start_18
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_34

    .line 1050
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object p0

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_31

    .line 1053
    :try_start_2a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_39

    .line 1056
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_31
    move-exception p0

    .line 1051
    :try_start_32
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    .line 1053
    :try_start_35
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1054
    throw p0
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p0

    .line 1056
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1057
    throw p0
.end method

.method public getLastPalette(Ljava/util/List;Ljava/util/List;)Z
    .registers 5

    .line 1578
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->readLastPalette()Ljava/util/List;

    move-result-object v0

    .line 1579
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1580
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->splitPalette(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 4

    .line 816
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$1;->getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p0

    return-object p0
.end method

.method public getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;
    .registers 7

    if-eqz p1, :cond_45

    .line 822
    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_45

    :cond_9
    const-wide/32 v0, 0x4000000

    .line 827
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getOverlayInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string/jumbo v2, "getOverlayInfo"

    .line 828
    invoke-virtual {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 830
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_40

    .line 831
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p0

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_3d

    .line 834
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_3d
    move-exception p0

    .line 832
    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p0

    .line 834
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 835
    throw p0

    :cond_45
    :goto_45
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 798
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7
    const-wide/32 v0, 0x4000000

    .line 802
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getOverlayInfosForTarget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string/jumbo v2, "getOverlayInfosForTarget"

    .line 803
    invoke-virtual {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 805
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_3e

    .line 806
    :try_start_2c
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_3b

    .line 809
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_3b
    move-exception p0

    .line 807
    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p0

    .line 809
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 810
    throw p0
.end method

.method public getWallpaperColors()Ljava/util/List;
    .registers 1

    .line 1559
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getPalette()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final handleIncomingUser(ILjava/lang/String;)I
    .registers 10

    .line 1336
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1337
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p1

    move-object v5, p2

    .line 1336
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public invalidateCachesForOverlay(Ljava/lang/String;I)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 1066
    :cond_3
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "invalidateCachesForOverlay"

    .line 1067
    invoke-virtual {p0, p2, p1}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    const-string/jumbo p2, "invalidateCachesForOverlay"

    .line 1068
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 1069
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1071
    :try_start_19
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_50

    .line 1073
    :try_start_20
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapForOverlay(Landroid/content/om/OverlayIdentifier;I)V
    :try_end_29
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_20 .. :try_end_29} :catch_2c
    .catchall {:try_start_20 .. :try_end_29} :catchall_2a

    goto :goto_49

    :catchall_2a
    move-exception p0

    goto :goto_4e

    :catch_2c
    move-exception p0

    :try_start_2d
    const-string p1, "OverlayManager"

    .line 1075
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalidate caches for overlay \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' failed"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1077
    :goto_49
    monitor-exit p2
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_2a

    .line 1079
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1077
    :goto_4e
    :try_start_4e
    monitor-exit p2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_2a

    :try_start_4f
    throw p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    :catchall_50
    move-exception p0

    .line 1079
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1080
    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 1247
    new-instance v0, Lcom/android/server/om/OverlayManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/om/OverlayManagerShellCommand;-><init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public readLastPalette()Ljava/util/List;
    .registers 3

    .line 1567
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->readLastPalette()Ljava/util/List;

    move-result-object p0

    .line 1568
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    const/16 v1, 0x41

    .line 1569
    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public setEnabled(Ljava/lang/String;ZI)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-wide/32 v1, 0x4000000

    .line 846
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 848
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v3, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "setEnabled"

    .line 849
    invoke-virtual {p0, p3, p1}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    const-string/jumbo p3, "setEnabled"

    .line 850
    invoke-virtual {p0, v3, p3, p1}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 852
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_67

    .line 854
    :try_start_39
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_62

    .line 856
    :try_start_40
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    .line 857
    invoke-virtual {v6, v3, p2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Set;

    move-result-object p1

    .line 856
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_4d
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_40 .. :try_end_4d} :catch_58
    .catchall {:try_start_40 .. :try_end_4d} :catchall_56

    const/4 p0, 0x1

    .line 858
    :try_start_4e
    monitor-exit p3
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_56

    .line 864
    :try_start_4f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_67

    .line 867
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_56
    move-exception p0

    goto :goto_60

    .line 860
    :catch_58
    :try_start_58
    monitor-exit p3
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_56

    .line 864
    :try_start_59
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_67

    .line 867
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    .line 862
    :goto_60
    :try_start_60
    monitor-exit p3
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_56

    :try_start_61
    throw p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    :catchall_62
    move-exception p0

    .line 864
    :try_start_63
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 865
    throw p0
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception p0

    .line 867
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 868
    throw p0
.end method

.method public setEnabledExclusive(Ljava/lang/String;ZI)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_75

    if-nez p2, :cond_6

    goto :goto_75

    :cond_6
    const-wide/32 v1, 0x4000000

    .line 879
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setEnabledExclusive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 881
    new-instance p2, Landroid/content/om/OverlayIdentifier;

    invoke-direct {p2, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "setEnabledExclusive"

    .line 882
    invoke-virtual {p0, p3, p1}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    const-string/jumbo p3, "setEnabledExclusive"

    .line 883
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 885
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_3b
    .catchall {:try_start_9 .. :try_end_3b} :catchall_70

    .line 887
    :try_start_3b
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_6b

    .line 889
    :try_start_42
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p2, v0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance p2, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 891
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_56
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_42 .. :try_end_56} :catch_61
    .catchall {:try_start_42 .. :try_end_56} :catchall_5f

    const/4 p0, 0x1

    .line 893
    :try_start_57
    monitor-exit p3
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_5f

    .line 899
    :try_start_58
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_70

    .line 902
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_5f
    move-exception p0

    goto :goto_69

    .line 895
    :catch_61
    :try_start_61
    monitor-exit p3
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_5f

    .line 899
    :try_start_62
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_70

    .line 902
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    .line 897
    :goto_69
    :try_start_69
    monitor-exit p3
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_5f

    :try_start_6a
    throw p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception p0

    .line 899
    :try_start_6c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 900
    throw p0
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_70

    :catchall_70
    move-exception p0

    .line 902
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 903
    throw p0

    :cond_75
    :goto_75
    return v0
.end method

.method public setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-wide/32 v1, 0x4000000

    .line 914
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setEnabledExclusiveInCategory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 916
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v3, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "setEnabledExclusiveInCategory"

    .line 917
    invoke-virtual {p0, p2, p1}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    const-string/jumbo p2, "setEnabledExclusiveInCategory"

    .line 919
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 921
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_66

    .line 923
    :try_start_31
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_61

    .line 925
    :try_start_38
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance v3, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 927
    invoke-virtual {p1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_4d
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_38 .. :try_end_4d} :catch_57
    .catchall {:try_start_38 .. :try_end_4d} :catchall_55

    .line 928
    :try_start_4d
    monitor-exit p2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_55

    .line 934
    :try_start_4e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_66

    .line 937
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v7

    :catchall_55
    move-exception p0

    goto :goto_5f

    .line 930
    :catch_57
    :try_start_57
    monitor-exit p2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_55

    .line 934
    :try_start_58
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_66

    .line 937
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    .line 932
    :goto_5f
    :try_start_5f
    monitor-exit p2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_55

    :try_start_60
    throw p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p0

    .line 934
    :try_start_62
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 935
    throw p0
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p0

    .line 937
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 938
    throw p0
.end method

.method public setHighestPriority(Ljava/lang/String;I)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-wide/32 v1, 0x4000000

    .line 983
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setHighestPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 985
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v3, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "setHighestPriority"

    .line 986
    invoke-virtual {p0, p2, p1}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    const-string/jumbo p2, "setHighestPriority"

    .line 987
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 989
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_5f

    .line 991
    :try_start_31
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_5a

    .line 993
    :try_start_38
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    .line 994
    invoke-virtual {v6, v3, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;

    move-result-object p1

    .line 993
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_45
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_38 .. :try_end_45} :catch_50
    .catchall {:try_start_38 .. :try_end_45} :catchall_4e

    const/4 p0, 0x1

    .line 995
    :try_start_46
    monitor-exit p2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_4e

    .line 1001
    :try_start_47
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_5f

    .line 1004
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_4e
    move-exception p0

    goto :goto_58

    .line 997
    :catch_50
    :try_start_50
    monitor-exit p2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4e

    .line 1001
    :try_start_51
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5f

    .line 1004
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    .line 999
    :goto_58
    :try_start_58
    monitor-exit p2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_4e

    :try_start_59
    throw p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p0

    .line 1001
    :try_start_5b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1002
    throw p0
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception p0

    .line 1004
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1005
    throw p0
.end method

.method public setLowestPriority(Ljava/lang/String;I)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-wide/32 v1, 0x4000000

    .line 1015
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setLowestPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1017
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v3, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "setLowestPriority"

    .line 1018
    invoke-virtual {p0, p2, p1}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    const-string/jumbo p2, "setLowestPriority"

    .line 1019
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 1021
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_66

    .line 1023
    :try_start_31
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_61

    .line 1025
    :try_start_38
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, v3, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance v3, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 1026
    invoke-virtual {p1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_4c
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_38 .. :try_end_4c} :catch_57
    .catchall {:try_start_38 .. :try_end_4c} :catchall_55

    const/4 p0, 0x1

    .line 1027
    :try_start_4d
    monitor-exit p2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_55

    .line 1033
    :try_start_4e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_66

    .line 1036
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_55
    move-exception p0

    goto :goto_5f

    .line 1029
    :catch_57
    :try_start_57
    monitor-exit p2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_55

    .line 1033
    :try_start_58
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_66

    .line 1036
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    .line 1031
    :goto_5f
    :try_start_5f
    monitor-exit p2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_55

    :try_start_60
    throw p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p0

    .line 1033
    :try_start_62
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1034
    throw p0
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p0

    .line 1036
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1037
    throw p0
.end method

.method public setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_7a

    if-nez p2, :cond_6

    goto :goto_7a

    :cond_6
    const-wide/32 v1, 0x4000000

    .line 949
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 952
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v3, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 953
    new-instance p1, Landroid/content/om/OverlayIdentifier;

    invoke-direct {p1, p2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "setPriority"

    .line 954
    invoke-virtual {p0, p3, p2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    const-string/jumbo p3, "setPriority"

    .line 955
    invoke-virtual {p0, v3, p3, p2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 957
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_75

    .line 959
    :try_start_40
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_70

    .line 961
    :try_start_47
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance p2, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 962
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_5b
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_47 .. :try_end_5b} :catch_66
    .catchall {:try_start_47 .. :try_end_5b} :catchall_64

    const/4 p0, 0x1

    .line 963
    :try_start_5c
    monitor-exit p3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_64

    .line 969
    :try_start_5d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_75

    .line 972
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_64
    move-exception p0

    goto :goto_6e

    .line 965
    :catch_66
    :try_start_66
    monitor-exit p3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_64

    .line 969
    :try_start_67
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_75

    .line 972
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    .line 967
    :goto_6e
    :try_start_6e
    monitor-exit p3
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_64

    :try_start_6f
    throw p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    :catchall_70
    move-exception p0

    .line 969
    :try_start_71
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 970
    throw p0
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception p0

    .line 972
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 973
    throw p0

    :cond_7a
    :goto_7a
    return v0
.end method

.method public updatePackageCache(Ljava/lang/String;I)V
    .registers 6

    const-string v0, "OverlayManager"

    .line 1466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePackageCache() called with: packageName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], userId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3b

    .line 1469
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1470
    :try_start_2d
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->-$$Nest$maddPackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1471
    monitor-exit v0

    goto :goto_3b

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_38

    throw p0

    :cond_3b
    :goto_3b
    return-void
.end method
