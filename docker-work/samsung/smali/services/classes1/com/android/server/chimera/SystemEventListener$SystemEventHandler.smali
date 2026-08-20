.class public Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;
.super Landroid/os/Handler;
.source "SystemEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/SystemEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SystemEventHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/SystemEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemEventListener;Landroid/os/Looper;)V
    .registers 3

    .line 363
    iput-object p1, p0, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/chimera/SystemEventListener;

    .line 364
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 369
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_13c

    goto/16 :goto_13b

    .line 416
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {p0}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$fgetmAppLaunchIntentListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;

    .line 417
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;->onAppLaunchIntent(Ljava/lang/String;)V

    goto :goto_11

    .line 421
    :pswitch_25
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {p0}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$fgetmDeviceIdleListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;

    .line 422
    invoke-interface {p1}, Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;->onDeviceIdle()V

    goto :goto_2f

    .line 396
    :pswitch_3f
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {p0}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$fgetmAppLaunchListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_49
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/SystemEventListener$AppLaunchListener;

    .line 397
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/server/chimera/SystemEventListener$AppLaunchListener;->onAppLaunched(Ljava/lang/String;)V

    goto :goto_49

    .line 411
    :pswitch_5d
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {p0}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$fgetmMediaScanFinishedListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_67
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/chimera/SystemEventListener$MediaScanFinishedListener;

    .line 412
    invoke-interface {p1}, Lcom/android/server/chimera/SystemEventListener$MediaScanFinishedListener;->onMediaScanFinished()V

    goto :goto_67

    .line 406
    :pswitch_77
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {p0}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$fgetmCarModeChangeListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_81
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;

    const/4 v0, 0x0

    .line 407
    invoke-interface {p1, v0}, Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;->onCarModeChanged(Z)V

    goto :goto_81

    .line 401
    :pswitch_92
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {p0}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$fgetmCarModeChangeListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;

    const/4 v0, 0x1

    .line 402
    invoke-interface {p1, v0}, Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;->onCarModeChanged(Z)V

    goto :goto_9c

    .line 391
    :pswitch_ad
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {p0}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$fgetmHomeLaunchListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;

    .line 392
    invoke-interface {p1}, Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;->onHomeLaunched()V

    goto :goto_b7

    .line 386
    :pswitch_c7
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {p0}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$fgetmLmkdEventListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/SystemEventListener$LmkdEventListener;

    .line 387
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemEventListener$LmkdEventListener;->onLmkdEventTriggered(II)V

    goto :goto_d1

    .line 376
    :pswitch_e5
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {p0}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$fgetmPmmStateChangeListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_ef
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/SystemEventListener$PmmStateChangeListener;

    .line 377
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/chimera/SystemEventListener$PmmStateChangeListener;->onPmmStateChanged(I)V

    goto :goto_ef

    .line 371
    :pswitch_107
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {p0}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$fgetmBottleNeckHintListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_111
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/chimera/SystemEventListener$BottleNeckHintListener;

    .line 372
    invoke-interface {p1}, Lcom/android/server/chimera/SystemEventListener$BottleNeckHintListener;->onBottleNeckHintTriggered()V

    goto :goto_111

    .line 381
    :pswitch_121
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {p0}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$fgetmPmmCriticalListeners(Lcom/android/server/chimera/SystemEventListener;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/chimera/SystemEventListener$PmmCriticalListener;

    .line 382
    invoke-interface {p1}, Lcom/android/server/chimera/SystemEventListener$PmmCriticalListener;->onPmmCriticalTriggered()V

    goto :goto_12b

    :cond_13b
    :goto_13b
    return-void

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_121
        :pswitch_107
        :pswitch_e5
        :pswitch_c7
        :pswitch_ad
        :pswitch_92
        :pswitch_77
        :pswitch_5d
        :pswitch_3f
        :pswitch_25
        :pswitch_7
    .end packed-switch
.end method
