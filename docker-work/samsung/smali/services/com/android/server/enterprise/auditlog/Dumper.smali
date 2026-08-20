.class public Lcom/android/server/enterprise/auditlog/Dumper;
.super Ljava/lang/Thread;
.source "Dumper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Dumper"

.field public static final TEMP_FILENAME:Ljava/lang/String; = "/temp/"


# instance fields
.field public mBegin:J

.field public mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDumpFilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field public mDumpResult:Z

.field public mEnd:J

.field public mFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field public mHeader:Ljava/lang/StringBuilder;

.field public mHeaderDate:Ljava/text/SimpleDateFormat;

.field public mIsFullDump:Z

.field public mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

.field public mPackageName:Ljava/lang/String;

.field public mPfd:Landroid/os/ParcelFileDescriptor;

.field public mTemporaryDirectory:Ljava/io/File;

.field public mTemporaryPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;",
            "Lcom/android/server/enterprise/auditlog/IObserver;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    .line 69
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 76
    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 77
    iput-object p6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    .line 78
    iput-object p7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    .line 79
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 80
    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    .line 81
    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/temp/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    return-void
.end method

.method public static safeClose(Ljava/io/Closeable;)V
    .registers 3

    if-eqz p0, :cond_e

    .line 322
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string v0, "Dumper"

    const-string v1, "Failed to close resource."

    .line 324
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_e
    return-void
.end method


# virtual methods
.method public final appendFileNodeToTemporaryFile(Ljava/io/File;)Z
    .registers 7

    .line 526
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    const-string v1, "Dumper"

    const/4 v2, 0x0

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_88

    :cond_f
    const/4 v0, 0x0

    .line 534
    :try_start_10
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/temp.gz"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    new-instance p0, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_32} :catch_57
    .catchall {:try_start_10 .. :try_end_32} :catchall_54

    .line 537
    :try_start_32
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_52
    .catchall {:try_start_32 .. :try_end_37} :catchall_7c

    const/high16 p1, 0x10000

    :try_start_39
    new-array p1, p1, [B

    .line 540
    :goto_3b
    invoke-virtual {v3, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_45

    .line 541
    invoke-virtual {p0, p1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_44} :catch_4f
    .catchall {:try_start_39 .. :try_end_44} :catchall_4c

    goto :goto_3b

    .line 549
    :cond_45
    :try_start_45
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_48

    .line 555
    :catch_48
    :try_start_48
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4b

    :catch_4b
    return v4

    :catchall_4c
    move-exception p1

    move-object v0, v3

    goto :goto_7d

    :catch_4f
    move-exception p1

    move-object v0, v3

    goto :goto_59

    :catch_52
    move-exception p1

    goto :goto_59

    :catchall_54
    move-exception p1

    move-object p0, v0

    goto :goto_7d

    :catch_57
    move-exception p1

    move-object p0, v0

    .line 544
    :goto_59
    :try_start_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to append file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_7c

    if-eqz v0, :cond_76

    .line 549
    :try_start_73
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_76

    :catch_76
    :cond_76
    if-eqz p0, :cond_7b

    .line 555
    :try_start_78
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7b

    :catch_7b
    :cond_7b
    return v2

    :catchall_7c
    move-exception p1

    :goto_7d
    if-eqz v0, :cond_82

    .line 549
    :try_start_7f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_82

    :catch_82
    :cond_82
    if-eqz p0, :cond_87

    .line 555
    :try_start_84
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_87

    .line 559
    :catch_87
    :cond_87
    throw p1

    :cond_88
    :goto_88
    const-string p0, "Invalid temporary directory, cannot create file"

    .line 527
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    const-string v0, "Dumper"

    .line 485
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 487
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 488
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 489
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1a
    const/4 v1, 0x0

    .line 494
    :try_start_1b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/Dumper;->appendFileNodeToTemporaryFile(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_2a

    const-string p1, "Failed to append tempHeaderFile"

    .line 495
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->removeTempFile()V

    return-object v1

    .line 500
    :cond_2a
    :goto_2a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 501
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 502
    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v2

    if-nez v2, :cond_43

    .line 503
    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 504
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_2a

    .line 505
    :cond_43
    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 507
    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/Dumper;->appendFileNodeToTemporaryFile(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_2a

    const-string p1, "Failed to append file node"

    .line 508
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->removeTempFile()V

    return-object v1

    .line 515
    :cond_60
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    if-eqz p1, :cond_9b

    .line 516
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/temp.gz"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_80} :catch_82

    move-object v1, p1

    goto :goto_9b

    :catch_82
    move-exception p0

    .line 519
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "concatenateFiles.Exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    :goto_9b
    return-object v1
.end method

.method public final createHeader()V
    .registers 6

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    .line 126
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd \'at\' HH:mm:ss z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    .line 129
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    const-string v1, "----------------------------------------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, "\n"

    if-eqz v0, :cond_47

    .line 135
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 143
    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dump Log Generated: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final createHeaderTempFile(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 340
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2c

    .line 341
    :try_start_6
    new-instance p1, Ljava/util/zip/GZIPOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_2a

    .line 343
    :try_start_10
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_27

    .line 348
    :try_start_1d
    invoke-virtual {p1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 349
    invoke-virtual {p1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_23

    .line 354
    :catch_23
    :try_start_23
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_26

    :catch_26
    return-void

    :catchall_27
    move-exception p0

    move-object v0, p1

    goto :goto_2e

    :catchall_2a
    move-exception p0

    goto :goto_2e

    :catchall_2c
    move-exception p0

    move-object v1, v0

    :goto_2e
    if-eqz v0, :cond_36

    .line 348
    :try_start_30
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 349
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    if-eqz v1, :cond_3b

    .line 354
    :try_start_38
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3b

    .line 357
    :catch_3b
    :cond_3b
    throw p0
.end method

.method public final fullDump()V
    .registers 19

    move-object/from16 v1, p0

    const-string v2, "failed to close fileStreamFull at fullDump"

    const-string v3, "failed to close outStream at fullDump"

    const-string v4, "failed to close fileStream at fullDump"

    const-string v5, "failed to close gizp stream at fullDump"

    const-string v6, "failed to close bufferedReader at fullDump"

    const-string/jumbo v7, "run.IOException "

    const-string v8, "Dumper"

    .line 361
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 363
    iget-object v9, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    .line 376
    :try_start_19
    new-instance v12, Ljava/io/FileOutputStream;

    iget-object v13, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_1c8
    .catchall {:try_start_19 .. :try_end_24} :catchall_1bb

    .line 377
    :try_start_24
    new-instance v13, Ljava/util/zip/GZIPOutputStream;

    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v13, v14}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_1b6
    .catchall {:try_start_24 .. :try_end_2e} :catchall_1b0

    .line 379
    :try_start_2e
    iget-object v14, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_30} :catch_1ab
    .catchall {:try_start_2e .. :try_end_30} :catchall_1a5

    if-eqz v14, :cond_d0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 380
    :cond_35
    :goto_35
    :try_start_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b6

    .line 381
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 382
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v17

    if-nez v17, :cond_4e

    .line 383
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 384
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_35

    .line 386
    :cond_4e
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_35

    .line 388
    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_61} :catch_c6
    .catchall {:try_start_35 .. :try_end_61} :catchall_bc

    .line 389
    :try_start_61
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_66} :catch_b3
    .catchall {:try_start_61 .. :try_end_66} :catchall_af

    .line 390
    :try_start_66
    new-instance v10, Ljava/io/InputStreamReader;

    const-string v14, "UTF-8"

    invoke-direct {v10, v9, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 391
    new-instance v14, Ljava/io/BufferedReader;

    invoke-direct {v14, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_72} :catch_ac
    .catchall {:try_start_66 .. :try_end_72} :catchall_a8

    .line 393
    :cond_72
    :goto_72
    :try_start_72
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_99

    .line 394
    iget-object v15, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v15, v10}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_72

    .line 395
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_98} :catch_a3
    .catchall {:try_start_72 .. :try_end_98} :catchall_9d

    goto :goto_72

    :cond_99
    move-object v15, v14

    move-object v14, v9

    move-object v9, v11

    goto :goto_35

    :catchall_9d
    move-exception v0

    move-object v1, v2

    move-object v10, v11

    move-object/from16 v17, v14

    goto :goto_c2

    :catch_a3
    move-exception v0

    move-object v10, v11

    move-object/from16 v17, v14

    goto :goto_cb

    :catchall_a8
    move-exception v0

    move-object v1, v2

    move-object v10, v11

    goto :goto_c0

    :catch_ac
    move-exception v0

    move-object v10, v11

    goto :goto_c9

    :catchall_af
    move-exception v0

    move-object v1, v2

    move-object v10, v11

    goto :goto_bf

    :catch_b3
    move-exception v0

    move-object v10, v11

    goto :goto_c8

    :cond_b6
    move-object/from16 v17, v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_154

    :catchall_bc
    move-exception v0

    move-object v1, v2

    move-object v10, v9

    :goto_bf
    move-object v9, v14

    :goto_c0
    move-object/from16 v17, v15

    :goto_c2
    const/4 v11, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1c5

    :catch_c6
    move-exception v0

    move-object v10, v9

    :goto_c8
    move-object v9, v14

    :goto_c9
    move-object/from16 v17, v15

    :goto_cb
    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_1d2

    :cond_d0
    if-eqz v9, :cond_14e

    .line 404
    :try_start_d2
    new-instance v0, Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 405
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 406
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 408
    :cond_e6
    new-instance v9, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/header"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_102} :catch_1ab
    .catchall {:try_start_d2 .. :try_end_102} :catchall_1a5

    .line 409
    :try_start_102
    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    .line 410
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9, v0}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_13d

    .line 414
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_112} :catch_148
    .catchall {:try_start_102 .. :try_end_112} :catchall_141

    const/high16 v11, 0x10000

    :try_start_114
    new-array v11, v11, [B

    .line 417
    :goto_116
    invoke-virtual {v10, v11}, Ljava/io/InputStream;->read([B)I

    move-result v14
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_11a} :catch_136
    .catchall {:try_start_114 .. :try_end_11a} :catchall_12e

    if-lez v14, :cond_128

    const/4 v15, 0x0

    .line 418
    :try_start_11d
    invoke-virtual {v12, v11, v15, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_120} :catch_121
    .catchall {:try_start_11d .. :try_end_120} :catchall_12e

    goto :goto_116

    :catch_121
    move-exception v0

    move-object v11, v9

    move-object v14, v10

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_1d0

    .line 420
    :cond_128
    :try_start_128
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12b} :catch_136
    .catchall {:try_start_128 .. :try_end_12b} :catchall_12e

    move-object v11, v9

    const/4 v9, 0x0

    goto :goto_151

    :catchall_12e
    move-exception v0

    move-object v1, v2

    move-object v11, v9

    move-object v14, v10

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_1c3

    :catch_136
    move-exception v0

    move-object v11, v9

    move-object v14, v10

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_1cf

    :cond_13d
    move-object v11, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_151

    :catchall_141
    move-exception v0

    move-object v1, v2

    move-object v11, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_1c2

    :catch_148
    move-exception v0

    move-object v11, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_1ce

    :cond_14e
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_151
    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_154
    if-eqz v11, :cond_159

    .line 431
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 436
    :cond_159
    :try_start_159
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 437
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_15f} :catch_160

    goto :goto_177

    :catch_160
    move-exception v0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_177
    if-eqz v17, :cond_180

    .line 445
    :try_start_179
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17c} :catch_17d

    goto :goto_180

    .line 447
    :catch_17d
    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_180
    :goto_180
    if-eqz v14, :cond_189

    .line 452
    :try_start_182
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_185} :catch_186

    goto :goto_189

    .line 455
    :catch_186
    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_189
    :goto_189
    if-eqz v9, :cond_192

    .line 460
    :try_start_18b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_18e
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_18e} :catch_18f

    goto :goto_192

    .line 462
    :catch_18f
    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_192
    :goto_192
    :try_start_192
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_195} :catch_196

    goto :goto_199

    .line 469
    :catch_196
    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_199
    if-eqz v10, :cond_24b

    .line 474
    :try_start_19b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_19e
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_19e} :catch_1a0

    goto/16 :goto_24b

    .line 476
    :catch_1a0
    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24b

    :catchall_1a5
    move-exception v0

    move-object v1, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_1c2

    :catch_1ab
    move-exception v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_1ce

    :catchall_1b0
    move-exception v0

    move-object v1, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_1c1

    :catch_1b6
    move-exception v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_1cd

    :catchall_1bb
    move-exception v0

    move-object v1, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1c1
    const/4 v13, 0x0

    :goto_1c2
    const/4 v14, 0x0

    :goto_1c3
    const/16 v17, 0x0

    :goto_1c5
    move-object v2, v0

    goto/16 :goto_255

    :catch_1c8
    move-exception v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1cd
    const/4 v13, 0x0

    :goto_1ce
    const/4 v14, 0x0

    :goto_1cf
    const/4 v15, 0x0

    :goto_1d0
    const/16 v17, 0x0

    .line 425
    :goto_1d2
    :try_start_1d2
    iput-boolean v15, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 426
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1d9
    .catchall {:try_start_1d2 .. :try_end_1d9} :catchall_251

    move-object/from16 v16, v2

    :try_start_1db
    const-string v2, "fullDump.Exception: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1f7
    .catchall {:try_start_1db .. :try_end_1f7} :catchall_24c

    if-eqz v11, :cond_1fc

    .line 431
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_1fc
    if-eqz v13, :cond_21c

    .line 436
    :try_start_1fe
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 437
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_204
    .catch Ljava/io/IOException; {:try_start_1fe .. :try_end_204} :catch_205

    goto :goto_21c

    :catch_205
    move-exception v0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21c
    :goto_21c
    if-eqz v17, :cond_225

    .line 445
    :try_start_21e
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_221
    .catch Ljava/io/IOException; {:try_start_21e .. :try_end_221} :catch_222

    goto :goto_225

    .line 447
    :catch_222
    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_225
    :goto_225
    if-eqz v9, :cond_22e

    .line 452
    :try_start_227
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_22a
    .catch Ljava/io/IOException; {:try_start_227 .. :try_end_22a} :catch_22b

    goto :goto_22e

    .line 455
    :catch_22b
    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22e
    :goto_22e
    if-eqz v10, :cond_237

    .line 460
    :try_start_230
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_233
    .catch Ljava/io/IOException; {:try_start_230 .. :try_end_233} :catch_234

    goto :goto_237

    .line 462
    :catch_234
    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_237
    :goto_237
    if-eqz v12, :cond_240

    .line 467
    :try_start_239
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_23c
    .catch Ljava/io/IOException; {:try_start_239 .. :try_end_23c} :catch_23d

    goto :goto_240

    .line 469
    :catch_23d
    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_240
    :goto_240
    if-eqz v14, :cond_24b

    .line 474
    :try_start_242
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_245
    .catch Ljava/io/IOException; {:try_start_242 .. :try_end_245} :catch_246

    goto :goto_24b

    :catch_246
    move-object/from16 v1, v16

    .line 476
    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24b
    :goto_24b
    return-void

    :catchall_24c
    move-exception v0

    move-object/from16 v1, v16

    goto/16 :goto_1c5

    :catchall_251
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1c5

    :goto_255
    if-eqz v11, :cond_25a

    .line 431
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_25a
    if-eqz v13, :cond_27a

    .line 436
    :try_start_25c
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 437
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_262
    .catch Ljava/io/IOException; {:try_start_25c .. :try_end_262} :catch_263

    goto :goto_27a

    :catch_263
    move-exception v0

    .line 440
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27a
    :goto_27a
    if-eqz v17, :cond_283

    .line 445
    :try_start_27c
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_27f
    .catch Ljava/io/IOException; {:try_start_27c .. :try_end_27f} :catch_280

    goto :goto_283

    .line 447
    :catch_280
    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_283
    :goto_283
    if-eqz v9, :cond_28c

    .line 452
    :try_start_285
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_288
    .catch Ljava/io/IOException; {:try_start_285 .. :try_end_288} :catch_289

    goto :goto_28c

    .line 455
    :catch_289
    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28c
    :goto_28c
    if-eqz v10, :cond_295

    .line 460
    :try_start_28e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_291
    .catch Ljava/io/IOException; {:try_start_28e .. :try_end_291} :catch_292

    goto :goto_295

    .line 462
    :catch_292
    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_295
    :goto_295
    if-eqz v12, :cond_29e

    .line 467
    :try_start_297
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_29a
    .catch Ljava/io/IOException; {:try_start_297 .. :try_end_29a} :catch_29b

    goto :goto_29e

    .line 469
    :catch_29b
    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29e
    :goto_29e
    if-eqz v14, :cond_2a7

    .line 474
    :try_start_2a0
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2a3
    .catch Ljava/io/IOException; {:try_start_2a0 .. :try_end_2a3} :catch_2a4

    goto :goto_2a7

    .line 476
    :catch_2a4
    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_2a7
    :goto_2a7
    throw v2
.end method

.method public isCompressed(Ljava/io/File;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 583
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_21

    const/4 p0, 0x2

    :try_start_7
    new-array p1, p0, [B

    const/4 v1, 0x0

    .line 585
    invoke-virtual {v0, p1, v1, p0}, Ljava/io/FileInputStream;->read([BII)I

    aget-byte p0, p1, v1

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-ne p0, v2, :cond_1b

    aget-byte p0, p1, v3
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1f

    const/16 p1, -0x75

    if-ne p0, p1, :cond_1b

    move v1, v3

    .line 596
    :cond_1b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return v1

    :catchall_1f
    move-exception p0

    goto :goto_24

    :catchall_21
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    :goto_24
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 597
    :cond_29
    throw p0
.end method

.method public final readFileLineByLine(Ljava/io/File;)Ljava/io/File;
    .registers 16

    const/4 v0, 0x0

    .line 269
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    .line 271
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 274
    :cond_15
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_116
    .catchall {:try_start_1 .. :try_end_38} :catchall_10f

    .line 275
    :try_start_38
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_107
    .catchall {:try_start_38 .. :try_end_3d} :catchall_10f

    .line 276
    :try_start_3d
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_47} :catch_104
    .catchall {:try_start_3d .. :try_end_47} :catchall_100

    .line 278
    :try_start_47
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_fd
    .catchall {:try_start_47 .. :try_end_4c} :catchall_f9

    .line 279
    :try_start_4c
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_51} :catch_f6
    .catchall {:try_start_4c .. :try_end_51} :catchall_f1

    .line 280
    :try_start_51
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, p1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_58} :catch_eb
    .catchall {:try_start_51 .. :try_end_58} :catchall_e7

    .line 281
    :try_start_58
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5d} :catch_e0
    .catchall {:try_start_58 .. :try_end_5d} :catchall_dd

    .line 282
    :catch_5d
    :cond_5d
    :goto_5d
    :try_start_5d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bf

    const-string v7, " "

    .line 283
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_69} :catch_d7
    .catchall {:try_start_5d .. :try_end_69} :catchall_d3

    const/4 v8, 0x0

    .line 285
    :try_start_6a
    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_6a .. :try_end_74} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_74} :catch_d7
    .catchall {:try_start_6a .. :try_end_74} :catchall_d3

    .line 290
    :try_start_74
    iget-wide v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v11, v7, v9

    if-lez v11, :cond_7b

    goto :goto_bf

    .line 293
    :cond_7b
    iget-wide v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v11, v7, v11

    if-ltz v11, :cond_5d

    cmp-long v7, v7, v9

    if-gtz v7, :cond_5d

    .line 294
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_87} :catch_d7
    .catchall {:try_start_74 .. :try_end_87} :catchall_d3

    const-string v8, "\n"

    if-eqz v7, :cond_a8

    .line 295
    :try_start_8b
    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    goto :goto_5d

    .line 299
    :cond_a8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_be} :catch_d7
    .catchall {:try_start_8b .. :try_end_be} :catchall_d3

    goto :goto_5d

    .line 309
    :cond_bf
    :goto_bf
    invoke-static {v6}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 310
    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 311
    invoke-static {p1}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 312
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 313
    invoke-static {v3}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v2}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    goto/16 :goto_141

    :catchall_d3
    move-exception p0

    move-object v0, v6

    goto/16 :goto_144

    :catch_d7
    move-exception v0

    move-object v13, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v6

    goto :goto_e4

    :catchall_dd
    move-exception p0

    goto/16 :goto_144

    :catch_e0
    move-exception v6

    move-object v13, v1

    move-object v1, p1

    move-object p1, v6

    :goto_e4
    move-object v6, v13

    goto/16 :goto_11d

    :catchall_e7
    move-exception p0

    move-object v5, v0

    goto/16 :goto_144

    :catch_eb
    move-exception v5

    move-object v6, v1

    move-object v1, p1

    move-object p1, v5

    move-object v5, v0

    goto :goto_11d

    :catchall_f1
    move-exception p0

    move-object p1, v0

    move-object v5, p1

    goto/16 :goto_144

    :catch_f6
    move-exception p1

    move-object v5, v0

    goto :goto_10c

    :catchall_f9
    move-exception p0

    move-object p1, v0

    move-object v4, p1

    goto :goto_114

    :catch_fd
    move-exception p1

    move-object v4, v0

    goto :goto_10b

    :catchall_100
    move-exception p0

    move-object p1, v0

    move-object v3, p1

    goto :goto_113

    :catch_104
    move-exception p1

    move-object v3, v0

    goto :goto_10a

    :catch_107
    move-exception p1

    move-object v2, v0

    move-object v3, v2

    :goto_10a
    move-object v4, v3

    :goto_10b
    move-object v5, v4

    :goto_10c
    move-object v6, v1

    move-object v1, v5

    goto :goto_11d

    :catchall_10f
    move-exception p0

    move-object p1, v0

    move-object v2, p1

    move-object v3, v2

    :goto_113
    move-object v4, v3

    :goto_114
    move-object v5, v4

    goto :goto_144

    :catch_116
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_11d
    :try_start_11d
    const-string v7, "Dumper"

    const-string/jumbo v8, "readFileLineByLine.IOException"

    .line 306
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v7

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, p1, p0}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_12e
    .catchall {:try_start_11d .. :try_end_12e} :catchall_142

    .line 309
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 310
    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 311
    invoke-static {v1}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 312
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 313
    invoke-static {v3}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v2}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    move-object v1, v6

    :goto_141
    return-object v1

    :catchall_142
    move-exception p0

    move-object p1, v1

    .line 309
    :goto_144
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 310
    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 311
    invoke-static {p1}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 312
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 313
    invoke-static {v3}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v2}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 315
    throw p0
.end method

.method public final removeTempFile()V
    .registers 3

    .line 564
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    .line 567
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/temp.gz"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 570
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2a

    :catch_2a
    :cond_2a
    return-void
.end method

.method public run()V
    .registers 7

    const-string/jumbo v0, "run.IOException"

    const-string v1, "Dumper"

    .line 98
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeader()V

    .line 99
    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1b

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_17

    goto :goto_1b

    .line 104
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->selectDumpInterval()V

    goto :goto_25

    .line 100
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->fullDump()V

    .line 101
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-nez v2, :cond_25

    const/4 v2, 0x1

    .line 102
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_3c
    .catchall {:try_start_5 .. :try_end_25} :catchall_3a

    .line 112
    :cond_25
    :goto_25
    :try_start_25
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_30

    .line 113
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_30

    .line 116
    :catch_2d
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v0, v1, p0}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    goto :goto_6a

    :catchall_3a
    move-exception v2

    goto :goto_6b

    :catch_3c
    move-exception v2

    .line 107
    :try_start_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "run.Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 108
    iput-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 109
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_3d .. :try_end_62} :catchall_3a

    .line 112
    :try_start_62
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_30

    .line 113
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_69} :catch_2d

    goto :goto_30

    :goto_6a
    return-void

    .line 112
    :goto_6b
    :try_start_6b
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_76

    .line 113
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_72} :catch_73

    goto :goto_76

    .line 116
    :catch_73
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_76
    :goto_76
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v0, v1, p0}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 119
    throw v2
.end method

.method public final selectDumpInterval()V
    .registers 18

    move-object/from16 v1, p0

    const-string v2, "failed to close input stream file at selectDumpInterval"

    const-string v3, "Dumper"

    .line 153
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 161
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 164
    :goto_16
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_75

    .line 165
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 166
    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v12, v12, v14

    if-gez v12, :cond_2f

    move/from16 v16, v8

    goto :goto_5d

    :cond_2f
    const-string v12, "com.android.server.enterprise.auditlog"

    if-eqz v8, :cond_4e

    .line 170
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v13

    if-eqz v13, :cond_4e

    .line 171
    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 172
    new-instance v10, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-direct {v10, v9, v12}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v10, v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    .line 175
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v5

    goto :goto_16

    .line 180
    :cond_4e
    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v13

    move/from16 v16, v8

    iget-wide v7, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v7, v13, v7

    if-gez v7, :cond_60

    .line 181
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5d
    move/from16 v8, v16

    goto :goto_16

    .line 183
    :cond_60
    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 184
    new-instance v7, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-direct {v7, v0, v12}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v7, v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    .line 187
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v0

    goto :goto_77

    :cond_75
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 192
    :goto_77
    new-instance v0, Ljava/io/File;

    iget-object v8, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 194
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 197
    :cond_8b
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/header"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    :try_start_a7
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    .line 203
    invoke-virtual {v1, v0, v4}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v4
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ae} :catch_11c
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_116

    if-eqz v4, :cond_e2

    .line 208
    :try_start_b0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b5} :catch_e0
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_dd

    .line 209
    :try_start_b5
    new-instance v11, Ljava/io/FileOutputStream;

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c0} :catch_db
    .catchall {:try_start_b5 .. :try_end_c0} :catchall_d8

    const/high16 v0, 0x10000

    :try_start_c2
    new-array v0, v0, [B

    .line 212
    :goto_c4
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_ce

    .line 213
    invoke-virtual {v11, v0, v5, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_cd} :catch_d5
    .catchall {:try_start_c2 .. :try_end_cd} :catchall_d0

    goto :goto_c4

    :cond_ce
    move-object v15, v8

    goto :goto_e4

    :catchall_d0
    move-exception v0

    move-object v1, v0

    move-object v15, v11

    goto/16 :goto_158

    :catch_d5
    move-exception v0

    move-object v15, v11

    goto :goto_120

    :catchall_d8
    move-exception v0

    move-object v1, v0

    goto :goto_11a

    :catch_db
    move-exception v0

    goto :goto_11f

    :catchall_dd
    move-exception v0

    move-object v1, v0

    goto :goto_119

    :catch_e0
    move-exception v0

    goto :goto_11e

    :cond_e2
    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_e4
    if-eqz v9, :cond_e9

    .line 222
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_e9
    if-eqz v6, :cond_ee

    .line 225
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_ee
    if-eqz v7, :cond_f3

    .line 228
    invoke-virtual {v7}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_f3
    if-eqz v10, :cond_f8

    .line 231
    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_f8
    if-eqz v4, :cond_fd

    .line 234
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_fd
    if-eqz v15, :cond_106

    .line 238
    :try_start_ff
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_103

    goto :goto_106

    .line 240
    :catch_103
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_106
    :goto_106
    if-eqz v11, :cond_155

    .line 245
    :try_start_108
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10b} :catch_10c

    goto :goto_155

    :catch_10c
    move-exception v0

    move-object v1, v0

    .line 247
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_155

    :catchall_116
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    :goto_119
    const/4 v8, 0x0

    :goto_11a
    const/4 v15, 0x0

    goto :goto_158

    :catch_11c
    move-exception v0

    const/4 v4, 0x0

    :goto_11e
    const/4 v8, 0x0

    :goto_11f
    const/4 v15, 0x0

    :goto_120
    :try_start_120
    const-string v5, "SelectDumpInterval.Exception"

    .line 218
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v5

    iget-object v1, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_12e
    .catchall {:try_start_120 .. :try_end_12e} :catchall_156

    if-eqz v9, :cond_133

    .line 222
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_133
    if-eqz v6, :cond_138

    .line 225
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_138
    if-eqz v7, :cond_13d

    .line 228
    invoke-virtual {v7}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_13d
    if-eqz v10, :cond_142

    .line 231
    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_142
    if-eqz v4, :cond_147

    .line 234
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_147
    if-eqz v8, :cond_150

    .line 238
    :try_start_149
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14c} :catch_14d

    goto :goto_150

    .line 240
    :catch_14d
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_150
    :goto_150
    if-eqz v15, :cond_155

    .line 245
    :try_start_152
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_155} :catch_10c

    :cond_155
    :goto_155
    return-void

    :catchall_156
    move-exception v0

    move-object v1, v0

    :goto_158
    if-eqz v9, :cond_15d

    .line 222
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_15d
    if-eqz v6, :cond_162

    .line 225
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_162
    if-eqz v7, :cond_167

    .line 228
    invoke-virtual {v7}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_167
    if-eqz v10, :cond_16c

    .line 231
    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_16c
    if-eqz v4, :cond_171

    .line 234
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_171
    if-eqz v8, :cond_17a

    .line 238
    :try_start_173
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_176} :catch_177

    goto :goto_17a

    .line 240
    :catch_177
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17a
    :goto_17a
    if-eqz v15, :cond_189

    .line 245
    :try_start_17c
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_17f} :catch_180

    goto :goto_189

    :catch_180
    move-exception v0

    move-object v2, v0

    .line 247
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_189
    :goto_189
    throw v1
.end method

.method public setDeviceInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    return-void
.end method

.method public setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V
    .registers 2

    .line 576
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    return-void
.end method
