.class public Lcom/android/commands/monkey/MonkeyPermissionEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyPermissionEvent.java"


# instance fields
.field private mPermissionInfo:Landroid/content/pm/PermissionInfo;

.field private mPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PermissionInfo;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 34
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 35
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPkg:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 37
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 16
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 41
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 42
    .local v0, "packageManager":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v1

    .line 43
    .local v1, "permissionManager":Landroid/permission/IPermissionManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 46
    .local v2, "currentUser":I
    const/4 v3, -0x1

    :try_start_d
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPkg:Ljava/lang/String;

    invoke-interface {v0, v4, v5, v2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 47
    .local v4, "perm":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v3, :cond_1d

    move v7, v6

    goto :goto_1e

    :cond_1d
    move v7, v5

    .line 49
    .local v7, "grant":Z
    :goto_1e
    sget-object v8, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v9, ":Permission %s %s to package %s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    .line 50
    if-eqz v7, :cond_2a

    const-string v11, "grant"

    goto :goto_2c

    :cond_2a
    const-string v11, "revoke"

    :goto_2c
    aput-object v11, v10, v5

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    aput-object v5, v10, v6

    const/4 v5, 0x2

    iget-object v11, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPkg:Ljava/lang/String;

    aput-object v11, v10, v5

    .line 49
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 51
    if-eqz v7, :cond_4c

    .line 52
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v5, v8, v2}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_56

    .line 54
    :cond_4c
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v1, v5, v8, v2, v9}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_56} :catch_57

    .line 57
    :goto_56
    return v6

    .line 58
    .end local v4    # "perm":I
    .end local v7    # "grant":Z
    :catch_57
    move-exception v4

    .line 59
    .local v4, "re":Landroid/os/RemoteException;
    return v3
.end method
