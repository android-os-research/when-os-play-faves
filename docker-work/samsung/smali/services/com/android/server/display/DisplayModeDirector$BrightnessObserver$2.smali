.class public Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$2;
.super Landroid/content/BroadcastReceiver;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .registers 2

    .line 2788
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$2;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "android.intent.action.BATTERY_CHANGED"

    .line 2791
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 2792
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$2;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object p1, p1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_15
    const-string/jumbo v0, "plugged"

    const/4 v1, 0x0

    .line 2793
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_21

    const/4 v1, 0x1

    .line 2795
    :cond_21
    iget-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$2;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmIsWirelessCharging(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Z

    move-result p2

    if-eq v1, p2, :cond_33

    .line 2796
    iget-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$2;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {p2, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fputmIsWirelessCharging(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Z)V

    .line 2797
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$2;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$monBrightnessChangedLocked(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    .line 2799
    :cond_33
    monitor-exit p1

    goto :goto_38

    :catchall_35
    move-exception p0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_35

    throw p0

    :cond_38
    :goto_38
    return-void
.end method
