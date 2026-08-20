.class Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "SemWifiTransportLayerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)V
    .registers 2

    .line 676
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p2, "SemWifiTransportLayerMonitor"

    if-nez p1, :cond_10

    .line 712
    :try_start_4
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "pauseComponentName is null"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void

    .line 715
    :cond_10
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 716
    iget-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p3, p4}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fputmCurrentUserId(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;I)V

    .line 717
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p3

    if-eqz p3, :cond_3b

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IUsageStatsWatcher pause: - MATCH ANY USER "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " userId: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_3b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p1

    .line 720
    iget-object p1, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 721
    iget-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_bb

    .line 722
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p3

    if-eqz p3, :cond_6f

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "IUsageStatsWatcher pause package changed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_6f
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$mgetPackageManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Landroid/content/pm/PackageManager;

    move-result-object p2

    const p3, 0x400080

    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 725
    iget-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p4}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentUserId(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)I

    move-result p4

    invoke-static {p3, p2, p4}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$mgetUserIdBasedUid(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;II)I

    move-result p2

    invoke-static {p3, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fputmUsageStatsUid(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;I)V

    .line 726
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fputmUsageStatsPackageName(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Ljava/lang/String;)V

    .line 727
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmTcpMonitorHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    move-result-object p1

    if-eqz p1, :cond_bb

    .line 728
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmTcpMonitorHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    const/16 p3, 0x9

    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmUsageStatsUid(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)I

    move-result p4

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/lang/String;

    move-result-object p0

    .line 729
    invoke-virtual {p2, p3, p4, v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b6} :catch_b7

    goto :goto_bb

    :catch_b7
    move-exception p0

    .line 736
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_bb
    :goto_bb
    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 6

    const-string p2, "SemWifiTransportLayerMonitor"

    if-nez p1, :cond_10

    .line 681
    :try_start_4
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "resumeComponentName is null"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void

    .line 684
    :cond_10
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 685
    iget-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p3, p4}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fputmCurrentUserId(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;I)V

    .line 686
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p3

    if-eqz p3, :cond_3b

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IUsageStatsWatcher resume: - MATCH ANY USER "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " user id:  "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_3b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p1

    .line 689
    iget-object p1, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 690
    iget-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_bb

    .line 691
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$sfgetDBG()Z

    move-result p3

    if-eqz p3, :cond_6f

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "IUsageStatsWatcher resume package changed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_6f
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$mgetPackageManager(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Landroid/content/pm/PackageManager;

    move-result-object p2

    const p3, 0x400080

    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 694
    iget-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p4}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmCurrentUserId(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)I

    move-result p4

    invoke-static {p3, p2, p4}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$mgetUserIdBasedUid(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;II)I

    move-result p2

    invoke-static {p3, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fputmUsageStatsUid(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;I)V

    .line 695
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fputmUsageStatsPackageName(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;Ljava/lang/String;)V

    .line 696
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmTcpMonitorHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    move-result-object p1

    if-eqz p1, :cond_bb

    .line 697
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmTcpMonitorHandler(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    const/16 p3, 0x9

    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmUsageStatsUid(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)I

    move-result p4

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->-$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;)Ljava/lang/String;

    move-result-object p0

    .line 698
    invoke-virtual {p2, p3, p4, v0, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor$TcpMonitorHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b6} :catch_b7

    goto :goto_bb

    :catch_b7
    move-exception p0

    .line 704
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_bb
    :goto_bb
    return-void
.end method

.method public noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
