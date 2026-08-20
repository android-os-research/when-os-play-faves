.class public Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenOnProfiler"
.end annotation


# static fields
.field public static final MAX_HISTORY:I = 0x64


# instance fields
.field public displayDone:Z

.field public displayDuration:I

.field public displayEndTime:J

.field public displayStartTime:J

.field public listenerDuration:I

.field public listenerEndTime:J

.field public listenerStartTime:J

.field public order:I

.field public saved:Z

.field public wakeUpDiff:I

.field public wakeUpDuration:I

.field public wakeUpEndTime:J

.field public wakeUpStartTime:J

.field public wakeUpTimeStr:Ljava/lang/String;

.field public wmsDone:Z

.field public wmsDuration:I

.field public wmsEndTime:J

.field public wmsStartTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->clearAll()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;)V
    .registers 4

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->order:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->order:I

    .line 612
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpDiff:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpDiff:I

    .line 613
    iget-object v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpTimeStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpTimeStr:Ljava/lang/String;

    .line 615
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpStartTime:J

    .line 616
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpEndTime:J

    .line 617
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpDuration:I

    .line 619
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsStartTime:J

    .line 620
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsEndTime:J

    .line 621
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsDuration:I

    .line 622
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsDone:Z

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsDone:Z

    .line 624
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayStartTime:J

    .line 625
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayEndTime:J

    .line 626
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayDuration:I

    .line 627
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayDone:Z

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayDone:Z

    .line 629
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->listenerStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->listenerStartTime:J

    .line 630
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->listenerEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->listenerEndTime:J

    .line 631
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->listenerDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->listenerDuration:I

    .line 633
    iget-boolean p1, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->saved:Z

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->saved:Z

    return-void
.end method


# virtual methods
.method public calcDisplayDuration()V
    .registers 5

    .line 717
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayStartTime:J

    .line 718
    :cond_c
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayEndTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayDuration:I

    return-void
.end method

.method public calcListenerDuration()V
    .registers 5

    .line 732
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->listenerEndTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->listenerStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->listenerDuration:I

    return-void
.end method

.method public calcWakeupDuration()V
    .registers 5

    .line 684
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpEndTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpDuration:I

    return-void
.end method

.method public calcWmsDuration()V
    .registers 5

    .line 700
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsStartTime:J

    .line 701
    :cond_c
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsEndTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsDuration:I

    return-void
.end method

.method public clearAll()V
    .registers 4

    const/4 v0, 0x0

    .line 637
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->order:I

    .line 638
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpDiff:I

    const-string v1, ""

    .line 639
    iput-object v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpTimeStr:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 641
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpStartTime:J

    .line 642
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpEndTime:J

    .line 643
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpDuration:I

    .line 645
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsStartTime:J

    .line 646
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsEndTime:J

    .line 647
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsDuration:I

    .line 648
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsDone:Z

    .line 650
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayStartTime:J

    .line 651
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayEndTime:J

    .line 652
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayDuration:I

    .line 653
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayDone:Z

    .line 655
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->listenerStartTime:J

    .line 656
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->listenerEndTime:J

    .line 657
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->listenerDuration:I

    .line 659
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->saved:Z

    return-void
.end method

.method public isStarted()Z
    .registers 5

    .line 663
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public noteDisplayEnd()V
    .registers 5

    .line 710
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayEndTime:J

    const/4 v0, 0x1

    .line 711
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayDone:Z

    .line 712
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->calcDisplayDuration()V

    .line 713
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsDone:Z

    if-nez v0, :cond_18

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    :cond_18
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWakeupEnd()V

    :cond_1b
    return-void
.end method

.method public noteDisplayStart()V
    .registers 3

    .line 706
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayStartTime:J

    return-void
.end method

.method public noteListenerEnd()V
    .registers 3

    .line 727
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->listenerEndTime:J

    .line 728
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->calcListenerDuration()V

    return-void
.end method

.method public noteListenerStart()V
    .registers 3

    .line 723
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->listenerStartTime:J

    return-void
.end method

.method public noteWakeupDiff(I)V
    .registers 2

    .line 669
    iput p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpDiff:I

    return-void
.end method

.method public noteWakeupEnd()V
    .registers 3

    .line 679
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpEndTime:J

    .line 680
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->calcWakeupDuration()V

    return-void
.end method

.method public noteWakeupStart(I)V
    .registers 4

    .line 673
    iput p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->order:I

    .line 674
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpStartTime:J

    .line 675
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->getCurrentTimeAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpTimeStr:Ljava/lang/String;

    return-void
.end method

.method public noteWmsEnd()V
    .registers 3

    .line 693
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsEndTime:J

    const/4 v0, 0x1

    .line 694
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsDone:Z

    .line 695
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->calcWmsDuration()V

    .line 696
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayDone:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWakeupEnd()V

    :cond_13
    return-void
.end method

.method public noteWmsStart()V
    .registers 3

    .line 689
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsStartTime:J

    return-void
.end method

.method public toString(Z)Ljava/lang/String;
    .registers 11

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x6

    if-eqz p1, :cond_4f

    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    .line 738
    iget v8, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->order:I

    .line 739
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, p1, v6

    iget-object v6, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpTimeStr:Ljava/lang/String;

    aput-object v6, p1, v5

    iget v5, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpDuration:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v4

    iget v4, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpDiff:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v3

    iget v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    iget v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->listenerDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    iget p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayDuration:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v7

    const-string p0, "[%3d][%s][T:%4d]  [CallerDiff:%2d] [WMS:%3d] [DSL:%2d] [Panel:%3d]"

    .line 738
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    :cond_4f
    new-array p1, v7, [Ljava/lang/Object;

    .line 741
    iget v7, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->order:I

    .line 742
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, p1, v6

    iget v6, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpDuration:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, p1, v5

    iget v5, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wakeUpDiff:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v4

    iget v4, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->wmsDuration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v3

    iget v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->listenerDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    iget p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->displayDuration:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "[%3d][T:%4d]  [CallerDiff:%2d] [WMS:%3d] [DSL:%2d] [Panel:%3d]"

    .line 741
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :goto_8a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
