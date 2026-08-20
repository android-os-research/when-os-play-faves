.class public Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;
.super Ljava/lang/Object;
.source "LauncherAppsService.java"

# interfaces
.implements Landroid/content/pm/LauncherApps$ShortcutChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutChangeHandler"
.end annotation


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/IShortcutChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerInternal;)V
    .registers 3

    .line 1491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1495
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 1492
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method

.method public static filterShortcutsByQuery(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/ShortcutQueryWrapper;Z)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/content/pm/ShortcutQueryWrapper;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1559
    invoke-virtual {p2}, Landroid/content/pm/ShortcutQueryWrapper;->getChangedSince()J

    move-result-wide v0

    .line 1560
    invoke-virtual {p2}, Landroid/content/pm/ShortcutQueryWrapper;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 1561
    invoke-virtual {p2}, Landroid/content/pm/ShortcutQueryWrapper;->getShortcutIds()Ljava/util/List;

    move-result-object v3

    .line 1562
    invoke-virtual {p2}, Landroid/content/pm/ShortcutQueryWrapper;->getLocusIds()Ljava/util/List;

    move-result-object v4

    .line 1563
    invoke-virtual {p2}, Landroid/content/pm/ShortcutQueryWrapper;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 1564
    invoke-virtual {p2}, Landroid/content/pm/ShortcutQueryWrapper;->getQueryFlags()I

    move-result p2

    if-eqz v2, :cond_22

    .line 1566
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    const/4 p0, 0x0

    return-object p0

    .line 1570
    :cond_22
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v2, p2, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_2f

    move v2, v6

    goto :goto_30

    :cond_2f
    move v2, v7

    :goto_30
    and-int/lit8 v8, p2, 0x2

    if-eqz v8, :cond_36

    move v8, v6

    goto :goto_37

    :cond_36
    move v8, v7

    :goto_37
    and-int/lit8 v9, p2, 0x8

    if-eqz v9, :cond_3d

    move v9, v6

    goto :goto_3e

    :cond_3d
    move v9, v7

    :goto_3e
    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_43

    goto :goto_44

    :cond_43
    move v6, v7

    :goto_44
    if-eqz v8, :cond_48

    const/4 p2, 0x2

    goto :goto_49

    :cond_48
    move p2, v7

    :goto_49
    or-int/2addr p2, v2

    if-eqz v9, :cond_4f

    const/16 v2, 0x20

    goto :goto_50

    :cond_4f
    move v2, v7

    :goto_50
    or-int/2addr p2, v2

    if-eqz v6, :cond_57

    const v2, 0x60004000

    goto :goto_58

    :cond_57
    move v2, v7

    :goto_58
    or-int/2addr p2, v2

    .line 1581
    :goto_59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_aa

    .line 1582
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    if-eqz v5, :cond_72

    .line 1584
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_72

    goto :goto_a7

    :cond_72
    const-wide/16 v8, 0x0

    cmp-long v6, v0, v8

    if-eqz v6, :cond_81

    .line 1587
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v8

    cmp-long v6, v0, v8

    if-lez v6, :cond_81

    goto :goto_a7

    :cond_81
    if-eqz v3, :cond_8e

    .line 1590
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8e

    goto :goto_a7

    :cond_8e
    if-eqz v4, :cond_9b

    .line 1593
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    goto :goto_a7

    :cond_9b
    if-nez p3, :cond_a4

    .line 1596
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v6

    and-int/2addr v6, p2

    if-eqz v6, :cond_a7

    .line 1597
    :cond_a4
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a7
    :goto_a7
    add-int/lit8 v7, v7, 0x1

    goto :goto_59

    :cond_aa
    return-object p0
.end method


# virtual methods
.method public declared-synchronized addShortcutChangeCallback(Landroid/content/pm/IShortcutChangeCallback;Landroid/content/pm/ShortcutQueryWrapper;Landroid/os/UserHandle;)V
    .registers 6

    monitor-enter p0

    .line 1500
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1501
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1502
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final hasUserAccess(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z
    .registers 5

    .line 1605
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1606
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne p2, p1, :cond_c

    const/4 p0, 0x1

    return p0

    .line 1609
    :cond_c
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/pm/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final onShortcutEvent(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            "Z)V"
        }
    .end annotation

    .line 1523
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_40

    .line 1526
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IShortcutChangeCallback;

    .line 1527
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 1529
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1531
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/os/UserHandle;

    if-eqz v4, :cond_26

    .line 1532
    invoke-virtual {p0, v4, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->hasUserAccess(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_3d

    .line 1538
    :cond_26
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/ShortcutQueryWrapper;

    invoke-static {p1, p2, v3, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->filterShortcutsByQuery(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/ShortcutQueryWrapper;Z)Ljava/util/List;

    move-result-object v3

    .line 1540
    invoke-static {v3}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_3d

    if-eqz p4, :cond_3a

    .line 1543
    :try_start_36
    invoke-interface {v2, p1, v3, p3}, Landroid/content/pm/IShortcutChangeCallback;->onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    goto :goto_3d

    .line 1545
    :cond_3a
    invoke-interface {v2, p1, v3, p3}, Landroid/content/pm/IShortcutChangeCallback;->onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3d

    :catch_3d
    :cond_3d
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1553
    :cond_40
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1512
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->onShortcutEvent(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1518
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->onShortcutEvent(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public declared-synchronized removeShortcutChangeCallback(Landroid/content/pm/IShortcutChangeCallback;)V
    .registers 3

    monitor-enter p0

    .line 1506
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1507
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
