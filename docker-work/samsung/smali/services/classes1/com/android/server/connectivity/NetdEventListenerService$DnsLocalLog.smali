.class public Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;
.super Ljava/lang/Object;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetdEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DnsLocalLog"
.end annotation


# instance fields
.field public final mLog:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mMaxLines:I

.field public final synthetic this$0:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetdEventListenerService;I)V
    .registers 3

    .line 675
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 676
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mMaxLines:I

    .line 677
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public final declared-synchronized append(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 681
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mMaxLines:I

    if-lt v0, v1, :cond_11

    .line 682
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    goto :goto_1

    .line 684
    :cond_11
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 685
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 5

    monitor-enter p0

    .line 709
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 710
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 711
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x36

    invoke-virtual {p0, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1f

    goto :goto_7

    .line 713
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final encrypt(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    const-string p0, ""

    const/4 v0, 0x0

    .line 689
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 690
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/2addr v1, p2

    rem-int/lit8 v1, v1, 0x7f

    const/16 v2, 0x60

    if-ge v1, v2, :cond_16

    add-int/lit8 v1, v1, 0x20

    .line 694
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_29
    return-object p0
.end method

.method public log(Ljava/lang/String;)V
    .registers 5

    .line 700
    iget v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mMaxLines:I

    if-gtz v0, :cond_5

    return-void

    .line 703
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 704
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

    .line 705
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->append(Ljava/lang/String;)V

    return-void
.end method
