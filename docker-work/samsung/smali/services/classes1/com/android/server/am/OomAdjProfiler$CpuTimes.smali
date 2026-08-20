.class public Lcom/android/server/am/OomAdjProfiler$CpuTimes;
.super Ljava/lang/Object;
.source "OomAdjProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OomAdjProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CpuTimes"
.end annotation


# instance fields
.field public mOnBatteryScreenOffTimeUs:J

.field public mOnBatteryTimeUs:J

.field public final synthetic this$0:Lcom/android/server/am/OomAdjProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjProfiler;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->this$0:Lcom/android/server/am/OomAdjProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$CpuTimes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;)V

    return-void
.end method


# virtual methods
.method public addCpuTimeMs(J)V
    .registers 5

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 197
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->this$0:Lcom/android/server/am/OomAdjProfiler;

    invoke-static {v0}, Lcom/android/server/am/OomAdjProfiler;->-$$Nest$fgetmOnBattery(Lcom/android/server/am/OomAdjProfiler;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->this$0:Lcom/android/server/am/OomAdjProfiler;

    invoke-static {v1}, Lcom/android/server/am/OomAdjProfiler;->-$$Nest$fgetmScreenOff(Lcom/android/server/am/OomAdjProfiler;)Z

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->addCpuTimeUs(JZZ)V

    return-void
.end method

.method public addCpuTimeMs(JZZ)V
    .registers 7

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 201
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->addCpuTimeUs(JZZ)V

    return-void
.end method

.method public addCpuTimeUs(J)V
    .registers 5

    .line 205
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->this$0:Lcom/android/server/am/OomAdjProfiler;

    invoke-static {v0}, Lcom/android/server/am/OomAdjProfiler;->-$$Nest$fgetmOnBattery(Lcom/android/server/am/OomAdjProfiler;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->this$0:Lcom/android/server/am/OomAdjProfiler;

    invoke-static {v1}, Lcom/android/server/am/OomAdjProfiler;->-$$Nest$fgetmScreenOff(Lcom/android/server/am/OomAdjProfiler;)Z

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->addCpuTimeUs(JZZ)V

    return-void
.end method

.method public addCpuTimeUs(JZZ)V
    .registers 7

    if-eqz p3, :cond_e

    .line 210
    iget-wide v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryTimeUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryTimeUs:J

    if-eqz p4, :cond_e

    .line 212
    iget-wide p3, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryScreenOffTimeUs:J

    add-long/2addr p3, p1

    iput-wide p3, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryScreenOffTimeUs:J

    :cond_e
    return-void
.end method

.method public isEmpty()Z
    .registers 5

    .line 218
    iget-wide v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    iget-wide v0, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryScreenOffTimeUs:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryTimeUs:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->mOnBatteryScreenOffTimeUs:J

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
