.class public Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 2

    .line 424
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageNameFromPid(I)Ljava/lang/String;
    .registers 4

    .line 427
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 428
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

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

    .line 429
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_1a

    .line 430
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_2d
    const-string p0, ""

    return-object p0
.end method

.method public getPidFromPackageName(Ljava/lang/String;)I
    .registers 4

    .line 438
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 439
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

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

    .line 440
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 441
    iget p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return p0

    :cond_33
    const/4 p0, -0x1

    return p0
.end method

.method public getUidFromPackageName(Ljava/lang/String;)I
    .registers 4

    .line 449
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 450
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

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

    .line 451
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 452
    iget p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    return p0

    :cond_33
    const/4 p0, -0x1

    return p0
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 7

    .line 461
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2f

    if-eqz p3, :cond_15

    .line 470
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->getPackageNameFromPid(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_54

    .line 472
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 473
    iget-object p3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    add-long/2addr p1, v0

    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void

    .line 478
    :cond_2f
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    .line 479
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_40

    return-void

    .line 482
    :cond_40
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 483
    invoke-virtual {p0, p3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->getPidFromPackageName(Ljava/lang/String;)I

    move-result p1

    .line 484
    invoke-virtual {p0, p3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->getUidFromPackageName(Ljava/lang/String;)I

    move-result p2

    :goto_54
    if-eqz p3, :cond_71

    .line 488
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 489
    iput v1, v0, Landroid/os/Message;->what:I

    .line 490
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 491
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 492
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 493
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_71
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
