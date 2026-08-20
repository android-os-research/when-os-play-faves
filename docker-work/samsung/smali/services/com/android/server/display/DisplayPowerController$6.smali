.class public Lcom/android/server/display/DisplayPowerController$6;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/RampAnimator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2

    .line 1622
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 5

    .line 1626
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    if-eqz v0, :cond_24

    .line 1627
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmRefreshRateMinLimitReleaseRunnable(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1628
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmRefreshRateMinLimitReleaseRunnable(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1633
    :cond_24
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$msendUpdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    .line 1634
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1635
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$6;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
