.class public Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;
.super Landroid/os/Handler;
.source "LowPowerStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LowPowerStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LowPowerStandbyHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/Looper;)V
    .registers 3

    .line 527
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 528
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 533
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    goto :goto_28

    .line 542
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    .line 543
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mnotifyAllowlistChanged(Lcom/android/server/power/LowPowerStandbyController;[I)V

    goto :goto_28

    .line 538
    :cond_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 539
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mnotifyActiveChanged(Lcom/android/server/power/LowPowerStandbyController;Z)V

    goto :goto_28

    .line 535
    :cond_23
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$monStandbyTimeoutExpired(Lcom/android/server/power/LowPowerStandbyController;)V

    :goto_28
    return-void
.end method
