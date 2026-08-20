.class public final Lcom/android/server/notification/PermissionHelper;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/PermissionHelper$PackagePermission;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_PERMISSION:Ljava/lang/String; = "android.permission.POST_NOTIFICATIONS"

.field public static final TAG:Ljava/lang/String; = "PermissionHelper"


# instance fields
.field public final mPackageManager:Landroid/content/pm/IPackageManager;

.field public final mPermManager:Landroid/permission/IPermissionManager;

.field public final mPmi:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/pm/IPackageManager;Landroid/permission/IPermissionManager;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/notification/PermissionHelper;->mPmi:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 62
    iput-object p2, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 63
    iput-object p3, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    return-void
.end method


# virtual methods
.method public getAppsGrantedPermission(I)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 129
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {p0, v1, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_1d

    :catch_14
    move-exception p0

    const-string p1, "PermissionHelper"

    const-string v1, "Could not reach system server"

    .line 132
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_1d
    if-nez p0, :cond_20

    return-object v0

    .line 137
    :cond_20
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 138
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_47
    return-object v0
.end method

.method public getAppsRequestingPermission(I)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/notification/PermissionHelper;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 91
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 95
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v1, :cond_1e

    goto :goto_d

    .line 98
    :cond_1e
    array-length v2, v1

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_d

    aget-object v4, v1, v3

    const-string v5, "android.permission.POST_NOTIFICATIONS"

    .line 99
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 100
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_42
    return-object v0
.end method

.method public final getInstalledPackages(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 111
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v0, 0x1000

    invoke-interface {p0, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    move-exception p0

    const-string p1, "PermissionHelper"

    const-string v0, "Could not reach system server"

    .line 113
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_12
    if-nez p0, :cond_19

    .line 116
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 118
    :cond_19
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationPermissionValues(I)Landroid/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 147
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/server/notification/PermissionHelper;->getAppsRequestingPermission(I)Ljava/util/Set;

    move-result-object v1

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/notification/PermissionHelper;->getAppsGrantedPermission(I)Ljava/util/Set;

    move-result-object v2

    .line 150
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 151
    new-instance v4, Landroid/util/Pair;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 152
    invoke-virtual {p0, v6, p1}, Lcom/android/server/notification/PermissionHelper;->isPermissionUserSet(Ljava/lang/String;I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_3a
    return-object v0
.end method

.method public hasPermission(I)Z
    .registers 4

    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 74
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPmi:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPostNotificationsPermissionGrantedOrLegacyAccess(I)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_13

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 80
    :goto_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    throw p0
.end method

.method public isPermissionFixed(Ljava/lang/String;I)Z
    .registers 7

    .line 266
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 269
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {p0, p1, v3, p2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1c
    .catchall {:try_start_5 .. :try_end_d} :catchall_1a

    and-int/lit8 p1, p0, 0x10

    if-nez p1, :cond_15

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_16

    :cond_15
    const/4 v2, 0x1

    .line 278
    :cond_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_1a
    move-exception p0

    goto :goto_28

    :catch_1c
    move-exception p0

    :try_start_1d
    const-string p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    .line 274
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    .line 278
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    throw p0
.end method

.method public isPermissionGrantedByDefaultOrRole(Ljava/lang/String;I)Z
    .registers 7

    .line 300
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 303
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {p0, p1, v3, p2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1a
    .catchall {:try_start_5 .. :try_end_d} :catchall_18

    const p1, 0x8020

    and-int/2addr p0, p1

    if-eqz p0, :cond_14

    const/4 v2, 0x1

    .line 312
    :cond_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_18
    move-exception p0

    goto :goto_26

    :catch_1a
    move-exception p0

    :try_start_1b
    const-string p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    .line 308
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    .line 312
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 313
    throw p0
.end method

.method public isPermissionUserSet(Ljava/lang/String;I)Z
    .registers 7

    .line 283
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 286
    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {p0, p1, v3, p2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_18
    .catchall {:try_start_5 .. :try_end_d} :catchall_16

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_12

    const/4 v2, 0x1

    .line 295
    :cond_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_16
    move-exception p0

    goto :goto_24

    :catch_18
    move-exception p0

    :try_start_19
    const-string p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    .line 291
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    .line 295
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    throw p0
.end method

.method public final packageRequestsNotificationPermission(Ljava/lang/String;I)Z
    .registers 5

    .line 320
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v0, 0x1000

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 323
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string p1, "android.permission.POST_NOTIFICATIONS"

    .line 324
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return p0

    :catch_13
    move-exception p0

    const-string p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    .line 332
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public setNotificationPermission(Lcom/android/server/notification/PermissionHelper$PackagePermission;)V
    .registers 5

    if-eqz p1, :cond_19

    .line 244
    iget-object v0, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_19

    .line 247
    :cond_7
    iget v1, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 248
    iget-object v0, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    iget-boolean p1, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;IZZ)V

    :cond_19
    :goto_19
    return-void
.end method

.method public setNotificationPermission(Ljava/lang/String;IZZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 166
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;IZZZ)V

    return-void
.end method

.method public setNotificationPermission(Ljava/lang/String;IZZZ)V
    .registers 21

    move-object v1, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v2, p3

    move/from16 v3, p5

    const-string v11, "Could not reach system server"

    const-string v12, "PermissionHelper"

    .line 172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 177
    :try_start_11
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PermissionHelper;->packageRequestsNotificationPermission(Ljava/lang/String;I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_10a
    .catchall {:try_start_11 .. :try_end_15} :catchall_108

    const-string/jumbo v4, "pkg = "

    if-eqz v0, :cond_ed

    .line 178
    :try_start_1a
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_ed

    .line 179
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PermissionHelper;->isPermissionGrantedByDefaultOrRole(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz p4, :cond_ed

    :cond_28
    const-string v0, "com.sec.android.easyMover"

    .line 180
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2e} :catch_10a
    .catchall {:try_start_1a .. :try_end_2e} :catchall_108

    if-eqz v0, :cond_32

    goto/16 :goto_ed

    :cond_32
    const/4 v5, -0x1

    .line 191
    :try_start_33
    iget-object v0, v1, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v6, 0x0

    invoke-interface {v0, v9, v6, v7, v10}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3b} :catch_3c
    .catchall {:try_start_33 .. :try_end_3b} :catchall_108

    goto :goto_40

    :catch_3c
    move-exception v0

    .line 193
    :try_start_3d
    invoke-static {v12, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    :goto_40
    invoke-virtual {p0, v5}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v0

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", currentlyGranted = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reviewRequired = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", grant = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_7b} :catch_10a
    .catchall {:try_start_3d .. :try_end_7b} :catchall_108

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    if-nez v3, :cond_c1

    if-eqz v2, :cond_89

    if-nez v0, :cond_89

    .line 202
    :try_start_83
    iget-object v0, v1, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, v9, v4, v10}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_92

    :cond_89
    if-nez v2, :cond_92

    if-eqz v0, :cond_92

    .line 204
    iget-object v0, v1, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, v9, v4, v10, v12}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_92
    :goto_92
    if-eqz p4, :cond_b2

    .line 208
    iget-object v2, v1, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v3, p1

    move/from16 v8, p2

    invoke-interface/range {v2 .. v8}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V

    .line 212
    iget-object v1, v1, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    const/16 v4, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move/from16 v7, p2

    invoke-interface/range {v1 .. v7}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V

    goto :goto_10e

    .line 216
    :cond_b2
    iget-object v1, v1, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move/from16 v7, p2

    invoke-interface/range {v1 .. v7}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V

    goto :goto_10e

    :cond_c1
    if-nez v2, :cond_ca

    if-eqz v0, :cond_ca

    .line 221
    iget-object v3, v1, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    invoke-interface {v3, v9, v4, v10, v12}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_ca
    if-eqz v2, :cond_10e

    if-nez v0, :cond_10e

    .line 225
    iget-object v2, v1, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p1

    move/from16 v8, p2

    invoke-interface/range {v2 .. v8}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V

    .line 227
    iget-object v1, v1, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    const/16 v4, 0x40

    const/16 v5, 0x40

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move/from16 v7, p2

    invoke-interface/range {v1 .. v7}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V

    goto :goto_10e

    .line 181
    :cond_ed
    :goto_ed
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", setNotificationPermission return!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_104} :catch_10a
    .catchall {:try_start_83 .. :try_end_104} :catchall_108

    .line 235
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_108
    move-exception v0

    goto :goto_112

    :catch_10a
    move-exception v0

    .line 233
    :try_start_10b
    invoke-static {v12, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_108

    .line 235
    :cond_10e
    :goto_10e
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_112
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 236
    throw v0
.end method

.method public setNotificationPermissionForRestore(Lcom/android/server/notification/PermissionHelper$PackagePermission;)V
    .registers 9

    if-eqz p1, :cond_1b

    .line 255
    iget-object v0, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_1b

    .line 258
    :cond_7
    iget v1, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 259
    iget-object v2, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    iget-boolean v4, p1, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;IZZZ)V

    :cond_1b
    :goto_1b
    return-void
.end method
