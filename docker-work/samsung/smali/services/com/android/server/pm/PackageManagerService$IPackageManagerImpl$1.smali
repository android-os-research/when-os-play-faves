.class public Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

.field public final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .registers 5

    .line 5516
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 5518
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5520
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    const-string v2, "clearApplicationUserData"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0

    .line 5522
    :try_start_15
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_f0

    .line 5523
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mclearApplicationUserDataLIF(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z

    move-result v2

    .line 5525
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_ed

    .line 5526
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->deleteInstantApplicationMetadata(Ljava/lang/String;I)V

    .line 5527
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1
    :try_end_41
    .catchall {:try_start_2d .. :try_end_41} :catchall_f0

    if-eqz v2, :cond_4e

    .line 5529
    :try_start_43
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mresetComponentEnabledSettingsIfNeededLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    .line 5531
    :cond_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_ea

    if-eqz v0, :cond_54

    .line 5532
    invoke-virtual {v0}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_54
    if-eqz v2, :cond_a2

    .line 5535
    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 5536
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    if-eqz v0, :cond_63

    .line 5538
    invoke-interface {v0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    .line 5540
    :cond_63
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-string v1, "android.permission.SUSPEND_APPS"

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/pm/IPackageManagerBase;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a2

    .line 5542
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5543
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 5544
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/PackageManagerService;->removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V

    .line 5545
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 5546
    :try_start_94
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mflushPackageRestrictionsAsUserInternalLocked(Lcom/android/server/pm/PackageManagerService;I)V

    .line 5547
    monitor-exit v0

    goto :goto_a2

    :catchall_9f
    move-exception p0

    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_94 .. :try_end_a1} :catchall_9f

    throw p0

    .line 5550
    :cond_a2
    :goto_a2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v0, :cond_e9

    :try_start_a6
    const-string v0, "PackageManager"

    .line 5553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result of clearing user data: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_b9

    const-string/jumbo v3, "succeeded"

    goto :goto_bb

    :cond_b9
    const-string v3, "failed"

    .line 5554
    :goto_bb
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5553
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5556
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, p0, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_e1} :catch_e2

    goto :goto_e9

    :catch_e2
    const-string p0, "PackageManager"

    const-string v0, "Observer no longer exists."

    .line 5558
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e9
    :goto_e9
    return-void

    :catchall_ea
    move-exception p0

    .line 5531
    :try_start_eb
    monitor-exit v1
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    :try_start_ec
    throw p0
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_f0

    :catchall_ed
    move-exception p0

    .line 5525
    :try_start_ee
    monitor-exit v1
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    :try_start_ef
    throw p0
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_f0

    :catchall_f0
    move-exception p0

    if-eqz v0, :cond_fb

    .line 5520
    :try_start_f3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_f7

    goto :goto_fb

    :catchall_f7
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_fb
    :goto_fb
    throw p0
.end method
