.class public final Lcom/android/server/desktopmode/DockManager$DockHandler;
.super Landroid/os/Handler;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DockHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DockManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DockManager;Landroid/os/Looper;)V
    .registers 3

    .line 360
    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    .line 361
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 366
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 367
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x96

    if-eq v1, v2, :cond_241

    const/16 v0, 0xd3

    const-string v2, ","

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v0, :cond_181

    const/16 v0, 0xdd

    if-eq v1, v0, :cond_f2

    const/16 v0, 0xe7

    if-eq v1, v0, :cond_af

    packed-switch v1, :pswitch_data_254

    goto/16 :goto_253

    .line 380
    :pswitch_25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 381
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_49

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_DOCK_REQUEST_DESTROY dockType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_49
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$mdestroyDockControlLib(Lcom/android/server/desktopmode/DockManager;I)V

    goto/16 :goto_253

    .line 386
    :pswitch_50
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_5d

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_DOCK_REQUEST_POWER_INFO requestConnectedPowerChargerInfoUpdate"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_5d
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmISDCDeviceController(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object v0

    if-eqz v0, :cond_253

    .line 389
    :try_start_65
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmLastDockControlLibMsgState(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v0

    const/16 v1, 0x64

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    .line 390
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmISDCDeviceController(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;->requestConnectedPowerChargerInfoUpdate()V
    :try_end_7c
    .catch Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException; {:try_start_65 .. :try_end_7c} :catch_7e

    goto/16 :goto_253

    :catch_7e
    move-exception p0

    .line 392
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_253

    .line 374
    :pswitch_84
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 375
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_a8

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_DOCK_REQUEST_CREATE dockType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_a8
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$mcreateDockControlLib(Lcom/android/server/desktopmode/DockManager;I)V

    goto/16 :goto_253

    .line 398
    :cond_af
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 399
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_cf

    .line 400
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_DOCK_VERSION_DSVERSION_UPDATED onDSVersionUpdated, version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_cf
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmLastDockControlLibMsgState(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v1

    const/16 v2, 0x67

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    if-eqz v0, :cond_e4

    .line 405
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fputmDockVersionExtra(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)V

    goto :goto_eb

    .line 407
    :cond_e4
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    const-string v0, "####"

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fputmDockVersionExtra(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)V

    .line 409
    :goto_eb
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {p0, v4}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$mupdateDockVersionToSettings(Lcom/android/server/desktopmode/DockManager;Z)V

    goto/16 :goto_253

    .line 448
    :cond_f2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 449
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_11a

    .line 450
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_DOCK_ERROR onError, error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$smdockControlErrorToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_11a
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmLastDockControlLibMsgState(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v1

    const/16 v5, 0x66

    iget p1, p1, Landroid/os/Message;->what:I

    .line 453
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$smdockControlErrorToString(I)Ljava/lang/String;

    move-result-object v6

    .line 452
    invoke-virtual {v1, v5, p1, v6}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    .line 454
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmDockControlLibError(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 455
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    :goto_139
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmDockControlLibError(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_16e

    .line 457
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmDockControlLibError(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$smdockControlErrorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    .line 458
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmDockControlLibError(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_139

    .line 460
    :cond_16e
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmLastDockControlLibMsgState(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object p0

    const/16 v0, 0x68

    const/16 v1, 0xf1

    .line 461
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 460
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    goto/16 :goto_253

    .line 413
    :cond_181
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 414
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 416
    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_1b7

    .line 417
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_DOCK_RESPONSE_POWER_INFO onConnectedPowerChargerInfoUpdated, power="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " previous power="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v7}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmDockChargerPower(Lcom/android/server/desktopmode/DockManager;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " support="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_1b7
    iget-object v5, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmLastDockControlLibMsgState(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v5

    const/16 v6, 0x65

    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, p1, v2}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    if-eqz v0, :cond_1e0

    .line 424
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmDockChargerPower(Lcom/android/server/desktopmode/DockManager;)I

    move-result p1

    if-eq v0, p1, :cond_22d

    :cond_1e0
    const/16 p1, 0xf

    if-ge v0, p1, :cond_20c

    .line 426
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmDockChargerPower(Lcom/android/server/desktopmode/DockManager;)I

    move-result v2

    if-eqz v2, :cond_1f4

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmDockChargerPower(Lcom/android/server/desktopmode/DockManager;)I

    move-result v2

    if-lt v2, p1, :cond_22d

    .line 428
    :cond_1f4
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_202

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "updateDockLowChargerPower true"

    invoke-static {p1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_202
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/android/server/desktopmode/IStateManager;->setDockLowChargerState(I)V

    goto :goto_22c

    .line 433
    :cond_20c
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmDockChargerPower(Lcom/android/server/desktopmode/DockManager;)I

    move-result v2

    if-ge v2, p1, :cond_22d

    .line 434
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_222

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "updateDockLowChargerPower false"

    invoke-static {p1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_222
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Lcom/android/server/desktopmode/IStateManager;->setDockLowChargerState(I)V

    :goto_22c
    move v3, v4

    :cond_22d
    if-eqz v3, :cond_253

    .line 441
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fputmDockChargerPower(Lcom/android/server/desktopmode/DockManager;I)V

    .line 442
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {p1, v1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fputmDockChargerSupport(Lcom/android/server/desktopmode/DockManager;I)V

    .line 443
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    const-string p1, "dockLowChargerPowerUpdated"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$mrequestUpdateDockLibStatus(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)V

    goto :goto_253

    .line 369
    :cond_241
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_24e

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MSG_DOCK_REQUEST_UPDATE_DOCK_LIB_STATUS"

    invoke-static {p1, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_24e
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$mupdateDockLibStatus(Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/State;)V

    :cond_253
    :goto_253
    return-void

    :pswitch_data_254
    .packed-switch 0xc9
        :pswitch_84
        :pswitch_50
        :pswitch_25
    .end packed-switch
.end method
