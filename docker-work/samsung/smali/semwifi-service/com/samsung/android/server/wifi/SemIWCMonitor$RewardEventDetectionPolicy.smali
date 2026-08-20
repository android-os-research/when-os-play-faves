.class Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;
.super Ljava/lang/Object;
.source "SemIWCMonitor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/iwc/SemIWCPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RewardEventDetectionPolicy"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private isValid:Z

.field private mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private name:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

.field private timer:J

.field private type:I


# direct methods
.method static bridge synthetic -$$Nest$fgettimer(Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->timer:J

    return-wide v0
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/os/Handler;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;IJ)V
    .registers 7

    .line 3515
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3516
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->name:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 3517
    iput p4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->type:I

    .line 3518
    iput-wide p5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->timer:J

    .line 3519
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->handler:Landroid/os/Handler;

    .line 3520
    new-instance p2, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy$1;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy$1;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    return-void
.end method

.method private skipDetection()Z
    .registers 2

    .line 3586
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$misExcludedBssid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 3589
    :cond_a
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3590
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "detected"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public adopt()V
    .registers 11

    .line 3555
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid:Z

    if-eqz v0, :cond_f

    .line 3556
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmAlarmManager(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3558
    :cond_f
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3559
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adopted (timer will be expired in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->timer:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    :cond_34
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->timer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_57

    .line 3561
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3562
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmAlarmManager(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/app/AlarmManager;

    move-result-object v3

    const/4 v4, 0x2

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->timer:J

    add-long/2addr v5, v0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->name:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 3564
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->handler:Landroid/os/Handler;

    .line 3562
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_57
    const/4 v0, 0x1

    .line 3567
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid:Z

    return-void
.end method

.method public adopt(I)V
    .registers 4

    int-to-long v0, p1

    .line 3571
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->timer:J

    .line 3572
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->adopt()V

    return-void
.end method

.method public cancelAlarmListener()V
    .registers 5

    .line 3535
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->timer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 3536
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancel Alarm"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmAlarmManager(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_1c
    return-void
.end method

.method public detect()V
    .registers 5

    .line 3596
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->skipDetection()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3599
    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid:Z

    if-eqz v0, :cond_84

    .line 3600
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter v0

    :try_start_e
    const-string v1, "SemIWCMonitor"

    .line 3601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchflag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->switchFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_81

    .line 3603
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->type:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3605
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetMISC_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 3606
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter v0

    .line 3607
    :try_start_45
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IWC Action Detected - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->name:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 3608
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switchflag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->switchFlag:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 3607
    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 3609
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 3610
    monitor-exit v0

    goto :goto_84

    :catchall_7e
    move-exception p0

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_45 .. :try_end_80} :catchall_7e

    throw p0

    :catchall_81
    move-exception p0

    .line 3602
    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p0

    :cond_84
    :goto_84
    return-void
.end method

.method public detect(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)V
    .registers 6

    .line 3616
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->skipDetection()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3619
    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid:Z

    if-eqz v0, :cond_e2

    .line 3620
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter v0

    :try_start_e
    const-string v1, "SemIWCMonitor"

    .line 3621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchflag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->switchFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_df

    .line 3625
    sget-object v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$11;->$SwitchMap$com$samsung$android$server$wifi$iwc$SemRewardEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_67

    const/4 v1, 0x2

    if-eq v0, v1, :cond_61

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5b

    const-string p0, "SemIWCMonitor"

    .line 3639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undefined event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5b
    const p1, 0x87034

    const-string v0, "MANUAL_SWITCH_L"

    goto :goto_6c

    :cond_61
    const p1, 0x87033

    const-string v0, "MANUAL_SWITCH_G"

    goto :goto_6c

    :cond_67
    const p1, 0x87032

    const-string v0, "MANUAL_SWITCH"

    .line 3642
    :goto_6c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->handler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3644
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastInvalidEnterTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V

    .line 3645
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_9e

    const-string p1, "SemIWCMonitor"

    .line 3646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TS updated mLastInvalidEnterTimestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastInvalidEnterTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    :cond_9e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetMISC_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 3649
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter p1

    .line 3650
    :try_start_a9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IWC Action Detected - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " switchflag="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->switchFlag:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 3652
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 3653
    monitor-exit p1

    goto :goto_e2

    :catchall_dc
    move-exception p0

    monitor-exit p1
    :try_end_de
    .catchall {:try_start_a9 .. :try_end_de} :catchall_dc

    throw p0

    :catchall_df
    move-exception p0

    .line 3622
    :try_start_e0
    monitor-exit v0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw p0

    :cond_e2
    :goto_e2
    return-void
.end method

.method public discard()V
    .registers 5

    const/4 v0, 0x0

    .line 3577
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid:Z

    .line 3578
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->timer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 3579
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmAlarmManager(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3581
    :cond_16
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3582
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "discard"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .registers 3

    .line 3542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemIWCMonitor."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->name:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimer()J
    .registers 3

    .line 3546
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->timer:J

    return-wide v0
.end method

.method public isValid()Z
    .registers 1

    .line 3660
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid:Z

    return p0
.end method

.method public setAlarmListener(Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 2

    .line 3531
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    return-void
.end method

.method public setTimer(I)V
    .registers 4

    int-to-long v0, p1

    .line 3550
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->timer:J

    return-void
.end method
