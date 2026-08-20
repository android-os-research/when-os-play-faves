.class Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;
.super Ljava/lang/Object;
.source "SemWifiApServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DebugLogLoop"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 2

    .line 2669
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const-string v0, "\n"

    const-string v1, "SemWifiApServiceImpl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2673
    :try_start_6
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$mgetTimeToStringSec(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Ljava/lang/String;

    move-result-object v4

    .line 2674
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DebugLogLoop run() currentTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isHotspotLogRunning:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/log/wifi/net_dev_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2676
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_4d} :catch_202
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4d} :catch_1e2
    .catchall {:try_start_6 .. :try_end_4d} :catchall_1e0

    if-nez v6, :cond_c4

    .line 2678
    :try_start_4f
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v6
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_53} :catch_af
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_53} :catch_202
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_1e2
    .catchall {:try_start_4f .. :try_end_53} :catchall_1e0

    const-string v7, "net_dev_"

    if-nez v6, :cond_6e

    .line 2679
    :try_start_57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".txt file is not created"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    :cond_6e
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_97

    .line 2682
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_79} :catch_af
    .catch Ljava/lang/InterruptedException; {:try_start_57 .. :try_end_79} :catch_202
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_79} :catch_1e2
    .catchall {:try_start_57 .. :try_end_79} :catchall_1e0

    :try_start_79
    const-string v3, "1"

    .line 2683
    invoke-virtual {v4, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 2684
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 2685
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_84} :catch_92
    .catch Ljava/lang/InterruptedException; {:try_start_79 .. :try_end_84} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_84} :catch_8a
    .catchall {:try_start_79 .. :try_end_84} :catchall_86

    move-object v3, v4

    goto :goto_c4

    :catchall_86
    move-exception p0

    move-object v3, v4

    goto/16 :goto_227

    :catch_8a
    move-exception v0

    move-object v3, v4

    goto/16 :goto_1e3

    :catch_8e
    move-exception v0

    move-object v3, v4

    goto/16 :goto_203

    :catch_92
    move-exception v3

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_b0

    .line 2687
    :cond_97
    :try_start_97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".txt file is not exist"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_ae} :catch_af
    .catch Ljava/lang/InterruptedException; {:try_start_97 .. :try_end_ae} :catch_202
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_ae} :catch_1e2
    .catchall {:try_start_97 .. :try_end_ae} :catchall_1e0

    return-void

    :catch_af
    move-exception v4

    .line 2691
    :goto_b0
    :try_start_b0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createNewFile exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    :cond_c4
    :goto_c4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_1da

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Z

    move-result v4

    if-eqz v4, :cond_1da

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApEnabled()Z

    move-result v4
    :try_end_e0
    .catch Ljava/lang/InterruptedException; {:try_start_b0 .. :try_end_e0} :catch_202
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_e0} :catch_1e2
    .catchall {:try_start_b0 .. :try_end_e0} :catchall_1e0

    if-eqz v4, :cond_1da

    :try_start_e2
    const-string v4, "date"

    .line 2698
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_ec} :catch_1c5
    .catch Ljava/lang/InterruptedException; {:try_start_e2 .. :try_end_ec} :catch_202
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_ec} :catch_1e2
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_1e0

    const/4 v6, 0x1

    .line 2700
    :try_start_ed
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 2701
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 2702
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2704
    :goto_103
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11c

    .line 2705
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_103

    .line 2707
    :cond_11c
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_14f

    .line 2708
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_127
    .catch Ljava/lang/InterruptedException; {:try_start_ed .. :try_end_127} :catch_141
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_127} :catch_1c5
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_127} :catch_1e2
    .catchall {:try_start_ed .. :try_end_127} :catchall_1e0

    .line 2709
    :try_start_127
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 2710
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 2711
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_134
    .catch Ljava/lang/InterruptedException; {:try_start_127 .. :try_end_134} :catch_13c
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_134} :catch_136
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_134} :catch_8a
    .catchall {:try_start_127 .. :try_end_134} :catchall_86

    move-object v3, v4

    goto :goto_14f

    :catch_136
    move-exception v3

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto/16 :goto_1c6

    :catch_13c
    move-exception v3

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_142

    :catch_141
    move-exception v4

    :goto_142
    :try_start_142
    const-string v7, "dumpP1 InterruptedException"

    .line 2714
    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2716
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v4, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Z)V

    :cond_14f
    :goto_14f
    const-string v4, "cat /proc/net/dev"

    .line 2719
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_159} :catch_1c5
    .catch Ljava/lang/InterruptedException; {:try_start_142 .. :try_end_159} :catch_202
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_159} :catch_1e2
    .catchall {:try_start_142 .. :try_end_159} :catchall_1e0

    .line 2721
    :try_start_159
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 2722
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 2723
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2725
    :goto_16f
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_188

    .line 2726
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_16f

    .line 2728
    :cond_188
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1d3

    .line 2729
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_193
    .catch Ljava/lang/InterruptedException; {:try_start_159 .. :try_end_193} :catch_1b6
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_193} :catch_1c5
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_193} :catch_1e2
    .catchall {:try_start_159 .. :try_end_193} :catchall_1e0

    .line 2730
    :try_start_193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 2731
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 2732
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_1af
    .catch Ljava/lang/InterruptedException; {:try_start_193 .. :try_end_1af} :catch_1b1
    .catch Ljava/io/IOException; {:try_start_193 .. :try_end_1af} :catch_136
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_1af} :catch_8a
    .catchall {:try_start_193 .. :try_end_1af} :catchall_86

    move-object v3, v4

    goto :goto_1d3

    :catch_1b1
    move-exception v3

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_1b7

    :catch_1b6
    move-exception v4

    :goto_1b7
    :try_start_1b7
    const-string v6, "dumpP2 InterruptedException"

    .line 2735
    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2737
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v4, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Z)V
    :try_end_1c4
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1c4} :catch_1c5
    .catch Ljava/lang/InterruptedException; {:try_start_1b7 .. :try_end_1c4} :catch_202
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1c4} :catch_1e2
    .catchall {:try_start_1b7 .. :try_end_1c4} :catchall_1e0

    goto :goto_1d3

    :catch_1c5
    move-exception v4

    :goto_1c6
    :try_start_1c6
    const-string v6, "IOException"

    .line 2740
    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 2742
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {v4, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Z)V

    :cond_1d3
    :goto_1d3
    const-wide/16 v6, 0x384

    .line 2744
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d8
    .catch Ljava/lang/InterruptedException; {:try_start_1c6 .. :try_end_1d8} :catch_202
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1d8} :catch_1e2
    .catchall {:try_start_1c6 .. :try_end_1d8} :catchall_1e0

    goto/16 :goto_c4

    :cond_1da
    if-eqz v3, :cond_226

    .line 2755
    :try_start_1dc
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1df
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_1df} :catch_222

    goto :goto_226

    :catchall_1e0
    move-exception p0

    goto :goto_227

    :catch_1e2
    move-exception v0

    .line 2750
    :goto_1e3
    :try_start_1e3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DebugLogLoop Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Z)V
    :try_end_1fc
    .catchall {:try_start_1e3 .. :try_end_1fc} :catchall_1e0

    if-eqz v3, :cond_226

    .line 2755
    :try_start_1fe
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_201
    .catch Ljava/io/IOException; {:try_start_1fe .. :try_end_201} :catch_222

    goto :goto_226

    :catch_202
    move-exception v0

    .line 2747
    :goto_203
    :try_start_203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DebugLogLoop InterruptedException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Z)V
    :try_end_21c
    .catchall {:try_start_203 .. :try_end_21c} :catchall_1e0

    if-eqz v3, :cond_226

    .line 2755
    :try_start_21e
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_221
    .catch Ljava/io/IOException; {:try_start_21e .. :try_end_221} :catch_222

    goto :goto_226

    :catch_222
    move-exception p0

    .line 2758
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_226
    :goto_226
    return-void

    :goto_227
    if-eqz v3, :cond_231

    .line 2755
    :try_start_229
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_22c
    .catch Ljava/io/IOException; {:try_start_229 .. :try_end_22c} :catch_22d

    goto :goto_231

    :catch_22d
    move-exception v0

    .line 2758
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2760
    :cond_231
    :goto_231
    throw p0
.end method
