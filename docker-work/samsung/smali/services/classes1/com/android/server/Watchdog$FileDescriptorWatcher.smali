.class public final Lcom/android/server/Watchdog$FileDescriptorWatcher;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorWatcher"
.end annotation


# static fields
.field public static final OUTPUT_FILENAME:Ljava/lang/String; = "/data/log/fd_list.txt"

.field public static final PROC_FD:Ljava/lang/String; = "/proc/self/fd"

.field public static final PROC_MAPS:Ljava/lang/String; = "/proc/self/maps"

.field public static final mTraceDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 482
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/Watchdog$FileDescriptorWatcher-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/Watchdog$FileDescriptorWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFdInfo(Ljava/lang/StringBuilder;[Ljava/io/File;)V
    .registers 8

    .line 485
    array-length p0, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_53

    aget-object v1, p2, v0

    .line 487
    :try_start_6
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_37} :catch_38

    goto :goto_50

    .line 490
    :catch_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> readlink error\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_53
    return-void
.end method

.method public final getMapInfo(Ljava/lang/StringBuilder;)V
    .registers 4

    .line 497
    :try_start_0
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/self/maps"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_32

    .line 498
    :try_start_c
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n=====system_server MAPS info=====\n"

    .line 499
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    if-eqz v0, :cond_24

    .line 501
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 502
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_28

    goto :goto_15

    .line 505
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_32

    goto :goto_39

    :catchall_28
    move-exception p1

    .line 497
    :try_start_29
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception p0

    :try_start_2e
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_31
    throw p1
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_32} :catch_32

    :catch_32
    const-string p0, "Watchdog"

    const-string p1, "Failed to write system_server MAPS info"

    .line 506
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-void
.end method

.method public final getProcessInfo(Ljava/lang/StringBuilder;)V
    .registers 5

    const/4 p0, 0x0

    .line 515
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string/jumbo v1, "ps -A -o PID -o NAME"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 517
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1d} :catch_41
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_41
    .catchall {:try_start_1 .. :try_end_1d} :catchall_3d

    .line 518
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n=====all Process Status info (\'ps -A -o PID -o NAME\')=====\n"

    .line 519
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_26
    if-eqz p0, :cond_35

    .line 521
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    .line 522
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_34} :catch_3b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_34} :catch_3b
    .catchall {:try_start_1d .. :try_end_34} :catchall_39

    goto :goto_26

    .line 530
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_4d

    goto :goto_4d

    :catchall_39
    move-exception p0

    goto :goto_4e

    :catch_3b
    move-object p0, v1

    goto :goto_41

    :catchall_3d
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_4e

    :catch_41
    :goto_41
    :try_start_41
    const-string p1, "Watchdog"

    const-string v0, "Failed to write all Process Status info"

    .line 526
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_3d

    if-eqz p0, :cond_4d

    .line 530
    :try_start_4a
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4d

    :catch_4d
    :cond_4d
    :goto_4d
    return-void

    :goto_4e
    if-eqz v1, :cond_53

    :try_start_50
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_53

    .line 533
    :catch_53
    :cond_53
    throw p0
.end method

.method public final recordResult(Ljava/lang/StringBuilder;)V
    .registers 11

    const-string p0, "Watchdog"

    const-string v0, "chmod 640 /data/log/fd_list.txt"

    const-string v1, "chown system:log /data/log/fd_list.txt"

    const/4 v2, 0x0

    .line 543
    :try_start_7
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/log/fd_list.txt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "Failed to create fd_list.txt"

    .line 545
    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_1f
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 549
    new-instance v5, Landroid/util/Base64OutputStream;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 550
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v7, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 551
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 553
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 554
    invoke-virtual {v5}, Landroid/util/Base64OutputStream;->close()V

    .line 555
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 557
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FD_LIST_INFO **********\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nFD_LIST_INFO **********\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 559
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_69
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_69} :catch_8c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_69} :catch_8c
    .catchall {:try_start_7 .. :try_end_69} :catchall_8a

    .line 560
    :try_start_69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, p1, v6, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 561
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_73
    .catch Ljava/lang/SecurityException; {:try_start_69 .. :try_end_73} :catch_88
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_73} :catch_88
    .catchall {:try_start_69 .. :try_end_73} :catchall_85

    .line 567
    :try_start_73
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 568
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 569
    :goto_7d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_84} :catch_9e

    goto :goto_9e

    :catchall_85
    move-exception p0

    move-object v2, v4

    goto :goto_9f

    :catch_88
    move-object v2, v4

    goto :goto_8c

    :catchall_8a
    move-exception p0

    goto :goto_9f

    :catch_8c
    :goto_8c
    :try_start_8c
    const-string p1, "Failed to write contens in fd_list.txt"

    .line 563
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_8c .. :try_end_91} :catchall_8a

    if-eqz v2, :cond_9e

    .line 567
    :try_start_93
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 568
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_9d} :catch_9e

    goto :goto_7d

    :catch_9e
    :cond_9e
    :goto_9e
    return-void

    :goto_9f
    if-eqz v2, :cond_b2

    .line 567
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 568
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 569
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_b2} :catch_b2

    .line 572
    :catch_b2
    :cond_b2
    throw p0
.end method

.method public run()V
    .registers 9

    .line 577
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 578
    array-length v1, v0

    goto :goto_10

    :cond_f
    const/4 v1, -0x1

    .line 580
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===== fd_list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 582
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {p0, v2, v0}, Lcom/android/server/Watchdog$FileDescriptorWatcher;->getFdInfo(Ljava/lang/StringBuilder;[Ljava/io/File;)V

    .line 586
    invoke-virtual {p0, v2}, Lcom/android/server/Watchdog$FileDescriptorWatcher;->getMapInfo(Ljava/lang/StringBuilder;)V

    .line 587
    invoke-virtual {p0, v2}, Lcom/android/server/Watchdog$FileDescriptorWatcher;->getProcessInfo(Ljava/lang/StringBuilder;)V

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@ The number of fd in system_server is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", so we make fd_list.txt file for debugging."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {p0, v2}, Lcom/android/server/Watchdog$FileDescriptorWatcher;->recordResult(Ljava/lang/StringBuilder;)V

    return-void
.end method
