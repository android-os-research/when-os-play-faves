.class public Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMaxLog;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TxRxMaxLog"
.end annotation


# instance fields
.field private final blacklist mLog:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMaxLines:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3

    .line 8201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8202
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMaxLog;->mMaxLines:I

    .line 8203
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMaxLog;->mLog:Ljava/util/Deque;

    return-void
.end method

.method private declared-synchronized blacklist append(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 8214
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMaxLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMaxLog;->mMaxLines:I

    if-lt v0, v1, :cond_11

    .line 8215
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMaxLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    goto :goto_1

    .line 8217
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMaxLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 8218
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 8221
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMaxLog;->mLog:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 8222
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_17

    .line 8223
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    goto :goto_7

    .line 8225
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist log(Ljava/lang/String;)V
    .registers 5

    .line 8207
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMaxLog;->mMaxLines:I

    if-gtz v0, :cond_5

    return-void

    .line 8208
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 8209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const/4 v0, 0x6

    aput-object p1, v1, v0

    const-string p1, "%ty-%tm-%td_%tH:%tM:%tS %s"

    .line 8210
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMaxLog;->append(Ljava/lang/String;)V

    return-void
.end method
