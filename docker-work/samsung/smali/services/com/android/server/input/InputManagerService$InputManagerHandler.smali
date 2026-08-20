.class public final Lcom/android/server/input/InputManagerService$InputManagerHandler;
.super Landroid/os/Handler;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputManagerHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V
    .registers 4

    .line 5226
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 5227
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 5232
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x20

    const-wide v2, 0xffffffffL

    packed-switch v0, :pswitch_data_17a

    packed-switch v0, :pswitch_data_18c

    goto/16 :goto_179

    .line 5300
    :pswitch_11
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_19

    move p1, v1

    goto :goto_1a

    :cond_19
    move p1, v0

    .line 5302
    :goto_1a
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmSensorManager(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorManager;

    move-result-object v2

    const-string v3, "InputManager"

    if-nez v2, :cond_2c

    const-string/jumbo p0, "mSensorManager is null."

    .line 5303
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_179

    .line 5306
    :cond_2c
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingAngleSensor(Lcom/android/server/input/InputManagerService;)Landroid/hardware/Sensor;

    move-result-object v2

    if-nez v2, :cond_3c

    const-string/jumbo p0, "mFoldingAngleSensor is null."

    .line 5307
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_179

    :cond_3c
    if-eqz p1, :cond_76

    .line 5311
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingAngleRegistered(Lcom/android/server/input/InputManagerService;)Z

    move-result p1

    if-nez p1, :cond_6f

    .line 5312
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmSensorManager(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingAngleListener(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingAngleSensor(Lcom/android/server/input/InputManagerService;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v5}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$InputManagerHandler;

    move-result-object v5

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 5314
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fputmFoldingAngleRegistered(Lcom/android/server/input/InputManagerService;Z)V

    const-string/jumbo p0, "register mFoldingAngleListener"

    .line 5315
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_179

    :cond_6f
    const-string p0, "already registered mFoldingAngleListener"

    .line 5317
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_179

    .line 5320
    :cond_76
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingAngleRegistered(Lcom/android/server/input/InputManagerService;)Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 5321
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmSensorManager(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingAngleListener(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmFoldingAngleSensor(Lcom/android/server/input/InputManagerService;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 5323
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fputmFoldingAngleRegistered(Lcom/android/server/input/InputManagerService;Z)V

    const-string/jumbo p0, "unregister mFoldingAngleListener"

    .line 5324
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_179

    :cond_a0
    const-string p0, "already unregistered mFoldingAngleListener"

    .line 5326
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_179

    .line 5289
    :pswitch_a7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 5290
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v4, v0

    and-long/2addr v2, v4

    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v4, v0

    shl-long v0, v4, v1

    or-long/2addr v0, v2

    .line 5292
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 5293
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 5294
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mwakeUp(Lcom/android/server/input/InputManagerService;JILjava/lang/String;)V

    goto/16 :goto_179

    .line 5266
    :pswitch_c2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5267
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 5268
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mdeliverMultiFingerGesture(Lcom/android/server/input/InputManagerService;II)V

    goto/16 :goto_179

    .line 5273
    :pswitch_cd
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5274
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Landroid/view/PointerIcon;

    if-eqz v1, :cond_d8

    check-cast p1, Landroid/view/PointerIcon;

    goto :goto_d9

    :cond_d8
    const/4 p1, 0x0

    .line 5275
    :goto_d9
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mdeliverPointerIconChanged(Lcom/android/server/input/InputManagerService;ILandroid/view/PointerIcon;)V

    goto/16 :goto_179

    .line 5258
    :pswitch_e0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 5259
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v4, v0

    and-long/2addr v2, v4

    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v4, v0

    shl-long v0, v4, v1

    or-long/2addr v0, v2

    .line 5260
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5261
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mdeliverLidStateChanged(Lcom/android/server/input/InputManagerService;JZ)V

    goto/16 :goto_179

    .line 5341
    :pswitch_fd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 5342
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 5343
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    .line 5345
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mhandleUpdateDefaultKeyboardLayouts(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/HashMap;)V

    goto :goto_179

    .line 5333
    :pswitch_10f
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5334
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 5335
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 5336
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 5337
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 5338
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$mhandleSwitchInputMethodSubtype(Lcom/android/server/input/InputManagerService;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    goto :goto_179

    .line 5285
    :pswitch_126
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mhandlePointerDisplayIdChanged(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;)V

    goto :goto_179

    .line 5279
    :pswitch_130
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 5280
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v4, v0

    and-long/2addr v2, v4

    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v4, v0

    shl-long v0, v4, v1

    or-long/2addr v0, v2

    .line 5281
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5282
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mdeliverTabletModeChanged(Lcom/android/server/input/InputManagerService;JZ)V

    goto :goto_179

    .line 5254
    :pswitch_14c
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$mreloadDeviceAliases(Lcom/android/server/input/InputManagerService;)V

    goto :goto_179

    .line 5251
    :pswitch_152
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$mupdateKeyboardLayouts(Lcom/android/server/input/InputManagerService;)V

    goto :goto_179

    .line 5248
    :pswitch_158
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$mreloadKeyboardLayouts(Lcom/android/server/input/InputManagerService;)V

    goto :goto_179

    .line 5239
    :pswitch_15e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 5240
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/input/InputMethodSubtypeHandle;

    invoke-static {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mhandleSwitchKeyboardLayout(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/input/InputMethodSubtypeHandle;)V

    goto :goto_179

    .line 5234
    :pswitch_170
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/view/InputDevice;

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mdeliverInputDevicesChanged(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V

    :goto_179
    return-void

    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_170
        :pswitch_15e
        :pswitch_158
        :pswitch_152
        :pswitch_14c
        :pswitch_130
        :pswitch_126
    .end packed-switch

    :pswitch_data_18c
    .packed-switch 0x65
        :pswitch_10f
        :pswitch_fd
        :pswitch_e0
        :pswitch_cd
        :pswitch_c2
        :pswitch_a7
        :pswitch_11
    .end packed-switch
.end method
