.class public Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverFastDrainPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntelligentBatterySaverFastDrainBatteryInfo"
.end annotation


# instance fields
.field public initialized:Z

.field public level:I

.field public startTime:J

.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;


# direct methods
.method public static bridge synthetic -$$Nest$fgetinitialized(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->initialized:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetlevel(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->level:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetstartTime(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->startTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputinitialized(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->initialized:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputlevel(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->level:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputstartTime(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->startTime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 4

    .line 983
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 984
    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->initialized:Z

    const-wide/16 v0, 0x0

    .line 985
    iput-wide v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->startTime:J

    const/4 p1, -0x1

    .line 986
    iput p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->level:I

    return-void
.end method
