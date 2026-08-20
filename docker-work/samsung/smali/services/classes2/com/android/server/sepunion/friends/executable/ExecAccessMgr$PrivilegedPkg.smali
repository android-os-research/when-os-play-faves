.class public Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;
.super Ljava/lang/Object;
.source "ExecAccessMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivilegedPkg"
.end annotation


# static fields
.field public static final TIME_INTERVAL:J = 0x1d4c0L


# instance fields
.field public final mFingerprint:[B

.field public mLastGrantedTime:J

.field public final mPkgName:Ljava/lang/String;

.field public final mPlatformKeyOnly:Z

.field public mUid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFingerprint(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mFingerprint:[B

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPkgName(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPlatformKeyOnly(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPlatformKeyOnly:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$misCachedGranted(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->isCachedGranted(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misGranted(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->isGranted(Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetCachedGranted(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->setCachedGranted(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[B)V
    .registers 4

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    .line 346
    iput-object p3, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mFingerprint:[B

    .line 347
    iput-boolean p2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPlatformKeyOnly:Z

    const/4 p1, -0x1

    .line 348
    iput p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mUid:I

    const-wide/16 p1, -0x1

    .line 349
    iput-wide p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Z[BLcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;-><init>(Ljava/lang/String;Z[B)V

    return-void
.end method


# virtual methods
.method public final isCachedGranted(Ljava/lang/String;I)Z
    .registers 12

    .line 355
    monitor-enter p0

    .line 356
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-lez v0, :cond_29

    .line 357
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v5, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    sub-long/2addr v2, v5

    .line 358
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    if-lez p2, :cond_29

    iget v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mUid:I

    if-ne v0, p2, :cond_29

    const-wide/32 v5, 0x1d4c0

    cmp-long v0, v2, v5

    if-gtz v0, :cond_29

    move v0, v1

    goto :goto_2a

    :cond_29
    move v0, v4

    .line 360
    :goto_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_53

    const-string p0, "ExecAccessMgr"

    const-string v5, "isCachedGranted %s %s %d %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 362
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, p1

    const/4 p1, 0x3

    const-wide/16 v7, 0x3e8

    div-long/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v6, p1

    invoke-static {p0, v5, v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0

    :catchall_53
    move-exception p1

    .line 360
    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public final isGranted(Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z
    .registers 7

    .line 381
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    const-string v0, "android"

    .line 382
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_23

    iget-boolean p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPlatformKeyOnly:Z

    if-nez p1, :cond_25

    if-eqz p3, :cond_25

    array-length p1, p3

    if-lez p1, :cond_25

    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mFingerprint:[B

    .line 384
    invoke-static {p0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_25

    :cond_23
    move p0, v1

    goto :goto_26

    :cond_25
    move p0, v2

    :goto_26
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 386
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p1, v2

    invoke-static {p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "ExecAccessMgr"

    const-string p3, "isGranted %s %s"

    invoke-static {p2, p3, p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return p0
.end method

.method public final setCachedGranted(I)V
    .registers 8

    .line 368
    monitor-enter p0

    .line 369
    :try_start_1
    iput p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mUid:I

    if-lez p1, :cond_f

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    const-wide/16 v2, 0x3e8

    .line 372
    div-long/2addr v0, v2

    goto :goto_11

    :cond_f
    const-wide/16 v0, -0x1

    .line 375
    :goto_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_35

    const-string v2, "ExecAccessMgr"

    const-string/jumbo v3, "setCachedGranted %d %s %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 377
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, p1

    const/4 p0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, p0

    invoke-static {v2, v3, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :catchall_35
    move-exception p1

    .line 375
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p1
.end method
