.class Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$2;
.super Landroid/app/IProcessObserver$Stub;
.source "SemWifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 8

    if-eqz p3, :cond_42

    .line 172
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Landroid/content/Context;

    move-result-object p3

    const-string v0, "activity"

    .line 173
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager;

    .line 175
    invoke-virtual {p3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_54

    .line 177
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1a
    :goto_1a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 178
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1a

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_1a

    .line 180
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmBoostHandler(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2, p2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1a

    .line 187
    :cond_42
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmBoostHandler(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_54
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4

    return-void
.end method

.method public onProcessDied(II)V
    .registers 3

    .line 198
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmBoostHandler(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x5

    invoke-static {p0, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
