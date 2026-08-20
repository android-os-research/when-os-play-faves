.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
.super Landroid/media/projection/IMediaProjectionManager$Stub;
.source "MediaProjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .registers 2

    .line 349
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 4

    .line 462
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 467
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 469
    :try_start_12
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$maddCallback(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1b

    .line 471
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 472
    throw p0

    .line 464
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 524
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;
    .registers 20

    move-object v1, p0

    move-object/from16 v9, p2

    const-string v10, "MediaProjectionManagerService"

    .line 370
    iget-object v0, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e5

    if-eqz v9, :cond_dc

    .line 375
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_dc

    .line 379
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 386
    :try_start_23
    iget-object v2, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v13, 0x0

    invoke-virtual {v2, v9, v13, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_2e} :catch_c1
    .catchall {:try_start_23 .. :try_end_2e} :catchall_bf

    .line 391
    :try_start_2e
    new-instance v14, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget-object v3, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 392
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v8

    move-object v2, v14

    move/from16 v4, p3

    move/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;IILjava/lang/String;IZ)V

    if-eqz p4, :cond_53

    .line 394
    iget-object v0, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v2, 0x2e

    iget v3, v14, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v4, v14, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v13}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_53
    .catchall {:try_start_2e .. :try_end_53} :catchall_bf

    .line 398
    :cond_53
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x0

    .line 403
    :try_start_57
    iget-object v0, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x40

    invoke-virtual {v0, v9, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_63
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_57 .. :try_end_63} :catch_64

    goto :goto_79

    :catch_64
    move-exception v0

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_79
    if-eqz v2, :cond_be

    .line 407
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_be

    const-string/jumbo v0, "ro.csc.country_code"

    .line 408
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CHINA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    :try_start_92
    const-string v0, "appops"

    .line 410
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService;

    const/16 v2, 0x3e8

    const/4 v5, 0x0

    .line 411
    iget-object v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v1

    .line 412
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x258

    move-object v1, v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    .line 411
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->writePermissionAccessInformation(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_b5} :catch_b6

    goto :goto_be

    :catch_b6
    move-exception v0

    .line 414
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_be
    :goto_be
    return-object v14

    :catchall_bf
    move-exception v0

    goto :goto_d8

    .line 388
    :catch_c1
    :try_start_c1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package matching :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d8
    .catchall {:try_start_c1 .. :try_end_d8} :catchall_bf

    .line 398
    :goto_d8
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 399
    throw v0

    .line 376
    :cond_dc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "package name must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_e5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_MEDIA_PROJECTION in order to grant projection permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 513
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "MediaProjectionManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 514
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 516
    :try_start_13
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$mdump(Lcom/android/server/media/projection/MediaProjectionManagerService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    .line 518
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 519
    throw p0
.end method

.method public getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .registers 3

    .line 429
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 436
    :try_start_12
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$mgetActiveProjectionInfo(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/media/projection/MediaProjectionInfo;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1c

    .line 438
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 439
    throw p0

    .line 431
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasProjectionPermission(ILjava/lang/String;)Z
    .registers 7

    .line 353
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string v2, "android.permission.CAPTURE_VIDEO_OUTPUT"

    .line 356
    invoke-virtual {p0, p2, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1e

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object p0

    const/16 v2, 0x2e

    .line 358
    invoke-virtual {p0, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_24

    if-nez p0, :cond_1c

    goto :goto_1e

    :cond_1c
    move p0, v3

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    :goto_1f
    or-int/2addr p0, v3

    .line 362
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_24
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 363
    throw p0
.end method

.method public isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z
    .registers 2

    .line 423
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 424
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 423
    invoke-static {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$misValidMediaProjection(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 4

    .line 477
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 484
    :try_start_12
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$mremoveCallback(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1b

    .line 486
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 487
    throw p0

    .line 479
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires MANAGE_MEDIA_PROJECTION in order to remove projection callbacks"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentRecordingSession(Landroid/view/ContentRecordingSession;Landroid/media/projection/IMediaProjection;)V
    .registers 6

    .line 496
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 498
    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_2c

    .line 499
    :try_start_b
    invoke-virtual {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 502
    const-class p0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal;

    .line 503
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    .line 505
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_29

    .line 507
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 500
    :cond_21
    :try_start_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid media projection"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_29
    move-exception p0

    .line 505
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    :try_start_2b
    throw p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 507
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 508
    throw p0
.end method

.method public stopActiveProjection()V
    .registers 4

    .line 444
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2c

    .line 449
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 451
    :try_start_12
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 452
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_27

    .line 455
    :cond_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 456
    throw p0

    .line 446
    :cond_2c
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
