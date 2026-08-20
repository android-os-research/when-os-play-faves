.class Lcom/samsung/android/server/wifi/SemIWCMonitor$5;
.super Ljava/lang/Object;
.source "SemIWCMonitor.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 2

    .line 476
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$5;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 5

    .line 479
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 480
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$5;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSwitchedTooShortPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$5;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSwitchedTooShortPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v2

    .line 481
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->getTimer()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") is expired"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$5;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSwitchedTooShortPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    .line 483
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$5;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmConnectNetworkPackageName(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)V

    .line 484
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$5;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmAutoDisconnectionPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->adopt()V

    return-void
.end method
