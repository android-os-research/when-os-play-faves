.class public final Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;
.super Ljava/lang/Object;
.source "CleanerAppManager.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CleanerAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CleanerAppInfo"
.end annotation


# static fields
.field public static final ALLOW_MINIMUM_COUNT:I = 0x1e

.field public static final PERIOD:J = 0x927c0L


# instance fields
.field public avgCount:D

.field public count:I

.field public curCount:I

.field public firstTimestamp:J

.field public lastTimestamp:J

.field public final mPackage:Ljava/lang/String;

.field public mPermString:Ljava/lang/String;

.field public final mUid:I

.field public score:I

.field public final synthetic this$0:Lcom/android/server/am/CleanerAppManager;


# direct methods
.method public static synthetic $r8$lambda$OqzxJ2OCEo_lM2FAMgRCHXqcB_c(JLcom/android/server/am/CleanerAppManager$CleanerAppLog;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->lambda$update$0(JLcom/android/server/am/CleanerAppManager$CleanerAppLog;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetavgCount(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)D
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->avgCount:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetcount(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->count:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetcurCount(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->curCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermString(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->mPermString:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetscore(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->score:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmPermString(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->mPermString:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputscore(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->score:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdate(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->update(J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/CleanerAppManager;Ljava/lang/String;I)V
    .registers 6

    .line 313
    iput-object p1, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->this$0:Lcom/android/server/am/CleanerAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 310
    iput-wide v0, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->firstTimestamp:J

    .line 311
    iput-wide v0, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->lastTimestamp:J

    .line 314
    iput-object p2, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->mPackage:Ljava/lang/String;

    .line 315
    iput p3, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->mUid:I

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->firstTimestamp:J

    return-void
.end method

.method public static synthetic lambda$update$0(JLcom/android/server/am/CleanerAppManager$CleanerAppLog;)Z
    .registers 7

    .line 330
    invoke-static {p2}, Lcom/android/server/am/CleanerAppManager$CleanerAppLog;->-$$Nest$fgettimestamp(Lcom/android/server/am/CleanerAppManager$CleanerAppLog;)J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    sub-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-gez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public addCallingCount()V
    .registers 7

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 321
    iget-object v2, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->this$0:Lcom/android/server/am/CleanerAppManager;

    invoke-static {v2}, Lcom/android/server/am/CleanerAppManager;->-$$Nest$fgetmCleanerAppLogs(Lcom/android/server/am/CleanerAppManager;)Landroid/util/ArraySet;

    move-result-object v2

    monitor-enter v2

    .line 322
    :try_start_b
    iget-object v3, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->this$0:Lcom/android/server/am/CleanerAppManager;

    invoke-static {v3}, Lcom/android/server/am/CleanerAppManager;->-$$Nest$fgetmCleanerAppLogs(Lcom/android/server/am/CleanerAppManager;)Landroid/util/ArraySet;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/CleanerAppManager$CleanerAppLog;

    iget-object v5, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->mPackage:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v1}, Lcom/android/server/am/CleanerAppManager$CleanerAppLog;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 323
    iget v3, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->count:I

    .line 324
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_26

    .line 325
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->update(J)V

    return-void

    :catchall_26
    move-exception p0

    .line 324
    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public clone()Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 357
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->clone()Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;

    move-result-object p0

    return-object p0
.end method

.method public final duration()Ljava/lang/String;
    .registers 5

    .line 339
    iget-wide v0, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->lastTimestamp:J

    iget-wide v2, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->firstTimestamp:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CleanerAppInfo{permString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->mPermString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", score="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->score:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", avgCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->avgCount:D

    .line 348
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", curCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->curCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dur="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {p0}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->duration()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", package=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(J)V
    .registers 6

    .line 329
    iget-object v0, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->this$0:Lcom/android/server/am/CleanerAppManager;

    invoke-static {v0}, Lcom/android/server/am/CleanerAppManager;->-$$Nest$fgetmCleanerAppLogs(Lcom/android/server/am/CleanerAppManager;)Landroid/util/ArraySet;

    move-result-object v0

    monitor-enter v0

    .line 330
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->this$0:Lcom/android/server/am/CleanerAppManager;

    invoke-static {v1}, Lcom/android/server/am/CleanerAppManager;->-$$Nest$fgetmCleanerAppLogs(Lcom/android/server/am/CleanerAppManager;)Landroid/util/ArraySet;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 331
    iput-wide p1, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->lastTimestamp:J

    .line 332
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_38

    .line 333
    iget-wide v0, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->firstTimestamp:J

    sub-long/2addr p1, v0

    long-to-float p1, p1

    const p2, 0x49127c00    # 600000.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-double p1, p1

    .line 334
    iget v0, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->count:I

    int-to-double v0, v0

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->avgCount:D

    .line 335
    iget-object p1, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->this$0:Lcom/android/server/am/CleanerAppManager;

    iget-object p2, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->mPackage:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/server/am/CleanerAppManager;->-$$Nest$mgetCleanerAppLogCount(Lcom/android/server/am/CleanerAppManager;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;->curCount:I

    return-void

    :catchall_38
    move-exception p0

    .line 332
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method
