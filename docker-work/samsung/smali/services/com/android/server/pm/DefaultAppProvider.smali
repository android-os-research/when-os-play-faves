.class public Lcom/android/server/pm/DefaultAppProvider;
.super Ljava/lang/Object;
.source "DefaultAppProvider.java"


# instance fields
.field public final mRoleManagerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/app/role/RoleManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserManagerInternalSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/UserManagerInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$uUNN1fkTpwoqn1-qKzSAsYorEIc(Lcom/android/internal/infra/AndroidFuture;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/DefaultAppProvider;->lambda$setDefaultBrowser$0(Lcom/android/internal/infra/AndroidFuture;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/app/role/RoleManager;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/UserManagerInternal;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/pm/DefaultAppProvider;->mRoleManagerSupplier:Ljava/util/function/Supplier;

    .line 55
    iput-object p2, p0, Lcom/android/server/pm/DefaultAppProvider;->mUserManagerInternalSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public static synthetic lambda$setDefaultBrowser$0(Lcom/android/internal/infra/AndroidFuture;Ljava/lang/Boolean;)V
    .registers 2

    .line 90
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_13

    .line 93
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_13
    return-void
.end method


# virtual methods
.method public getDefaultBrowser(I)Ljava/lang/String;
    .registers 3

    const-string v0, "android.app.role.BROWSER"

    .line 66
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/DefaultAppProvider;->getRoleHolder(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultDialer(I)Ljava/lang/String;
    .registers 3

    const-string v0, "android.app.role.DIALER"

    .line 128
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/DefaultAppProvider;->getRoleHolder(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultHome(I)Ljava/lang/String;
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/DefaultAppProvider;->mUserManagerInternalSupplier:Ljava/util/function/Supplier;

    .line 140
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p1

    const-string v0, "android.app.role.HOME"

    .line 139
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/DefaultAppProvider;->getRoleHolder(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRoleHolder(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 170
    iget-object p0, p0, Lcom/android/server/pm/DefaultAppProvider;->mRoleManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 177
    :try_start_10
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 176
    invoke-virtual {p0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    .line 179
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_22
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    throw p0
.end method

.method public setDefaultBrowser(Ljava/lang/String;ZI)Z
    .registers 15

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_5

    return v0

    .line 82
    :cond_5
    iget-object p0, p0, Lcom/android/server/pm/DefaultAppProvider;->mRoleManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/app/role/RoleManager;

    if-nez v1, :cond_11

    return v0

    .line 86
    :cond_11
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 87
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 88
    new-instance v8, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v8}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 89
    new-instance v7, Lcom/android/server/pm/DefaultAppProvider$$ExternalSyntheticLambda0;

    invoke-direct {v7, v8}, Lcom/android/server/pm/DefaultAppProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 96
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    if-eqz p1, :cond_33

    :try_start_29
    const-string v2, "android.app.role.BROWSER"

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p0

    move-object v6, p3

    .line 99
    invoke-virtual/range {v1 .. v7}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_3c

    :cond_33
    const-string v2, "android.app.role.BROWSER"

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p3

    move-object v6, v7

    .line 102
    invoke-virtual/range {v1 .. v6}, Landroid/app/role/RoleManager;->clearRoleHoldersAsUser(Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_66

    :goto_3c
    if-nez p2, :cond_61

    const-wide/16 p2, 0x5

    .line 107
    :try_start_40
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, p2, p3, p0}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_45} :catch_46
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_40 .. :try_end_45} :catch_46
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_40 .. :try_end_45} :catch_46
    .catchall {:try_start_40 .. :try_end_45} :catchall_66

    goto :goto_61

    :catch_46
    move-exception p0

    :try_start_47
    const-string p2, "PackageManager"

    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while setting default browser: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_47 .. :try_end_5d} :catchall_66

    .line 115
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_61
    :goto_61
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_66
    move-exception p0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    throw p0
.end method

.method public setDefaultHome(Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 154
    iget-object p0, p0, Lcom/android/server/pm/DefaultAppProvider;->mRoleManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/role/RoleManager;

    if-nez v0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 158
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_11
    const-string v1, "android.app.role.HOME"

    const/4 v3, 0x0

    .line 161
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    .line 160
    invoke-virtual/range {v0 .. v6}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_23

    .line 163
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_23
    move-exception p0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    throw p0
.end method
