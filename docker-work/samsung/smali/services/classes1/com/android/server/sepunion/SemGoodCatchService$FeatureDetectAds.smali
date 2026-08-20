.class public Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
.super Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeatureDetectAds"
.end annotation


# static fields
.field public static final ACTIVE_DELAY_MS:I = 0x7d0

.field public static final FUNCTION:Ljava/lang/String; = "detectads"

.field public static final MODULE:Ljava/lang/String; = "FeatureDetectAds"


# instance fields
.field public mActiveState:Z

.field public mForegroundUid:I

.field public mIntentFilter:Landroid/content/IntentFilter;

.field public mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPreviousUid:I

.field public final mProcessObserver:Landroid/app/IProcessObserver;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field public mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmForegroundUid(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I
    .registers 1

    iget p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnStateListener(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPreviousUid(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I
    .registers 1

    iget p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPreviousUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSemGoodCatchManager(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Lcom/samsung/android/sepunion/SemGoodCatchManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmForegroundUid(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPreviousUid(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPreviousUid:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSemGoodCatchManager(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;Lcom/samsung/android/sepunion/SemGoodCatchManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPackageName(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)[Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->getPackageName(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misActiveState(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->isActiveState()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 5

    .line 738
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    const-string v0, "FeatureDetectAds"

    .line 739
    invoke-direct {p0, p1, v0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;Ljava/lang/String;)V

    .line 676
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    .line 678
    iput-boolean v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mActiveState:Z

    const/4 v0, -0x1

    .line 680
    iput v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPreviousUid:I

    .line 681
    iput v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I

    .line 683
    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 709
    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 724
    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    .line 741
    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 743
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 744
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;Lcom/android/server/sepunion/SemGoodCatchService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 754
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 755
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 789
    invoke-super {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getPackageName(I)[Ljava/lang/String;
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_b

    const-string p0, "android"

    .line 796
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    .line 798
    :cond_b
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    :goto_11
    if-nez p0, :cond_19

    const-string p0, ""

    .line 802
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    :cond_19
    return-object p0
.end method

.method public final isActiveState()Z
    .registers 1

    .line 768
    iget-boolean p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mActiveState:Z

    return p0
.end method

.method public off()V
    .registers 2

    .line 781
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->isOn()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 782
    invoke-super {p0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->off()V

    const/4 v0, 0x0

    .line 783
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->process(Z)V

    :cond_d
    return-void
.end method

.method public on()V
    .registers 2

    .line 773
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->isOn()Z

    move-result v0

    if-nez v0, :cond_d

    .line 774
    invoke-super {p0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->on()V

    const/4 v0, 0x1

    .line 775
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->process(Z)V

    :cond_d
    return-void
.end method

.method public final process(Z)V
    .registers 4

    if-eqz p1, :cond_19

    .line 811
    :try_start_2
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 812
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    goto :goto_3b

    .line 814
    :cond_19
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 815
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_3b

    :catch_2e
    move-exception p0

    .line 818
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Exception - ProcessObserver"

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3b
    return-void
.end method

.method public reset()V
    .registers 1

    .line 759
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->off()V

    return-void
.end method

.method public setActiveState(Z)V
    .registers 5

    .line 763
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveState, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iput-boolean p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mActiveState:Z

    return-void
.end method
