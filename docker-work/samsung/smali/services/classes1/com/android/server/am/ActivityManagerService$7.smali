.class public Lcom/android/server/am/ActivityManagerService$7;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$appInfo:Landroid/content/pm/ApplicationInfo;

.field public final synthetic val$isInstantApp:Z

.field public final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field public final synthetic val$pid:I

.field public final synthetic val$resolvedUserId:I

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;IZIILandroid/content/pm/IPackageDataObserver;)V
    .registers 8

    .line 4484
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$7;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$7;->val$resolvedUserId:I

    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerService$7;->val$isInstantApp:Z

    iput p5, p0, Lcom/android/server/am/ActivityManagerService$7;->val$uid:I

    iput p6, p0, Lcom/android/server/am/ActivityManagerService$7;->val$pid:I

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$7;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 4488
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$7;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_24

    .line 4489
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4490
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$7;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v1, v5}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mfinishForceStopPackageLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)V

    .line 4491
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_24

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_24
    :goto_24
    if-eqz v2, :cond_8e

    .line 4494
    new-instance v10, Landroid/content/Intent;

    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    const-string/jumbo v4, "package"

    const/4 v5, 0x0

    .line 4495
    invoke-static {v4, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v10, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x1000000

    .line 4496
    invoke-virtual {v10, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.UID"

    .line 4498
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$7;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_43

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_44

    :cond_43
    const/4 v4, -0x1

    .line 4497
    :goto_44
    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.user_handle"

    .line 4499
    iget v4, v0, Lcom/android/server/am/ActivityManagerService$7;->val$resolvedUserId:I

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4500
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$7;->val$isInstantApp:Z

    if-eqz v3, :cond_57

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    .line 4501
    invoke-virtual {v10, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4503
    :cond_57
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget v4, v0, Lcom/android/server/am/ActivityManagerService$7;->val$resolvedUserId:I

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManagerInternal;->getVisibilityAllowList(Ljava/lang/String;I)[I

    move-result-object v23

    .line 4506
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android"

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    iget v8, v0, Lcom/android/server/am/ActivityManagerService$7;->val$uid:I

    iget v9, v0, Lcom/android/server/am/ActivityManagerService$7;->val$pid:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 4509
    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService$7;->val$isInstantApp:Z

    if-eqz v5, :cond_7a

    const-string v5, "android.permission.ACCESS_INSTANT_APPS"

    move-object/from16 v16, v5

    goto :goto_7c

    :cond_7a
    const/16 v16, 0x0

    :goto_7c
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget v5, v0, Lcom/android/server/am/ActivityManagerService$7;->val$resolvedUserId:I

    move/from16 v20, v5

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v5, v3

    .line 4506
    invoke-virtual/range {v4 .. v23}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZLandroid/os/IBinder;[I)I

    .line 4515
    :cond_8e
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$7;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v0, :cond_95

    .line 4516
    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    :cond_95
    return-void
.end method
