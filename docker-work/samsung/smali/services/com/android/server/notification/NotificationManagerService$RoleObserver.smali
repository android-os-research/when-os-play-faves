.class public Lcom/android/server/notification/NotificationManagerService$RoleObserver;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoleObserver"
.end annotation


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mMainLooper:Landroid/os/Looper;

.field public mNonBlockableDefaultApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final mPm:Landroid/content/pm/IPackageManager;

.field public final mRm:Landroid/app/role/RoleManager;

.field public volatile mTrampolineExemptUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Landroid/app/role/RoleManager;Landroid/content/pm/IPackageManager;Landroid/os/Looper;)V
    .registers 6

    .line 13436
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13428
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mTrampolineExemptUids:Landroid/util/ArraySet;

    .line 13437
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    .line 13438
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mPm:Landroid/content/pm/IPackageManager;

    .line 13439
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 13440
    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mMainLooper:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final getUidForPackage(Ljava/lang/String;I)I
    .registers 5

    .line 13576
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mPm:Landroid/content/pm/IPackageManager;

    const-wide/32 v0, 0x20000

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    .line 13578
    :catch_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "role manager has bad default "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public init()V
    .registers 13

    .line 13446
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUm(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v0

    .line 13447
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    move v2, v1

    .line 13448
    :goto_14
    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_90

    .line 13449
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 13450
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    aget-object v3, v3, v2

    invoke-virtual {v5, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v1

    .line 13451
    :goto_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_8d

    .line 13452
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 13453
    new-instance v6, Landroid/util/ArraySet;

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    sget-object v8, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    aget-object v8, v8, v2

    .line 13454
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 13453
    invoke-virtual {v7, v8, v9}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 13455
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 13456
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 13457
    new-instance v10, Landroid/util/Pair;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v9, v11}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->getUidForPackage(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 13459
    :cond_7b
    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13460
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8, v7}, Lcom/android/server/notification/PreferencesHelper;->updateDefaultApps(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_8d
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_90
    new-array v1, v1, [Landroid/os/UserHandle;

    .line 13463
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->updateTrampolineExemptUidsForUsers([Landroid/os/UserHandle;)V

    .line 13464
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    return-void
.end method

.method public isApprovedPackageForRoleForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 13469
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isUidExemptFromTrampolineRestrictions(I)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 13474
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mTrampolineExemptUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    .line 13486
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->onRoleHoldersChangedForNonBlockableDefaultApps(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 13487
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->onRoleHoldersChangedForTrampolines(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final onRoleHoldersChangedForNonBlockableDefaultApps(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    .line 13494
    :goto_2
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 13495
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v0, 0x1

    goto :goto_14

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    :goto_14
    if-nez v0, :cond_17

    return-void

    .line 13505
    :cond_17
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    invoke-virtual {v1, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 13508
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 13509
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 13511
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 13513
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 13514
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 13516
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_50
    :goto_50
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 13517
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_50

    .line 13518
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 13521
    :cond_66
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6a
    :goto_6a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 13522
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6a

    .line 13523
    new-instance v7, Landroid/util/Pair;

    .line 13524
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p0, v6, v8}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->getUidForPackage(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13523
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 13529
    :cond_91
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13530
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13533
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/notification/PreferencesHelper;->updateDefaultApps(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V

    return-void
.end method

.method public final onRoleHoldersChangedForTrampolines(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    const-string v0, "android.app.role.BROWSER"

    .line 13541
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/os/UserHandle;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 13544
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->updateTrampolineExemptUidsForUsers([Landroid/os/UserHandle;)V

    return-void
.end method

.method public final varargs updateTrampolineExemptUidsForUsers([Landroid/os/UserHandle;)V
    .registers 10

    .line 13548
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 13549
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mTrampolineExemptUids:Landroid/util/ArraySet;

    .line 13550
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 13552
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_16
    if-ge v4, v2, :cond_3a

    .line 13553
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 13554
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 13555
    invoke-static {p1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    .line 13556
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 13560
    :cond_3a
    array-length v0, p1

    :goto_3b
    if-ge v3, v0, :cond_84

    .line 13561
    aget-object v2, p1, v3

    .line 13562
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    const-string v5, "android.app.role.BROWSER"

    invoke-virtual {v4, v5, v2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 13563
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->getUidForPackage(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6a

    .line 13565
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 13567
    :cond_6a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad uid (-1) for browser package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NotificationService"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 13571
    :cond_84
    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mTrampolineExemptUids:Landroid/util/ArraySet;

    return-void
.end method
