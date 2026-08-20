.class public final Lcom/android/server/am/Heimdall$HeimdalldPkgManager;
.super Ljava/lang/Object;
.source "Heimdall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Heimdall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeimdalldPkgManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;
    }
.end annotation


# static fields
.field public static final BIGDATA_FILE:Ljava/lang/String; = "/data/misc/pageboost/heimdall_last_bigdata_string"

.field public static pkgInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$smdumpPkgInfoListToBigdata()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->dumpPkgInfoListToBigdata()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smexportPkgInfoList()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->exportPkgInfoList()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetPkgInfoListString()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->getPkgInfoListString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sminit()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->init()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smupdatePkgInfoList(Ljava/lang/String;IZZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->updatePkgInfoList(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized dumpPkgInfoListToBigdata()V
    .registers 6

    const-class v0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;

    monitor-enter v0

    .line 334
    :try_start_3
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dumping data to bigdata"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_72

    .line 336
    :try_start_c
    sget-object v1, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;

    .line 337
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->-$$Nest$mtoJsonData(Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {v2}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->-$$Nest$mtoJsonData(Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/Heimdall$HeimdalldBigdataManager;->-$$Nest$smsendData(Ljava/lang/String;)V

    goto :goto_12

    .line 340
    :cond_42
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "resetPkgInfoList"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->resetPkgInfoList()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_4f} :catch_50
    .catchall {:try_start_c .. :try_end_4f} :catchall_72

    goto :goto_70

    :catch_50
    move-exception v1

    .line 343
    :try_start_51
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to dump package info. list to bigdata : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_51 .. :try_end_70} :catchall_72

    .line 346
    :goto_70
    monitor-exit v0

    return-void

    :catchall_72
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized exportPkgInfoList()V
    .registers 5

    const-class v0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;

    monitor-enter v0

    .line 310
    :try_start_3
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/pageboost/heimdall_last_bigdata_string"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 312
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 315
    :cond_13
    sget-object v1, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_63
    .catchall {:try_start_3 .. :try_end_19} :catchall_61

    if-nez v1, :cond_1d

    .line 316
    monitor-exit v0

    return-void

    .line 319
    :cond_1d
    :try_start_1d
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/data/misc/pageboost/heimdall_last_bigdata_string"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 321
    sget-object v2, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_2f

    .line 324
    :cond_54
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 325
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exportPkgInfoList"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_60} :catch_63
    .catchall {:try_start_1d .. :try_end_60} :catchall_61

    goto :goto_70

    :catchall_61
    move-exception v1

    goto :goto_72

    :catch_63
    move-exception v1

    .line 327
    :try_start_64
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "exportPkgInfoList: invalid bigdata file data"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_64 .. :try_end_70} :catchall_61

    .line 330
    :goto_70
    monitor-exit v0

    return-void

    :goto_72
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPkgInfoListString()Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;

    monitor-enter v0

    :try_start_3
    const-string v1, ""

    .line 380
    sget-object v2, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->-$$Nest$mtoJsonData(Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_32

    goto :goto_b

    .line 383
    :cond_30
    monitor-exit v0

    return-object v1

    :catchall_32
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getPkgVersionString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "unknown"

    .line 389
    :try_start_3
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_30

    const/4 v2, 0x0

    .line 391
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 392
    iget-object p0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_16} :catch_18

    move-object v0, p0

    goto :goto_30

    .line 395
    :catch_18
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPkgVersionString: can not find version of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    :goto_30
    return-object v0
.end method

.method public static declared-synchronized importPkgInfoList()V
    .registers 8

    const-class v0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;

    monitor-enter v0

    .line 280
    :try_start_3
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/pageboost/heimdall_last_bigdata_string"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_7f
    .catchall {:try_start_3 .. :try_end_e} :catchall_7d

    if-nez v2, :cond_12

    .line 282
    monitor-exit v0

    return-void

    .line 284
    :cond_12
    :try_start_12
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/data/misc/pageboost/heimdall_last_bigdata_string"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 288
    :goto_23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_76

    .line 289
    new-instance v4, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;

    invoke-direct {v4, v3}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;-><init>(Ljava/lang/String;)V

    .line 290
    iget-object v5, v4, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->pkgName:Ljava/lang/String;

    if-eqz v5, :cond_5d

    .line 291
    sget-object v5, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "importPkgInfoList: read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", parsed as "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 294
    :cond_5d
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "importPkgInfoList: file format is wrong "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_76
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 300
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_7c} :catch_7f
    .catchall {:try_start_12 .. :try_end_7c} :catchall_7d

    goto :goto_8d

    :catchall_7d
    move-exception v1

    goto :goto_8f

    :catch_7f
    move-exception v1

    .line 302
    :try_start_80
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "invalid bigdata file data"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8d
    .catchall {:try_start_80 .. :try_end_8d} :catchall_7d

    .line 305
    :goto_8d
    monitor-exit v0

    return-void

    :goto_8f
    monitor-exit v0

    throw v1
.end method

.method public static init()V
    .registers 0

    .line 270
    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->resetPkgInfoList()V

    .line 271
    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->importPkgInfoList()V

    return-void
.end method

.method public static declared-synchronized resetPkgInfoList()V
    .registers 2

    const-class v0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;

    monitor-enter v0

    .line 275
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 276
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized updatePkgInfoList(Ljava/lang/String;IZZ)V
    .registers 12

    const-class v0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;

    monitor-enter v0

    .line 351
    :try_start_3
    invoke-static {p0}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->getPkgVersionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkgName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", version = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", memUsage = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isGlbKill = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isRealKill = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v7, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;

    move-object v1, v7

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 361
    sget-object p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {p0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8a

    .line 362
    sget-object p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {p0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;

    .line 364
    iget v1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->memUsage:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->memUsage:I

    if-eqz p2, :cond_7b

    .line 365
    iget p1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->glbKillCnt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->glbKillCnt:I

    goto :goto_81

    .line 366
    :cond_7b
    iget p1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->specKillCnt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->specKillCnt:I

    :goto_81
    if-eqz p3, :cond_8f

    .line 367
    iget p1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->realKillCnt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->realKillCnt:I

    goto :goto_8f

    .line 371
    :cond_8a
    sget-object p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_8f
    :goto_8f
    sget-object p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->pkgInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_95
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_ad

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;

    .line 374
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_3 .. :try_end_ac} :catchall_af

    goto :goto_95

    .line 376
    :cond_ad
    monitor-exit v0

    return-void

    :catchall_af
    move-exception p0

    monitor-exit v0

    throw p0
.end method
