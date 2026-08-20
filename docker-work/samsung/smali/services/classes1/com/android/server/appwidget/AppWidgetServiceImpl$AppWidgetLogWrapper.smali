.class public Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppWidgetLogWrapper"
.end annotation


# static fields
.field public static final LOG_FILE_MAX_COUNT:I = 0x2

.field public static final LOG_FILE_SIZE_LIMIT:I = 0x2800

.field public static final TAG:Ljava/lang/String; = "AppWidgetLogWrapper"

.field public static final WIDGET_LOG_FILE_NAME:Ljava/lang/String; = "/data/log/appwidget_history_log%g.txt"

.field public static final date:Ljava/util/Date;

.field public static final formatter:Landroid/icu/text/SimpleDateFormat;

.field public static widget_fileHandler:Ljava/util/logging/FileHandler;

.field public static widget_logger:Ljava/util/logging/Logger;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetdate()Ljava/util/Date;
    .registers 1

    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->date:Ljava/util/Date;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetformatter()Landroid/icu/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->formatter:Landroid/icu/text/SimpleDateFormat;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 5

    .line 6432
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    .line 6433
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM-dd HH:mm:ss.SSS: "

    invoke-direct {v0, v2, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->formatter:Landroid/icu/text/SimpleDateFormat;

    .line 6434
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->date:Ljava/util/Date;

    .line 6441
    :try_start_14
    new-instance v0, Ljava/util/logging/FileHandler;

    const-string v1, "/data/log/appwidget_history_log%g.txt"

    const/16 v2, 0x2800

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->widget_fileHandler:Ljava/util/logging/FileHandler;

    .line 6444
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper$1;

    invoke-direct {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 6456
    const-class v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->widget_logger:Ljava/util/logging/Logger;

    .line 6457
    sget-object v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->widget_fileHandler:Ljava/util/logging/FileHandler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 6458
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->widget_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 6459
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->widget_logger:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_47} :catch_48

    goto :goto_63

    :catch_48
    move-exception v0

    .line 6462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not use AppWidgetLogWrapper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetLogWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogText()Ljava/lang/StringBuilder;
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/io/File;

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_27

    .line 6477
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/log/appwidget_history_log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 6479
    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2c
    if-ge v2, v0, :cond_7f

    .line 6481
    aget-object v4, v1, v2

    if-eqz v4, :cond_7c

    .line 6482
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_39

    goto :goto_7c

    .line 6486
    :cond_39
    :try_start_39
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_43} :catch_63

    .line 6489
    :goto_43
    :try_start_43
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xa

    if-eqz v4, :cond_52

    .line 6491
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6492
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_59

    goto :goto_43

    .line 6496
    :cond_52
    :try_start_52
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_63

    .line 6501
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7c

    :catchall_59
    move-exception v0

    .line 6486
    :try_start_5a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception v1

    :try_start_5f
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_62
    throw v0
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_63} :catch_63

    :catch_63
    move-exception v0

    .line 6497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not use getWidgetLogText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetLogWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_7c
    :goto_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_7f
    return-object v3
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 6467
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->widget_logger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_23

    .line 6468
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    .line 6469
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const-string v3, "V %s(%d): %s\n"

    .line 6468
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 6471
    :cond_23
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
