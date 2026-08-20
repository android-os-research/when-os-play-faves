.class Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$SettingHandler;
.super Landroid/os/Handler;
.source "SemInputMotionController.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$HandlerMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 566
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$SettingHandler;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 567
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 568
    return-void
.end method

.method private updateMotionMute(I)V
    .registers 5
    .param p1, "value"    # I

    .line 586
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgetmotionList()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 587
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgetmotionList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 588
    .local v0, "palmMute":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-static {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fputsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;Z)V

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMotionMute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputMotionController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .end local v0    # "palmMute":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    :cond_3c
    return-void
.end method

.method private updateMotionVirtualForce(I)V
    .registers 5
    .param p1, "value"    # I

    .line 594
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgetmotionList()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 595
    return-void

    .line 597
    :cond_10
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->-$$Nest$sfgetmotionList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;

    .line 598
    .local v0, "volumeForce":Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;
    if-eqz p1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    invoke-static {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fputsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;Z)V

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMotionVirtualForce: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputMotionController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;->-$$Nest$fgetsettingOn(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$InputMotion;)Z

    move-result v1

    const-string v2, "SETTINGS_VIRTUAL_FORCE"

    if-eqz v1, :cond_4c

    .line 602
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->AIVF:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->enableBySetting(Ljava/lang/String;)Z

    goto :goto_51

    .line 604
    :cond_4c
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->AIVF:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$Motion;->disableBySetting(Ljava/lang/String;)Z

    .line 606
    :goto_51
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 572
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingHandler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputMotionController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 577
    :pswitch_1e
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$SettingHandler;->updateMotionVirtualForce(I)V

    .line 578
    goto :goto_2a

    .line 574
    :pswitch_24
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController$SettingHandler;->updateMotionMute(I)V

    .line 575
    nop

    .line 583
    :goto_2a
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_1e
    .end packed-switch
.end method
