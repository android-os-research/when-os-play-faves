.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
.super Landroid/media/projection/IMediaProjection$Stub;
.source "MediaProjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MediaProjection"
.end annotation


# instance fields
.field public mCallback:Landroid/media/projection/IMediaProjectionCallback;

.field public mDeathEater:Landroid/os/IBinder$DeathRecipient;

.field public final mIsPrivileged:Z

.field public mRestoreSystemAlertWindow:Z

.field public final mTargetSdkVersion:I

.field public mTaskRecordingWindowContainerToken:Landroid/window/WindowContainerToken;

.field public mToken:Landroid/os/IBinder;

.field public final mType:I

.field public final packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

.field public final uid:I

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;IILjava/lang/String;IZ)V
    .registers 7

    .line 544
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjection$Stub;-><init>()V

    const/4 p1, 0x0

    .line 541
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTaskRecordingWindowContainerToken:Landroid/window/WindowContainerToken;

    .line 545
    iput p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    .line 546
    iput p3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 547
    iput-object p4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 548
    new-instance p1, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->userHandle:Landroid/os/UserHandle;

    .line 549
    iput p5, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTargetSdkVersion:I

    .line 550
    iput-boolean p6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mIsPrivileged:Z

    return-void
.end method


# virtual methods
.method public applyVirtualDisplayFlags(I)I
    .registers 3

    .line 573
    iget p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    if-nez p0, :cond_9

    and-int/lit8 p0, p1, -0x9

    or-int/lit8 p0, p0, 0x12

    return p0

    :cond_9
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    and-int/lit8 p0, p1, -0x12

    or-int/lit8 p0, p0, 0xa

    return p0

    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_19

    and-int/lit8 p0, p1, -0x9

    or-int/lit8 p0, p0, 0x13

    return p0

    .line 591
    :cond_19
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown MediaProjection type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canProjectAudio()Z
    .registers 3

    .line 566
    iget p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    if-nez p0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_c
    return v0
.end method

.method public canProjectSecureVideo()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public canProjectVideo()Z
    .registers 2

    .line 555
    iget p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    if-nez p0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$smtypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .registers 3

    .line 728
    new-instance v0, Landroid/media/projection/MediaProjectionInfo;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->userHandle:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p0}, Landroid/media/projection/MediaProjectionInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public getTaskRecordingWindowContainerToken()Landroid/window/WindowContainerToken;
    .registers 1

    .line 724
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTaskRecordingWindowContainerToken:Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method public registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    .registers 2

    if-eqz p1, :cond_c

    .line 705
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmCallbackDelegate(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->add(Landroid/media/projection/IMediaProjectionCallback;)V

    return-void

    .line 703
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requiresForegroundService()Z
    .registers 3

    .line 732
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTargetSdkVersion:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_c

    iget-boolean p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mIsPrivileged:Z

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public setTaskRecordingWindowContainerToken(Landroid/window/WindowContainerToken;)V
    .registers 2

    .line 719
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTaskRecordingWindowContainerToken:Landroid/window/WindowContainerToken;

    return-void
.end method

.method public start(Landroid/media/projection/IMediaProjectionCallback;)V
    .registers 9

    if-eqz p1, :cond_e1

    .line 600
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 601
    :try_start_9
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$misValidMediaProjection(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string p0, "MediaProjectionManagerService"

    .line 602
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UID "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attempted to start already started MediaProjection"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    monitor-exit v0

    return-void

    .line 608
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->requiresForegroundService()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    const/16 v3, 0x20

    .line 609
    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->hasRunningForegroundService(II)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_55

    .line 611
    :cond_4d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Media projections require a foreground service of type ServiceInfo.FOREGROUND_SERVICE_TYPE_MEDIA_PROJECTION"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 615
    :cond_55
    :goto_55
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 616
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_5a
    .catchall {:try_start_9 .. :try_end_5a} :catchall_de

    .line 618
    :try_start_5a
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    .line 619
    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;Landroid/media/projection/IMediaProjectionCallback;)V

    iput-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mDeathEater:Landroid/os/IBinder$DeathRecipient;

    .line 626
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_6d} :catch_d4
    .catchall {:try_start_5a .. :try_end_6d} :catchall_de

    .line 632
    :try_start_6d
    iget p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    if-nez p1, :cond_cd

    .line 633
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_de

    .line 641
    :try_start_75
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    const/16 v5, 0x1000

    iget v6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 643
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 641
    invoke-virtual {p1, v1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 644
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 646
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object p1

    iget v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v5, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    const/16 v6, 0x18

    invoke-virtual {p1, v6, v1, v5}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_b6

    .line 649
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object p1

    iget v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v5, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6, v1, v5, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    const/4 p1, 0x1

    .line 651
    iput-boolean p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mRestoreSystemAlertWindow:Z
    :try_end_b6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_75 .. :try_end_b6} :catch_bc
    .catchall {:try_start_75 .. :try_end_b6} :catchall_ba

    .line 658
    :cond_b6
    :try_start_b6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_de

    goto :goto_cd

    :catchall_ba
    move-exception p0

    goto :goto_c9

    :catch_bc
    move-exception p0

    :try_start_bd
    const-string p1, "MediaProjectionManagerService"

    const-string v1, "Package not found, aborting MediaProjection"

    .line 655
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c4
    .catchall {:try_start_bd .. :try_end_c4} :catchall_ba

    .line 658
    :try_start_c4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-void

    :goto_c9
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 659
    throw p0

    .line 661
    :cond_cd
    :goto_cd
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$mstartProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 662
    monitor-exit v0

    return-void

    :catch_d4
    move-exception p0

    const-string p1, "MediaProjectionManagerService"

    const-string v1, "MediaProjectionCallbacks must be valid, aborting MediaProjection"

    .line 628
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    monitor-exit v0

    return-void

    :catchall_de
    move-exception p0

    .line 662
    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_c4 .. :try_end_e0} :catchall_de

    throw p0

    .line 598
    :cond_e1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stop()V
    .registers 10

    .line 667
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 668
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$misValidMediaProjection(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string p0, "MediaProjectionManagerService"

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to stop inactive MediaProjection (uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 669
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    monitor-exit v0

    return-void

    .line 674
    :cond_40
    iget-boolean v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mRestoreSystemAlertWindow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_74

    .line 675
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_8c

    .line 681
    :try_start_49
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v5, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    const/16 v7, 0x18

    invoke-virtual {v1, v7, v5, v6}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_69

    .line 684
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v5, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    const/4 v8, 0x3

    invoke-virtual {v1, v7, v5, v6, v8}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 687
    :cond_69
    iput-boolean v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mRestoreSystemAlertWindow:Z
    :try_end_6b
    .catchall {:try_start_49 .. :try_end_6b} :catchall_6f

    .line 689
    :try_start_6b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_74

    :catchall_6f
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 690
    throw p0

    .line 692
    :cond_74
    :goto_74
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$mstopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 693
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mDeathEater:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    .line 694
    iput-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    .line 695
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    invoke-virtual {p0, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 696
    iput-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 697
    monitor-exit v0

    return-void

    :catchall_8c
    move-exception p0

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_6b .. :try_end_8e} :catchall_8c

    throw p0
.end method

.method public unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    .registers 2

    if-eqz p1, :cond_c

    .line 713
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmCallbackDelegate(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->remove(Landroid/media/projection/IMediaProjectionCallback;)V

    return-void

    .line 711
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
