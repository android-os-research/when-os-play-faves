.class public final Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;
.super Landroid/accounts/AccountManagerInternal;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AccountManagerInternalImpl"
.end annotation


# instance fields
.field public mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .registers 2

    .line 6564
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Landroid/accounts/AccountManagerInternal;-><init>()V

    .line 6565
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    return-void
.end method


# virtual methods
.method public addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V
    .registers 2

    .line 6630
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {p0}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$fgetmAppPermissionChangeListeners(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public backupAccountAccessPermissions(I)[B
    .registers 5

    .line 6640
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6641
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    if-nez v1, :cond_10

    .line 6642
    new-instance v1, Lcom/android/server/accounts/AccountManagerBackupHelper;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {v1, v2, p0}, Lcom/android/server/accounts/AccountManagerBackupHelper;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 6645
    :cond_10
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->backupAccountAccessPermissions(I)[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    .line 6646
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public hasAccountAccess(Landroid/accounts/Account;I)Z
    .registers 4

    .line 6635
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mhasAccountAccess(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 15

    if-nez p1, :cond_a

    const-string p0, "AccountManagerService"

    const-string p1, "account cannot be null"

    .line 6574
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    if-nez p2, :cond_15

    const-string p0, "AccountManagerService"

    const-string/jumbo p1, "packageName cannot be null"

    .line 6578
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    if-gez p3, :cond_20

    const-string p0, "AccountManagerService"

    const-string/jumbo p1, "user id must be concrete"

    .line 6582
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    if-nez p4, :cond_2a

    const-string p0, "AccountManagerService"

    const-string p1, "callback cannot be null"

    .line 6586
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6590
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 6591
    invoke-virtual {v0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mresolveAccountVisibility(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_44

    const-string p0, "AccountManagerService"

    const-string/jumbo p1, "requestAccountAccess: account is hidden"

    .line 6593
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6597
    :cond_44
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 6599
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "booleanResult"

    const/4 p2, 0x1

    .line 6600
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6601
    invoke-virtual {p4, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void

    .line 6607
    :cond_60
    :try_start_60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_64
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_60 .. :try_end_64} :catch_a5

    .line 6609
    :try_start_64
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_a0

    .line 6611
    :try_start_6e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6e .. :try_end_71} :catch_a5

    .line 6618
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0, p1, p2, v2, p4}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mnewRequestAccountAccessIntent(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object v7

    .line 6620
    iget-object p4, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {p4}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;

    move-result-object p4

    monitor-enter p4

    .line 6621
    :try_start_7e
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 6622
    monitor-exit p4
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_9d

    .line 6623
    iget-object p4, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object p4, p4, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2, v2, p4}, Lcom/android/internal/notification/SystemNotificationChannels;->createAccountChannelForPackage(Ljava/lang/String;ILandroid/content/Context;)V

    .line 6624
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v3 .. v9}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mdoNotification(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void

    :catchall_9d
    move-exception p0

    .line 6622
    :try_start_9e
    monitor-exit p4
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw p0

    :catchall_a0
    move-exception p0

    .line 6611
    :try_start_a1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6612
    throw p0
    :try_end_a5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a1 .. :try_end_a5} :catch_a5

    :catch_a5
    const-string p0, "AccountManagerService"

    .line 6614
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restoreAccountAccessPermissions([BI)V
    .registers 6

    .line 6651
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6652
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    if-nez v1, :cond_10

    .line 6653
    new-instance v1, Lcom/android/server/accounts/AccountManagerBackupHelper;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {v1, v2, p0}, Lcom/android/server/accounts/AccountManagerBackupHelper;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 6656
    :cond_10
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->restoreAccountAccessPermissions([BI)V

    .line 6657
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method
