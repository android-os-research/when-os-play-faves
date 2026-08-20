.class public Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StandaloneModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/StandaloneModeChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeChangeReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;


# direct methods
.method public static bridge synthetic -$$Nest$mregister(Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->register()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregister(Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->unregister()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;)V
    .registers 2

    .line 669
    iput-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 685
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 686
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_21

    invoke-static {}, Lcom/android/server/desktopmode/StandaloneModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive(), action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const-string p2, "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

    .line 687
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 688
    iget-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->-$$Nest$fputmWallpaperShown(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V

    .line 689
    iget-object p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-static {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->-$$Nest$mscheduleStopLoadingScreenIfPossible(Lcom/android/server/desktopmode/StandaloneModeChanger;)V

    goto :goto_77

    :cond_35
    const-string p2, "android.intent.action.TIME_TICK"

    .line 690
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_77

    .line 691
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide p1

    const-wide/32 v0, 0x19000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_77

    .line 693
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_6d

    invoke-static {}, Lcom/android/server/desktopmode/StandaloneModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

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

    .line 695
    :cond_6d
    iget-object p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const p1, 0x104043e

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;I)V

    :cond_77
    :goto_77
    return-void
.end method

.method public final register()V
    .registers 7

    .line 671
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 672
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_STANDALONE_MODE_WALLPAPER:Z

    if-eqz v0, :cond_e

    const-string v0, "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

    .line 673
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_e
    const-string v0, "android.intent.action.TIME_TICK"

    .line 675
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final unregister()V
    .registers 2

    .line 680
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
