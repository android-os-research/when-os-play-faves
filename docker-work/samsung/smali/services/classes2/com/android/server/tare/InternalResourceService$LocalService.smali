.class public final Lcom/android/server/tare/InternalResourceService$LocalService;
.super Ljava/lang/Object;
.source "InternalResourceService.java"

# interfaces
.implements Lcom/android/server/tare/EconomyManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/InternalResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# static fields
.field public static final FOREVER_MS:J = 0xc63fafa400L


# instance fields
.field public final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 2

    .line 859
    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/InternalResourceService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/tare/InternalResourceService$LocalService;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    return-void
.end method


# virtual methods
.method public canPayFor(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 905
    iget-object v3, v0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v3}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_10

    return v4

    .line 908
    :cond_10
    iget-object v3, v0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    return v4

    :cond_19
    const-wide/16 v5, 0x0

    .line 916
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->getAnticipatedActions()Ljava/util/List;

    move-result-object v3

    .line 917
    iget-object v7, v0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v7}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    const/4 v9, 0x0

    .line 918
    :goto_27
    :try_start_27
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_52

    .line 919
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    .line 920
    iget-object v11, v0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v11}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v11

    iget v12, v10, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    invoke-virtual {v11, v12, v1, v2}, Lcom/android/server/tare/EconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v11

    .line 922
    iget-wide v11, v11, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    iget v13, v10, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->numInstantaneousCalls:I

    int-to-long v13, v13

    mul-long/2addr v13, v11

    move v15, v9

    iget-wide v8, v10, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->ongoingDurationMs:J

    const-wide/16 v16, 0x3e8

    div-long v8, v8, v16

    mul-long/2addr v11, v8

    add-long/2addr v13, v11

    add-long/2addr v5, v13

    add-int/lit8 v9, v15, 0x1

    goto :goto_27

    .line 925
    :cond_52
    iget-object v3, v0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v3}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-ltz v1, :cond_6f

    iget-object v0, v0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmScribe(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Scribe;

    move-result-object v0

    .line 926
    invoke-virtual {v0}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-ltz v0, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v4, 0x0

    :goto_70
    monitor-exit v7

    return v4

    :catchall_72
    move-exception v0

    .line 927
    monitor-exit v7
    :try_end_74
    .catchall {:try_start_27 .. :try_end_74} :catchall_72

    throw v0
.end method

.method public getMaxDurationMs(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)J
    .registers 14

    .line 933
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v0

    const-wide v1, 0xc63fafa400L

    if-nez v0, :cond_e

    return-wide v1

    .line 936
    :cond_e
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-wide v1

    .line 941
    :cond_17
    invoke-virtual {p3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->getAnticipatedActions()Ljava/util/List;

    move-result-object p3

    .line 942
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide v6, v4

    .line 943
    :goto_26
    :try_start_26
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_44

    .line 944
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    .line 945
    iget-object v9, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v9}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v9

    iget v8, v8, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    invoke-virtual {v9, v8, p1, p2}, Lcom/android/server/tare/EconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v8

    .line 947
    iget-wide v8, v8, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    add-long/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_44
    cmp-long p3, v6, v4

    if-nez p3, :cond_4a

    .line 950
    monitor-exit v0

    return-wide v1

    .line 952
    :cond_4a
    iget-object p3, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p3}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object p3

    .line 953
    invoke-virtual {p3, p1, p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide p1

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmScribe(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Scribe;

    move-result-object p0

    .line 954
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v1

    .line 952
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x3e8

    mul-long/2addr p0, p2

    .line 955
    div-long/2addr p0, v6

    monitor-exit v0

    return-wide p0

    :catchall_68
    move-exception p0

    .line 956
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_26 .. :try_end_6a} :catchall_68

    throw p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 961
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result p0

    return p0
.end method

.method public noteInstantaneousEvent(ILjava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 967
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 970
    :cond_9
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 971
    :try_start_10
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tare/Agent;->noteInstantaneousEventLocked(ILjava/lang/String;ILjava/lang/String;)V

    .line 972
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public noteOngoingEventStarted(ILjava/lang/String;ILjava/lang/String;)V
    .registers 13

    .line 978
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 981
    :cond_9
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 982
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 983
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/tare/Agent;->noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;J)V

    .line 984
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public noteOngoingEventStopped(ILjava/lang/String;ILjava/lang/String;)V
    .registers 15

    .line 990
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 993
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 994
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v8

    .line 995
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 996
    :try_start_18
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/tare/Agent;->stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJ)V

    .line 997
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public registerAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .registers 6

    .line 872
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 876
    :cond_9
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 877
    :try_start_10
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tare/Agent;->registerAffordabilityChangeListenerLocked(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 878
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public registerTareStateChangeListener(Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;)V
    .registers 2

    .line 895
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmStateChangeListeners(Lcom/android/server/tare/InternalResourceService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .registers 6

    .line 884
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 888
    :cond_9
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 889
    :try_start_10
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tare/Agent;->unregisterAffordabilityChangeListenerLocked(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 890
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public unregisterTareStateChangeListener(Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;)V
    .registers 2

    .line 900
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmStateChangeListeners(Lcom/android/server/tare/InternalResourceService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
