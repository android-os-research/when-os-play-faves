.class public Landroid/util/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/EventLog$Event;
    }
.end annotation


# static fields
.field private static final greylist-max-o COMMENT_PATTERN:Ljava/lang/String; = "^\\s*(#.*)?$"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "EventLog"

.field private static final greylist-max-o TAGS_FILE:Ljava/lang/String; = "/system/etc/event-log-tags"

.field private static final greylist-max-o TAG_PATTERN:Ljava/lang/String; = "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

.field private static greylist-max-o sTagCodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sTagNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    const/4 v0, 0x0

    sput-object v0, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    .line 60
    sput-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getTagCode(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 411
    invoke-static {}, Landroid/util/EventLog;->readTagsFile()V

    .line 412
    sget-object v0, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 413
    .local v0, "code":Ljava/lang/Integer;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, -0x1

    :goto_13
    return v1
.end method

.method public static whitelist getTagName(I)Ljava/lang/String;
    .registers 3
    .param p0, "tag"    # I

    .line 401
    invoke-static {}, Landroid/util/EventLog;->readTagsFile()V

    .line 402
    sget-object v0, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static native whitelist readEvents([ILjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Collection<",
            "Landroid/util/EventLog$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native whitelist readEventsOnWrapping([IJLjava/util/Collection;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IJ",
            "Ljava/util/Collection<",
            "Landroid/util/EventLog$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static declared-synchronized greylist-max-o readTagsFile()V
    .registers 10

    const-class v0, Landroid/util/EventLog;

    monitor-enter v0

    .line 420
    :try_start_3
    sget-object v1, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    if-eqz v1, :cond_d

    sget-object v1, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_c8

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    .line 422
    :cond_d
    :try_start_d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    .line 423
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    .line 425
    const-string v1, "^\\s*(#.*)?$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 426
    .local v1, "comment":Ljava/util/regex/Pattern;
    const-string v2, "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_c8

    .line 427
    .local v2, "tag":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 431
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_28
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/system/etc/event-log-tags"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x100

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v4

    .line 432
    :goto_37
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_a7

    .line 433
    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_37

    .line 435
    :cond_49
    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 436
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_6c

    .line 437
    const-string v6, "EventLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad entry in /system/etc/event-log-tags: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_6b} :catch_af
    .catchall {:try_start_28 .. :try_end_6b} :catchall_ad

    .line 438
    goto :goto_37

    .line 442
    :cond_6c
    const/4 v6, 0x1

    :try_start_6d
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 443
    .local v6, "num":I
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 444
    .local v7, "name":Ljava/lang/String;
    sget-object v8, Landroid/util/EventLog;->sTagCodes:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v8, Landroid/util/EventLog;->sTagNames:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_8c} :catch_8d
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_8c} :catch_af
    .catchall {:try_start_6d .. :try_end_8c} :catchall_ad

    .line 448
    .end local v6    # "num":I
    .end local v7    # "name":Ljava/lang/String;
    goto :goto_a6

    .line 446
    :catch_8d
    move-exception v6

    .line 447
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_8e
    const-string v7, "EventLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in /system/etc/event-log-tags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_a6} :catch_af
    .catchall {:try_start_8e .. :try_end_a6} :catchall_ad

    .line 449
    .end local v4    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_a6
    goto :goto_37

    .line 454
    :cond_a7
    :try_start_a7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ab
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_c8

    goto :goto_be

    :catch_ab
    move-exception v4

    .line 455
    goto :goto_be

    .line 454
    .end local v5    # "line":Ljava/lang/String;
    :catchall_ad
    move-exception v4

    goto :goto_c0

    .line 450
    :catch_af
    move-exception v4

    .line 451
    .local v4, "e":Ljava/io/IOException;
    :try_start_b0
    const-string v5, "EventLog"

    const-string v6, "Error reading /system/etc/event-log-tags"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b7
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_ad

    .line 454
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_be

    :try_start_b9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_bd
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_c8

    goto :goto_be

    :catch_bd
    move-exception v4

    .line 456
    :cond_be
    :goto_be
    monitor-exit v0

    return-void

    .line 454
    :goto_c0
    if-eqz v3, :cond_c7

    :try_start_c2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_c8

    goto :goto_c7

    :catch_c6
    move-exception v5

    .line 455
    :cond_c7
    :goto_c7
    :try_start_c7
    throw v4
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c8

    .line 419
    .end local v1    # "comment":Ljava/util/regex/Pattern;
    .end local v2    # "tag":Ljava/util/regex/Pattern;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_c8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static native whitelist writeEvent(IF)I
.end method

.method public static native whitelist writeEvent(II)I
.end method

.method public static native whitelist writeEvent(IJ)I
.end method

.method public static native whitelist writeEvent(ILjava/lang/String;)I
.end method

.method public static varargs native whitelist writeEvent(I[Ljava/lang/Object;)I
.end method
