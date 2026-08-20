.class public Lcom/android/server/backup/utils/RestoreUtils;
.super Ljava/lang/Object;
.source "RestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    }
.end annotation


# static fields
.field public static mPrivilegeApp:Z = false


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSession(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p0

    .line 84
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 85
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 88
    :try_start_11
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_2e

    :catch_16
    move-exception p0

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in session id created"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_2e
    return p0
.end method

.method public static installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/restore/RestoreDeleteObserver;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;",
            "Lcom/android/server/backup/FileMetadata;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/utils/BytesReadListener;",
            "I)Z"
        }
    .end annotation

    move-object/from16 v1, p5

    move/from16 v2, p8

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing from backup: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BackupManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_1c
    new-instance v5, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver-IA;)V

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 260
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v7

    .line 262
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object/from16 v9, p6

    .line 263
    invoke-virtual {v0, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v9
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_39} :catch_209

    .line 266
    :try_start_39
    invoke-virtual {v7, v9}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v14
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_200

    const v15, 0x8000

    .line 267
    :try_start_40
    iget-object v11, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_42
    .catch Ljava/io/InterruptedIOException; {:try_start_40 .. :try_end_42} :catch_a5
    .catchall {:try_start_40 .. :try_end_42} :catchall_9d

    const-wide/16 v12, 0x0

    move/from16 p6, v9

    :try_start_46
    iget-wide v8, v1, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_48
    .catch Ljava/io/InterruptedIOException; {:try_start_46 .. :try_end_48} :catch_9b
    .catchall {:try_start_46 .. :try_end_48} :catchall_99

    move-object v10, v14

    move-object/from16 v16, v14

    move v4, v15

    move-wide v14, v8

    :try_start_4d
    invoke-virtual/range {v10 .. v15}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v8
    :try_end_51
    .catch Ljava/io/InterruptedIOException; {:try_start_4d .. :try_end_51} :catch_97
    .catchall {:try_start_4d .. :try_end_51} :catchall_92

    :try_start_51
    new-array v0, v4, [B

    .line 270
    iget-wide v9, v1, Lcom/android/server/backup/FileMetadata;->size:J

    :goto_55
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_7e

    int-to-long v11, v4

    cmp-long v13, v11, v9

    if-gez v13, :cond_61

    goto :goto_62

    :cond_61
    move-wide v11, v9

    :goto_62
    long-to-int v11, v11

    const/4 v13, 0x0

    move-object/from16 v12, p0

    .line 273
    invoke-virtual {v12, v0, v13, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    if-ltz v11, :cond_73

    int-to-long v14, v11

    move-object/from16 v4, p7

    .line 275
    invoke-interface {v4, v14, v15}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_75

    :cond_73
    move-object/from16 v4, p7

    .line 277
    :goto_75
    invoke-virtual {v8, v0, v13, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_78
    .catchall {:try_start_51 .. :try_end_78} :catchall_84

    int-to-long v13, v11

    sub-long/2addr v9, v13

    const v4, 0x8000

    goto :goto_55

    :cond_7e
    if-eqz v8, :cond_be

    .line 280
    :try_start_80
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_83
    .catch Ljava/io/InterruptedIOException; {:try_start_80 .. :try_end_83} :catch_97
    .catchall {:try_start_80 .. :try_end_83} :catchall_92

    goto :goto_be

    :catchall_84
    move-exception v0

    move-object v4, v0

    if-eqz v8, :cond_91

    .line 267
    :try_start_88
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_91

    :catchall_8c
    move-exception v0

    move-object v8, v0

    :try_start_8e
    invoke-virtual {v4, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_91
    :goto_91
    throw v4
    :try_end_92
    .catch Ljava/io/InterruptedIOException; {:try_start_8e .. :try_end_92} :catch_97
    .catchall {:try_start_8e .. :try_end_92} :catchall_92

    :catchall_92
    move-exception v0

    move-object v1, v0

    move-object/from16 v4, v16

    goto :goto_a2

    :catch_97
    move-exception v0

    goto :goto_aa

    :catchall_99
    move-exception v0

    goto :goto_a0

    :catch_9b
    move-exception v0

    goto :goto_a8

    :catchall_9d
    move-exception v0

    move/from16 p6, v9

    :goto_a0
    move-object v1, v0

    move-object v4, v14

    :goto_a2
    const/4 v2, 0x0

    goto/16 :goto_1f0

    :catch_a5
    move-exception v0

    move/from16 p6, v9

    :goto_a8
    move-object/from16 v16, v14

    .line 281
    :goto_aa
    :try_start_aa
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " InterruptedIOException in apkStream.close()"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    :goto_be
    const-string v0, "Entering Session Commit"

    .line 286
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v5}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0
    :try_end_c7
    .catchall {:try_start_aa .. :try_end_c7} :catchall_1eb

    move-object/from16 v4, v16

    :try_start_c9
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_1e9

    .line 288
    :try_start_cc
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cf} :catch_1e6

    .line 297
    :try_start_cf
    invoke-virtual {v5}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "android.content.pm.extra.STATUS"

    const/4 v5, 0x1

    .line 301
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_ee

    .line 308
    iget-object v0, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    if-eq v0, v1, :cond_eb

    const/4 v4, 0x0

    goto/16 :goto_220

    :cond_eb
    move v4, v5

    goto/16 :goto_220

    :cond_ee
    const-string v4, "android.content.pm.extra.PACKAGE_NAME"

    .line 314
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11e

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restore stream claimed to include apk for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but apk was really "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_11a} :catch_209

    move v8, v5

    :goto_11b
    const/4 v13, 0x0

    goto/16 :goto_1d6

    .line 325
    :cond_11e
    :try_start_11e
    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/high16 v7, 0x8000000

    invoke-virtual {v6, v4, v7, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 327
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-nez v7, :cond_151

    sget-boolean v7, Lcom/android/server/backup/utils/RestoreUtils;->mPrivilegeApp:Z

    if-nez v7, :cond_151

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restore stream contains apk of package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " but it disallows backup/restore"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14f
    const/4 v5, 0x0

    goto :goto_199

    .line 335
    :cond_151
    iget-object v7, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v8, p3

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/pm/Signature;

    .line 336
    const-class v8, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    .line 339
    invoke-static {v6, v8, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->forBackup(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v2

    .line 340
    invoke-virtual {v2, v7, v4}, Lcom/android/server/backup/utils/BackupEligibilityRules;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v2
    :try_end_16b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11e .. :try_end_16b} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_16b} :catch_209

    const-string v7, "Installed app "

    if-eqz v2, :cond_19b

    .line 343
    :try_start_16f
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_199

    iget-object v2, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v2, :cond_199

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has restricted uid and no agent"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14f

    :cond_199
    :goto_199
    const/4 v8, 0x0

    goto :goto_1b6

    .line 350
    :cond_19b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " signatures do not match restore manifest"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16f .. :try_end_1b4} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_1b4} :catch_209

    move v8, v5

    const/4 v5, 0x0

    :goto_1b6
    move v13, v5

    goto :goto_1d6

    .line 357
    :catch_1b8
    :try_start_1b8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Install of package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " succeeded but now not found"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto/16 :goto_11b

    :goto_1d6
    if-eqz v8, :cond_1e4

    .line 366
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->reset()V
    :try_end_1db
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1db} :catch_209

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 367
    :try_start_1de
    invoke-virtual {v6, v0, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->waitForCompletion()V
    :try_end_1e4
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_1e4} :catch_207

    :cond_1e4
    move v4, v13

    goto :goto_220

    :catch_1e6
    move-exception v0

    const/4 v2, 0x0

    goto :goto_1fd

    :catchall_1e9
    move-exception v0

    goto :goto_1ee

    :catchall_1eb
    move-exception v0

    move-object/from16 v4, v16

    :goto_1ee
    const/4 v2, 0x0

    move-object v1, v0

    :goto_1f0
    if-eqz v4, :cond_1fb

    .line 266
    :try_start_1f2
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_1f5
    .catchall {:try_start_1f2 .. :try_end_1f5} :catchall_1f6

    goto :goto_1fb

    :catchall_1f6
    move-exception v0

    move-object v4, v0

    :try_start_1f8
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1fb
    :goto_1fb
    throw v1
    :try_end_1fc
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_1fc} :catch_1fc

    :catch_1fc
    move-exception v0

    :goto_1fd
    move/from16 v1, p6

    goto :goto_203

    :catch_200
    move-exception v0

    const/4 v2, 0x0

    move v1, v9

    .line 290
    :goto_203
    :try_start_203
    invoke-virtual {v7, v1}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 292
    throw v0
    :try_end_207
    .catch Ljava/io/IOException; {:try_start_203 .. :try_end_207} :catch_207

    :catch_207
    move-exception v0

    goto :goto_20b

    :catch_209
    move-exception v0

    const/4 v2, 0x0

    .line 374
    :goto_20b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to transcribe restored apk for install"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    :goto_220
    return v4
.end method

.method public static installApkSplitSupport(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;II)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/restore/RestoreDeleteObserver;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;",
            "Lcom/android/server/backup/FileMetadata;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/utils/BytesReadListener;",
            "II)Z"
        }
    .end annotation

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Installing from backup: "

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p6, "BackupManagerService"

    invoke-static {p6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 144
    :try_start_19
    new-instance p7, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    const/4 v0, 0x0

    invoke-direct {p7, v0}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver-IA;)V

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_27} :catch_157

    .line 148
    :try_start_27
    invoke-virtual {v0, p9}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_152

    :try_start_2b
    const-string v2, "Entering Session Commit"

    .line 149
    invoke-static {p6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p7}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_146

    .line 151
    :try_start_37
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_152

    .line 158
    :try_start_3a
    invoke-virtual {p7}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object p7

    const-string p9, "android.content.pm.extra.STATUS"

    const/4 v0, 0x1

    .line 162
    invoke-virtual {p7, p9, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p9

    if-eqz p9, :cond_56

    .line 168
    iget-object p1, p5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    if-eq p1, p2, :cond_53

    goto/16 :goto_16c

    :cond_53
    move p0, v0

    goto/16 :goto_16c

    :cond_56
    const-string p4, "android.content.pm.extra.PACKAGE_NAME"

    .line 174
    invoke-virtual {p7, p4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 176
    iget-object p7, p5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p4, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-nez p7, :cond_85

    .line 177
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Restore stream claimed to include apk for "

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " but apk was really "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p6, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_82} :catch_157

    :goto_82
    move p3, p0

    goto/16 :goto_139

    .line 185
    :cond_85
    :try_start_85
    iget-object p7, p5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/high16 p9, 0x8000000

    invoke-virtual {p1, p7, p9, p8}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p7

    .line 187
    iget-object p9, p7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p9, p9, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr p9, v1

    if-nez p9, :cond_b8

    sget-boolean p9, Lcom/android/server/backup/utils/RestoreUtils;->mPrivilegeApp:Z

    if-nez p9, :cond_b8

    .line 189
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Restore stream contains apk of package "

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p7, p5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, " but it disallows backup/restore"

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p6, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_137

    .line 195
    :cond_b8
    iget-object p9, p5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/content/pm/Signature;

    .line 196
    const-class p9, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Landroid/content/pm/PackageManagerInternal;

    .line 199
    invoke-static {p1, p9, p8}, Lcom/android/server/backup/utils/BackupEligibilityRules;->forBackup(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object p8

    .line 200
    invoke-virtual {p8, p3, p7}, Lcom/android/server/backup/utils/BackupEligibilityRules;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result p3
    :try_end_d0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_85 .. :try_end_d0} :catch_11c
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_d0} :catch_157

    const-string p8, "Installed app "

    if-eqz p3, :cond_101

    .line 203
    :try_start_d4
    iget-object p3, p7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p3

    if-eqz p3, :cond_fe

    iget-object p3, p7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez p3, :cond_fe

    .line 205
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p7, p5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, " has restricted uid and no agent"

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p6, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_137

    :cond_fe
    move p3, v0

    move v0, p0

    goto :goto_139

    .line 210
    :cond_101
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p7, p5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, " signatures do not match restore manifest"

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p6, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d4 .. :try_end_11a} :catch_11c
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_11a} :catch_157

    goto/16 :goto_82

    .line 217
    :catch_11c
    :try_start_11c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Install of package "

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " succeeded but now not found"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p6, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_137
    move p3, p0

    move v0, p3

    :goto_139
    if-eqz v0, :cond_144

    .line 226
    invoke-virtual {p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->reset()V

    .line 227
    invoke-virtual {p1, p4, p2, p0}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 230
    invoke-virtual {p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->waitForCompletion()V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_144} :catch_157

    :cond_144
    move p0, p3

    goto :goto_16c

    :catchall_146
    move-exception p1

    if-eqz v1, :cond_151

    .line 148
    :try_start_149
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_14c
    .catchall {:try_start_149 .. :try_end_14c} :catchall_14d

    goto :goto_151

    :catchall_14d
    move-exception p2

    :try_start_14e
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_151
    :goto_151
    throw p1
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_152} :catch_152

    :catch_152
    move-exception p1

    .line 152
    :try_start_153
    invoke-virtual {v0, p9}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 153
    throw p1
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_157} :catch_157

    :catch_157
    move-exception p1

    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to transcribe restored apk for install"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16c
    return p0
.end method

.method public static setPrivilegeApp(Z)V
    .registers 1

    .line 77
    sput-boolean p0, Lcom/android/server/backup/utils/RestoreUtils;->mPrivilegeApp:Z

    return-void
.end method

.method public static writeSession(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z
    .registers 13

    const-string p3, "BackupManagerService"

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p0

    const/4 v0, 0x0

    .line 102
    :try_start_b
    invoke-virtual {p0, p5}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_7d

    .line 103
    :try_start_f
    iget-object v2, p2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iget-wide v5, p2, Lcom/android/server/backup/FileMetadata;->size:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object p5
    :try_end_1a
    .catch Ljava/io/InterruptedIOException; {:try_start_f .. :try_end_1a} :catch_56
    .catchall {:try_start_f .. :try_end_1a} :catchall_54

    const v1, 0x8000

    :try_start_1d
    new-array v2, v1, [B

    .line 106
    iget-wide v3, p2, Lcom/android/server/backup/FileMetadata;->size:J

    :goto_21
    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-lez p2, :cond_3f

    int-to-long v5, v1

    cmp-long p2, v5, v3

    if-gez p2, :cond_2d

    goto :goto_2e

    :cond_2d
    move-wide v5, v3

    :goto_2e
    long-to-int p2, v5

    .line 109
    invoke-virtual {p1, v2, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    if-ltz p2, :cond_39

    int-to-long v5, p2

    .line 111
    invoke-interface {p4, v5, v6}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 113
    :cond_39
    invoke-virtual {p5, v2, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v5, p2

    sub-long/2addr v3, v5

    goto :goto_21

    .line 116
    :cond_3f
    invoke-virtual {p0, p5}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_48

    if-eqz p5, :cond_6b

    .line 117
    :try_start_44
    invoke-virtual {p5}, Ljava/io/OutputStream;->close()V
    :try_end_47
    .catch Ljava/io/InterruptedIOException; {:try_start_44 .. :try_end_47} :catch_56
    .catchall {:try_start_44 .. :try_end_47} :catchall_54

    goto :goto_6b

    :catchall_48
    move-exception p1

    if-eqz p5, :cond_53

    .line 103
    :try_start_4b
    invoke-virtual {p5}, Ljava/io/OutputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception p2

    :try_start_50
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_53
    :goto_53
    throw p1
    :try_end_54
    .catch Ljava/io/InterruptedIOException; {:try_start_50 .. :try_end_54} :catch_56
    .catchall {:try_start_50 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p1

    goto :goto_72

    :catch_56
    move-exception p1

    .line 118
    :try_start_57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " InterruptedIOException in apkStream.close()"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_57 .. :try_end_6b} :catchall_54

    :cond_6b
    :goto_6b
    if-eqz p0, :cond_70

    .line 120
    :try_start_6d
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_7d

    :cond_70
    const/4 v0, 0x1

    goto :goto_95

    :goto_72
    if-eqz p0, :cond_7c

    .line 102
    :try_start_74
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception p0

    :try_start_79
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7c
    :goto_7c
    throw p1
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7d} :catch_7d

    :catch_7d
    move-exception p0

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " Exception in writeSession "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_95
    return v0
.end method
