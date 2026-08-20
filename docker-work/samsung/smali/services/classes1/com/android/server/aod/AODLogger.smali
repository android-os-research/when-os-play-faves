.class public Lcom/android/server/aod/AODLogger;
.super Ljava/lang/Object;
.source "AODLogger.java"


# static fields
.field public static final mDateFormat:Ljava/text/SimpleDateFormat;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final mCapacity:I

.field public mIndex:I

.field public mIsFull:Z

.field public mLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/aod/AODLogger;->sLock:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "[MM-dd HH:mm:ss.SSS]"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/server/aod/AODLogger;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/android/server/aod/AODLogger;->mIndex:I

    .line 18
    iput-boolean v0, p0, Lcom/android/server/aod/AODLogger;->mIsFull:Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/aod/AODLogger;->mLogs:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/android/server/aod/AODLogger;->mName:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/android/server/aod/AODLogger;->mCapacity:I

    return-void
.end method

.method public static getCurDateTime()Ljava/lang/String;
    .registers 2

    .line 60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/android/server/aod/AODLogger;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Z)V
    .registers 6

    .line 27
    sget-object v0, Lcom/android/server/aod/AODLogger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_1d

    .line 29
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/aod/AODLogger;->getCurDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    :cond_1d
    iget-boolean p2, p0, Lcom/android/server/aod/AODLogger;->mIsFull:Z

    if-nez p2, :cond_31

    iget-object p2, p0, Lcom/android/server/aod/AODLogger;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget v1, p0, Lcom/android/server/aod/AODLogger;->mCapacity:I

    if-ge p2, v1, :cond_31

    .line 32
    iget-object p0, p0, Lcom/android/server/aod/AODLogger;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_31
    const/4 p2, 0x1

    .line 34
    iput-boolean p2, p0, Lcom/android/server/aod/AODLogger;->mIsFull:Z

    .line 36
    iget-object v1, p0, Lcom/android/server/aod/AODLogger;->mLogs:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/aod/AODLogger;->mIndex:I

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget p1, p0, Lcom/android/server/aod/AODLogger;->mIndex:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/aod/AODLogger;->mIndex:I

    .line 39
    iget p2, p0, Lcom/android/server/aod/AODLogger;->mCapacity:I

    if-lt p1, p2, :cond_47

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/android/server/aod/AODLogger;->mIndex:I

    .line 43
    :cond_47
    :goto_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 47
    sget-object v0, Lcom/android/server/aod/AODLogger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/aod/AODLogger;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/android/server/aod/AODLogger;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    .line 51
    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    move v1, v3

    goto :goto_25

    .line 55
    :cond_54
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 56
    monitor-exit v0

    return-void

    :catchall_59
    move-exception p0

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw p0
.end method
