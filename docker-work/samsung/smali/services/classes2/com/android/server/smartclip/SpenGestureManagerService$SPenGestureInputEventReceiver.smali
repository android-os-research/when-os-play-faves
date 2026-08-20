.class public final Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SPenGestureInputEventReceiver"
.end annotation


# instance fields
.field public sCfmsService:Landroid/os/ICustomFrequencyManager;

.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    .line 786
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 788
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 15

    const-string/jumbo v0, "onPointerEvent : total time = "

    .line 814
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const-wide/32 v3, 0x3b9aca00

    .line 816
    :try_start_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 817
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetEVENT_STATE_PEN_BUTTON_PRESSED()I

    move-result v7

    and-int/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1d

    move v6, v8

    goto :goto_1e

    :cond_1d
    move v6, v7

    .line 819
    :goto_1e
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmSpenUspLevel(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_127

    .line 821
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9, p1, v5, v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mprocessMotionEventForAirCMD(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V

    .line 824
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmHoverListeners(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v9

    if-eqz v9, :cond_45

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmHoverListeners(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v9

    if-lez v9, :cond_45

    .line 825
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9, p1, v5, v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mcheckHoverStay(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V

    :cond_45
    const/4 v9, 0x2

    if-eqz v6, :cond_7e

    const/4 v10, 0x7

    if-eq v5, v10, :cond_7e

    if-eq v5, v9, :cond_7e

    .line 831
    sget-object v10, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onPointerEvent 4 : Action="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-static {v5}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", sideButtonPressed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", coverOpened="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v12}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmClearCoverOpened(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 831
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    if-eqz v6, :cond_8a

    .line 839
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmClearCoverOpened(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v6

    if-ne v6, v8, :cond_8a

    move v6, v8

    goto :goto_8b

    :cond_8a
    move v6, v7

    :goto_8b
    const/16 v10, 0x9

    if-ne v5, v10, :cond_a5

    .line 843
    invoke-virtual {p0, v5}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V

    .line 845
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    const/16 v9, 0x301b

    .line 846
    iput v9, v7, Landroid/os/Message;->what:I

    .line 847
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_e8

    :cond_a5
    const/16 v10, 0xa

    const/16 v11, 0x3018

    if-ne v5, v10, :cond_c1

    .line 850
    invoke-virtual {p0, v5}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V

    .line 852
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 853
    iput v11, v7, Landroid/os/Message;->what:I

    .line 854
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v9, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_e8

    :cond_c1
    if-nez v5, :cond_e8

    .line 856
    iget-object v10, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_df

    .line 857
    iget-object v10, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 858
    sget-object v10, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v11, "[HOVER] sending hover exit br is canceled by touch event."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_df
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    if-ne v7, v9, :cond_e8

    .line 862
    invoke-virtual {p0, v5}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V
    :try_end_e8
    .catchall {:try_start_a .. :try_end_e8} :catchall_145

    :cond_e8
    :goto_e8
    if-ne v6, v8, :cond_127

    const-string/jumbo v6, "sec_unused_e-pen"

    packed-switch v5, :pswitch_data_164

    .line 893
    :pswitch_f0
    :try_start_f0
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    goto :goto_121

    .line 886
    :pswitch_f3
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v5, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mgetPenName(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    goto :goto_127

    .line 889
    :cond_100
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmGestureDetector(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_127

    .line 872
    :pswitch_10a
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v5, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mgetPenName(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_117

    goto :goto_127

    .line 875
    :cond_117
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmGestureDetector(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_127

    :goto_121
    const-string/jumbo p1, "onPointerEvent : default"

    .line 893
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_127
    .catchall {:try_start_f0 .. :try_end_127} :catchall_145

    .line 899
    :cond_127
    :goto_127
    :pswitch_127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p0

    sub-long/2addr p0, v1

    cmp-long v1, p0, v3

    if-lez v1, :cond_144

    .line 903
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_144
    return-void

    :catchall_145
    move-exception p0

    .line 899
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    sub-long/2addr v5, v1

    cmp-long p1, v5, v3

    if-lez p1, :cond_163

    .line 903
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_163
    throw p0

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_10a
        :pswitch_f3
        :pswitch_10a
        :pswitch_f3
        :pswitch_f0
        :pswitch_10a
        :pswitch_f3
        :pswitch_127
        :pswitch_f0
        :pswitch_127
        :pswitch_127
    .end packed-switch
.end method

.method public final sendEventToCfmsService(I)V
    .registers 4

    .line 792
    :try_start_0
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_12

    const-string v0, "CustomFrequencyManagerService"

    .line 793
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 795
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 798
    :cond_12
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_34

    if-eqz p0, :cond_38

    const/16 v0, 0x9

    const-string v1, "HOVERING_EVENT"

    if-ne p1, v0, :cond_22

    :try_start_1c
    const-string p1, "1"

    .line 800
    invoke-interface {p0, v1, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_22
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2c

    const-string p1, "0"

    .line 802
    invoke-interface {p0, v1, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_2c
    if-nez p1, :cond_38

    const-string p1, "3"

    .line 804
    invoke-interface {p0, v1, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    .line 808
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_38
    :goto_38
    return-void
.end method
