.class public Lcom/android/server/pm/UserManagerService$LocalService;
.super Lcom/android/server/pm/UserManagerInternal;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 6959
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;)V

    return-void
.end method


# virtual methods
.method public addMaintenanceModeLifecycleListener(Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;)V
    .registers 2

    .line 7006
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmMaintenanceModeServiceUtils(Lcom/android/server/pm/UserManagerService;)Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->addLifecycleListener(Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;)V

    return-void
.end method

.method public addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V
    .registers 3

    .line 6989
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserLifecycleListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 6990
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserLifecycleListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6991
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V
    .registers 3

    .line 6975
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserRestrictionsListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 6976
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserRestrictionsListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6977
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public clearAttributes(II)Z
    .registers 9

    .line 7311
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7312
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_3d

    .line 7314
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 7315
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, p1, :cond_3a

    .line 7316
    new-instance p1, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {p1}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    if-lez p2, :cond_37

    .line 7318
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v1

    not-int p2, p2

    and-int/2addr p2, v1

    invoke-virtual {v4, p2}, Landroid/content/pm/UserInfo;->setAttributes(I)V

    .line 7319
    :cond_37
    iput-object v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    goto :goto_3e

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_3d
    const/4 p1, 0x0

    :goto_3e
    if-eqz p1, :cond_46

    .line 7324
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mwriteUserLP(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    const/4 v2, 0x1

    .line 7331
    :cond_46
    monitor-exit v0

    return v2

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public clearVolatiles(II)Z
    .registers 4

    .line 7456
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7457
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz p0, :cond_24

    .line 7459
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getVolatiles()I

    move-result p1

    .line 7460
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    not-int p2, p2

    and-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/content/pm/UserInfo;->setVolatiles(I)V

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    .line 7463
    :goto_25
    monitor-exit v0

    return p0

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public createUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    .line 7124
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const/16 v4, -0x2710

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mcreateUserInternalUnchecked(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public exists(I)Z
    .registers 2

    .line 7217
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserInfoNoChecks(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public getAttributes(I)I
    .registers 3

    .line 7338
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7339
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserInfoLU(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 7341
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result p0

    goto :goto_15

    :cond_14
    const/4 p0, -0x1

    .line 7347
    :goto_15
    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public getProfileParentId(I)I
    .registers 3

    .line 7264
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7265
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetProfileParentLU(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_11

    .line 7267
    monitor-exit v0

    return p1

    .line 7269
    :cond_11
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 7270
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getUserIds()[I
    .registers 1

    .line 7156
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 3

    .line 7364
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7365
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 7366
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1b

    if-nez p0, :cond_18

    const/4 p0, 0x0

    goto :goto_1a

    .line 7367
    :cond_18
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    :goto_1a
    return-object p0

    :catchall_1b
    move-exception p0

    .line 7366
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public getUserInfos()[Landroid/content/pm/UserInfo;
    .registers 6

    .line 7372
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7373
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 7374
    new-array v2, v1, [Landroid/content/pm/UserInfo;

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_29

    .line 7376
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 7378
    :cond_29
    monitor-exit v0

    return-object v2

    :catchall_2b
    move-exception p0

    .line 7379
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public getUserRestriction(ILjava/lang/String;)Z
    .registers 3

    .line 6970
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 7161
    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/pm/UserManagerService$LocalService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUsers(ZZZ)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 7167
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUsersInternal(Lcom/android/server/pm/UserManagerService;ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVolatiles(I)I
    .registers 3

    .line 7444
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7445
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserInfoLU(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 7447
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getVolatiles()I

    move-result p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    .line 7449
    :goto_15
    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 5

    .line 7354
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 7357
    :cond_8
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p2}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetEffectiveUserRestrictions(Lcom/android/server/pm/UserManagerService;I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 7358
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public isDeviceManaged()Z
    .registers 2

    .line 7028
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7029
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmIsDeviceManaged(Lcom/android/server/pm/UserManagerService;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 7030
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public isProfileAccessible(IILjava/lang/String;Z)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p2, p1, :cond_4

    return v0

    .line 7226
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 7227
    :try_start_b
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserInfoLU(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7a

    .line 7228
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_7a

    .line 7239
    :cond_1b
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p2}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserInfoLU(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 7240
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_55

    .line 7250
    :cond_2a
    iget p0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 p1, -0x2710

    if-eq p0, p1, :cond_37

    iget p1, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq p0, p1, :cond_35

    goto :goto_37

    .line 7258
    :cond_35
    monitor-exit v1

    return v0

    :cond_37
    :goto_37
    if-nez p4, :cond_3b

    .line 7256
    monitor-exit v1

    return v3

    .line 7253
    :cond_3b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for unrelated profile "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_55
    :goto_55
    if-eqz p4, :cond_78

    const-string p0, "UserManagerService"

    .line 7244
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for disabled profile "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7247
    :cond_78
    monitor-exit v1

    return v3

    :cond_7a
    :goto_7a
    if-nez p4, :cond_9f

    const-string p0, "UserManagerService"

    .line 7234
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for another profile "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7236
    monitor-exit v1

    return v3

    .line 7230
    :cond_9f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for another profile "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_c1
    move-exception p0

    .line 7258
    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_b .. :try_end_c3} :catchall_c1

    throw p0
.end method

.method public isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 5

    .line 7276
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isUserInitialized(I)Z
    .registers 2

    .line 7212
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isUserManaged(I)Z
    .registers 3

    .line 7042
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7043
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmIsUserManaged(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 7044
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public isUserRunning(I)Z
    .registers 4

    .line 7135
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v0

    monitor-enter v0

    .line 7136
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result p0

    if-ltz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    .line 7137
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public isUserUnlocked(I)Z
    .registers 4

    .line 7200
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v0

    monitor-enter v0

    .line 7201
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result p0

    .line 7202
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_26

    const/4 v0, 0x4

    if-eq p0, v0, :cond_21

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1a

    goto :goto_21

    :cond_1a
    const/4 p1, 0x3

    if-ne p0, p1, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0

    .line 7205
    :cond_21
    :goto_21
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result p0

    return p0

    :catchall_26
    move-exception p0

    .line 7202
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .registers 4

    .line 7174
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v0

    monitor-enter v0

    .line 7175
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result p0

    .line 7176
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_2a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_25

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1a

    goto :goto_25

    :cond_1a
    const/4 p1, 0x2

    if-eq p0, p1, :cond_23

    const/4 p1, 0x3

    if-ne p0, p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0

    .line 7179
    :cond_25
    :goto_25
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result p0

    return p0

    :catchall_2a
    move-exception p0

    .line 7176
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public onEphemeralUserStop(I)V
    .registers 3

    .line 7106
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7107
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserInfoLU(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 7108
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 7111
    iget p1, p0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 7112
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    .line 7114
    iput-boolean p1, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 7117
    :cond_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public removeAllUsers()V
    .registers 6

    .line 7075
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_c

    .line 7077
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mremoveNonSystemUsers(Lcom/android/server/pm/UserManagerService;)V

    goto :goto_3d

    .line 7080
    :cond_c
    new-instance v0, Lcom/android/server/pm/UserManagerService$LocalService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$LocalService$1;-><init>(Lcom/android/server/pm/UserManagerService$LocalService;)V

    .line 7092
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 7093
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7094
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 7098
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "activity"

    .line 7099
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x0

    .line 7100
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->switchUser(I)Z

    :goto_3d
    return-void
.end method

.method public removeMaintenanceModeLifecycleListener(Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;)V
    .registers 2

    .line 7014
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmMaintenanceModeServiceUtils(Lcom/android/server/pm/UserManagerService;)Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->removeLifecycleListener(Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;)V

    return-void
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .registers 2

    .line 7130
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mremoveUserUnchecked(Lcom/android/server/pm/UserManagerService;I)Z

    move-result p0

    return p0
.end method

.method public removeUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V
    .registers 3

    .line 6996
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserLifecycleListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 6997
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserLifecycleListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6998
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public removeUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V
    .registers 3

    .line 6982
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserRestrictionsListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 6983
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserRestrictionsListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6984
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public removeUserState(I)V
    .registers 3

    .line 7149
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v0

    monitor-enter v0

    .line 7150
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->delete(I)V

    .line 7151
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public setAttributes(II)Z
    .registers 9

    const-string v0, "UserManagerService"

    .line 7283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAttributes, user ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7286
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7287
    :try_start_26
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_32
    if-ge v3, v1, :cond_59

    .line 7289
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 7290
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, p1, :cond_56

    .line 7291
    new-instance v1, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v1}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 7292
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v3

    or-int/2addr p2, v3

    invoke-virtual {v4, p2}, Landroid/content/pm/UserInfo;->setAttributes(I)V

    .line 7293
    iput-object v4, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    goto :goto_5a

    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_59
    const/4 v1, 0x0

    .line 7297
    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_26 .. :try_end_5b} :catchall_7c

    if-eqz v1, :cond_64

    .line 7299
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, v1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mwriteUserLP(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    const/4 v2, 0x1

    goto :goto_7b

    :cond_64
    const-string p0, "UserManagerService"

    .line 7302
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAttributes: user not found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7b
    return v2

    :catchall_7c
    move-exception p0

    .line 7297
    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw p0
.end method

.method public setDefaultCrossProfileIntentFilters(II)V
    .registers 5

    .line 7385
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p2}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserTypeDetailsNoChecks(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v0

    .line 7386
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p2}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetEffectiveUserRestrictions(Lcom/android/server/pm/UserManagerService;I)Landroid/os/Bundle;

    move-result-object v1

    .line 7387
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p2, v0, v1, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$msetDefaultCrossProfileIntentFilters(Lcom/android/server/pm/UserManagerService;ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V

    return-void
.end method

.method public setDeviceManaged(Z)V
    .registers 3

    .line 7021
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7022
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fputmIsDeviceManaged(Lcom/android/server/pm/UserManagerService;Z)V

    .line 7023
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setDevicePolicyUserRestrictions(ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V
    .registers 5

    .line 6964
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->-$$Nest$msetDevicePolicyUserRestrictionsInner(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V

    return-void
.end method

.method public setDualDarInfo(II)Z
    .registers 6

    .line 7403
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7404
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerService$UserData;

    const/4 v1, 0x0

    if-eqz p1, :cond_34

    and-int/lit16 v2, p2, 0x6000

    if-eqz v2, :cond_34

    and-int/lit16 v2, p2, 0x4000

    if-eqz v2, :cond_1f

    goto :goto_25

    :cond_1f
    and-int/lit16 v2, p2, 0x2000

    if-eqz v2, :cond_24

    goto :goto_25

    :cond_24
    move p2, v1

    :goto_25
    if-eqz p2, :cond_34

    .line 7415
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v1, Landroid/content/pm/UserInfo;->flags:I

    or-int/2addr p2, v2

    iput p2, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 7416
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mwriteUserLP(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    const/4 v1, 0x1

    .line 7421
    :cond_34
    monitor-exit v0

    return v1

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public setForceEphemeralUsers(Z)V
    .registers 3

    .line 7068
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7069
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fputmForceEphemeralUsers(Lcom/android/server/pm/UserManagerService;Z)V

    .line 7070
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 9

    .line 7049
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7051
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmPackagesLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_4d

    .line 7052
    :try_start_b
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserDataNoChecks(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 7053
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_1a

    goto :goto_2e

    .line 7057
    :cond_1a
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v5, v4, p2}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mwriteBitmapLP(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    .line 7058
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p2, v3}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mwriteUserLP(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 7059
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_4a

    .line 7060
    :try_start_25
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$msendUserInfoChangedBroadcast(Lcom/android/server/pm/UserManagerService;I)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_4d

    .line 7062
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2e
    :goto_2e
    :try_start_2e
    const-string p0, "UserManagerService"

    .line 7054
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUserIcon: unknown user #"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7055
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_4a

    .line 7062
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4a
    move-exception p0

    .line 7059
    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p0

    .line 7062
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7063
    throw p0
.end method

.method public setUserManaged(IZ)V
    .registers 4

    .line 7035
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7036
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmIsUserManaged(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 7037
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public setUserState(II)V
    .registers 4

    .line 7142
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v0

    monitor-enter v0

    .line 7143
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->put(II)V

    .line 7144
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public setVolatiles(II)Z
    .registers 4

    .line 7430
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7431
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz p0, :cond_23

    .line 7433
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getVolatiles()I

    move-result p1

    .line 7434
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/content/pm/UserInfo;->setVolatiles(I)V

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    .line 7437
    :goto_24
    monitor-exit v0

    return p0

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public shouldIgnorePrepareStorageErrors(I)Z
    .registers 3

    .line 7393
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7394
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz p0, :cond_1d

    .line 7395
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$UserData;->getIgnorePrepareStorageErrors()Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    monitor-exit v0

    return p0

    :catchall_20
    move-exception p0

    .line 7396
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw p0
.end method
