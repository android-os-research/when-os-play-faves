.class public Lcom/android/server/power/ShutdownThread$LogFileWriter;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogFileWriter"
.end annotation


# static fields
.field public static final MAX_TIMESTAMP_FILELOG:I = 0x5


# instance fields
.field public file:Ljava/io/File;

.field public latestShutdownProfile:Ljava/io/FileOutputStream;

.field public latestfile:Ljava/io/File;

.field public shutdownProfile:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1265
    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    .line 1268
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/ShutdownThread$LogFileWriter;->generateFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 1271
    :try_start_c
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->file:Ljava/io/File;

    .line 1272
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 1273
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_latest.txt"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfile:Ljava/io/File;

    .line 1274
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfile:Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    .line 1275
    iget-object p1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->file:Ljava/io/File;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1276
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfile:Ljava/io/File;

    invoke-virtual {p0, v0, p2}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5b} :catch_5c

    goto :goto_64

    :catch_5c
    move-exception p0

    const-string p1, "ShutdownThread"

    const-string p2, "LogFileWriter.LogFileWriter error"

    .line 1278
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_64
    :goto_64
    return-void
.end method


# virtual methods
.method public final generateFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1284
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_77

    .line 1288
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 1289
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v2, v0, :cond_35

    aget-object v3, p0, v2

    .line 1290
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1291
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1292
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 1293
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1297
    :cond_35
    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result p0

    const/4 v0, 0x5

    if-ge p0, v0, :cond_5a

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p2, p0, v1

    .line 1298
    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string/jumbo p2, "txt"

    aput-object p2, p0, p1

    const-string p1, "%s.%d.%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1301
    :cond_5a
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1302
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1303
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_77
    const/4 p0, 0x0

    return-object p0
.end method

.method public saveAndClose()V
    .registers 6

    const-string v0, "LogFileWriter.saveAndClose error"

    const-string v1, "ShutdownThread"

    .line 1336
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    if-nez v2, :cond_9

    return-void

    :cond_9
    const/4 v3, 0x0

    .line 1340
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1341
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1342
    iput-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 1343
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_22

    .line 1344
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1345
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1346
    iput-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_22} :catch_37
    .catchall {:try_start_a .. :try_end_22} :catchall_35

    .line 1352
    :cond_22
    :try_start_22
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_2b

    .line 1353
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1354
    iput-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 1356
    :cond_2b
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_54

    .line 1357
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1358
    iput-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_34} :catch_50

    goto :goto_54

    :catchall_35
    move-exception v2

    goto :goto_55

    :catch_37
    move-exception v2

    :try_start_38
    const-string v4, "LogFileWriter.saveAndClose fail"

    .line 1349
    invoke-static {v1, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 1352
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_46

    .line 1353
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1354
    iput-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 1356
    :cond_46
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_54

    .line 1357
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1358
    iput-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception p0

    .line 1361
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_54
    :goto_54
    return-void

    .line 1352
    :goto_55
    :try_start_55
    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_5e

    .line 1353
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1354
    iput-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    .line 1356
    :cond_5e
    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_6c

    .line 1357
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1358
    iput-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception p0

    .line 1361
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1363
    :cond_6c
    :goto_6c
    throw v2
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 1311
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    if-nez v0, :cond_b

    const-string/jumbo p0, "shutdownProfile is null"

    .line 1312
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1315
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1316
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 1318
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x5

    .line 1319
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    const/16 v5, 0xb

    .line 1320
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const/16 v5, 0xc

    .line 1321
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const/16 v5, 0xd

    .line 1322
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/16 v4, 0xe

    .line 1323
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x6

    aput-object p1, v2, v1

    const/4 v1, 0x7

    aput-object p2, v2, v1

    const-string p2, "%02d-%02d %02d:%02d:%02d.%03d %s: %s\n"

    .line 1317
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    :try_start_72
    iget-object p2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1327
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_95

    .line 1328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_8e} :catch_8f

    goto :goto_95

    :catch_8f
    move-exception p0

    const-string p2, "LogFileWriter.write fail"

    .line 1331
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_95
    :goto_95
    return-void
.end method
