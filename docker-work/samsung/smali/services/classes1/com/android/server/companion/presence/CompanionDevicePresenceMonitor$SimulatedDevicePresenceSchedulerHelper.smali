.class public Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;
.super Landroid/os/Handler;
.source "CompanionDevicePresenceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimulatedDevicePresenceSchedulerHelper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;)V
    .registers 2

    .line 346
    iput-object p1, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;->this$0:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    .line 347
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 365
    iget p1, p1, Landroid/os/Message;->what:I

    .line 366
    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;->this$0:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    invoke-static {p0}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->-$$Nest$fgetmSimulated(Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;)Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "simulated"

    invoke-static {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->-$$Nest$monDeviceGone(Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public scheduleOnDeviceGoneCallForSimulatedDevicePresence(I)V
    .registers 4

    .line 352
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 353
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    const-wide/32 v0, 0xea60

    .line 356
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public unscheduleOnDeviceGoneCallForSimulatedDevicePresence(I)V
    .registers 2

    .line 360
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
