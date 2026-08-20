.class Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$2;
.super Ljava/util/TimerTask;
.source "SemWifiEleStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->runRecoveryEnableTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$2;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "SemWifiEleStateTracker"

    const-string v1, "mBlockRoamTimer timer expired - enable Roam network valid transition"

    .line 242
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$2;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fputmBlockRoamTimer(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;Ljava/util/Timer;)V

    .line 244
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$2;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fgetmEleMoving(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 245
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$2;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fgetmSemWifiEleStateTrackerCallBack(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;->eleEnableRecovery()V

    const-string v1, "eleEnableRecovery delivered "

    .line 246
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$2;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->clearEleMoving()V

    :cond_28
    return-void
.end method
