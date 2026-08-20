.class public final Lcom/android/server/pm/PackageHandler;
.super Landroid/os/Handler;
.source "PackageHandler.java"


# instance fields
.field public final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .line 83
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 84
    iput-object p2, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 85
    new-instance p1, Lcom/android/server/pm/InstallPackageHelper;

    invoke-direct {p1, p2}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageHandler;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    return-void
.end method


# virtual methods
.method public doHandleMessage(Landroid/os/Message;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 98
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4fc

    const/4 v4, 0x5

    const-wide/32 v5, 0x40000

    if-eq v2, v4, :cond_4df

    const/16 v4, 0x9

    if-eq v2, v4, :cond_4d9

    const/16 v4, 0xa

    const/4 v7, 0x0

    if-eq v2, v4, :cond_493

    const/16 v4, 0x32

    const/16 v8, -0x16

    if-eq v2, v4, :cond_3f1

    const/16 v4, 0x33

    if-eq v2, v4, :cond_2f2

    packed-switch v2, :pswitch_data_502

    packed-switch v2, :pswitch_data_510

    goto/16 :goto_501

    .line 460
    :pswitch_2a
    :try_start_2a
    iget-object v1, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object v2

    iget-object v1, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 461
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    const-wide v4, 0x7fffffffffffffffL

    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 463
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "unused_static_shared_lib_min_cache_period"

    sget-wide v6, Lcom/android/server/pm/PackageManagerService;->DEFAULT_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    invoke-static {v0, v1, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 460
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/SharedLibrariesImpl;->pruneUnusedStaticSharedLibraries(Lcom/android/server/pm/Computer;JJ)Z
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_51} :catch_53

    goto/16 :goto_501

    :catch_53
    move-exception v0

    const-string v1, "PackageManager"

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prune unused static shared libraries :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_501

    .line 453
    :pswitch_70
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 454
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 455
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0, v2, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->runMessage(ILjava/lang/Object;)Z

    goto/16 :goto_501

    .line 272
    :pswitch_7d
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 273
    iget-object v2, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageVerificationState;

    if-eqz v2, :cond_501

    .line 275
    invoke-virtual {v2}, Lcom/android/server/pm/PackageVerificationState;->isIntegrityVerificationComplete()Z

    move-result v4

    if-nez v4, :cond_501

    .line 276
    invoke-virtual {v2}, Lcom/android/server/pm/PackageVerificationState;->getVerificationParams()Lcom/android/server/pm/VerificationParams;

    move-result-object v4

    .line 277
    iget-object v7, v4, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 279
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Integrity verification timed out for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PackageManager"

    .line 280
    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageHandler;->getDefaultIntegrityVerificationResponse()I

    move-result v10

    .line 282
    invoke-virtual {v2, v10}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageHandler;->getDefaultIntegrityVerificationResponse()I

    move-result v10

    if-ne v10, v3, :cond_d7

    const-string v3, "PackageManager"

    .line 287
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Integrity check times out, continuing with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    .line 289
    :cond_d7
    invoke-virtual {v4, v8, v9}, Lcom/android/server/pm/VerificationParams;->setReturnCode(ILjava/lang/String;)V

    .line 294
    :goto_da
    invoke-virtual {v2}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 295
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_e7
    const-string/jumbo v0, "integrity_verification"

    .line 298
    invoke-static {v5, v6, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 303
    invoke-virtual {v4}, Lcom/android/server/pm/VerificationParams;->handleIntegrityVerificationFinished()V

    goto/16 :goto_501

    .line 355
    :pswitch_f2
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 357
    iget-object v4, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageVerificationState;

    if-nez v4, :cond_11d

    const-string v0, "PackageManager"

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Integrity verification with id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found. It may be invalid or overridden by verifier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_501

    .line 364
    :cond_11d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 365
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->getVerificationParams()Lcom/android/server/pm/VerificationParams;

    move-result-object v7

    .line 366
    iget-object v9, v7, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v9, v9, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 368
    invoke-virtual {v4, v1}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    if-ne v1, v3, :cond_14d

    const-string v1, "PackageManager"

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Integrity check passed for "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_161

    .line 373
    :cond_14d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Integrity check failed for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/android/server/pm/VerificationParams;->setReturnCode(ILjava/lang/String;)V

    .line 378
    :goto_161
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v1

    if-eqz v1, :cond_16e

    .line 379
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_16e
    const-string/jumbo v0, "integrity_verification"

    .line 382
    invoke-static {v5, v6, v0, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 387
    invoke-virtual {v7}, Lcom/android/server/pm/VerificationParams;->handleIntegrityVerificationFinished()V

    goto/16 :goto_501

    .line 153
    :pswitch_179
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_501

    const/16 v4, 0x1d

    if-ne v2, v4, :cond_184

    goto :goto_185

    :cond_184
    move v3, v7

    .line 156
    :goto_185
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Ljava/lang/String;Z)V

    goto/16 :goto_501

    .line 144
    :pswitch_18c
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 145
    :try_start_191
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_19a

    .line 147
    invoke-virtual {v0, v3}, Lcom/android/server/pm/InstallArgs;->doPostDeleteLI(Z)Z

    .line 149
    :cond_19a
    monitor-exit v2

    goto/16 :goto_501

    :catchall_19d
    move-exception v0

    monitor-exit v2
    :try_end_19f
    .catchall {:try_start_191 .. :try_end_19f} :catchall_19d

    throw v0

    .line 426
    :pswitch_1a0
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 427
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 428
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 429
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/VerificationParams;

    if-eqz v3, :cond_501

    .line 431
    iget-object v4, v3, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v7, "PackageManager"

    .line 433
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enable rollback timed out for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v7, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->remove(I)V

    const-string v7, "PackageManager"

    .line 436
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Continuing with installation of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "enable_rollback"

    .line 437
    invoke-static {v5, v6, v4, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 439
    invoke-virtual {v3}, Lcom/android/server/pm/VerificationParams;->handleRollbackEnabled()V

    .line 440
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    .line 442
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 445
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 447
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v3, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_501

    .line 401
    :pswitch_211
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 402
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 403
    iget-object v4, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 404
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/VerificationParams;

    if-nez v4, :cond_23e

    const-string v0, "PackageManager"

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid rollback enabled token "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " received"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_501

    .line 411
    :cond_23e
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    if-eq v1, v3, :cond_27b

    .line 414
    iget-object v0, v4, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "PackageManager"

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to enable rollback for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PackageManager"

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Continuing with installation of "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27b
    const-string v0, "enable_rollback"

    .line 419
    invoke-static {v5, v6, v0, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 422
    invoke-virtual {v4}, Lcom/android/server/pm/VerificationParams;->handleRollbackEnabled()V

    goto/16 :goto_501

    .line 391
    :pswitch_285
    iget-object v2, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 392
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/content/pm/InstantAppRequest;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 391
    invoke-static/range {v3 .. v9}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V

    goto/16 :goto_501

    .line 202
    :pswitch_2a1
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->writePackageList(I)V

    goto/16 :goto_501

    .line 199
    :pswitch_2aa
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->writePendingRestrictions()V

    goto/16 :goto_501

    .line 196
    :pswitch_2b1
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->writeSettings()V

    goto/16 :goto_501

    .line 164
    :pswitch_2b8
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_2be

    move v2, v3

    goto :goto_2bf

    :cond_2be
    move v2, v7

    .line 165
    :goto_2bf
    iget v4, v1, Landroid/os/Message;->arg2:I

    if-ne v4, v3, :cond_2c4

    goto :goto_2c5

    :cond_2c4
    move v3, v7

    :goto_2c5
    if-eqz v3, :cond_2ce

    .line 171
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 173
    :cond_2ce
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2de

    .line 175
    check-cast v1, Ljava/util/Set;

    .line 180
    new-instance v3, Lcom/android/server/pm/AsecInstallHelper;

    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v3, v0}, Lcom/android/server/pm/AsecInstallHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 181
    invoke-virtual {v3, v1}, Lcom/android/server/pm/AsecInstallHelper;->unloadAllContainers(Ljava/util/Set;)V

    :cond_2de
    if-eqz v2, :cond_501

    .line 188
    :try_start_2e0
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->finishMediaUpdate()V
    :try_end_2e7
    .catch Landroid/os/RemoteException; {:try_start_2e0 .. :try_end_2e7} :catch_2e9

    goto/16 :goto_501

    :catch_2e9
    const-string v0, "PackageManager"

    const-string v1, "StorageManagerService not running?"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_501

    .line 207
    :cond_2f2
    :pswitch_2f2
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 208
    iget v9, v1, Landroid/os/Message;->arg2:I

    if-eqz v9, :cond_2f9

    goto :goto_2fa

    :cond_2f9
    move v3, v7

    .line 209
    :goto_2fa
    iget-object v7, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lcom/android/server/pm/PackageVerificationState;

    if-eqz v15, :cond_501

    .line 211
    invoke-virtual {v15}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v7

    if-eqz v7, :cond_30f

    goto/16 :goto_501

    :cond_30f
    const/16 v7, 0x10

    if-nez v3, :cond_335

    .line 216
    iget v3, v1, Landroid/os/Message;->what:I

    if-ne v3, v7, :cond_323

    .line 217
    invoke-virtual {v15}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v3

    if-nez v3, :cond_501

    invoke-virtual {v15}, Lcom/android/server/pm/PackageVerificationState;->isRequiredVerificationComplete()Z

    move-result v3

    if-nez v3, :cond_501

    :cond_323
    iget v3, v1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_335

    .line 218
    invoke-virtual {v15}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtendedForSamsung()Z

    move-result v3

    if-nez v3, :cond_501

    invoke-virtual {v15}, Lcom/android/server/pm/PackageVerificationState;->isSamsungVerificationComplete()Z

    move-result v3

    if-eqz v3, :cond_335

    goto/16 :goto_501

    .line 223
    :cond_335
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageVerificationResponse;

    .line 224
    iget v4, v3, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v9, v3, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {v15, v4, v9}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 226
    invoke-virtual {v15}, Lcom/android/server/pm/PackageVerificationState;->getVerificationParams()Lcom/android/server/pm/VerificationParams;

    move-result-object v4

    .line 228
    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, v7, :cond_3d2

    .line 230
    iget-object v1, v4, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Verification timed out for "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "PackageManager"

    .line 233
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v4}, Lcom/android/server/pm/HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v14

    .line 236
    iget v3, v3, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    const/4 v7, -0x1

    if-eq v3, v7, :cond_3c1

    .line 237
    invoke-virtual {v15}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v1

    if-eqz v1, :cond_3a1

    invoke-virtual {v15}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v1

    if-eqz v1, :cond_3a1

    const-string v1, "PackageManager"

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Continuing with installation of "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 239
    iget v11, v4, Lcom/android/server/pm/VerificationParams;->mDataLoaderType:I

    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move v7, v2

    move-object v8, v10

    move-object v10, v1

    move-object v12, v14

    invoke-static/range {v7 .. v13}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    goto :goto_3d2

    .line 242
    :cond_3a1
    invoke-virtual {v15}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v1

    if-eqz v1, :cond_3d2

    invoke-virtual {v15}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v1

    if-nez v1, :cond_3d2

    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 243
    iget v13, v4, Lcom/android/server/pm/VerificationParams;->mDataLoaderType:I

    iget-object v1, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move v9, v2

    move-object v7, v15

    move-object v15, v1

    invoke-static/range {v9 .. v15}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    const-string v1, "Install not allowed"

    .line 246
    invoke-virtual {v4, v8, v1}, Lcom/android/server/pm/VerificationParams;->setReturnCode(ILjava/lang/String;)V

    goto :goto_3d3

    :cond_3c1
    move-object v7, v15

    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 250
    iget v13, v4, Lcom/android/server/pm/VerificationParams;->mDataLoaderType:I

    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move v9, v2

    invoke-static/range {v9 .. v15}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    .line 253
    invoke-virtual {v4, v8, v1}, Lcom/android/server/pm/VerificationParams;->setReturnCode(ILjava/lang/String;)V

    goto :goto_3d3

    :cond_3d2
    :goto_3d2
    move-object v7, v15

    .line 258
    :goto_3d3
    invoke-virtual {v7}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v1

    if-eqz v1, :cond_3e0

    .line 259
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_3e0
    const-string/jumbo v0, "verification"

    .line 262
    invoke-static {v5, v6, v0, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 265
    invoke-virtual {v7}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v0

    if-eqz v0, :cond_501

    .line 266
    invoke-virtual {v4}, Lcom/android/server/pm/VerificationParams;->handleVerificationFinished()V

    goto/16 :goto_501

    .line 311
    :cond_3f1
    :pswitch_3f1
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 313
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    if-nez v3, :cond_41c

    const-string v0, "PackageManager"

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verification with id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found. It may be invalid or overridden by integrity verification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_501

    .line 320
    :cond_41c
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v4

    if-eqz v4, :cond_43f

    const-string v0, "PackageManager"

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verification with id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already complete."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_501

    .line 325
    :cond_43f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageVerificationResponse;

    .line 326
    iget v4, v1, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v7, v1, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {v3, v4, v7}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 328
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v4

    if-eqz v4, :cond_501

    .line 329
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getVerificationParams()Lcom/android/server/pm/VerificationParams;

    move-result-object v4

    .line 330
    iget-object v7, v4, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 332
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v7

    if-eqz v7, :cond_476

    .line 333
    iget v1, v1, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    const/4 v10, 0x0

    iget v11, v4, Lcom/android/server/pm/VerificationParams;->mDataLoaderType:I

    .line 334
    invoke-virtual {v4}, Lcom/android/server/pm/HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    iget-object v7, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move v7, v2

    move-object v8, v9

    move v9, v1

    .line 333
    invoke-static/range {v7 .. v13}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    goto :goto_47b

    :cond_476
    const-string v1, "Install not allowed"

    .line 337
    invoke-virtual {v4, v8, v1}, Lcom/android/server/pm/VerificationParams;->setReturnCode(ILjava/lang/String;)V

    .line 342
    :goto_47b
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v1

    if-eqz v1, :cond_488

    .line 343
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_488
    const-string/jumbo v0, "verification"

    .line 346
    invoke-static {v5, v6, v0, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 349
    invoke-virtual {v4}, Lcom/android/server/pm/VerificationParams;->handleVerificationFinished()V

    goto/16 :goto_501

    .line 124
    :cond_493
    iget-object v2, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PostInstallData;

    .line 125
    iget v4, v1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_4a4

    goto :goto_4a5

    :cond_4a4
    move v3, v7

    .line 126
    :goto_4a5
    iget-object v4, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->delete(I)V

    if-eqz v2, :cond_4b9

    .line 128
    iget-object v4, v2, Lcom/android/server/pm/PostInstallData;->res:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageInstalledInfo;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v4, :cond_4b9

    .line 129
    invoke-virtual {v4}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_4b9
    if-eqz v2, :cond_4c3

    .line 132
    iget-object v4, v2, Lcom/android/server/pm/PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_4c3

    .line 133
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_4d0

    :cond_4c3
    if-eqz v2, :cond_4d0

    .line 134
    iget-object v4, v2, Lcom/android/server/pm/PostInstallData;->args:Lcom/android/server/pm/InstallArgs;

    if-eqz v4, :cond_4d0

    .line 135
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v2, v2, Lcom/android/server/pm/PostInstallData;->res:Lcom/android/server/pm/PackageInstalledInfo;

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/pm/InstallPackageHelper;->handlePackagePostInstall(Lcom/android/server/pm/PackageInstalledInfo;Lcom/android/server/pm/InstallArgs;Z)V

    :cond_4d0
    :goto_4d0
    const-string/jumbo v0, "postInstall"

    .line 141
    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-static {v5, v6, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto :goto_501

    .line 117
    :cond_4d9
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->bindLocaleServiceAndCallOnPackageInstalled(Landroid/os/Message;)V

    goto :goto_501

    .line 100
    :cond_4df
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/HandlerParams;

    if-eqz v0, :cond_501

    const-string/jumbo v1, "queueInstall"

    .line 104
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 103
    invoke-static {v5, v6, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const-string/jumbo v1, "startCopy"

    .line 105
    invoke-static {v5, v6, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lcom/android/server/pm/HandlerParams;->startCopy()V

    .line 107
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_501

    .line 112
    :cond_4fc
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallPackageHelper;->sendPendingBroadcasts()V

    :cond_501
    :goto_501
    return-void

    :pswitch_data_502
    .packed-switch 0xc
        :pswitch_2b8
        :pswitch_2b1
        :pswitch_2aa
        :pswitch_3f1
        :pswitch_2f2
    .end packed-switch

    :pswitch_data_510
    .packed-switch 0x13
        :pswitch_2a1
        :pswitch_285
        :pswitch_211
        :pswitch_1a0
        :pswitch_18c
        :pswitch_179
        :pswitch_f2
        :pswitch_7d
        :pswitch_70
        :pswitch_2a
        :pswitch_179
    .end packed-switch
.end method

.method public final getDefaultIntegrityVerificationResponse()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    const/4 v0, 0x0

    .line 91
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 93
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_8
    move-exception p0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 94
    throw p0
.end method
