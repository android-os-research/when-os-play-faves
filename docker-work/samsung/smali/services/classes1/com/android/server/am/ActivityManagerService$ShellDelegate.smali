.class public Lcom/android/server/am/ActivityManagerService$ShellDelegate;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShellDelegate"
.end annotation


# instance fields
.field public final mPermissions:[Ljava/lang/String;

.field public final mTargetUid:I

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;I[Ljava/lang/String;)V
    .registers 4

    .line 21407
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21408
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    .line 21409
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 21436
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne p3, v0, :cond_39

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result p0

    if-eqz p0, :cond_39

    .line 21437
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/16 p3, 0x7d0

    invoke-static {p0, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 21439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 21441
    :try_start_18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "com.android.shell"

    invoke-interface {p5, p1, p2, p0, v0}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_34

    .line 21443
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_34
    move-exception p0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21444
    throw p0

    .line 21446
    :cond_39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p5, p0, p1, p2, p4}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public checkOperation(IILjava/lang/String;Ljava/lang/String;ZLcom/android/internal/util/function/QuintFunction;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/util/function/QuintFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 21420
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne p2, v0, :cond_3b

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 21421
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/16 p2, 0x7d0

    invoke-static {p0, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 21423
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 21425
    :try_start_18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.android.shell"

    const/4 v4, 0x0

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/util/function/QuintFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_36

    .line 21427
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_36
    move-exception p0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21428
    throw p0

    .line 21430
    :cond_3b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p6

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/util/function/QuintFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/AttributionSource;",
            "Z",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 21553
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne v0, v1, :cond_48

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result p0

    if-eqz p0, :cond_48

    .line 21555
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    .line 21554
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/16 v0, 0x7d0

    invoke-static {p0, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 21556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 21558
    :try_start_20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v0, Landroid/content/AttributionSource;

    const-string v3, "com.android.shell"

    .line 21559
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 21560
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/AttributionSource;)V

    .line 21561
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 21558
    invoke-interface {p5, p1, p0, v0, v1}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_20 .. :try_end_3f} :catchall_43

    .line 21563
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_48

    :catchall_43
    move-exception p0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21564
    throw p0

    .line 21566
    :cond_48
    :goto_48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p5, p1, p0, p3, p2}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getDelegateUid()I
    .registers 1

    .line 21413
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    return p0
.end method

.method public final isTargetOp(I)Z
    .registers 4

    .line 21571
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 21575
    :cond_6
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    return v1

    .line 21579
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isTargetPermission(Ljava/lang/String;)Z
    .registers 2

    .line 21584
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_d

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/util/function/HeptFunction;)Landroid/app/SyncNotedAppOp;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/util/function/HeptFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation

    move-object v0, p0

    .line 21455
    iget v1, v0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    move v2, p2

    if-ne v2, v1, :cond_40

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 21456
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 21458
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 21460
    :try_start_1a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "com.android.shell"

    .line 21461
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v3, p8

    move-object v7, p4

    move-object/from16 v9, p6

    .line 21460
    invoke-interface/range {v3 .. v10}, Lcom/android/internal/util/function/HeptFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_3b

    .line 21463
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_3b
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21464
    throw v0

    .line 21466
    :cond_40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 21467
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v3, p8

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v9, p6

    .line 21466
    invoke-interface/range {v3 .. v10}, Lcom/android/internal/util/function/HeptFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0
.end method

.method public noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/AttributionSource;",
            "Z",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/android/internal/util/function/HexFunction<",
            "Ljava/lang/Integer;",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation

    .line 21476
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    move-object/from16 v1, p0

    iget v2, v1, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne v0, v2, :cond_59

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 21478
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 21477
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 21479
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 21481
    :try_start_22
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Landroid/content/AttributionSource;

    const-string v4, "com.android.shell"

    .line 21482
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 21483
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v7

    move-object v2, v12

    invoke-direct/range {v2 .. v7}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/AttributionSource;)V

    .line 21484
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 21485
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v10, p7

    move-object/from16 v14, p4

    .line 21481
    invoke-interface/range {v10 .. v16}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_50
    .catchall {:try_start_22 .. :try_end_50} :catchall_54

    .line 21487
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_54
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21488
    throw v0

    .line 21490
    :cond_59
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 21491
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v1, p7

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    .line 21490
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "ZII",
            "Lcom/android/internal/util/function/UndecFunction<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 21502
    iget v1, v0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    move/from16 v2, p3

    if-ne v2, v1, :cond_53

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 21503
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v2, 0x7d0

    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 21505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 21507
    :try_start_1e
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "com.android.shell"

    .line 21508
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 21509
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v4, p12

    move-object/from16 v5, p1

    move-object/from16 v9, p5

    move-object/from16 v12, p8

    .line 21507
    invoke-interface/range {v4 .. v15}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_4a
    .catchall {:try_start_1e .. :try_end_4a} :catchall_4e

    .line 21511
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_4e
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21512
    throw v0

    :cond_53
    move/from16 v1, p2

    .line 21514
    :cond_55
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 21515
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 21516
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v4, p12

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v12, p8

    .line 21514
    invoke-interface/range {v4 .. v15}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0
.end method

.method public startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/AttributionSource;",
            "ZZ",
            "Ljava/lang/String;",
            "ZZIII",
            "Lcom/android/internal/util/function/UndecFunction<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 21528
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    iget v2, v0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne v1, v2, :cond_6d

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 21530
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 21529
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v2, 0x7d0

    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 21531
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 21533
    :try_start_24
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v14, Landroid/content/AttributionSource;

    const-string v5, "com.android.shell"

    .line 21534
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 21535
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v8

    move-object v3, v14

    invoke-direct/range {v3 .. v8}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/AttributionSource;)V

    .line 21536
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 21537
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 21538
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v11, p12

    move-object/from16 v12, p1

    move-object/from16 v17, p6

    .line 21533
    invoke-interface/range {v11 .. v22}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_64
    .catchall {:try_start_24 .. :try_end_64} :catchall_68

    .line 21540
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_68
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21541
    throw v0

    :cond_6d
    move/from16 v1, p2

    .line 21543
    :cond_6f
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 21544
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 21545
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v11, p12

    move-object/from16 v12, p1

    move-object/from16 v14, p3

    move-object/from16 v17, p6

    .line 21543
    invoke-interface/range {v11 .. v22}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0
.end method
