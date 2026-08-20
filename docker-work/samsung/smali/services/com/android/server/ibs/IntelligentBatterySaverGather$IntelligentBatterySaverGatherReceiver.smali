.class public Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IntelligentBatterySaverGather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverGather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntelligentBatterySaverGatherReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string p1, "android.intent.action.BATTERY_CHANGED"

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 65
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    monitor-enter p1

    :try_start_f
    const-string/jumbo v0, "plugged"

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 67
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    invoke-static {v2}, Lcom/android/server/ibs/IntelligentBatterySaverGather;->-$$Nest$fgetmIBSService(Lcom/android/server/ibs/IntelligentBatterySaverGather;)Lcom/android/server/ibs/IntelligentBatterySaverService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    invoke-virtual {v2, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateChargingLocked(Z)V

    const-string/jumbo v0, "level"

    const/4 v2, -0x1

    .line 69
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v3, "scale"

    .line 70
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq v0, v2, :cond_45

    if-eqz p2, :cond_45

    .line 72
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverGather;->-$$Nest$fgetmIBSService(Lcom/android/server/ibs/IntelligentBatterySaverGather;)Lcom/android/server/ibs/IntelligentBatterySaverService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateBatteryLevelChanged(II)V

    .line 74
    :cond_45
    monitor-exit p1

    goto :goto_4a

    :catchall_47
    move-exception p0

    monitor-exit p1
    :try_end_49
    .catchall {:try_start_f .. :try_end_49} :catchall_47

    throw p0

    :cond_4a
    :goto_4a
    return-void
.end method
