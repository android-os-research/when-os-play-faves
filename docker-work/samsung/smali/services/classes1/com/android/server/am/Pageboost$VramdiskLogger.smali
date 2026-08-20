.class public final Lcom/android/server/am/Pageboost$VramdiskLogger;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VramdiskLogger"
.end annotation


# static fields
.field public static final NUM_ENTRY:I = 0x7d0

.field public static array:[Ljava/lang/String;

.field public static cur_idx:I

.field public static final sLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x7d0

    new-array v0, v0, [Ljava/lang/String;

    .line 3380
    sput-object v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->array:[Ljava/lang/String;

    .line 3381
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;)V
    .registers 4

    .line 3388
    sget-object v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3389
    :try_start_3
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 3390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3391
    sget-object v1, Lcom/android/server/am/Pageboost$VramdiskLogger;->array:[Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/Pageboost$VramdiskLogger;->getNextIdx()I

    move-result v2

    aput-object p0, v1, v2

    .line 3392
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public static getNextIdx()I
    .registers 2

    .line 3384
    sget v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->cur_idx:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/am/Pageboost$VramdiskLogger;->cur_idx:I

    rem-int/lit16 v0, v0, 0x7d0

    return v0
.end method

.method public static print(Ljava/io/PrintWriter;)V
    .registers 5

    .line 3396
    sget-object v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_4
    const/16 v2, 0x7d0

    if-ge v1, v2, :cond_31

    .line 3398
    :try_start_8
    sget-object v2, Lcom/android/server/am/Pageboost$VramdiskLogger;->array:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2e

    .line 3399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/Pageboost$VramdiskLogger;->array:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3402
    :cond_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_33

    throw p0
.end method
