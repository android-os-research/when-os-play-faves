.class public final Lcom/android/server/wm/SluggishDetector$PerfmondReceiver;
.super Ljava/lang/Object;
.source "SluggishDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PerfmondReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const-string p0, ""

    .line 1113
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERFMOND] start connect to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetPerfmondSocketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' socket, TID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetmReceiverThread()Ljava/lang/Thread;

    move-result-object v2

    .line 1114
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1113
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1117
    :try_start_2f
    new-instance v1, Landroid/net/LocalServerSocket;

    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetPerfmondSocketName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_38} :catch_57
    .catchall {:try_start_2f .. :try_end_38} :catchall_4c

    .line 1118
    :try_start_38
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    .line 1119
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1120
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1121
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_4a} :catch_58
    .catchall {:try_start_38 .. :try_end_4a} :catchall_4d

    move-object v0, v2

    goto :goto_61

    :catchall_4c
    move-object v1, v0

    .line 1126
    :catchall_4d
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[PERFMOND] LocalSocket receiver Exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :catch_57
    move-object v1, v0

    .line 1124
    :catch_58
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[PERFMOND] LocalServerSocket Exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :goto_61
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[PERFMOND] connected !!! "

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6a
    const/16 v2, 0xa

    :try_start_6c
    new-array v2, v2, [C

    .line 1138
    :goto_6e
    invoke-virtual {v0, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_ed

    .line 1140
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_bb

    .line 1146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u0000"

    .line 1147
    invoke-virtual {v4, v5, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1149
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PERFMOND] charsRead ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " message = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 1141
    :cond_bb
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread interrupted...start to exit - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetPerfmondSocketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", TID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetmReceiverThread()Ljava/lang/Thread;

    move-result-object v2

    .line 1142
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1141
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    .line 1153
    :cond_ed
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[PERFMOND] read == -1 Termination for perfmond_sock"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catch Ljava/lang/InterruptedException; {:try_start_6c .. :try_end_f6} :catch_103
    .catchall {:try_start_6c .. :try_end_f6} :catchall_f8

    goto/16 :goto_6a

    :catchall_f8
    move-exception p0

    .line 1158
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[PERFMOND] Uncaught exception "

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10c

    .line 1156
    :catch_103
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[PERFMOND] Thread is terminated by InterruptedException"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :goto_10c
    :try_start_10c
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_10f} :catch_10f

    :catch_10f
    return-void
.end method
