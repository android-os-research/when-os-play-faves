.class Lcom/android/server/ssrm/CustomFrequencyManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 722
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 725
    const-string v0, "SDHMS("

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_71

    .line 727
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$minitScrollBooster(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V

    .line 728
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$minitPerfettoLogging(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V

    .line 729
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CFMS Handler Thread"

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$sfputsHandlerThread(Landroid/os/HandlerThread;)V

    .line 730
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$sfgetsHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 732
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    new-instance v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$SetupWizardObserver;

    new-instance v3, Landroid/os/Handler;

    .line 733
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$SetupWizardObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fputmSetupWizardObserver(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$SetupWizardObserver;)V

    .line 735
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmDynamicLoadDetector(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/DynamicLoadDetector;

    move-result-object v0

    if-nez v0, :cond_53

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->DISABLE_HEAVYUSER:Z

    if-nez v0, :cond_53

    .line 736
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    new-instance v2, Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-direct {v2, p1}, Lcom/android/server/ssrm/DynamicLoadDetector;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fputmDynamicLoadDetector(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/DynamicLoadDetector;)V

    .line 739
    :cond_53
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    new-instance v2, Lcom/android/server/ssrm/PalmInputEventChecker;

    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v4, v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/android/server/ssrm/PalmInputEventChecker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fputmPalmInputEventChecker(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/PalmInputEventChecker;)V

    .line 740
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    new-instance v2, Lcom/android/server/ssrm/CPUSetController;

    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/ssrm/CPUSetController;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fputmCPUSetController(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CPUSetController;)V

    goto/16 :goto_1fa

    .line 742
    :cond_71
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e5

    .line 743
    const-string v2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    goto/16 :goto_1e5

    .line 748
    :cond_83
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1cb

    .line 749
    const-string v2, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    goto/16 :goto_1cb

    .line 755
    :cond_96
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 756
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    goto/16 :goto_1fa

    .line 757
    :cond_a4
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    .line 758
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    .line 759
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->bootComplete()V

    .line 761
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    new-instance v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;

    invoke-direct {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;-><init>()V

    invoke-static {v0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fputmShutdownReceiver(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;)V

    .line 762
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmShutdownReceiver(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 764
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 765
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    const-string v2, "persist.sys.perftune.cpugpu"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fputmPerfTuneValue(Lcom/android/server/ssrm/CustomFrequencyManagerService;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 767
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PerfTune Test Value - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmPerfTuneValue(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1fa

    .line 769
    :cond_108
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_173

    .line 770
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 771
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "com.sec.android.sdhms"

    .line 772
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_16b

    .line 773
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 775
    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->isServiceRunning(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1ca

    .line 777
    :try_start_124
    sget-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    .line 779
    sget-object v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is newly enabled."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_149
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_124 .. :try_end_149} :catch_14a

    goto :goto_16a

    .line 780
    :catch_14a
    move-exception v4

    .line 781
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ") installation is failed."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 784
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_16a
    goto :goto_1ca

    .line 787
    :cond_16b
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v4, "There was no removed package name."

    invoke-static {v0, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ca

    .line 789
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_173
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca

    .line 790
    const/4 v0, -0x1

    const-string v2, "temperature"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 792
    .local v0, "batTemp":I
    const/16 v2, -0x96

    if-ge v0, v2, :cond_1a1

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isBoostingDisabled()Z

    move-result v2

    if-nez v2, :cond_1a1

    .line 793
    invoke-static {v3}, Lcom/android/server/ssrm/DeviceStatus;->disableBoosting(Z)V

    .line 794
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmBoostDisableManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    if-eqz v2, :cond_1fa

    .line 795
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmBoostDisableManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    goto :goto_1fa

    .line 797
    :cond_1a1
    const/16 v2, -0x46

    if-lt v0, v2, :cond_1c0

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isBoostingDisabled()Z

    move-result v2

    if-eqz v2, :cond_1c0

    .line 798
    invoke-static {v4}, Lcom/android/server/ssrm/DeviceStatus;->disableBoosting(Z)V

    .line 799
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmBoostDisableManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    if-eqz v2, :cond_1fa

    .line 800
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmBoostDisableManager(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    goto :goto_1fa

    .line 803
    :cond_1c0
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_1c5

    goto :goto_1c6

    :cond_1c5
    move v3, v4

    :goto_1c6
    invoke-static {v3}, Lcom/android/server/ssrm/DeviceStatus;->disableHeavyDetect(Z)V

    goto :goto_1fa

    .line 789
    .end local v0    # "batTemp":I
    :cond_1ca
    :goto_1ca
    goto :goto_1fa

    .line 750
    :cond_1cb
    :goto_1cb
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v4, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    .line 751
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v4, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    .line 752
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmDynamicLoadDetector(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/DynamicLoadDetector;

    move-result-object v0

    if-eqz v0, :cond_1fa

    .line 753
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmDynamicLoadDetector(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/DynamicLoadDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/DynamicLoadDetector;->onScreenOff()V

    goto :goto_1fa

    .line 744
    :cond_1e5
    :goto_1e5
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    .line 745
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmDynamicLoadDetector(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/DynamicLoadDetector;

    move-result-object v0

    if-eqz v0, :cond_1fa

    .line 746
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$4;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmDynamicLoadDetector(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/DynamicLoadDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/DynamicLoadDetector;->onScreenOn()V

    .line 806
    :cond_1fa
    :goto_1fa
    return-void
.end method
