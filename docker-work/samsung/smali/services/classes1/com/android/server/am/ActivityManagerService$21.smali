.class public Lcom/android/server/am/ActivityManagerService$21;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field public final synthetic val$dataFile:Ljava/io/File;

.field public final synthetic val$dbox:Landroid/os/DropBoxManager;

.field public final synthetic val$dropboxTag:Ljava/lang/String;

.field public final synthetic val$report:Ljava/lang/String;

.field public final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;)V
    .registers 9

    .line 10916
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$21;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$21;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$21;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const-string v0, "-b"

    .line 10919
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$21;->val$report:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 10920
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10923
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logcat_for_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "max_error_bytes_for_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10925
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$21;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 10926
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$21;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 10927
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/high16 v5, 0x80000

    .line 10926
    invoke-static {v3, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 10928
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x64

    sub-int/2addr v2, v3

    .line 10931
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dataFile:Ljava/io/File;

    const-string v5, "ActivityManager"

    if-eqz v3, :cond_83

    if-lez v2, :cond_83

    .line 10933
    :try_start_60
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    const-string v7, "\n\n[[TRUNCATED]]"

    invoke-static {v3, v2, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_6b} :catch_6c

    goto :goto_83

    :catch_6c
    move-exception v2

    .line 10936
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dataFile:Ljava/io/File;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10939
    :cond_83
    :goto_83
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$21;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v2, :cond_90

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v2, :cond_90

    .line 10940
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_90
    if-lez v1, :cond_14a

    .line 10944
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 10948
    :try_start_9a
    new-instance v3, Ljava/lang/ProcessBuilder;

    const/16 v6, 0x11

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "/system/bin/timeout"

    aput-object v7, v6, v4

    const-string v7, "-s"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    const-string v9, "SEGV"

    aput-object v9, v6, v7

    const/4 v7, 0x3

    const-string v9, "10s"

    aput-object v9, v6, v7

    const/4 v7, 0x4

    const-string v9, "/system/bin/logcat"

    aput-object v9, v6, v7

    const/4 v7, 0x5

    const-string v9, "-v"

    aput-object v9, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v9, "threadtime"

    aput-object v9, v6, v7

    const/4 v7, 0x7

    aput-object v0, v6, v7

    const/16 v7, 0x8

    const-string v9, "events"

    aput-object v9, v6, v7

    const/16 v7, 0x9

    aput-object v0, v6, v7

    const/16 v7, 0xa

    const-string/jumbo v9, "system"

    aput-object v9, v6, v7

    const/16 v7, 0xb

    aput-object v0, v6, v7

    const/16 v7, 0xc

    const-string/jumbo v9, "main"

    aput-object v9, v6, v7

    const/16 v7, 0xd

    aput-object v0, v6, v7

    const/16 v0, 0xe

    const-string v7, "crash"

    aput-object v7, v6, v0

    const/16 v0, 0xf

    const-string v7, "-t"

    aput-object v7, v6, v0

    const/16 v0, 0x10

    .line 10954
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-direct {v3, v6}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 10955
    invoke-virtual {v3, v8}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_105} :catch_138
    .catchall {:try_start_9a .. :try_end_105} :catchall_136

    .line 10957
    :try_start_105
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_10c} :catch_10c
    .catchall {:try_start_105 .. :try_end_10c} :catchall_136

    .line 10958
    :catch_10c
    :try_start_10c
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_113} :catch_113
    .catchall {:try_start_10c .. :try_end_113} :catchall_136

    .line 10959
    :catch_113
    :try_start_113
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_11c} :catch_138
    .catchall {:try_start_113 .. :try_end_11c} :catchall_136

    const/16 v0, 0x2000

    :try_start_11e
    new-array v0, v0, [C

    .line 10963
    :goto_120
    invoke-virtual {v1, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    if-lez v2, :cond_12c

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_12b} :catch_133
    .catchall {:try_start_11e .. :try_end_12b} :catchall_130

    goto :goto_120

    .line 10967
    :cond_12c
    :try_start_12c
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_12f} :catch_14a

    goto :goto_14a

    :catchall_130
    move-exception p0

    move-object v2, v1

    goto :goto_144

    :catch_133
    move-exception v0

    move-object v2, v1

    goto :goto_139

    :catchall_136
    move-exception p0

    goto :goto_144

    :catch_138
    move-exception v0

    :goto_139
    :try_start_139
    const-string v1, "Error running logcat"

    .line 10965
    invoke-static {v5, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13e
    .catchall {:try_start_139 .. :try_end_13e} :catchall_136

    if-eqz v2, :cond_14a

    .line 10967
    :try_start_140
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_143} :catch_14a

    goto :goto_14a

    :goto_144
    if-eqz v2, :cond_149

    :try_start_146
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_149} :catch_149

    .line 10968
    :catch_149
    :cond_149
    throw p0

    .line 10971
    :catch_14a
    :cond_14a
    :goto_14a
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dropboxTag:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
