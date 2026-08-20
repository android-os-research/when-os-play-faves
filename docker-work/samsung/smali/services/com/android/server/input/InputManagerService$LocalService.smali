.class public final Lcom/android/server/input/InputManagerService$LocalService;
.super Landroid/hardware/input/InputManagerInternal;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2

    .line 5659
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/hardware/input/InputManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 2

    .line 5797
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public forceHideCursor(Z)V
    .registers 2

    .line 5688
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->forceHideCursor(Z)V

    return-void
.end method

.method public getCursorPosition()Landroid/graphics/PointF;
    .registers 1

    .line 5753
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmWindowManagerCallbacks(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getCursorPosition()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getVirtualMousePointerDisplayId()I
    .registers 1

    .line 5748
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$mgetVirtualMousePointerDisplayId(Lcom/android/server/input/InputManagerService;)I

    move-result p0

    return p0
.end method

.method public onInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 5

    .line 5761
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 5762
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 5763
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 5764
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$InputManagerHandler;

    move-result-object p0

    const/16 p2, 0x65

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 5765
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public pilferPointers(Landroid/os/IBinder;)V
    .registers 2

    .line 5802
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->pilferPointers(Landroid/os/IBinder;)V

    return-void
.end method

.method public registerLidSwitchCallback(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V
    .registers 2

    .line 5787
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->registerLidSwitchCallbackInternal(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V

    return-void
.end method

.method public setCursorPosition(II)V
    .registers 4

    .line 5695
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    const/4 v0, -0x1

    invoke-interface {p0, p1, p2, v0}, Lcom/android/server/input/NativeInputManagerService;->setCursorPosition(III)V

    return-void
.end method

.method public setCursorPosition(III)V
    .registers 4

    .line 5702
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->setCursorPosition(III)V

    return-void
.end method

.method public setDisplayEligibilityForPointerCapture(IZ)V
    .registers 3

    .line 5777
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetDisplayEligibilityForPointerCapture(Lcom/android/server/input/InputManagerService;IZ)V

    return-void
.end method

.method public setDisplayViewports(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation

    .line 5662
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetDisplayViewportsInternal(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V

    return-void
.end method

.method public setInteractive(Z)V
    .registers 2

    .line 5667
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setInteractive(Z)V

    return-void
.end method

.method public setInteractiveForInternalDisplay(Z)V
    .registers 2

    .line 5681
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setInteractiveForInternalDisplay(Z)V

    return-void
.end method

.method public setMultiControlOutOfFocus(Z)V
    .registers 2

    .line 5709
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setMultiControlOutOfFocus(Z)V

    return-void
.end method

.method public setPointerAcceleration(FI)V
    .registers 3

    .line 5772
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetPointerAcceleration(Lcom/android/server/input/InputManagerService;FI)V

    return-void
.end method

.method public setPointerIconVisible(ZI)V
    .registers 3

    .line 5782
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetPointerIconVisible(Lcom/android/server/input/InputManagerService;ZI)V

    return-void
.end method

.method public setPulseGestureEnabled(Z)V
    .registers 4

    .line 5721
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmDoubleTouchGestureEnableFile(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    .line 5724
    :try_start_9
    new-instance v1, Ljava/io/FileWriter;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmDoubleTouchGestureEnableFile(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_2a
    .catchall {:try_start_9 .. :try_end_14} :catchall_28

    if-eqz p1, :cond_19

    :try_start_16
    const-string p0, "1"

    goto :goto_1b

    :cond_19
    const-string p0, "0"

    .line 5725
    :goto_1b
    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_25
    .catchall {:try_start_16 .. :try_end_1e} :catchall_22

    .line 5729
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3a

    :catchall_22
    move-exception p0

    move-object v0, v1

    goto :goto_36

    :catch_25
    move-exception p0

    move-object v0, v1

    goto :goto_2b

    :catchall_28
    move-exception p0

    goto :goto_36

    :catch_2a
    move-exception p0

    :goto_2b
    :try_start_2b
    const-string p1, "InputManager"

    const-string v1, "Unable to setPulseGestureEnabled"

    .line 5727
    invoke-static {p1, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_28

    .line 5729
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3a

    :goto_36
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5730
    throw p0

    :cond_3a
    :goto_3a
    return-void
.end method

.method public setVirtualMousePointerDisplayId(I)Z
    .registers 2

    .line 5742
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 5743
    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetVirtualMousePointerDisplayIdBlocking(Lcom/android/server/input/InputManagerService;I)Z

    move-result p0

    return p0
.end method

.method public toggleCapsLock(I)V
    .registers 2

    .line 5716
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->toggleCapsLock(I)V

    return-void
.end method

.method public transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .registers 3

    .line 5737
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public unregisterLidSwitchCallback(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V
    .registers 2

    .line 5792
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->unregisterLidSwitchCallbackInternal(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V

    return-void
.end method
