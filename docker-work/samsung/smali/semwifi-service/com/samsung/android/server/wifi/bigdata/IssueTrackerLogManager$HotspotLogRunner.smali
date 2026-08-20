.class Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;
.super Ljava/lang/Object;
.source "IssueTrackerLogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotspotLogRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)V
    .registers 2

    .line 271
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;-><init>(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)V

    return-void
.end method

.method private captureNativeCommandResult(Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 299
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 300
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 301
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 302
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 304
    :goto_1b
    :try_start_1b
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 305
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_2c

    goto :goto_1b

    .line 308
    :cond_28
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_2c
    move-exception p0

    .line 301
    :try_start_2d
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_35
    throw p0
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 273
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$mgetTimeToString(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;Z)Ljava/lang/String;

    move-result-object v0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HotspotLogRunner run, currentTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isRunning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fgetisHotspotLogRunning(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifi.IssueTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/log/wifi/net_dev_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    :try_start_41
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_52} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_52} :catch_91

    .line 280
    :try_start_52
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 281
    :goto_55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fgetisHotspotLogRunning(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fgetwifiManagerProxy(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_83

    const-string v0, "date"

    .line 283
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;->captureNativeCommandResult(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    const-string v0, "cat /proc/net/dev"

    .line 284
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;->captureNativeCommandResult(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    const-wide/16 v3, 0x384

    .line 286
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_82
    .catchall {:try_start_52 .. :try_end_82} :catchall_87

    goto :goto_55

    .line 288
    :cond_83
    :try_start_83
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_86
    .catch Ljava/lang/InterruptedException; {:try_start_83 .. :try_end_86} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_91

    goto :goto_bc

    :catchall_87
    move-exception v0

    .line 278
    :try_start_88
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_90

    :catchall_8c
    move-exception v1

    :try_start_8d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_90
    throw v0
    :try_end_91
    .catch Ljava/lang/InterruptedException; {:try_start_8d .. :try_end_91} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_91} :catch_91

    :catch_91
    move-exception v0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DebugLogLoop Exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    :catch_a7
    move-exception v0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DebugLogLoop InterruptedException:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_bc
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$HotspotLogRunner;->this$0:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;Z)V

    const-string p0, "HotspotLogRunner finish"

    .line 294
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
