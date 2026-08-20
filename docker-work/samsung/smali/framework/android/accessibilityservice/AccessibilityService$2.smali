.class Landroid/accessibilityservice/AccessibilityService$2;
.super Ljava/lang/Object;
.source "AccessibilityService.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accessibilityservice/AccessibilityService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/accessibilityservice/AccessibilityService;

    .line 2646
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    .line 2738
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmInputMethod(Landroid/accessibilityservice/AccessibilityService;)Landroid/accessibilityservice/InputMethod;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2739
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmInputMethod(Landroid/accessibilityservice/AccessibilityService;)Landroid/accessibilityservice/InputMethod;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/InputMethod;->createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V

    .line 2741
    :cond_11
    return-void
.end method

.method public blacklist init(ILandroid/os/IBinder;)V
    .registers 5
    .param p1, "connectionId"    # I
    .param p2, "windowToken"    # Landroid/os/IBinder;

    .line 2664
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fputmConnectionId(Landroid/accessibilityservice/AccessibilityService;I)V

    .line 2665
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p2}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fputmWindowToken(Landroid/accessibilityservice/AccessibilityService;Landroid/os/IBinder;)V

    .line 2669
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmWindowManager(Landroid/accessibilityservice/AccessibilityService;)Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 2670
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmWindowManager(Landroid/accessibilityservice/AccessibilityService;)Landroid/view/WindowManager;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    .line 2671
    .local v0, "wm":Landroid/view/WindowManagerImpl;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v1}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmWindowToken(Landroid/accessibilityservice/AccessibilityService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->setDefaultToken(Landroid/os/IBinder;)V

    .line 2673
    .end local v0    # "wm":Landroid/view/WindowManagerImpl;
    :cond_23
    return-void
.end method

.method public blacklist onAccessibilityButtonAvailabilityChanged(Z)V
    .registers 3
    .param p1, "available"    # Z

    .line 2728
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$monAccessibilityButtonAvailabilityChanged(Landroid/accessibilityservice/AccessibilityService;Z)V

    .line 2729
    return-void
.end method

.method public blacklist onAccessibilityButtonClicked(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 2723
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$monAccessibilityButtonClicked(Landroid/accessibilityservice/AccessibilityService;I)V

    .line 2724
    return-void
.end method

.method public blacklist onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2659
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2660
    return-void
.end method

.method public blacklist onFingerprintCapturingGesturesChanged(Z)V
    .registers 3
    .param p1, "active"    # Z

    .line 2713
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$monFingerprintCapturingGesturesChanged(Landroid/accessibilityservice/AccessibilityService;Z)V

    .line 2714
    return-void
.end method

.method public blacklist onFingerprintGesture(I)V
    .registers 3
    .param p1, "gesture"    # I

    .line 2718
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$monFingerprintGesture(Landroid/accessibilityservice/AccessibilityService;I)V

    .line 2719
    return-void
.end method

.method public blacklist onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
    .registers 3
    .param p1, "gestureEvent"    # Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 2677
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist onInterrupt()V
    .registers 2

    .line 2654
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->onInterrupt()V

    .line 2655
    return-void
.end method

.method public blacklist onKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2682
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 2688
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$monMagnificationChanged(Landroid/accessibilityservice/AccessibilityService;ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 2689
    return-void
.end method

.method public blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2693
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 2694
    return-void
.end method

.method public blacklist onPerformGestureResult(IZ)V
    .registers 4
    .param p1, "sequence"    # I
    .param p2, "completedSuccessfully"    # Z

    .line 2708
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1, p2}, Landroid/accessibilityservice/AccessibilityService;->onPerformGestureResult(IZ)V

    .line 2709
    return-void
.end method

.method public blacklist onServiceConnected()V
    .registers 2

    .line 2649
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$mdispatchServiceConnected(Landroid/accessibilityservice/AccessibilityService;)V

    .line 2650
    return-void
.end method

.method public blacklist onSoftKeyboardShowModeChanged(I)V
    .registers 3
    .param p1, "showMode"    # I

    .line 2703
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$monSoftKeyboardShowModeChanged(Landroid/accessibilityservice/AccessibilityService;I)V

    .line 2704
    return-void
.end method

.method public blacklist onSystemActionsChanged()V
    .registers 2

    .line 2733
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->onSystemActionsChanged()V

    .line 2734
    return-void
.end method

.method public blacklist onTouchStateChanged(II)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "state"    # I

    .line 2698
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1, p2}, Landroid/accessibilityservice/AccessibilityService;->onTouchStateChanged(II)V

    .line 2699
    return-void
.end method

.method public blacklist startInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 5
    .param p1, "connection"    # Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .line 2746
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmInputMethod(Landroid/accessibilityservice/AccessibilityService;)Landroid/accessibilityservice/InputMethod;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2747
    if-eqz p3, :cond_14

    .line 2748
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmInputMethod(Landroid/accessibilityservice/AccessibilityService;)Landroid/accessibilityservice/InputMethod;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/accessibilityservice/InputMethod;->restartInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_1d

    .line 2750
    :cond_14
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmInputMethod(Landroid/accessibilityservice/AccessibilityService;)Landroid/accessibilityservice/InputMethod;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/accessibilityservice/InputMethod;->startInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 2753
    :cond_1d
    :goto_1d
    return-void
.end method
