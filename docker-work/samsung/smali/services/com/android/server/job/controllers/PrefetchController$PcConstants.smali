.class Lcom/android/server/job/controllers/PrefetchController$PcConstants;
.super Ljava/lang/Object;
.source "PrefetchController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/PrefetchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PcConstants"
.end annotation


# static fields
.field public static final DEFAULT_LAUNCH_TIME_ALLOWANCE_MS:J = 0x124f80L

.field public static final DEFAULT_LAUNCH_TIME_THRESHOLD_MS:J = 0x1808580L

.field public static final KEY_LAUNCH_TIME_ALLOWANCE_MS:Ljava/lang/String; = "pc_launch_time_allowance_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_LAUNCH_TIME_THRESHOLD_MS:Ljava/lang/String; = "pc_launch_time_threshold_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PC_CONSTANT_PREFIX:Ljava/lang/String; = "pc_"


# instance fields
.field public LAUNCH_TIME_ALLOWANCE_MS:J

.field public LAUNCH_TIME_THRESHOLD_MS:J

.field public mShouldReevaluateConstraints:Z

.field public final synthetic this$0:Lcom/android/server/job/controllers/PrefetchController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmShouldReevaluateConstraints(Lcom/android/server/job/controllers/PrefetchController$PcConstants;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmShouldReevaluateConstraints(Lcom/android/server/job/controllers/PrefetchController$PcConstants;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/job/controllers/PrefetchController$PcConstants;Landroid/util/IndentingPrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/PrefetchController;)V
    .registers 4

    .line 500
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 501
    iput-boolean p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    const-wide/32 v0, 0x1808580

    .line 517
    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_THRESHOLD_MS:J

    const-wide/32 v0, 0x124f80

    .line 523
    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_ALLOWANCE_MS:J

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 558
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 559
    const-class v0, Lcom/android/server/job/controllers/PrefetchController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    .line 560
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 563
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_THRESHOLD_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "pc_launch_time_threshold_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 564
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_ALLOWANCE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v0, "pc_launch_time_allowance_ms"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 566
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 528
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v0, "pc_launch_time_allowance_ms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_52

    const-string/jumbo v0, "pc_launch_time_threshold_ms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_79

    :cond_17
    const-wide/32 v2, 0x1808580

    .line 542
    invoke-virtual {p1, p2, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_THRESHOLD_MS:J

    const-wide/32 v2, 0x5265c00

    const-wide/32 v4, 0x36ee80

    .line 545
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 544
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 546
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v0}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmLaunchTimeThresholdMs(Lcom/android/server/job/controllers/PrefetchController;)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-eqz v0, :cond_79

    .line 547
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v0, p1, p2}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fputmLaunchTimeThresholdMs(Lcom/android/server/job/controllers/PrefetchController;J)V

    .line 548
    iput-boolean v1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    .line 550
    iget-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {p1}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmThresholdAlarmListener(Lcom/android/server/job/controllers/PrefetchController;)Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {p0}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmLaunchTimeThresholdMs(Lcom/android/server/job/controllers/PrefetchController;)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/server/utils/AlarmQueue;->setMinTimeBetweenAlarmsMs(J)V

    goto :goto_79

    :cond_52
    const-wide/32 v2, 0x124f80

    .line 531
    invoke-virtual {p1, p2, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_ALLOWANCE_MS:J

    const-wide/32 v2, 0x6ddd00

    const-wide/16 v4, 0x0

    .line 534
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 533
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 535
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v0}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmLaunchTimeAllowanceMs(Lcom/android/server/job/controllers/PrefetchController;)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-eqz v0, :cond_79

    .line 536
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {v0, p1, p2}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fputmLaunchTimeAllowanceMs(Lcom/android/server/job/controllers/PrefetchController;J)V

    .line 537
    iput-boolean v1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    :cond_79
    :goto_79
    return-void
.end method
