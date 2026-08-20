.class public Lcom/android/server/UiModeManagerService$LogWrapper;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogWrapper"
.end annotation


# static fields
.field public static final LOG_FILE_MAX_COUNT:I = 0x2

.field public static final LOG_FILE_NAME:Ljava/lang/String; = "/data/log/dark_mode_log%g.txt"

.field public static final LOG_FILE_SIZE_LIMIT:I = 0x1400

.field public static final TAG:Ljava/lang/String; = "LogWrapper"

.field public static final date:Ljava/util/Date;

.field public static fileHandler:Ljava/util/logging/FileHandler;

.field public static final formatter:Landroid/icu/text/SimpleDateFormat;

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetdate()Ljava/util/Date;
    .registers 1

    sget-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->date:Ljava/util/Date;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetformatter()Landroid/icu/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->formatter:Landroid/icu/text/SimpleDateFormat;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 5

    .line 2469
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    .line 2470
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM-dd HH:mm:ss.SSS: "

    invoke-direct {v0, v2, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->formatter:Landroid/icu/text/SimpleDateFormat;

    .line 2471
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->date:Ljava/util/Date;

    .line 2477
    :try_start_14
    new-instance v0, Ljava/util/logging/FileHandler;

    const-string v1, "/data/log/dark_mode_log%g.txt"

    const/16 v2, 0x1400

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->fileHandler:Ljava/util/logging/FileHandler;

    .line 2480
    new-instance v1, Lcom/android/server/UiModeManagerService$LogWrapper$1;

    invoke-direct {v1}, Lcom/android/server/UiModeManagerService$LogWrapper$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 2492
    const-class v0, Lcom/android/server/UiModeManagerService$LogWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->logger:Ljava/util/logging/Logger;

    .line 2493
    sget-object v1, Lcom/android/server/UiModeManagerService$LogWrapper;->fileHandler:Ljava/util/logging/FileHandler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 2494
    sget-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 2495
    sget-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->logger:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_47} :catch_48

    goto :goto_63

    :catch_48
    move-exception v0

    .line 2497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not use LogWrapper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogText()Ljava/lang/StringBuilder;
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/io/File;

    .line 2511
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/log/dark_mode_log0.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2512
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/log/dark_mode_log1.txt"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 2514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1c
    if-ge v3, v0, :cond_6c

    .line 2516
    aget-object v4, v1, v3

    .line 2517
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_27

    goto :goto_46

    .line 2521
    :cond_27
    :try_start_27
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_53

    .line 2524
    :goto_31
    :try_start_31
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xa

    if-eqz v4, :cond_40

    .line 2525
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2526
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_49

    goto :goto_31

    .line 2528
    :cond_40
    :try_start_40
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_53

    .line 2532
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :catchall_49
    move-exception v0

    .line 2521
    :try_start_4a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v1

    :try_start_4f
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_52
    throw v0
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_53} :catch_53

    :catch_53
    move-exception v0

    .line 2529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not use getLogText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_6c
    return-object v2
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 2502
    sget-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->logger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_23

    .line 2503
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    .line 2504
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const-string v3, "V %s(%d): %s\n"

    .line 2503
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2506
    :cond_23
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
