.class public final Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;
.super Ljava/lang/Thread;
.source "ShutdownCheckPoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownCheckPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDumperThread"
.end annotation


# instance fields
.field public final mBaseFile:Ljava/io/File;

.field public final mFileCountLimit:I

.field public final mInstance:Lcom/android/server/power/ShutdownCheckPoints;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownCheckPoints;Ljava/io/File;I)V
    .registers 4

    .line 348
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 349
    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mInstance:Lcom/android/server/power/ShutdownCheckPoints;

    .line 350
    iput-object p2, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    .line 351
    iput p3, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mFileCountLimit:I

    return-void
.end method


# virtual methods
.method public final listCheckPointsFiles()[Ljava/io/File;
    .registers 4

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;-><init>(Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    .line 385
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object p0
.end method

.method public run()V
    .registers 7

    .line 356
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 357
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->listCheckPointsFiles()[Ljava/io/File;

    move-result-object v0

    .line 359
    array-length v1, v0

    iget v2, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mFileCountLimit:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v1, :cond_1f

    .line 361
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 364
    :cond_1f
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    .line 365
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s-%d"

    .line 364
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->writeCheckpoints(Ljava/io/File;)V

    return-void
.end method

.method public final writeCheckpoints(Ljava/io/File;)V
    .registers 7

    .line 390
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 393
    :try_start_7
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_1e

    .line 394
    :try_start_b
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 395
    iget-object v3, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mInstance:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v3, v2}, Lcom/android/server/power/ShutdownCheckPoints;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 396
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 397
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1b} :catch_1c

    goto :goto_2c

    :catch_1c
    move-exception v2

    goto :goto_20

    :catch_1e
    move-exception v2

    const/4 v1, 0x0

    :goto_20
    const-string v3, "ShutdownCheckPoints"

    const-string v4, "Failed to write shutdown checkpoints"

    .line 399
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_2c

    .line 401
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 404
    :cond_2c
    :goto_2c
    iget-object p0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method
