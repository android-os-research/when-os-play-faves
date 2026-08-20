.class public Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
.super Landroid/os/Handler;
.source "BatterySaverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# static fields
.field public static final ARG_DONT_SEND_BROADCAST:I = 0x0

.field public static final ARG_SEND_BROADCAST:I = 0x1

.field public static final MSG_STATE_CHANGED:I = 0x1

.field public static final MSG_SYSTEM_READY:I = 0x2


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverController;Landroid/os/Looper;)V
    .registers 3

    .line 269
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 270
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 4

    .line 284
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_13

    .line 286
    :cond_6
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->handleBatterySaverStateChanged(ZI)V

    :goto_13
    return-void
.end method

.method public postStateChanged(ZI)V
    .registers 4

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 275
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postSystemReady()V
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 279
    invoke-virtual {p0, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
