.class public Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatsPullAtomCallbackImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .registers 2

    .line 847
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_b0

    .line 888
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown tagId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 861
    :pswitch_1b
    new-instance v1, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 863
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    .line 864
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    .line 865
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->powerProfileModeledOnly()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    .line 866
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v1

    .line 867
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryUsageStats;

    goto :goto_a4

    .line 853
    :pswitch_41
    new-instance v1, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 855
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    .line 856
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    .line 857
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v1

    .line 858
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryUsageStats;

    goto :goto_a4

    .line 874
    :pswitch_63
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v1}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmBatteryUsageStatsStore(Lcom/android/server/am/BatteryStatsService;)Lcom/android/internal/os/BatteryUsageStatsStore;

    move-result-object v1

    .line 875
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryUsageStatsStore;->getLastBatteryUsageStatsBeforeResetAtomPullTimestamp()J

    move-result-wide v1

    .line 876
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    move-result-wide v3

    .line 877
    new-instance v5, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 879
    invoke-virtual {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v5

    .line 880
    invoke-virtual {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v5

    .line 881
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    .line 882
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v1

    .line 883
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryUsageStats;

    .line 884
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmBatteryUsageStatsStore(Lcom/android/server/am/BatteryStatsService;)Lcom/android/internal/os/BatteryUsageStatsStore;

    move-result-object p0

    .line 885
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/os/BatteryUsageStatsStore;->setLastBatteryUsageStatsBeforeResetAtomPullTimestamp(J)V

    move-object p0, v1

    .line 890
    :goto_a4
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getStatsProto()[B

    move-result-object p0

    .line 892
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    :pswitch_data_b0
    .packed-switch 0x277f
        :pswitch_63
        :pswitch_41
        :pswitch_1b
    .end packed-switch
.end method
