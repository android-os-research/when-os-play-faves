.class public Lcom/android/server/SKLogger;
.super Ljava/lang/Object;
.source "SKLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SKLogger$SKHandler;,
        Lcom/android/server/SKLogger$SKFormatter;
    }
.end annotation


# static fields
.field public static LOG_LEVEL_DENIALS:I = 0x1

.field public static LOG_MAX_SIZE:I = 0x5000

.field public static LOG_NEW:Ljava/lang/String; = "/data/misc/audit/sk.log"

.field public static LOG_TAG:Ljava/lang/String; = "SKLogger"

.field public static mFormatterTxt:Lcom/android/server/SKLogger$SKFormatter;

.field public static mLogger:Ljava/util/logging/Logger;

.field public static final mSKLogger:Lcom/android/server/SKLogger;

.field public static mSKTxt:Lcom/android/server/SKLogger$SKHandler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/android/server/SKLogger;

    invoke-direct {v0}, Lcom/android/server/SKLogger;-><init>()V

    sput-object v0, Lcom/android/server/SKLogger;->mSKLogger:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getLogger()Lcom/android/server/SKLogger;
    .registers 7

    const-class v0, Lcom/android/server/SKLogger;

    monitor-enter v0

    .line 48
    :try_start_3
    sget-object v1, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_59

    if-nez v1, :cond_55

    const/4 v1, 0x0

    :try_start_8
    const-string v2, "SKLogger"

    .line 50
    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sput-object v2, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    const/4 v3, 0x0

    .line 51
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 52
    sget-object v2, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v2

    .line 53
    array-length v4, v2

    :goto_1b
    if-ge v3, v4, :cond_27

    aget-object v5, v2, v3

    .line 54
    sget-object v6, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    invoke-virtual {v6, v5}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_53
    .catchall {:try_start_8 .. :try_end_24} :catchall_59

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 57
    :cond_27
    :try_start_27
    new-instance v2, Lcom/android/server/SKLogger$SKHandler;

    new-instance v3, Lcom/android/server/SKLogger;

    invoke-direct {v3}, Lcom/android/server/SKLogger;-><init>()V

    sget-object v4, Lcom/android/server/SKLogger;->LOG_NEW:Ljava/lang/String;

    sget v5, Lcom/android/server/SKLogger;->LOG_MAX_SIZE:I

    int-to-long v5, v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/SKLogger$SKHandler;-><init>(Lcom/android/server/SKLogger;Ljava/lang/String;J)V

    sput-object v2, Lcom/android/server/SKLogger;->mSKTxt:Lcom/android/server/SKLogger$SKHandler;
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_38} :catch_51
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_38} :catch_53
    .catchall {:try_start_27 .. :try_end_38} :catchall_59

    .line 61
    :try_start_38
    new-instance v2, Lcom/android/server/SKLogger$SKFormatter;

    new-instance v3, Lcom/android/server/SKLogger;

    invoke-direct {v3}, Lcom/android/server/SKLogger;-><init>()V

    invoke-direct {v2, v3, v1}, Lcom/android/server/SKLogger$SKFormatter;-><init>(Lcom/android/server/SKLogger;Lcom/android/server/SKLogger$SKFormatter-IA;)V

    sput-object v2, Lcom/android/server/SKLogger;->mFormatterTxt:Lcom/android/server/SKLogger$SKFormatter;

    .line 62
    sget-object v3, Lcom/android/server/SKLogger;->mSKTxt:Lcom/android/server/SKLogger$SKHandler;

    invoke-virtual {v3, v2}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 63
    sget-object v2, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v3, Lcom/android/server/SKLogger;->mSKTxt:Lcom/android/server/SKLogger$SKHandler;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_50} :catch_53
    .catchall {:try_start_38 .. :try_end_50} :catchall_59

    goto :goto_55

    .line 59
    :catch_51
    monitor-exit v0

    return-object v1

    .line 65
    :catch_53
    monitor-exit v0

    return-object v1

    .line 69
    :cond_55
    :goto_55
    :try_start_55
    sget-object v1, Lcom/android/server/SKLogger;->mSKLogger:Lcom/android/server/SKLogger;
    :try_end_57
    .catchall {:try_start_55 .. :try_end_57} :catchall_59

    monitor-exit v0

    return-object v1

    :catchall_59
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    move-object v1, p0

    :goto_6
    if-eqz v1, :cond_12

    .line 152
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_d

    return-object v0

    .line 155
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_6

    .line 158
    :cond_12
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 159
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 160
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 161
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    if-ltz p1, :cond_3

    return-void

    .line 91
    :cond_3
    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    const-string v0, "%d.%m.%Y %H:%M:%S"

    .line 93
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    if-ltz p1, :cond_19

    const-string p1, "SK-Allowed <"

    goto :goto_1b

    :cond_19
    const-string p1, "SK-Denied <"

    .line 96
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {p0, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "> < "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "srcInfo="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "> <"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "DestInfo "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "dest_service="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " dest_method="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 107
    sget-object p1, Lcom/android/server/SKLogger;->mSKLogger:Lcom/android/server/SKLogger;

    monitor-enter p1

    .line 108
    :try_start_c0
    sget-object p2, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 109
    monitor-exit p1

    return-void

    :catchall_c9
    move-exception p0

    monitor-exit p1
    :try_end_cb
    .catchall {:try_start_c0 .. :try_end_cb} :catchall_c9

    throw p0
.end method

.method public logAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 114
    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    const-string v0, "%d.%m.%Y %H:%M:%S"

    .line 116
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "%d.%m.%Y %H:%M:%S"

    .line 118
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 121
    sget-object p1, Lcom/android/server/SKLogger;->mSKLogger:Lcom/android/server/SKLogger;

    monitor-enter p1

    .line 122
    :try_start_42
    sget-object p2, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 123
    monitor-exit p1

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 128
    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    const-string v0, "%d.%m.%Y %H:%M:%S"

    .line 130
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "%d.%m.%Y %H:%M:%S"

    .line 132
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/server/SKLogger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 136
    sget-object p1, Lcom/android/server/SKLogger;->mSKLogger:Lcom/android/server/SKLogger;

    monitor-enter p1

    .line 137
    :try_start_5a
    sget-object p2, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 138
    monitor-exit p1

    return-void

    :catchall_63
    move-exception p0

    monitor-exit p1
    :try_end_65
    .catchall {:try_start_5a .. :try_end_65} :catchall_63

    throw p0
.end method
