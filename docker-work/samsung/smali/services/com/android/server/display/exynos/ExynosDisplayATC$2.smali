.class public Lcom/android/server/display/exynos/ExynosDisplayATC$2;
.super Landroid/os/CountDownTimer;
.source "ExynosDisplayATC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/exynos/ExynosDisplayATC;->initCountDownTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayATC;JJ)V
    .registers 6

    .line 407
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .line 418
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fgetmHandler(Lcom/android/server/display/exynos/ExynosDisplayATC;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 419
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fgetmHandler(Lcom/android/server/display/exynos/ExynosDisplayATC;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 421
    :cond_12
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fputmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayATC;I)V

    .line 423
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$mcheckDimOperating(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    .line 424
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fgetmDimOperating(Lcom/android/server/display/exynos/ExynosDisplayATC;)I

    move-result v0

    const-string v1, "ExynosDisplayATC"

    if-eqz v0, :cond_3b

    .line 425
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fgetDEBUG(Lcom/android/server/display/exynos/ExynosDisplayATC;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "Restart Refresh Timer as dimming started"

    .line 426
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_34
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    .line 428
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_79

    .line 431
    :cond_3b
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fgetmHandler(Lcom/android/server/display/exynos/ExynosDisplayATC;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 432
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fgetmHandler(Lcom/android/server/display/exynos/ExynosDisplayATC;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 433
    :cond_4d
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz v0, :cond_79

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished Refresh Timer interval: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fgetmIntervalMs(Lcom/android/server/display/exynos/ExynosDisplayATC;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fgetmTimeoutMs(Lcom/android/server/display/exynos/ExynosDisplayATC;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    :goto_79
    return-void
.end method

.method public onTick(J)V
    .registers 4

    .line 410
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayATC;)I

    move-result p2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fputmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayATC;I)V

    .line 413
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fgetmHandler(Lcom/android/server/display/exynos/ExynosDisplayATC;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 414
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fgetmHandler(Lcom/android/server/display/exynos/ExynosDisplayATC;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1c
    return-void
.end method
