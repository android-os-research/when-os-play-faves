.class public Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;
.super Ljava/lang/Thread;
.source "AfterimageCompensationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AfterimageCompensationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AfcThread"
.end annotation


# instance fields
.field public mAvgCoprRoi:[D

.field public mBrightnessValid:Z

.field public mDataValid:Z

.field public mNormalValid:Z

.field public rotation:I

.field public final synthetic this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 2

    .line 687
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 688
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    .line 689
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mBrightnessValid:Z

    .line 690
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    .line 691
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    const/16 p1, 0xc

    new-array p1, p1, [D

    .line 693
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgCoprRoi:[D

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 697
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcStateCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_10e3

    .line 698
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    .line 699
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmThreadSleepTime(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 700
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    goto :goto_31

    .line 701
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 702
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmThreadSleepTimeAod(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 703
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    .line 705
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmThreadAFPC(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_10bd

    const-string/jumbo v0, "service.camera.running"

    const-string v3, "0"

    .line 706
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string/jumbo v0, "service.camera.sfs.running"

    const-string v3, "0"

    .line 707
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 708
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputisRunningCameraApp(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Z)V

    goto :goto_66

    .line 710
    :cond_61
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputisRunningCameraApp(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Z)V

    .line 712
    :goto_66
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetisRunningCameraApp(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-nez v0, :cond_10bd

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_10bd

    .line 713
    :cond_7e
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    if-eqz v0, :cond_a9

    .line 714
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    .line 715
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 716
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mgetBrightness(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-nez v0, :cond_a5

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mgetBrightness_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_a3

    goto :goto_a5

    :cond_a3
    move v0, v1

    goto :goto_a6

    :cond_a5
    :goto_a5
    move v0, v2

    :goto_a6
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mBrightnessValid:Z

    goto :goto_c5

    :cond_a9
    if-nez v0, :cond_c5

    .line 719
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    .line 720
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAodBrightness(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmLuminance(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 721
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAodBrightness(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmLuminance_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 723
    :cond_c5
    :goto_c5
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_265

    .line 724
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v6, -0x1

    if-eqz v0, :cond_12a

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-ne v0, v6, :cond_f2

    goto :goto_12a

    .line 731
    :cond_f2
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-ne v0, v3, :cond_14f

    .line 732
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 733
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v0, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    goto :goto_14f

    .line 735
    :cond_117
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 736
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v0, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    goto :goto_14f

    .line 725
    :cond_12a
    :goto_12a
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 726
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v0, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    goto :goto_14f

    .line 728
    :cond_13d
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 729
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v0, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 739
    :cond_14f
    :goto_14f
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmWindowManager(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_17b

    .line 740
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmWindowManager(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_179

    if-eq v0, v2, :cond_176

    if-eq v0, v5, :cond_173

    if-eq v0, v4, :cond_170

    .line 754
    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    goto :goto_17b

    .line 751
    :cond_170
    iput v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    goto :goto_17b

    .line 748
    :cond_173
    iput v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    goto :goto_17b

    .line 745
    :cond_176
    iput v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    goto :goto_17b

    .line 742
    :cond_179
    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 758
    :cond_17b
    :goto_17b
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eqz v0, :cond_20c

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-ne v0, v6, :cond_1a0

    goto :goto_20c

    .line 761
    :cond_1a0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-ne v0, v3, :cond_265

    const-string v0, "AfterimageCompensationService"

    .line 762
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AfcThread mLuminance_sub : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmLuminance_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , AfpcPeriodCount_sub : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , rotation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , AOD : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmLuminance_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v6

    iget v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v8

    invoke-static {v0, v6, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadSub(IIIZ)I

    goto :goto_265

    :cond_20c
    :goto_20c
    const-string v0, "AfterimageCompensationService"

    .line 759
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AfcThread mLuminance : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmLuminance(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , AfpcPeriodCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , rotation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , AOD : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmLuminance(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v6

    iget v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v8

    invoke-static {v0, v6, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataRead(IIIZ)I

    .line 767
    :cond_265
    :goto_265
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodMax(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v6

    const/16 v7, 0x9

    const/16 v8, 0x64

    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    const/4 v11, 0x0

    if-lt v0, v6, :cond_f39

    .line 768
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ne v0, v5, :cond_2f0

    .line 769
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_f39

    .line 770
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    const-string v0, "AfterimageCompensationService"

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mApplyValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2af
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2af} :catch_1102
    .catchall {:try_start_0 .. :try_end_2af} :catchall_1100

    .line 773
    :try_start_2af
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataEvaluate()F

    move-result v0

    .line 774
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 775
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v3, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V
    :try_end_2cc
    .catch Ljava/lang/NumberFormatException; {:try_start_2af .. :try_end_2cc} :catch_2cd
    .catch Ljava/lang/Exception; {:try_start_2af .. :try_end_2cc} :catch_1102
    .catchall {:try_start_2af .. :try_end_2cc} :catchall_1100

    goto :goto_2e9

    :catch_2cd
    move-exception v0

    :try_start_2ce
    const-string v3, "AfterimageCompensationService"

    .line 777
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 781
    :goto_2e9
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_f39

    .line 785
    :cond_2f0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_425

    .line 786
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_f39

    .line 787
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    const-string v0, "AfterimageCompensationService"

    .line 788
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mApplyValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_326
    .catch Ljava/lang/Exception; {:try_start_2ce .. :try_end_326} :catch_1102
    .catchall {:try_start_2ce .. :try_end_326} :catchall_1100

    .line 790
    :try_start_326
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataEvaluate()F

    move-result v0

    .line 791
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 792
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v3, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V
    :try_end_343
    .catch Ljava/lang/NumberFormatException; {:try_start_326 .. :try_end_343} :catch_344
    .catch Ljava/lang/Exception; {:try_start_326 .. :try_end_343} :catch_1102
    .catchall {:try_start_326 .. :try_end_343} :catchall_1100

    goto :goto_360

    :catch_344
    move-exception v0

    :try_start_345
    const-string v3, "AfterimageCompensationService"

    .line 794
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 798
    :goto_360
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfpcJndRefV2(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_41e

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfpcJndRefV2(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v4

    aget v3, v3, v4

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_41e

    .line 799
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataWriteV2(I)I

    move-result v0

    if-nez v0, :cond_3b4

    .line 800
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.sm.ACTION_ABC_SOLUTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v5, "com.samsung.android.lool"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3b4
    .catch Ljava/lang/Exception; {:try_start_345 .. :try_end_3b4} :catch_1102
    .catchall {:try_start_345 .. :try_end_3b4} :catchall_1100

    .line 805
    :cond_3b4
    :try_start_3b4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 806
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v4, "/efs/afc/apply_count"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "AfterimageCompensationService"

    .line 807
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "afpcDataWrite - str : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_401
    .catch Ljava/lang/NumberFormatException; {:try_start_3b4 .. :try_end_401} :catch_402
    .catch Ljava/lang/Exception; {:try_start_3b4 .. :try_end_401} :catch_1102
    .catchall {:try_start_3b4 .. :try_end_401} :catchall_1100

    goto :goto_41e

    :catch_402
    move-exception v0

    :try_start_403
    const-string v3, "AfterimageCompensationService"

    .line 809
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 814
    :cond_41e
    :goto_41e
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_f39

    .line 818
    :cond_425
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/16 v5, 0xa

    if-ne v0, v4, :cond_597

    .line 819
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_f39

    .line 820
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 821
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 822
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 823
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 824
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 825
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 826
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    .line 827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAvgLum : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mMaxBDI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mNBDI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    .line 828
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEffAvgLum : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mEffMaxBDI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mEffNBDI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    const-wide v12, 0x4072c00000000000L    # 300.0

    cmpl-double v0, v3, v12

    if-ltz v0, :cond_590

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v5, :cond_590

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4054000000000000L    # 80.0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_590

    const-string v0, "AfterimageCompensationService"

    const-string v3, "nativeDataUpdate"

    .line 831
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_590

    .line 833
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_526
    .catch Ljava/lang/Exception; {:try_start_403 .. :try_end_526} :catch_1102
    .catchall {:try_start_403 .. :try_end_526} :catchall_1100

    .line 835
    :try_start_526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 836
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v4, "/efs/afc/apply_count"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "AfterimageCompensationService"

    .line 837
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativeDataUpdate - str : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_573
    .catch Ljava/lang/NumberFormatException; {:try_start_526 .. :try_end_573} :catch_574
    .catch Ljava/lang/Exception; {:try_start_526 .. :try_end_573} :catch_1102
    .catchall {:try_start_526 .. :try_end_573} :catchall_1100

    goto :goto_590

    :catch_574
    move-exception v0

    :try_start_575
    const-string v3, "AfterimageCompensationService"

    .line 839
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 845
    :cond_590
    :goto_590
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_f39

    .line 849
    :cond_597
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ne v0, v3, :cond_716

    .line 850
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_f39

    .line 851
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 852
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 853
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 854
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 855
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 856
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 857
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    .line 858
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAvgLum : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mMaxBDI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mNBDI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    .line 859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEffAvgLum : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mEffMaxBDI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mEffNBDI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/16 v3, 0x14

    if-ge v0, v3, :cond_70f

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    const-wide v5, 0x4052c00000000000L    # 75.0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_70f

    .line 862
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    aget v0, v0, v5

    float-to-double v5, v0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_70f

    const-string v0, "AfterimageCompensationService"

    const-string v3, "nativeDataUpdate"

    .line 863
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_70f

    .line 865
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_6a5
    .catch Ljava/lang/Exception; {:try_start_575 .. :try_end_6a5} :catch_1102
    .catchall {:try_start_575 .. :try_end_6a5} :catchall_1100

    .line 867
    :try_start_6a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 868
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v4, "/efs/afc/apply_count"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "AfterimageCompensationService"

    .line 869
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativeDataUpdate - str : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f2
    .catch Ljava/lang/NumberFormatException; {:try_start_6a5 .. :try_end_6f2} :catch_6f3
    .catch Ljava/lang/Exception; {:try_start_6a5 .. :try_end_6f2} :catch_1102
    .catchall {:try_start_6a5 .. :try_end_6f2} :catchall_1100

    goto :goto_70f

    :catch_6f3
    move-exception v0

    :try_start_6f4
    const-string v3, "AfterimageCompensationService"

    .line 871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 878
    :cond_70f
    :goto_70f
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_f39

    .line 882
    :cond_716
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/4 v3, 0x6

    const-wide v12, 0x4051800000000000L    # 70.0

    const/16 v4, 0x1e

    if-ne v0, v3, :cond_896

    .line 883
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_f39

    .line 884
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 885
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 886
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 887
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 888
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 889
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 890
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    .line 891
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAvgLum : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mMaxBDI : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mNBDI : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    .line 892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEffAvgLum : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mEffMaxBDI : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mEffNBDI : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v4, :cond_88f

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    cmpl-double v0, v3, v12

    if-ltz v0, :cond_88f

    .line 895
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V3(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    aget v0, v0, v5

    float-to-double v5, v0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_88f

    const-string v0, "AfterimageCompensationService"

    const-string v3, "nativeDataUpdate"

    .line 896
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_88f

    .line 898
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_825
    .catch Ljava/lang/Exception; {:try_start_6f4 .. :try_end_825} :catch_1102
    .catchall {:try_start_6f4 .. :try_end_825} :catchall_1100

    .line 900
    :try_start_825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 901
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v4, "/efs/afc/apply_count"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "AfterimageCompensationService"

    .line 902
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativeDataUpdate - str : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_872
    .catch Ljava/lang/NumberFormatException; {:try_start_825 .. :try_end_872} :catch_873
    .catch Ljava/lang/Exception; {:try_start_825 .. :try_end_872} :catch_1102
    .catchall {:try_start_825 .. :try_end_872} :catchall_1100

    goto :goto_88f

    :catch_873
    move-exception v0

    :try_start_874
    const-string v3, "AfterimageCompensationService"

    .line 904
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 911
    :cond_88f
    :goto_88f
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_f39

    .line 915
    :cond_896
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_a0f

    .line 916
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_f39

    .line 917
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 918
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 919
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 920
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 921
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 922
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 923
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    .line 924
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAvgLum : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mMaxBDI : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mNBDI : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    .line 925
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEffAvgLum : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mEffMaxBDI : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mEffNBDI : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v4, :cond_a08

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    cmpl-double v0, v3, v12

    if-ltz v0, :cond_a08

    .line 928
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V4(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    aget v0, v0, v5

    float-to-double v5, v0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_a08

    const-string v0, "AfterimageCompensationService"

    const-string v3, "nativeDataUpdate"

    .line 929
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_a08

    .line 931
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_99e
    .catch Ljava/lang/Exception; {:try_start_874 .. :try_end_99e} :catch_1102
    .catchall {:try_start_874 .. :try_end_99e} :catchall_1100

    .line 933
    :try_start_99e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 934
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v4, "/efs/afc/apply_count"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "AfterimageCompensationService"

    .line 935
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativeDataUpdate - str : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9eb
    .catch Ljava/lang/NumberFormatException; {:try_start_99e .. :try_end_9eb} :catch_9ec
    .catch Ljava/lang/Exception; {:try_start_99e .. :try_end_9eb} :catch_1102
    .catchall {:try_start_99e .. :try_end_9eb} :catchall_1100

    goto :goto_a08

    :catch_9ec
    move-exception v0

    :try_start_9ed
    const-string v3, "AfterimageCompensationService"

    .line 937
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 944
    :cond_a08
    :goto_a08
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_f39

    .line 948
    :cond_a0f
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_c4b

    .line 949
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_f39

    .line 950
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 951
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 952
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 953
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 954
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 955
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 956
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    .line 957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAvgLum : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mMaxBDI : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mNBDI : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    .line 958
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEffAvgLum : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mEffMaxBDI : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mEffNBDI : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfpcPanelNumber_main(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const v3, 0x35bc5

    if-ne v0, v3, :cond_b90

    .line 961
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v4, :cond_c44

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    cmpl-double v0, v3, v9

    if-ltz v0, :cond_c44

    .line 962
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V4(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    aget v0, v0, v5

    float-to-double v5, v0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_c44

    const-string v0, "AfterimageCompensationService"

    const-string v3, "nativeDataUpdate"

    .line 963
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_c44

    .line 965
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_b23
    .catch Ljava/lang/Exception; {:try_start_9ed .. :try_end_b23} :catch_1102
    .catchall {:try_start_9ed .. :try_end_b23} :catchall_1100

    .line 967
    :try_start_b23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 968
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v4, "/efs/afc/apply_count"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "AfterimageCompensationService"

    .line 969
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativeDataUpdate - str : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b70
    .catch Ljava/lang/NumberFormatException; {:try_start_b23 .. :try_end_b70} :catch_b72
    .catch Ljava/lang/Exception; {:try_start_b23 .. :try_end_b70} :catch_1102
    .catchall {:try_start_b23 .. :try_end_b70} :catchall_1100

    goto/16 :goto_c44

    :catch_b72
    move-exception v0

    :try_start_b73
    const-string v3, "AfterimageCompensationService"

    .line 971
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    goto/16 :goto_c44

    .line 979
    :cond_b90
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/16 v3, 0x32

    if-ge v0, v3, :cond_c44

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    cmpl-double v0, v3, v9

    if-ltz v0, :cond_c44

    .line 980
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    aget v0, v0, v5

    float-to-double v5, v0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_c44

    const-string v0, "AfterimageCompensationService"

    const-string v3, "nativeDataUpdate"

    .line 981
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_c44

    .line 983
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_bda
    .catch Ljava/lang/Exception; {:try_start_b73 .. :try_end_bda} :catch_1102
    .catchall {:try_start_b73 .. :try_end_bda} :catchall_1100

    .line 985
    :try_start_bda
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 986
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v4, "/efs/afc/apply_count"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "AfterimageCompensationService"

    .line 987
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativeDataUpdate - str : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c27
    .catch Ljava/lang/NumberFormatException; {:try_start_bda .. :try_end_c27} :catch_c28
    .catch Ljava/lang/Exception; {:try_start_bda .. :try_end_c27} :catch_1102
    .catchall {:try_start_bda .. :try_end_c27} :catchall_1100

    goto :goto_c44

    :catch_c28
    move-exception v0

    :try_start_c29
    const-string v3, "AfterimageCompensationService"

    .line 989
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 997
    :cond_c44
    :goto_c44
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_f39

    .line 1001
    :cond_c4b
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ne v0, v7, :cond_dc3

    .line 1002
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_f39

    .line 1003
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 1004
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1005
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1006
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1007
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1008
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1009
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    .line 1010
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAvgLum : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mMaxBDI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mNBDI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    .line 1011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEffAvgLum : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mEffMaxBDI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mEffNBDI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v8, :cond_dbc

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    cmpl-double v0, v3, v9

    if-ltz v0, :cond_dbc

    .line 1014
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V6(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    aget v0, v0, v5

    float-to-double v5, v0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_dbc

    const-string v0, "AfterimageCompensationService"

    const-string v3, "nativeDataUpdate"

    .line 1015
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_dbc

    .line 1017
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_d52
    .catch Ljava/lang/Exception; {:try_start_c29 .. :try_end_d52} :catch_1102
    .catchall {:try_start_c29 .. :try_end_d52} :catchall_1100

    .line 1019
    :try_start_d52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1020
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v4, "/efs/afc/apply_count"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "AfterimageCompensationService"

    .line 1021
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativeDataUpdate - str : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9f
    .catch Ljava/lang/NumberFormatException; {:try_start_d52 .. :try_end_d9f} :catch_da0
    .catch Ljava/lang/Exception; {:try_start_d52 .. :try_end_d9f} :catch_1102
    .catchall {:try_start_d52 .. :try_end_d9f} :catchall_1100

    goto :goto_dbc

    :catch_da0
    move-exception v0

    :try_start_da1
    const-string v3, "AfterimageCompensationService"

    .line 1023
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 1030
    :cond_dbc
    :goto_dbc
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_f39

    .line 1034
    :cond_dc3
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ne v0, v5, :cond_f39

    .line 1035
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_f39

    .line 1036
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 1037
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1038
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1039
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1040
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1041
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1042
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    .line 1043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAvgLum : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mMaxBDI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mNBDI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    .line 1044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEffAvgLum : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mEffMaxBDI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mEffNBDI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v8, :cond_f34

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    cmpl-double v0, v3, v9

    if-ltz v0, :cond_f34

    .line 1047
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V7(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    aget v0, v0, v5

    float-to-double v5, v0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_f34

    const-string v0, "AfterimageCompensationService"

    const-string v3, "nativeDataUpdate"

    .line 1048
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_f34

    .line 1050
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_eca
    .catch Ljava/lang/Exception; {:try_start_da1 .. :try_end_eca} :catch_1102
    .catchall {:try_start_da1 .. :try_end_eca} :catchall_1100

    .line 1052
    :try_start_eca
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v4, "/efs/afc/apply_count"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "AfterimageCompensationService"

    .line 1054
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativeDataUpdate - str : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f17
    .catch Ljava/lang/NumberFormatException; {:try_start_eca .. :try_end_f17} :catch_f18
    .catch Ljava/lang/Exception; {:try_start_eca .. :try_end_f17} :catch_1102
    .catchall {:try_start_eca .. :try_end_f17} :catchall_1100

    goto :goto_f34

    :catch_f18
    move-exception v0

    :try_start_f19
    const-string v3, "AfterimageCompensationService"

    .line 1056
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 1063
    :cond_f34
    :goto_f34
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 1068
    :cond_f39
    :goto_f39
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodMax(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    if-lt v0, v3, :cond_10bd

    .line 1069
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ne v0, v7, :cond_10bd

    .line 1070
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSaveSub(I)I

    move-result v0

    if-nez v0, :cond_10bd

    .line 1071
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    .line 1072
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLumSub()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1073
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDISub()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1074
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDISub()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1075
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLumSub()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1076
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDISub()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    .line 1077
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDISub()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    .line 1078
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAvgLum_sub : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mMaxBDI_sub : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mNBDI_sub : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    .line 1079
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEffAvgLum_sub : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mEffMaxBDI_sub : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", mEffNBDI_sub : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v8, :cond_10b8

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    cmpl-double v0, v3, v9

    if-ltz v0, :cond_10b8

    .line 1081
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V6(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    aget v0, v0, v5

    float-to-double v5, v0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_10b8

    const-string v0, "AfterimageCompensationService"

    const-string v3, "nativeDataUpdateSub"

    .line 1082
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdateSub(I)I

    move-result v0

    if-nez v0, :cond_10b8

    .line 1084
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_104e
    .catch Ljava/lang/Exception; {:try_start_f19 .. :try_end_104e} :catch_1102
    .catchall {:try_start_f19 .. :try_end_104e} :catchall_1100

    .line 1086
    :try_start_104e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1087
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v2, "/efs/afc1/apply_count"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "AfterimageCompensationService"

    .line 1088
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeDataUpdateSub - str : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109b
    .catch Ljava/lang/NumberFormatException; {:try_start_104e .. :try_end_109b} :catch_109c
    .catch Ljava/lang/Exception; {:try_start_104e .. :try_end_109b} :catch_1102
    .catchall {:try_start_104e .. :try_end_109b} :catchall_1100

    goto :goto_10b8

    :catch_109c
    move-exception v0

    :try_start_109d
    const-string v1, "AfterimageCompensationService"

    .line 1090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v11}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    .line 1097
    :cond_10b8
    :goto_10b8
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 1105
    :cond_10bd
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v0

    monitor-enter v0
    :try_end_10d4
    .catch Ljava/lang/Exception; {:try_start_109d .. :try_end_10d4} :catch_1102
    .catchall {:try_start_109d .. :try_end_10d4} :catchall_1100

    .line 1107
    :try_start_10d4
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 1108
    monitor-exit v0

    goto/16 :goto_0

    :catchall_10e0
    move-exception v1

    monitor-exit v0
    :try_end_10e2
    .catchall {:try_start_10d4 .. :try_end_10e2} :catchall_10e0

    :try_start_10e2
    throw v1
    :try_end_10e3
    .catch Ljava/lang/Exception; {:try_start_10e2 .. :try_end_10e3} :catch_1102
    .catchall {:try_start_10e2 .. :try_end_10e3} :catchall_1100

    :cond_10e3
    const-string v0, "AfterimageCompensationService"

    .line 1115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_10ea
    const-string v2, "AfcThread is Terminated - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetinterpolationCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1116

    :catchall_1100
    move-exception v0

    goto :goto_1117

    :catch_1102
    move-exception v0

    .line 1112
    :try_start_1103
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetDEBUG(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v1

    if-eqz v1, :cond_110e

    .line 1113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_110e
    .catchall {:try_start_1103 .. :try_end_110e} :catchall_1100

    :cond_110e
    const-string v0, "AfterimageCompensationService"

    .line 1115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_10ea

    :goto_1116
    return-void

    :goto_1117
    const-string v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AfcThread is Terminated - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetinterpolationCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    throw v0
.end method
