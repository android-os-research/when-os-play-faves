.class public Lcom/android/server/display/exynos/ExynosDisplayATC$1;
.super Landroid/os/Handler;
.source "ExynosDisplayATC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/exynos/ExynosDisplayATC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V
    .registers 2

    .line 375
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 378
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 379
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_52

    goto :goto_50

    .line 396
    :pswitch_9
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fgetmApsDelayedOffRequired(Lcom/android/server/display/exynos/ExynosDisplayATC;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 397
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sysfsWriteOnOff(Z)V

    .line 398
    :cond_17
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$fputmApsDelayedOffRequired(Lcom/android/server/display/exynos/ExynosDisplayATC;Z)V

    goto :goto_50

    .line 393
    :pswitch_1d
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sysfsWriteHsvLcg(Ljava/lang/String;I)V

    goto :goto_50

    .line 390
    :pswitch_2b
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sysfsWriteHsv(Ljava/lang/String;)V

    goto :goto_50

    .line 387
    :pswitch_37
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sysfsWriteAps(Ljava/lang/String;I)V

    goto :goto_50

    .line 384
    :pswitch_45
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sysfsWriteLux(I)V

    goto :goto_50

    .line 381
    :pswitch_4d
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sendEmptyUpdate()V

    :goto_50
    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_45
        :pswitch_37
        :pswitch_2b
        :pswitch_1d
        :pswitch_9
    .end packed-switch
.end method
