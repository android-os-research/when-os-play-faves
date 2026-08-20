.class public Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DualModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DualModeChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeChangeReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method public static bridge synthetic -$$Nest$mregister(Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->register()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregister(Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->unregister()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;)V
    .registers 2

    .line 689
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;-><init>(Lcom/android/server/desktopmode/DualModeChanger;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 708
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 709
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive(), action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_21
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const-string v1, "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

    .line 711
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_46

    .line 712
    iget-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$fgetmWallpaperShown(Lcom/android/server/desktopmode/DualModeChanger;)Z

    move-result p1

    if-nez p1, :cond_16c

    .line 713
    iget-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p1, v2}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$fputmWallpaperShown(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    .line 714
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p0, v2}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mscheduleStopLoadingScreenIfPossible(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    goto/16 :goto_16c

    :cond_46
    const-string v1, "android.intent.action.TIME_TICK"

    .line 716
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 717
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide p1

    const-wide/32 v0, 0x19000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_16c

    .line 719
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_7e

    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Low memory warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v2, 0x100000

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_7e
    iget-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$fgetmDesktopDisplayContext(Lcom/android/server/desktopmode/DualModeChanger;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_16c

    .line 722
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p0}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$fgetmDesktopDisplayContext(Lcom/android/server/desktopmode/DualModeChanger;)Landroid/content/Context;

    move-result-object p0

    const p1, 0x104043e

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_16c

    :cond_94
    const-string v1, "com.samsung.android.desktopmode.action.SPEN_NOTIFICATION_PRESSED"

    .line 726
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const-string v4, "ACTION_CLICK_DISPLAYID"

    const/4 v5, 0x0

    if-eqz v1, :cond_cf

    .line 727
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 729
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_c0

    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPen notification clicked, displayID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_c0
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p2, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mcollapsePanelsToDisplay(Lcom/android/server/desktopmode/DualModeChanger;I)V

    .line 731
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/4 p2, 0x6

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto/16 :goto_16c

    :cond_cf
    const-string v1, "com.samsung.android.desktopmode.action.TOUCHPAD_NOTIFICATION_PRESSED"

    .line 732
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "CLICK_DISPLAYID"

    if-eqz v1, :cond_106

    .line 733
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 735
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p2, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mcollapsePanelsToDisplay(Lcom/android/server/desktopmode/DualModeChanger;I)V

    .line 736
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_fe

    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Touchpad notification clicked, displayID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_fe
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto :goto_16c

    :cond_106
    const-string v1, "com.samsung.android.desktopmode.action.SPEN_NOTIFICATION_CHANGE_MODE_PRESSED"

    .line 738
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_139

    .line 739
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 741
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_12e

    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPen notification change mode clicked, displayID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_12e
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p2, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mcollapsePanelsToDisplay(Lcom/android/server/desktopmode/DualModeChanger;I)V

    .line 744
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mstartSPenModeSettingActivity(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V

    goto :goto_16c

    :cond_139
    const-string v1, "com.samsung.android.desktopmode.action.TOUCHPAD_AVAILABLE_NOTIFICATION_PRESSED"

    .line 745
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_150

    .line 746
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 748
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p2, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mcollapsePanelsToDisplay(Lcom/android/server/desktopmode/DualModeChanger;I)V

    .line 749
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mstartTouchpadActivity(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V

    goto :goto_16c

    :cond_150
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 750
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16c

    .line 751
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_16c

    .line 752
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p1

    if-eq p1, p2, :cond_16c

    .line 753
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {p0, v5}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDualDisplayResolutionDensity(Z)I

    :cond_16c
    :goto_16c
    return-void
.end method

.method public final register()V
    .registers 7

    .line 691
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_TICK"

    .line 692
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

    .line 693
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.desktopmode.action.SPEN_NOTIFICATION_PRESSED"

    .line 694
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.desktopmode.action.SPEN_NOTIFICATION_CHANGE_MODE_PRESSED"

    .line 695
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.desktopmode.action.TOUCHPAD_NOTIFICATION_PRESSED"

    .line 696
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.desktopmode.action.TOUCHPAD_AVAILABLE_NOTIFICATION_PRESSED"

    .line 697
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 698
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v1, v0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, v0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final unregister()V
    .registers 2

    .line 703
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
