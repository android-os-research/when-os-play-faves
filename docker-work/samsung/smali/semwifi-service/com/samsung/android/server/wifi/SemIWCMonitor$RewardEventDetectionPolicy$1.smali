.class Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy$1;
.super Ljava/lang/Object;
.source "SemIWCMonitor.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;-><init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/os/Handler;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

.field final synthetic val$this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 3

    .line 3520
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy$1;->this$1:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy$1;->val$this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 5

    .line 3523
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3524
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy$1;->this$1:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy$1;->this$1:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->-$$Nest$fgettimer(Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") is expired"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    :cond_2b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy$1;->this$1:Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    return-void
.end method
