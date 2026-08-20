.class public final Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;
.super Landroid/permission/IPermissionChecker$Stub;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionCheckerService"
.end annotation


# static fields
.field public static final sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public final mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;


# direct methods
.method public static bridge synthetic -$$Nest$smfinishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 1095
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1098
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1104
    invoke-direct {p0}, Landroid/permission/IPermissionChecker$Stub;-><init>()V

    .line 1105
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    .line 1106
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1107
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 1108
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-void
.end method

.method public static checkAppOpPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .registers 31

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    .line 1281
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v16

    const/4 v11, 0x2

    if-gez v16, :cond_2d

    .line 1283
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Appop permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with no app op defined!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_2d
    const/4 v0, 0x0

    move-object v3, v12

    :goto_2f
    const/16 v17, 0x0

    const/4 v10, 0x1

    if-nez p6, :cond_3a

    if-eqz v0, :cond_37

    goto :goto_3a

    :cond_37
    move/from16 v18, v17

    goto :goto_3c

    :cond_3a
    :goto_3a
    move/from16 v18, v10

    .line 1293
    :goto_3c
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v19

    if-eqz p6, :cond_48

    .line 1297
    invoke-virtual {v3, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    :cond_48
    if-eqz v19, :cond_51

    .line 1298
    invoke-virtual {v3, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_51

    return v11

    :cond_51
    if-eqz p6, :cond_63

    .line 1306
    invoke-virtual {v3, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    if-eqz v19, :cond_63

    .line 1307
    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_63

    move v9, v10

    goto :goto_65

    :cond_63
    move/from16 v9, v17

    :goto_65
    if-nez v9, :cond_6d

    if-nez v19, :cond_6a

    goto :goto_6d

    :cond_6a
    move/from16 v8, v17

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v8, v10

    .line 1310
    :goto_6e
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v6, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, v18

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v22

    move/from16 v13, v23

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9d

    move-object/from16 v3, p2

    goto :goto_c3

    :cond_9d
    if-nez v18, :cond_b0

    .line 1324
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 1325
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v3, p2

    .line 1323
    invoke-static {v14, v15, v3, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_b2

    return v1

    :cond_b0
    move-object/from16 v3, p2

    :cond_b2
    if-eqz v19, :cond_c3

    .line 1329
    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v2

    .line 1328
    invoke-static {v14, v15, v3, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_c3

    return v1

    :cond_c3
    :goto_c3
    if-eqz v19, :cond_d5

    .line 1335
    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_cc

    goto :goto_d5

    :cond_cc
    move-object/from16 v12, p3

    move v11, v1

    move-object v13, v3

    move-object/from16 v0, v19

    move-object v3, v0

    goto/16 :goto_2f

    :cond_d5
    :goto_d5
    return v17

    :cond_d6
    const/4 v1, 0x2

    :cond_d7
    return v1
.end method

.method public static checkOp(Landroid/content/Context;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .registers 31

    move-object/from16 v14, p0

    move-object/from16 v15, p3

    const/4 v13, 0x2

    if-ltz p1, :cond_de

    .line 1524
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    goto/16 :goto_de

    :cond_f
    move/from16 v12, p6

    .line 1529
    invoke-static {v12, v15}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->getAttributionChainId(ZLandroid/content/AttributionSource;)I

    move-result v11

    const/4 v0, -0x1

    const/4 v10, 0x1

    const/16 v16, 0x0

    if-eq v11, v0, :cond_1e

    move/from16 v17, v10

    goto :goto_20

    :cond_1e
    move/from16 v17, v16

    :goto_20
    const/4 v0, 0x0

    if-eqz v17, :cond_39

    .line 1538
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    .line 1539
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v2

    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    move-object/from16 v4, p2

    .line 1537
    invoke-static {v14, v4, v3, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_39

    :cond_36
    move/from16 v18, v16

    goto :goto_3b

    :cond_39
    :goto_39
    move/from16 v18, v10

    :goto_3b
    move-object v6, v15

    :goto_3c
    if-eqz v0, :cond_40

    move v7, v10

    goto :goto_42

    :cond_40
    move/from16 v7, v16

    .line 1543
    :goto_42
    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v9

    if-eqz v9, :cond_4f

    .line 1547
    invoke-virtual {v6, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4f

    return v13

    :cond_4f
    if-nez v9, :cond_53

    move v8, v10

    goto :goto_55

    :cond_53
    move/from16 v8, v16

    :goto_55
    if-eqz v18, :cond_6e

    .line 1554
    invoke-virtual {v6, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {v6, v15}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_63
    if-eqz v9, :cond_6b

    .line 1555
    invoke-virtual {v9, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_6b
    move/from16 v19, v10

    goto :goto_70

    :cond_6e
    move/from16 v19, v16

    :goto_70
    if-nez v7, :cond_84

    if-eqz v17, :cond_84

    const/4 v2, 0x0

    move-object/from16 v0, p3

    move-object v1, v6

    move/from16 v3, p6

    move v4, v8

    move/from16 v5, v19

    .line 1558
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    move/from16 v20, v0

    goto :goto_86

    :cond_84
    move/from16 v20, v16

    :goto_86
    if-eqz v17, :cond_98

    const/4 v2, 0x0

    move-object/from16 v0, p3

    move-object v1, v9

    move/from16 v3, p6

    move v4, v8

    move/from16 v5, v19

    .line 1561
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    move/from16 v19, v0

    goto :goto_9a

    :cond_98
    move/from16 v19, v16

    .line 1565
    :goto_9a
    invoke-virtual {v6}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/16 v21, 0x0

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object v3, v6

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v23, v9

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v21, v11

    move/from16 v11, v20

    move/from16 v12, v19

    move v14, v13

    move/from16 v13, v21

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_dd

    if-eq v0, v14, :cond_dc

    if-eqz v23, :cond_db

    .line 1579
    invoke-virtual/range {v23 .. v23}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_ce

    goto :goto_db

    :cond_ce
    move/from16 v12, p6

    move v10, v1

    move v13, v14

    move/from16 v11, v21

    move-object/from16 v0, v23

    move-object v6, v0

    move-object/from16 v14, p0

    goto/16 :goto_3c

    :cond_db
    :goto_db
    return v16

    :cond_dc
    return v14

    :cond_dd
    return v1

    :cond_de
    :goto_de
    move v14, v13

    return v14
.end method

.method public static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .registers 18

    move-object v2, p2

    .line 1236
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_24

    .line 1240
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    const-string v5, "android"

    .line 1241
    iget-object v6, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1244
    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_22} :catch_23

    goto :goto_24

    :catch_23
    return v3

    .line 1251
    :cond_24
    :goto_24
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->isAppOp()Z

    move-result v0

    if-eqz v0, :cond_37

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p7

    .line 1252
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkAppOpPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result v0

    return v0

    .line 1255
    :cond_37
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1256
    invoke-static/range {p0 .. p8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkRuntimePermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v0

    return v0

    :cond_42
    if-nez p7, :cond_55

    .line 1262
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 1263
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    move-object v5, p0

    move-object v6, p1

    .line 1261
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_57

    return v3

    :cond_55
    move-object v5, p0

    move-object v6, p1

    .line 1267
    :cond_57
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 1269
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v8, p8

    .line 1268
    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v0

    return v0

    :cond_6f
    return v4
.end method

.method public static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1448
    invoke-virtual {p0, p2, v0, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    :goto_c
    if-nez v1, :cond_3b

    .line 1456
    invoke-static {p3}, Landroid/os/Process;->isIsolated(I)Z

    move-result v4

    if-eqz v4, :cond_3b

    const-string v4, "android.permission.RECORD_AUDIO"

    .line 1457
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, "android.permission.CAPTURE_AUDIO_OUTPUT"

    .line 1458
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1460
    :cond_2c
    invoke-interface {p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 1462
    invoke-interface {p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;->getUid()I

    move-result p1

    if-ne p3, p1, :cond_39

    goto :goto_3a

    :cond_39
    move v2, v3

    :goto_3a
    move v1, v2

    :cond_3b
    if-eqz v1, :cond_4c

    .line 1465
    invoke-interface {p4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    const-string p1, "android.permission.RENOUNCE_PERMISSIONS"

    .line 1466
    invoke-virtual {p0, p1, v0, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_4c

    return v3

    :cond_4c
    return v1
.end method

.method public static checkRuntimePermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .registers 36

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move/from16 v11, p6

    move/from16 v10, p7

    .line 1349
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v9

    .line 1351
    invoke-static {v11, v12}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->getAttributionChainId(ZLandroid/content/AttributionSource;)I

    move-result v8

    const/4 v7, 0x1

    const/16 v16, 0x0

    const/4 v0, -0x1

    if-eq v8, v0, :cond_1d

    move/from16 v17, v7

    goto :goto_1f

    :cond_1d
    move/from16 v17, v16

    :goto_1f
    const/4 v0, 0x0

    if-eqz v17, :cond_36

    .line 1358
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    .line 1359
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v2

    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    .line 1357
    invoke-static {v14, v15, v3, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_36

    :cond_33
    move/from16 v18, v16

    goto :goto_38

    :cond_36
    :goto_36
    move/from16 v18, v7

    :goto_38
    move-object v6, v12

    :goto_39
    if-nez v10, :cond_41

    if-eqz v0, :cond_3e

    goto :goto_41

    :cond_3e
    move/from16 v19, v16

    goto :goto_43

    :cond_41
    :goto_41
    move/from16 v19, v7

    .line 1363
    :goto_43
    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    const/4 v4, 0x2

    if-eqz v10, :cond_50

    .line 1367
    invoke-virtual {v6, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    :cond_50
    if-eqz v5, :cond_59

    .line 1368
    invoke-virtual {v6, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_59

    return v4

    :cond_59
    if-nez v19, :cond_6a

    .line 1374
    invoke-virtual {v6}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 1373
    invoke-static {v14, v15, v13, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_6a

    return v4

    :cond_6a
    if-eqz v5, :cond_7b

    .line 1379
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 1378
    invoke-static {v14, v15, v13, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_7b

    return v4

    :cond_7b
    if-gez v9, :cond_be

    .line 1385
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 1386
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    const-string v0, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 1387
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 1388
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Platform runtime permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with no app op defined!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    if-nez v5, :cond_b5

    return v16

    :cond_b5
    move-object/from16 v23, v5

    move v15, v7

    move/from16 v19, v8

    move v2, v9

    move v1, v10

    goto/16 :goto_17f

    :cond_be
    if-eqz v10, :cond_d1

    .line 1402
    invoke-virtual {v6, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    if-eqz v5, :cond_d1

    .line 1403
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_d1

    move/from16 v20, v7

    goto :goto_d3

    :cond_d1
    move/from16 v20, v16

    :goto_d3
    if-nez v20, :cond_db

    if-nez v5, :cond_d8

    goto :goto_db

    :cond_d8
    move/from16 v21, v16

    goto :goto_dd

    :cond_db
    :goto_db
    move/from16 v21, v7

    :goto_dd
    if-eqz v18, :cond_f6

    .line 1406
    invoke-virtual {v6, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_eb

    invoke-virtual {v6, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    :cond_eb
    if-eqz v5, :cond_f3

    .line 1407
    invoke-virtual {v5, v14}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f6

    :cond_f3
    move/from16 v22, v7

    goto :goto_f8

    :cond_f6
    move/from16 v22, v16

    :goto_f8
    if-nez v19, :cond_111

    if-eqz v17, :cond_111

    move-object/from16 v0, p3

    move-object v1, v6

    move/from16 v2, p7

    move/from16 v3, p6

    move v15, v4

    move/from16 v4, v21

    move-object/from16 v23, v5

    move/from16 v5, v22

    .line 1410
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    move/from16 v24, v0

    goto :goto_116

    :cond_111
    move v15, v4

    move-object/from16 v23, v5

    move/from16 v24, v16

    :goto_116
    if-eqz v17, :cond_12b

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move/from16 v2, p7

    move/from16 v3, p6

    move/from16 v4, v21

    move/from16 v5, v22

    .line 1413
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    move/from16 v22, v0

    goto :goto_12d

    :cond_12b
    move/from16 v22, v16

    .line 1417
    :goto_12d
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    move-object/from16 v0, p0

    move v2, v9

    move-object v3, v6

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v25, v6

    move/from16 v6, p6

    move v15, v7

    move/from16 v7, v19

    move/from16 v19, v8

    move/from16 v8, v21

    move/from16 v26, v9

    move/from16 v9, v20

    move/from16 v10, p8

    move/from16 v11, v24

    move/from16 v12, v22

    move/from16 v13, v19

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    if-eq v0, v15, :cond_194

    const/4 v1, 0x2

    if-eq v0, v1, :cond_192

    if-eqz p6, :cond_172

    .line 1432
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    move/from16 v1, p7

    move-object/from16 v12, v25

    move/from16 v2, v26

    invoke-direct {v0, v14, v2, v12, v1}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;-><init>(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V

    .line 1434
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v12}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_176

    :cond_172
    move/from16 v1, p7

    move/from16 v2, v26

    :goto_176
    if-eqz v23, :cond_191

    .line 1437
    invoke-virtual/range {v23 .. v23}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_17f

    goto :goto_191

    :cond_17f
    :goto_17f
    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move/from16 v11, p6

    move v10, v1

    move v9, v2

    move v7, v15

    move/from16 v8, v19

    move-object/from16 v0, v23

    move-object v6, v0

    move-object/from16 v15, p1

    goto/16 :goto_39

    :cond_191
    :goto_191
    return v16

    :cond_192
    move v0, v1

    return v0

    :cond_194
    return v15
.end method

.method public static finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V
    .registers 13

    .line 1146
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_f

    return-void

    .line 1153
    :cond_f
    new-instance v1, Landroid/content/AttributionSource;

    invoke-direct {v1, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    const/4 v2, 0x0

    move-object v7, v1

    :goto_16
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_1f

    if-eqz v2, :cond_1d

    goto :goto_1f

    :cond_1d
    move v2, v1

    goto :goto_20

    :cond_1f
    :goto_1f
    move v2, v3

    .line 1159
    :goto_20
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v8

    if-eqz p3, :cond_2c

    .line 1163
    invoke-virtual {v7}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v4

    if-eq v4, p2, :cond_35

    :cond_2c
    if-eqz v8, :cond_35

    .line 1164
    invoke-virtual {v7, p0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_35

    return-void

    :cond_35
    if-eqz p3, :cond_47

    .line 1172
    invoke-virtual {v7}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v4

    if-ne v4, p2, :cond_47

    if-eqz v8, :cond_47

    .line 1173
    invoke-virtual {v8}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    if-nez v4, :cond_47

    move v4, v3

    goto :goto_48

    :cond_47
    move v4, v1

    :goto_48
    if-nez v4, :cond_4c

    if-nez v8, :cond_4d

    :cond_4c
    move v1, v3

    :cond_4d
    if-nez v4, :cond_51

    move-object v3, v7

    goto :goto_52

    :cond_51
    move-object v3, v8

    :goto_52
    if-eqz v1, :cond_6b

    .line 1180
    invoke-static {p0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5b

    return-void

    .line 1184
    :cond_5b
    iget-object v2, p2, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 1185
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    .line 1186
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move v3, p1

    .line 1184
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 1189
    :cond_6b
    invoke-static {p0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 1190
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_76

    return-void

    .line 1193
    :cond_76
    iget-object v3, p2, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 1194
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v4

    .line 1193
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/AppOpsManager;->finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V

    .line 1197
    :goto_7f
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 1198
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    if-eqz v1, :cond_92

    .line 1200
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    :cond_92
    if-eqz v8, :cond_9f

    .line 1203
    invoke-virtual {v8}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_9b

    goto :goto_9f

    :cond_9b
    move-object v2, v8

    move-object v7, v2

    goto/16 :goto_16

    :cond_9f
    :goto_9f
    if-eqz v8, :cond_b4

    .line 1205
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {v8}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    if-eqz p0, :cond_b4

    .line 1207
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    :cond_b4
    return-void
.end method

.method public static getAttributionChainId(ZLandroid/content/AttributionSource;)I
    .registers 3

    if-eqz p1, :cond_19

    .line 1753
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p1

    if-eqz p1, :cond_19

    if-nez p0, :cond_b

    goto :goto_19

    .line 1756
    :cond_b
    sget-object p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_18

    .line 1761
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move p1, v0

    :cond_18
    return p1

    :cond_19
    :goto_19
    const/4 p0, -0x1

    return p0
.end method

.method public static performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I
    .registers 35

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v14, p4

    move/from16 v15, p7

    move/from16 v2, p10

    .line 1599
    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/app/AppOpsManager;

    if-nez p9, :cond_19

    move-object v4, v3

    goto :goto_1d

    .line 1601
    :cond_19
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    :goto_1d
    const/4 v5, 0x2

    if-nez p5, :cond_4a

    .line 1603
    invoke-static {v0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_27

    return v5

    .line 1609
    :cond_27
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    .line 1608
    invoke-virtual {v13, v1, v3, v2}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 1610
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    if-nez p8, :cond_49

    if-nez v2, :cond_49

    if-eqz v3, :cond_49

    .line 1612
    invoke-static {v0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_40

    return v5

    .line 1616
    :cond_40
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {v13, v1, v2, v0}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0

    :cond_49
    return v2

    :cond_4a
    const-string v12, "android.permission.UPDATE_APP_OPS_STATS"

    const-string v11, " while not having "

    const-string v10, " protecting data with platform defined runtime permission "

    const-string v9, "Datasource "

    const-string v8, " with source "

    const-string v7, "Security exception for op "

    const/16 v16, 0x0

    const-string v6, ", "

    const-string v5, ":"

    if-eqz p6, :cond_1ac

    .line 1621
    invoke-static {v0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 1623
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6a

    const/4 v4, 0x2

    return v4

    :cond_6a
    const/4 v4, -0x1

    if-eq v2, v4, :cond_83

    if-eq v2, v1, :cond_83

    .line 1641
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    move-object/from16 p5, v5

    .line 1642
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1640
    invoke-virtual {v13, v1, v4, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_81

    return v4

    :cond_81
    move v5, v2

    goto :goto_88

    :cond_83
    move-object/from16 p5, v5

    move v5, v1

    move/from16 v4, v16

    :goto_88
    if-eqz p8, :cond_104

    .line 1652
    :try_start_8a
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v7

    .line 1653
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x0

    .line 1655
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v0
    :try_end_98
    .catch Ljava/lang/SecurityException; {:try_start_8a .. :try_end_98} :catch_b9

    move v6, v4

    move-object v4, v13

    move/from16 p0, v5

    move-object/from16 v5, p1

    move/from16 v17, v6

    move/from16 v6, p0

    move-object v14, v9

    move/from16 v9, v16

    move-object/from16 v18, v10

    move-object v10, v0

    move-object v0, v11

    move-object/from16 v11, p4

    move-object/from16 v19, v12

    move/from16 v12, p11

    move-object/from16 p6, v13

    move/from16 v13, p13

    .line 1650
    :try_start_b3
    invoke-virtual/range {v4 .. v13}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_b7
    .catch Ljava/lang/SecurityException; {:try_start_b3 .. :try_end_b7} :catch_c3

    goto/16 :goto_124

    :catch_b9
    move/from16 v17, v4

    move-object v14, v9

    move-object/from16 v18, v10

    move-object v0, v11

    move-object/from16 v19, v12

    move-object/from16 p6, v13

    .line 1658
    :catch_c3
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v18

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v19

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1658
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move/from16 v2, p10

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p7

    move/from16 v6, p11

    move/from16 v7, p12

    move/from16 v8, p13

    .line 1662
    invoke-virtual/range {v0 .. v8}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v0

    goto :goto_124

    :cond_104
    move/from16 v17, v4

    move/from16 p0, v5

    move-object/from16 p6, v13

    move-object/from16 v4, p6

    move-object/from16 v13, p5

    move-object/from16 v5, p1

    move-object v1, v6

    move/from16 v6, p0

    move-object v2, v7

    move-object v7, v0

    move-object v14, v8

    move-object/from16 v8, p4

    move/from16 v9, p7

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 1668
    :try_start_120
    invoke-virtual/range {v4 .. v12}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v0
    :try_end_124
    .catch Ljava/lang/SecurityException; {:try_start_120 .. :try_end_124} :catch_12b

    :goto_124
    move/from16 v4, v17

    .line 1685
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :catch_12b
    move-exception v0

    move-object v4, v0

    .line 1673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1678
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-eqz v2, :cond_190

    .line 1679
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    .line 1680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1682
    :cond_190
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1ac
    move-object v14, v9

    move-object/from16 p6, v13

    move-object v13, v5

    move-object v9, v7

    move-object v5, v11

    move-object v7, v12

    move-object/from16 v20, v10

    move-object v10, v6

    move-object/from16 v6, v20

    .line 1687
    invoke-static {v0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 1689
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1c4

    const/4 v4, 0x2

    return v4

    :cond_1c4
    const/4 v4, 0x2

    const/4 v11, -0x1

    if-eq v2, v11, :cond_1de

    if-eq v2, v1, :cond_1de

    .line 1702
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v11

    .line 1703
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v2, p6

    .line 1701
    invoke-virtual {v2, v1, v11, v12}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v11

    if-ne v11, v4, :cond_1db

    return v11

    :cond_1db
    move/from16 v4, p10

    goto :goto_1e3

    :cond_1de
    move-object/from16 v2, p6

    move v4, v1

    move/from16 v11, v16

    :goto_1e3
    if-eqz p8, :cond_22f

    .line 1717
    :try_start_1e5
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v8

    .line 1718
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1719
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    move-object/from16 p8, v2

    move/from16 p9, v4

    move/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v0

    move-object/from16 p13, p4

    .line 1716
    invoke-virtual/range {p8 .. p13}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_201
    .catch Ljava/lang/SecurityException; {:try_start_1e5 .. :try_end_201} :catch_202

    goto :goto_235

    .line 1722
    :catch_202
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1722
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p4

    .line 1726
    invoke-virtual {v2, v4, v3, v1, v15}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    goto :goto_235

    :cond_22f
    move-object/from16 v1, p4

    .line 1731
    :try_start_231
    invoke-virtual {v2, v4, v0, v1, v15}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0
    :try_end_235
    .catch Ljava/lang/SecurityException; {:try_start_231 .. :try_end_235} :catch_23a

    .line 1747
    :goto_235
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :catch_23a
    move-exception v0

    move-object v1, v0

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1740
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-eqz v2, :cond_29d

    .line 1741
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    .line 1742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1744
    :cond_29d
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_47

    if-nez p3, :cond_6

    goto :goto_47

    :cond_6
    if-eqz p5, :cond_b

    const/16 p3, 0x8

    goto :goto_c

    :cond_b
    move p3, v0

    :goto_c
    if-eqz p6, :cond_1e

    if-eqz p4, :cond_13

    or-int/lit8 p0, p3, 0x1

    return p0

    :cond_13
    if-nez p2, :cond_3b

    .line 1502
    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3b

    or-int/lit8 p0, p3, 0x1

    return p0

    :cond_1e
    if-eqz p4, :cond_23

    or-int/lit8 p0, p3, 0x4

    return p0

    :cond_23
    if-eqz p2, :cond_32

    .line 1508
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_32

    or-int/lit8 p0, p3, 0x1

    return p0

    .line 1510
    :cond_32
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p4

    if-nez p4, :cond_3b

    or-int/lit8 p0, p3, 0x4

    return p0

    :cond_3b
    if-eqz p2, :cond_44

    .line 1514
    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    return v0

    :cond_44
    or-int/lit8 p0, p3, 0x2

    return p0

    :cond_47
    :goto_47
    return v0
.end method

.method public static resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .registers 3

    .line 1785
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object p1

    .line 1788
    :cond_7
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object p0

    return-object p0
.end method

.method public static resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;
    .registers 3

    .line 1768
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1769
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1771
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1772
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 1771
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    const/4 p1, 0x0

    .line 1776
    aget-object p0, p0, p1

    return-object p0

    .line 1779
    :cond_1d
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    .line 1780
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1779
    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1485
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result p0

    return p0
.end method

.method public static resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1477
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .registers 13

    .line 1220
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    move v1, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkOp(Landroid/content/Context;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result p3

    if-eqz p3, :cond_19

    if-eqz p5, :cond_19

    const/4 p4, 0x0

    .line 1225
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    :cond_19
    return p3
.end method

.method public checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .registers 21

    move-object v0, p0

    move/from16 v10, p6

    move/from16 v11, p7

    .line 1117
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    new-instance v12, Landroid/content/AttributionSource;

    move-object v1, p2

    invoke-direct {v12, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 1121
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-object v3, p1

    move-object v4, v12

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v1

    if-eqz p5, :cond_42

    if-eqz v1, :cond_42

    const/4 v2, 0x1

    if-eq v1, v2, :cond_42

    const/4 v2, -0x1

    if-ne v11, v2, :cond_3b

    .line 1128
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    .line 1129
    invoke-virtual {v12}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 1128
    invoke-virtual {p0, v2, v3, v10}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    goto :goto_42

    .line 1131
    :cond_3b
    invoke-virtual {v12}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    invoke-virtual {p0, v11, v2, v10}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    :cond_42
    :goto_42
    return v1
.end method

.method public finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .registers 4

    .line 1140
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    return-void
.end method
