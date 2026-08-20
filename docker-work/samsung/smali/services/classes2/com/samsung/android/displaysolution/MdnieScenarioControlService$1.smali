.class public Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 2

    .line 624
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageNameFromPid(I)Ljava/lang/String;
    .registers 4

    .line 626
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 627
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 628
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_1a

    .line 629
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_2d
    const-string p0, ""

    return-object p0
.end method

.method public getPidFromPackageName(Ljava/lang/String;)I
    .registers 4

    .line 636
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 637
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz p1, :cond_1a

    .line 638
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 639
    iget p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return p0

    :cond_33
    const/4 p0, -0x1

    return p0
.end method

.method public getUidFromPackageName(Ljava/lang/String;)I
    .registers 4

    .line 646
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 647
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz p1, :cond_1a

    .line 648
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 649
    iget p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    return p0

    :cond_33
    const/4 p0, -0x1

    return p0
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 12

    .line 657
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object p3

    if-nez p3, :cond_9

    return-void

    .line 665
    :cond_9
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmContext(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {p3, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmActivityManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/app/ActivityManager;)V

    const/4 p3, -0x1

    const/4 v0, 0x1

    if-eq p1, p3, :cond_3d

    .line 668
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 669
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 670
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object p3

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetFOREGROUND_RESCAN_DEBOUNCE_MILLIS(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result p0

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void

    .line 673
    :cond_3d
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_139

    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_139

    .line 674
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p3

    .line 675
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_64

    return-void

    .line 678
    :cond_64
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 679
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_80

    :cond_7f
    move-object v0, v1

    .line 680
    :goto_80
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9a

    .line 681
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    :cond_9a
    if-eqz v0, :cond_c2

    const-string p3, "com.att.iqi"

    .line 684
    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c2

    .line 685
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " packageName : "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    className : "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v3, "MdnieScenarioControlService"

    invoke-static {v3, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_c2
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputFrontPackageName(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    .line 689
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmBurnInPreventionEnabled(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result p3

    const/16 v3, 0x13

    if-eqz p3, :cond_108

    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetBurnInPackageName(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_108

    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetBurnInPackageName(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object p3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetFrontPackageName(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_108

    .line 690
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 691
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object p3

    const/16 v4, 0x14

    invoke-virtual {p3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 692
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 695
    :cond_108
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmBurnInPreventionEnabled(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result p3

    if-nez p3, :cond_136

    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmGameAppLauncher(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result p3

    if-nez p3, :cond_136

    .line 696
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 697
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 698
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object p3

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetACTION_BURN_IN_PREVENTION_FIRST_MILLIS(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {p3, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_136
    move-object p3, v1

    move-object v1, v0

    goto :goto_13a

    :cond_139
    move-object p3, v1

    :goto_13a
    if-eqz v1, :cond_168

    if-eqz p3, :cond_168

    .line 704
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 705
    iput v2, v0, Landroid/os/Message;->what:I

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 707
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 708
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 709
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_168
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4

    return-void
.end method

.method public onProcessDied(II)V
    .registers 3

    return-void
.end method
