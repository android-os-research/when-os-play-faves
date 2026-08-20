.class public final Lcom/android/server/notification/ZenModeHelper$Metrics;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Metrics"
.end annotation


# static fields
.field public static final COUNTER_MODE_PREFIX:Ljava/lang/String; = "dnd_mode_"

.field public static final COUNTER_RULE:Ljava/lang/String; = "dnd_rule_count"

.field public static final COUNTER_TYPE_PREFIX:Ljava/lang/String; = "dnd_type_"

.field public static final DND_OFF:I = 0x0

.field public static final DND_ON_AUTOMATIC:I = 0x2

.field public static final DND_ON_MANUAL:I = 0x1

.field public static final MINIMUM_LOG_PERIOD_MS:J = 0xea60L


# instance fields
.field public mModeLogTimeMs:J

.field public mNumZenRules:I

.field public mPreviousZenMode:I

.field public mPreviousZenType:I

.field public mRuleCountLogTime:J

.field public mTypeLogTimeMs:J

.field public final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public static bridge synthetic -$$Nest$memit(Lcom/android/server/notification/ZenModeHelper$Metrics;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 4

    .line 1598
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    const/4 p1, -0x1

    .line 1608
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    const-wide/16 v0, 0x0

    .line 1609
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    .line 1611
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    .line 1612
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    .line 1615
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    .line 1616
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$Metrics-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method


# virtual methods
.method public final emit()V
    .registers 2

    .line 1629
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$fgetmHandler(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->-$$Nest$mpostMetricsTimer(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 1630
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emitZenMode()V

    .line 1631
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emitRules()V

    .line 1632
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emitDndType()V

    return-void
.end method

.method public final emitDndType()V
    .registers 11

    .line 1667
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1668
    iget-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    sub-long v2, v0, v2

    .line 1669
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v4, v4, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v4

    .line 1670
    :try_start_d
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v6, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_17

    move v6, v7

    goto :goto_18

    :cond_17
    move v6, v8

    :goto_18
    if-nez v6, :cond_1c

    move v7, v8

    goto :goto_24

    .line 1672
    :cond_1c
    iget-object v6, v5, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v6, v6, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v6, :cond_23

    goto :goto_24

    :cond_23
    const/4 v7, 0x2

    .line 1673
    :goto_24
    iget v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    if-ne v7, v6, :cond_2f

    const-wide/32 v8, 0xea60

    cmp-long v8, v2, v8

    if-lez v8, :cond_51

    :cond_2f
    const/4 v8, -0x1

    if-eq v6, v8, :cond_4d

    .line 1676
    invoke-static {v5}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$fgetmContext(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dnd_type_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    long-to-int v2, v2

    invoke-static {v5, v6, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1679
    :cond_4d
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    .line 1680
    iput v7, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    .line 1682
    :cond_51
    monitor-exit v4

    return-void

    :catchall_53
    move-exception p0

    monitor-exit v4
    :try_end_55
    .catchall {:try_start_d .. :try_end_55} :catchall_53

    throw p0
.end method

.method public final emitRules()V
    .registers 8

    .line 1649
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1650
    iget-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    sub-long/2addr v0, v2

    .line 1651
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v2, v2, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v2

    .line 1652
    :try_start_c
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v3, v3, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1653
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    if-ne v4, v3, :cond_21

    const-wide/32 v5, 0xea60

    cmp-long v5, v0, v5

    if-lez v5, :cond_37

    :cond_21
    const/4 v5, -0x1

    if-eq v4, v5, :cond_33

    .line 1656
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$fgetmContext(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "dnd_rule_count"

    iget v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    sub-int v6, v3, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1659
    :cond_33
    iput v3, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    .line 1661
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    .line 1663
    :cond_37
    monitor-exit v2

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public final emitZenMode()V
    .registers 9

    .line 1636
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1637
    iget-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    sub-long v2, v0, v2

    .line 1638
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v6, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v4, v6, :cond_17

    const-wide/32 v6, 0xea60

    cmp-long v6, v2, v6

    if-lez v6, :cond_3d

    :cond_17
    const/4 v6, -0x1

    if-eq v4, v6, :cond_35

    .line 1640
    invoke-static {v5}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$fgetmContext(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dnd_mode_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    long-to-int v2, v2

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1643
    :cond_35
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v2, v2, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iput v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    .line 1644
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    :cond_3d
    return-void
.end method

.method public onConfigChanged()V
    .registers 1

    .line 1625
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    return-void
.end method

.method public onZenModeChanged()V
    .registers 1

    .line 1620
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    return-void
.end method
