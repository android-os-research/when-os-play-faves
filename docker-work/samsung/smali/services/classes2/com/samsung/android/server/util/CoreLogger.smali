.class public Lcom/samsung/android/server/util/CoreLogger;
.super Ljava/lang/Object;
.source "CoreLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/util/CoreLogger$Builder;
    }
.end annotation


# instance fields
.field public final mBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mBufferSize:I

.field public final mDumpTitle:Ljava/lang/String;

.field public final mTag:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$lleg7G6A2RGke5JOsHT8q_4SSh4(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/util/CoreLogger;->lambda$print$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mTag:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/samsung/android/server/util/CoreLogger;->mDumpTitle:Ljava/lang/String;

    .line 75
    iput p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBufferSize:I

    if-lez p3, :cond_11

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-object p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/server/util/CoreLogger-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/util/CoreLogger;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static getBuilder()Lcom/samsung/android/server/util/CoreLogger$Builder;
    .registers 2

    .line 36
    new-instance v0, Lcom/samsung/android/server/util/CoreLogger$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/util/CoreLogger$Builder;-><init>(Lcom/samsung/android/server/util/CoreLogger$Builder-IA;)V

    return-object v0
.end method

.method public static synthetic lambda$print$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public log(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 11

    .line 84
    iget-object v0, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_d

    .line 85
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/util/CoreLogger;->mTag:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz p3, :cond_12

    .line 88
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    :cond_12
    iget-object p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    if-nez p1, :cond_17

    return-void

    .line 94
    :cond_17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 95
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "%02d-%02d %02d:%02d:%02d.%03d %s"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    .line 96
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v1, v5

    const/4 v3, 0x5

    .line 97
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    const/16 v4, 0xb

    .line 98
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const/16 v4, 0xc

    .line 99
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const/16 v4, 0xd

    .line 100
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0xe

    .line 101
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    const/4 p1, 0x6

    aput-object p2, v1, p1

    .line 95
    invoke-static {p3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 105
    :try_start_74
    iget-object p2, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    monitor-enter p2
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_90

    .line 106
    :try_start_77
    iget-object p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    iget v0, p0, Lcom/samsung/android/server/util/CoreLogger;->mBufferSize:I

    if-le p3, v0, :cond_86

    .line 107
    iget-object p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    invoke-interface {p3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 109
    :cond_86
    iget-object p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    monitor-exit p2

    goto :goto_98

    :catchall_8d
    move-exception p1

    monitor-exit p2
    :try_end_8f
    .catchall {:try_start_77 .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw p1
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_90} :catch_90

    :catch_90
    move-exception p1

    .line 112
    iget-object p0, p0, Lcom/samsung/android/server/util/CoreLogger;->mTag:Ljava/lang/String;

    const-string p2, "Fail to add logs"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_98
    return-void
.end method

.method public print(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 121
    :cond_5
    monitor-enter v0

    .line 122
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 123
    monitor-exit v0

    return-void

    .line 125
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/util/CoreLogger;->mDumpTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    iget-object p0, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/server/util/CoreLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/server/util/CoreLogger$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 127
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw p0
.end method
