.class public Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;
.super Ljava/lang/Object;
.source "SemInputDumpsysData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemInputDumpsysData"


# instance fields
.field private final MAX_QUEUE_SIZE:I

.field private currentData:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;

.field private dataQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .param p1, "maxQueueSize"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->dataQueue:Ljava/util/Queue;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->currentData:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;

    .line 19
    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->MAX_QUEUE_SIZE:I

    .line 20
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 21
    .local v0, "stack":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_55

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAX_QUEUE_SIZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at line"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputDumpsysData"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_55
    return-void
.end method

.method private addQueue(Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;)V
    .registers 7
    .param p1, "data"    # Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->dataQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 54
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->dataQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->MAX_QUEUE_SIZE:I

    if-lt v1, v2, :cond_2d

    .line 55
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->dataQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    .local v1, "removeData":Ljava/lang/String;
    const-string v2, "SemInputDumpsysData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeQueue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v1    # "removeData":Ljava/lang/String;
    :cond_2d
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->dataQueue:Ljava/util/Queue;

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 59
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public static getCurrentTimeString()Ljava/lang/String;
    .registers 4

    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 84
    .local v0, "currentTime":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 85
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public createData()V
    .registers 2

    .line 69
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->currentData:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;

    .line 70
    return-void
.end method

.method public createDataAndAddQueue(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;)V

    .line 64
    .local v0, "dumpsysData":Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;
    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;->-$$Nest$fgetdata(Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->addQueue(Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;)V

    .line 66
    return-void
.end method

.method public getMaxQueueSize()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->MAX_QUEUE_SIZE:I

    return v0
.end method

.method public getQueue()Ljava/util/Queue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 46
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->dataQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 47
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->dataQueue:Ljava/util/Queue;

    invoke-interface {v0, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 48
    monitor-exit v1

    .line 49
    return-object v0

    .line 48
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v2
.end method

.method public setDataAndAddQueue(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->currentData:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;

    if-eqz v0, :cond_14

    .line 74
    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;->-$$Nest$fgetdata(Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->currentData:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->addQueue(Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->currentData:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData$DumpsysData;

    goto :goto_1b

    .line 78
    :cond_14
    const-string v0, "SemInputDumpsysData"

    const-string v1, "setDataAndAddQueue: Data was not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_1b
    return-void
.end method
