.class Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$4;
.super Ljava/lang/Object;
.source "SemWifiTwtMonitor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .registers 2

    .line 437
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatedTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .registers 3

    .line 440
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    if-eqz v0, :cond_19

    .line 441
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtHandler(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2f

    .line 442
    :cond_19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 443
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtHandler(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2f
    :goto_2f
    return-void
.end method
