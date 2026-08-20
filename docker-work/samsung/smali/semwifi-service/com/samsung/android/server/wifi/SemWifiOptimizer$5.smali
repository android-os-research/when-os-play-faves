.class Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "SemWifiOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiOptimizer;->registerAudioAndUsageStatsWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V
    .registers 2

    .line 487
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_60

    .line 543
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 544
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    move-result p2

    if-eqz p2, :cond_24

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pause: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SemWifiOptimizer"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_24
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmAllowedAppList(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_60

    .line 546
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmAllowedAppList(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashMap;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmAllowedAppList(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashMap;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mgetStateAllowedAppRunning(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 548
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmLlHandler(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    move-result-object p0

    const/4 p1, 0x6

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 550
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_60
    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 6

    .line 492
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p2

    if-eqz p1, :cond_f2

    if-nez p2, :cond_e

    goto/16 :goto_f2

    .line 497
    :cond_e
    iget-object p1, p2, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 499
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    move-result p2

    if-eqz p2, :cond_32

    const-string p2, "SemWifiOptimizer"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "resume: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_32
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_da

    .line 501
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fputmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Ljava/lang/String;)V

    .line 502
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isSemGamePackage(Ljava/lang/String;)Z

    move-result p4

    invoke-static {p2, p4}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fputmIsGamePkg(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V

    .line 504
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Landroid/content/Context;

    move-result-object p2

    const-string p4, "activity"

    .line 505
    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    .line 507
    invoke-virtual {p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8f

    .line 509
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_65
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 510
    iget-object v0, p4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string p2, "com.sec.android.app.launcher"

    .line 511
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_86

    .line 512
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    iput p3, p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    goto :goto_8c

    .line 514
    :cond_86
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    iget p2, p4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iput p2, p1, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    .line 516
    :goto_8c
    iget p1, p4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move p3, p1

    .line 522
    :cond_8f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmAllowedAppList(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d5

    .line 523
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmAllowedAppList(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;

    move-result-object p2

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p4}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mgetStateAllowedAppRunning(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    move-result p1

    if-nez p1, :cond_d5

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    move-result p1

    if-eqz p1, :cond_d5

    .line 525
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmLlHandler(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    move-result-object p1

    const/4 p2, 0x6

    const/4 p4, 0x1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    invoke-static {p1, p2, p4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 527
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 530
    :cond_d5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mevaluateTrafficPolling(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    .line 532
    :cond_da
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmApeController(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemApeController;

    move-result-object p1

    if-eqz p1, :cond_f7

    .line 533
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmApeController(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemApeController;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Lcom/samsung/android/server/wifi/SemApeController;->updateForegroundApp(Ljava/lang/String;I)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f1} :catch_f3

    goto :goto_f7

    :cond_f2
    :goto_f2
    return-void

    :catch_f3
    move-exception p0

    .line 536
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f7
    :goto_f7
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
