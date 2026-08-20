.class public final Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccountManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RestorePackageMonitor"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V
    .registers 2

    .line 271
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 6

    .line 274
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-$$Nest$fgetmLock(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 275
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-$$Nest$fgetmRestorePendingAppPermissions(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_11

    .line 276
    monitor-exit v0

    return-void

    .line 278
    :cond_11
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-eqz p2, :cond_19

    .line 279
    monitor-exit v0

    return-void

    .line 281
    :cond_19
    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-$$Nest$fgetmRestorePendingAppPermissions(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_25
    if-ltz p2, :cond_5c

    .line 283
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-$$Nest$fgetmRestorePendingAppPermissions(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object v1

    .line 284
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;

    .line 285
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->-$$Nest$fgetpackageName(Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_59

    .line 288
    :cond_3e
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-$$Nest$fgetmAccountManagerService(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 289
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 288
    invoke-virtual {v1, v2}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->apply(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 290
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-$$Nest$fgetmRestorePendingAppPermissions(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_59
    :goto_59
    add-int/lit8 p2, p2, -0x1

    goto :goto_25

    .line 293
    :cond_5c
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-$$Nest$fgetmRestorePendingAppPermissions(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_90

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-$$Nest$fgetmRestoreCancelCommand(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_90

    .line 295
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-$$Nest$fgetmAccountManagerService(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-$$Nest$fgetmRestoreCancelCommand(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-$$Nest$fgetmRestoreCancelCommand(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 297
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-$$Nest$fputmRestoreCancelCommand(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/Runnable;)V

    .line 299
    :cond_90
    monitor-exit v0

    return-void

    :catchall_92
    move-exception p0

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_7 .. :try_end_94} :catchall_92

    throw p0
.end method
