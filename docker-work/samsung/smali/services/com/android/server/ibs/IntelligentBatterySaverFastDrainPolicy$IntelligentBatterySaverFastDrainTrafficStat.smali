.class public Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverFastDrainPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntelligentBatterySaverFastDrainTrafficStat"
.end annotation


# instance fields
.field public initialized:Z

.field public rxBytes:J

.field public sampleTimeInSecs:J

.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

.field public txBytes:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetinitialized(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->initialized:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetrxBytes(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->rxBytes:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetsampleTimeInSecs(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->sampleTimeInSecs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgettxBytes(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->txBytes:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputinitialized(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->initialized:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputrxBytes(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->rxBytes:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsampleTimeInSecs(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->sampleTimeInSecs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtxBytes(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->txBytes:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 4

    .line 956
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 957
    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->initialized:Z

    const-wide/16 v0, 0x0

    .line 958
    iput-wide v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->sampleTimeInSecs:J

    .line 959
    iput-wide v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->txBytes:J

    .line 960
    iput-wide v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->rxBytes:J

    return-void
.end method
