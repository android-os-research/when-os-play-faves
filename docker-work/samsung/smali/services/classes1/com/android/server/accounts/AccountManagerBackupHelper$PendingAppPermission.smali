.class public final Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
.super Ljava/lang/Object;
.source "AccountManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PendingAppPermission"
.end annotation


# instance fields
.field public final accountDigest:Ljava/lang/String;

.field public final certDigest:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

.field public final userId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetpackageName(Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 90
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->accountDigest:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    .line 94
    iput p5, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/pm/PackageManager;)Z
    .registers 13

    .line 99
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-$$Nest$fgetmAccountManagerService(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    .line 100
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 101
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_f
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_9b

    .line 103
    :try_start_12
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    .line 104
    array-length v6, v4

    move v7, v5

    :goto_2c
    if-ge v7, v6, :cond_47

    aget-object v8, v4, v7

    .line 105
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->accountDigest:Ljava/lang/String;

    iget-object v10, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 106
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 105
    invoke-static {v10}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_44

    move-object v3, v8

    goto :goto_47

    :cond_44
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_47
    :goto_47
    if-eqz v3, :cond_1d

    .line 115
    :cond_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_12 .. :try_end_4a} :catchall_98

    .line 116
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_9b

    if-nez v3, :cond_4e

    return v5

    .line 122
    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    const/16 v1, 0x40

    iget v2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_58
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4e .. :try_end_58} :catch_97

    .line 133
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_7b

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-le v1, v2, :cond_7a

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    aget-object v0, v0, v5

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    :cond_7a
    return v5

    .line 141
    :cond_7b
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 142
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-$$Nest$fgetmAccountManagerInternal(Lcom/android/server/accounts/AccountManagerBackupHelper;)Landroid/accounts/AccountManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_96

    .line 143
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {p0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->-$$Nest$fgetmAccountManagerService(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object p0

    const-string v0, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    invoke-virtual {p0, v3, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    :cond_96
    return v2

    :catch_97
    return v5

    :catchall_98
    move-exception p0

    .line 115
    :try_start_99
    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    :try_start_9a
    throw p0

    :catchall_9b
    move-exception p0

    .line 116
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9b

    throw p0
.end method
