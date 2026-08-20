.class public final Lcom/android/server/uri/UriGrantsManagerService$LocalService;
.super Ljava/lang/Object;
.source "UriGrantsManagerService.java"

# interfaces
.implements Lcom/android/server/uri/UriGrantsManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uri/UriGrantsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/uri/UriGrantsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 2

    .line 1461
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;)V

    return-void
.end method


# virtual methods
.method public checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z
    .registers 6

    .line 1548
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1549
    :try_start_7
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mcheckAuthorityGrantsLocked(Lcom/android/server/uri/UriGrantsManagerService;ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 1551
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 14

    .line 1487
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const-string v1, "checkGrantUriPermission"

    invoke-static {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$menforceNotIsolatedCaller(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V

    .line 1488
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mcheckGrantUriPermissionUnlocked(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/net/Uri;II)I

    move-result p0

    return p0
.end method

.method public checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;
    .registers 13

    if-eqz p1, :cond_7

    .line 1495
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move v5, v0

    .line 1496
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const/4 v6, 0x0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mcheckGrantUriPermissionFromIntentUnlocked(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object p0

    return-object p0
.end method

.method public checkUriPermission(Lcom/android/server/uri/GrantUri;II)Z
    .registers 5

    .line 1478
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1479
    :try_start_7
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mcheckUriPermissionLocked(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 1481
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 12

    .line 1556
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1559
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v1}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_96

    const/4 v1, -0x2

    if-eqz p3, :cond_22

    .line 1563
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    iget-object v1, v1, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v3, 0x400000

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    :cond_22
    move p3, v2

    move v3, p3

    move v4, v3

    .line 1566
    :goto_25
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v5}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_95

    .line 1567
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v5}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    const/4 v6, -0x1

    if-lt v1, v6, :cond_45

    .line 1568
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-eq v6, v1, :cond_45

    goto :goto_92

    .line 1571
    :cond_45
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v6}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v6

    .line 1572
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    const/4 v7, 0x1

    if-nez v3, :cond_61

    if-eqz v4, :cond_59

    .line 1574
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_59
    const-string p3, "  Granted Uri Permissions:"

    .line 1576
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v7

    move v3, p3

    move v4, v3

    :cond_61
    const-string v7, "  * UID "

    .line 1580
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " holds:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_76
    :goto_76
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_92

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    const-string v7, "    "

    .line 1582
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p2, :cond_76

    const-string v7, "      "

    .line 1584
    invoke-virtual {v6, p1, v7}, Lcom/android/server/uri/UriPermission;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_76

    :cond_92
    :goto_92
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_95
    move v2, p3

    :cond_96
    if-nez v2, :cond_9d

    const-string p0, "  (nothing)"

    .line 1591
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1593
    :cond_9d
    monitor-exit v0

    return-void

    :catchall_9f
    move-exception p0

    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_7 .. :try_end_a1} :catchall_9f

    throw p0
.end method

.method public grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 3

    .line 1503
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mgrantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    return-void
.end method

.method public newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 4

    .line 1515
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const-string v1, "newUriPermissionOwner"

    invoke-static {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$menforceNotIsolatedCaller(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V

    .line 1516
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner;

    invoke-direct {v0, p0, p1}, Lcom/android/server/uri/UriPermissionOwner;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V

    .line 1517
    invoke-virtual {v0}, Lcom/android/server/uri/UriPermissionOwner;->getExternalToken()Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public onSystemReady()V
    .registers 2

    .line 1508
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1509
    :try_start_7
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {p0}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mreadGrantedUriPermissionsLocked(Lcom/android/server/uri/UriGrantsManagerService;)V

    .line 1510
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V
    .registers 3

    .line 1464
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1465
    :try_start_7
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mremoveUriPermissionIfNeededLocked(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriPermission;)V

    .line 1466
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public removeUriPermissionsForPackage(Ljava/lang/String;IZZ)V
    .registers 6

    .line 1523
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1524
    :try_start_7
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mremoveUriPermissionsForPackageLocked(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;IZZ)V

    .line 1526
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .registers 5

    .line 1472
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mrevokeUriPermission(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V

    return-void
.end method

.method public revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1531
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;IILjava/lang/String;I)V

    return-void
.end method

.method public revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;IILjava/lang/String;I)V
    .registers 7

    .line 1537
    invoke-static {p1}, Lcom/android/server/uri/UriPermissionOwner;->fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;

    move-result-object p0

    if-eqz p0, :cond_13

    if-nez p2, :cond_a

    const/4 p1, 0x0

    goto :goto_f

    .line 1541
    :cond_a
    new-instance p1, Lcom/android/server/uri/GrantUri;

    invoke-direct {p1, p4, p2, p3}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    .line 1542
    :goto_f
    invoke-virtual {p0, p1, p3, p5, p6}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(Lcom/android/server/uri/GrantUri;ILjava/lang/String;I)V

    return-void

    .line 1539
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown owner: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
