.class Lcom/android/internal/os/RuntimeInit$LoggingHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggingHandler"
.end annotation


# instance fields
.field public volatile blacklist mTriggered:Z


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->mTriggered:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/RuntimeInit$LoggingHandler-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$LoggingHandler;-><init>()V

    return-void
.end method

.method private blacklist getPackageName(I)Ljava/lang/String;
    .registers 13
    .param p1, "pid"    # I

    .line 140
    const-string/jumbo v0, "system_server"

    const-string v1, "IO errors occurred during closing file."

    const-string v2, "AndroidRuntime"

    const/4 v3, 0x0

    .line 141
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 143
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_9
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/%d/cmdline"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v5

    .line 145
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 146
    if-eqz v3, :cond_34

    .line 147
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_33} :catch_41
    .catchall {:try_start_9 .. :try_end_33} :catchall_3f

    .end local v3    # "packageName":Ljava/lang/String;
    .local v0, "packageName":Ljava/lang/String;
    goto :goto_35

    .line 149
    .end local v0    # "packageName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_34
    nop

    .line 156
    .end local v3    # "packageName":Ljava/lang/String;
    .restart local v0    # "packageName":Ljava/lang/String;
    :goto_35
    nop

    .line 157
    :try_start_36
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 161
    :cond_39
    :goto_39
    goto :goto_4e

    .line 159
    :catch_3a
    move-exception v3

    .line 160
    .local v3, "ce":Ljava/io/IOException;
    invoke-static {v2, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v3    # "ce":Ljava/io/IOException;
    goto :goto_4e

    .line 155
    .end local v0    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    :catchall_3f
    move-exception v0

    goto :goto_4f

    .line 151
    :catch_41
    move-exception v5

    .line 152
    .local v5, "e":Ljava/io/IOException;
    :try_start_42
    const-string v6, "IO errors occurred."

    invoke-static {v2, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_3f

    .line 153
    nop

    .line 156
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v0    # "packageName":Ljava/lang/String;
    if-eqz v4, :cond_39

    .line 157
    :try_start_4a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_3a

    goto :goto_39

    .line 163
    :goto_4e
    return-object v0

    .line 156
    .end local v0    # "packageName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    :goto_4f
    if-eqz v4, :cond_5a

    .line 157
    :try_start_51
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_5a

    .line 159
    :catch_55
    move-exception v5

    .line 160
    .local v5, "ce":Ljava/io/IOException;
    invoke-static {v2, v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    .line 161
    .end local v5    # "ce":Ljava/io/IOException;
    :cond_5a
    :goto_5a
    nop

    .line 162
    :goto_5b
    throw v0
.end method


# virtual methods
.method public whitelist test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->mTriggered:Z

    .line 113
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfgetmCrashing()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 118
    :cond_a
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_9b

    const/16 v0, 0x3e8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_9b

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidRuntime"

    invoke-static {v1, v0, p2}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$smClog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const-string v0, "P|EX"

    .line 122
    .local v0, "reason":Ljava/lang/String;
    :try_start_36
    const-string v2, "NPE by silent reset. It\'s normal operation caused by device care"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 123
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_69

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HeapFull"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_69

    const-string v2, "ro.boot.debug_level"

    .line 124
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0x4f4c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 125
    :cond_66
    const-string v2, "P|SR"
    :try_end_68
    .catchall {:try_start_36 .. :try_end_68} :catchall_6a

    move-object v0, v2

    .line 129
    :cond_69
    goto :goto_6b

    .line 127
    :catchall_6a
    move-exception v2

    .line 130
    :goto_6b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "system_server"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@*** saveResetReason with reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$smMlog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Debug;->saveResetReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v0    # "reason":Ljava/lang/String;
    :cond_9a
    goto :goto_aa

    .line 135
    :cond_9b
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Lcom/android/internal/os/RuntimeInit;->logUncaught(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 137
    :goto_aa
    return-void
.end method
