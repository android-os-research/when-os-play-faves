.class final Lcom/android/server/power/hint/HintManagerService$BinderService;
.super Landroid/os/IHintManager$Stub;
.source "HintManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/hint/HintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;)V
    .registers 2

    .line 303
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {p0}, Landroid/os/IHintManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createHintSession(Landroid/os/IBinder;[IJ)Landroid/os/IHintSession;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v7, p2

    .line 306
    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$misHalSupported(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_10

    return-object v8

    .line 308
    :cond_10
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    array-length v1, v7

    const/4 v12, 0x1

    if-eqz v1, :cond_1c

    move v1, v12

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    const-string/jumbo v2, "tids should not be empty."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 313
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 314
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v9

    .line 315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 317
    :try_start_33
    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1, v13, v9, v7}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[I)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 321
    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v1

    move v2, v9

    move v3, v13

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCreateHintSession(II[IJ)J

    move-result-wide v16
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_b9

    const-wide/16 v1, 0x0

    cmp-long v1, v16, v1

    if-nez v1, :cond_55

    .line 345
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    .line 327
    :cond_55
    :try_start_55
    new-instance v10, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    move-object v1, v10

    move v3, v13

    move v4, v9

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-wide/from16 v7, v16

    move-object/from16 v18, v10

    move-wide/from16 v9, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;-><init>(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/os/IBinder;JJ)V

    .line 329
    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_70
    .catchall {:try_start_55 .. :try_end_70} :catchall_b9

    .line 330
    :try_start_70
    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 331
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_94

    .line 333
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v12}, Landroid/util/ArrayMap;-><init>(I)V

    .line 334
    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_94
    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_a4

    .line 338
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v12}, Landroid/util/ArraySet;-><init>(I)V

    .line 339
    invoke-virtual {v2, v11, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a4
    move-object/from16 v2, v18

    .line 341
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 342
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_70 .. :try_end_aa} :catchall_ae

    .line 345
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_ae
    move-exception v0

    .line 343
    :try_start_af
    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    :try_start_b0
    throw v0

    .line 318
    :cond_b1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Some tid doesn\'t belong to the application"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b9
    .catchall {:try_start_b0 .. :try_end_b9} :catchall_b9

    :catchall_b9
    move-exception v0

    .line 345
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 356
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "HintManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 359
    :cond_f
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 360
    :try_start_16
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HintSessionPreferredRate: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-wide v0, v0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HAL Support: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$misHalSupported(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "Active Sessions:"

    .line 362
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    move v0, p3

    .line 363
    :goto_4f
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_bd

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 366
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    move v2, p3

    .line 367
    :goto_91
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_ba

    .line 368
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    move v4, p3

    .line 369
    :goto_9e
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_b7

    const-string v5, "  Session:"

    .line 370
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    const-string v6, "    "

    invoke-static {v5, p2, v6}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->-$$Nest$mdump(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9e

    :cond_b7
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    :cond_ba
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 375
    :cond_bd
    monitor-exit p1

    return-void

    :catchall_bf
    move-exception p0

    monitor-exit p1
    :try_end_c1
    .catchall {:try_start_16 .. :try_end_c1} :catchall_bf

    throw p0
.end method

.method public getHintSessionPreferredRate()J
    .registers 3

    .line 351
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    return-wide v0
.end method
