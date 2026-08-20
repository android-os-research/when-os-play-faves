.class public Lcom/sec/vsim/util/SimpleEventLog;
.super Ljava/lang/Object;
.source "SimpleEventLog.java"


# instance fields
.field private mEventLog:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/vsim/util/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    .line 18
    iput-object p1, p0, Lcom/sec/vsim/util/SimpleEventLog;->mName:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/sec/vsim/util/SimpleEventLog;->mSize:I

    .line 20
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 7
    .param p1, "log"    # Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/sec/vsim/util/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    monitor-enter v0

    .line 28
    :try_start_3
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy HH:mm:ss.SSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 29
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/sec/vsim/util/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 31
    :goto_31
    iget-object v2, p0, Lcom/sec/vsim/util/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lcom/sec/vsim/util/SimpleEventLog;->mSize:I

    if-le v2, v3, :cond_41

    .line 32
    iget-object v2, p0, Lcom/sec/vsim/util/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_31

    .line 34
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_41
    monitor-exit v0

    .line 35
    return-void

    .line 34
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 51
    iget-object v0, p0, Lcom/sec/vsim/util/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    monitor-enter v0

    .line 52
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/vsim/util/SimpleEventLog;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 54
    iget-object v1, p0, Lcom/sec/vsim/util/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    .local v2, "log":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .end local v2    # "log":Ljava/lang/String;
    goto :goto_2a

    .line 57
    :cond_3a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 58
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public dumpToString()Ljava/lang/String;
    .registers 7

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v0, "eventHistory":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lcom/sec/vsim/util/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    monitor-enter v1

    .line 68
    :try_start_d
    iget-object v2, p0, Lcom/sec/vsim/util/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    .local v3, "history":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    nop

    .end local v3    # "history":Ljava/lang/String;
    goto :goto_13

    .line 71
    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_30

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 71
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2
.end method

.method public logAndAdd(Ljava/lang/String;)V
    .registers 3
    .param p1, "log"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/sec/vsim/util/SimpleEventLog;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0, p1}, Lcom/sec/vsim/util/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 44
    return-void
.end method
