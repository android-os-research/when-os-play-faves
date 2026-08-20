.class public Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;
.super Landroid/os/Handler;
.source "IbsQuickDim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/sqd/IbsQuickDim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "qkDimHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;Landroid/os/Looper;)V
    .registers 3

    .line 437
    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 438
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 443
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQuickdimEnable(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmScreenOn(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmUiControlEnabled(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmCharging(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto/16 :goto_ac

    .line 444
    :cond_22
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9f

    const/4 v2, -0x1

    if-eq p1, v0, :cond_4d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_33

    goto/16 :goto_ac

    .line 469
    :cond_33
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1, v2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmLastFPS(Lcom/android/server/ibs/sqd/IbsQuickDim;I)V

    .line 470
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$mremoveAllmessage(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    goto :goto_ac

    .line 465
    :cond_3e
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$mremoveAllmessage(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    .line 466
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQkDimHandler(Lcom/android/server/ibs/sqd/IbsQuickDim;)Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_ac

    .line 450
    :cond_4d
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQuickDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;)I

    move-result p1

    if-ne p1, v1, :cond_56

    return-void

    .line 451
    :cond_56
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$mgetFpsFromSurfaceFlinger(Lcom/android/server/ibs/sqd/IbsQuickDim;)I

    move-result p1

    .line 452
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmLastFPS(Lcom/android/server/ibs/sqd/IbsQuickDim;)I

    move-result v0

    if-eq p1, v0, :cond_75

    .line 453
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {v0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmLastFPS(Lcom/android/server/ibs/sqd/IbsQuickDim;I)V

    .line 454
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQkDimHandler(Lcom/android/server/ibs/sqd/IbsQuickDim;)Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    move-result-object p0

    const-wide/16 v2, 0x1f40

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_75
    const-string p1, "IbsQuickDim"

    const-string/jumbo v0, "setScreenBright!!!"

    .line 457
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1, v1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmQuickDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;I)V

    .line 459
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1, v2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmLastFPS(Lcom/android/server/ibs/sqd/IbsQuickDim;I)V

    .line 460
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/ibs/sqd/IbsQuickDim;)Landroid/os/PowerManagerInternal;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/PowerManagerInternal;->setScreenDimDurationOverrideFromSqd(Z)V

    .line 461
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fputmDimStartTime(Lcom/android/server/ibs/sqd/IbsQuickDim;J)V

    .line 462
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$mremoveAllmessage(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    goto :goto_ac

    .line 446
    :cond_9f
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQuickDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;)I

    move-result p1

    if-ne p1, v0, :cond_ac

    .line 447
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$mcheckQuickDimStatus(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    :cond_ac
    :goto_ac
    return-void
.end method
